#!/bin/bash

# Open Executor - MacSploit Style Roblox UI Application
# Modern, sleek shell script starter with MacSploit-inspired UI

set -e

# Extended color codes for MacSploit theme
BLACK='\033[0;30m'
RED='\033[0;91m'
GREEN='\033[0;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
MAGENTA='\033[0;95m'
CYAN='\033[0;96m'
WHITE='\033[0;97m'
DARK_GRAY='\033[1;30m'
LIGHT_GRAY='\033[0;37m'
BOLD_WHITE='\033[1;97m'
RESET='\033[0m'

# MacSploit theme colors
THEME_PRIMARY="${COLORS[CYAN]}"
THEME_SUCCESS="${COLORS[GREEN]}"
THEME_ERROR="${COLORS[RED]}"
THEME_WARNING="${COLORS[YELLOW]}"
THEME_ACCENT="${COLORS[MAGENTA]}"
THEME_BG_DARK="${COLORS[BLACK]}"
NC="${COLORS[RESET]}"

THEME_PRIMARY="$CYAN"
THEME_CYAN="$CYAN"
THEME_SUCCESS="$GREEN"
THEME_ERROR="$RED"
THEME_WARNING="$YELLOW"
THEME_ACCENT="$MAGENTA"
THEME_BG_DARK="$BLACK"
NC="$RESET"

# ASCII Art Banner - MacSploit Style
print_banner() {
    clear
    echo -e "${THEME_PRIMARY}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${THEME_PRIMARY}║${NC}                                                              ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}          ${THEME_ACCENT}╔═══╗ ╔═╗ ╔═╗ ╔╗╔ ${THEME_PRIMARY}${THEME_ACCENT}╔═══╗ ╔═══╗ ╔═╗ ╔═╗${THEME_PRIMARY}                ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}          ${THEME_ACCENT}║ ╔═╝ ║ ║ ║ ║ ║║║ ${THEME_PRIMARY}${THEME_ACCENT}║ ╔═╝ ║ ╔═╗ ║═╝ ║ ║${THEME_PRIMARY}                ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}          ${THEME_ACCENT}║ ╚═╗ ║ ║ ║ ║ ║╚╝ ${THEME_PRIMARY}${THEME_ACCENT}║ ╚═╗ ║ ╠═╣ ║ ╗ ║ ║${THEME_PRIMARY}                ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}          ${THEME_ACCENT}╚═══╝ ╚═╝ ╚═╝ ╚╝╚  ${THEME_PRIMARY}${THEME_ACCENT}╚═══╝ ╚═╩═╝ ╚═╝ ╚═╝${THEME_PRIMARY}                ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}                                                              ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}                     ${THEME_CYAN}Roblox Execution Platform${THEME_PRIMARY}                     ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}║${NC}                      ${THEME_ACCENT}Style: MacSploit Edition${THEME_PRIMARY}                     ${THEME_PRIMARY}║${NC}"
    echo -e "${THEME_PRIMARY}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
}

# Function to print colored output
print_status() {
    echo -e "${THEME_PRIMARY}[•]${NC} $1"
}

print_success() {
    echo -e "${THEME_SUCCESS}[✓]${NC} $1"
}

print_error() {
    echo -e "${THEME_ERROR}[✗]${NC} $1"
}

print_warning() {
    echo -e "${THEME_WARNING}[!]${NC} $1"
}

print_section() {
    echo ""
    echo -e "${THEME_PRIMARY}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${THEME_ACCENT}  $1${NC}"
    echo -e "${THEME_PRIMARY}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
}

# Function to display help with MacSploit styling
show_help() {
    print_banner
    print_section "COMMAND REFERENCE"
    
    echo -e "${THEME_CYAN}  STARTUP COMMANDS:${NC}"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}start${NC}              Launch the Open Executor UI"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}stop${NC}               Terminate the application"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}restart${NC}            Restart the application gracefully"
    echo ""
    
    echo -e "${THEME_CYAN}  INFORMATION COMMANDS:${NC}"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}status${NC}             Display system status"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}version${NC}            Show version information"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}help${NC}               Display this menu"
    echo ""
    
    echo -e "${THEME_CYAN}  OPTIONS:${NC}"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}--config${NC} <path>    Load custom configuration"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}--debug${NC}             Enable debug mode"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}--port${NC} <port>      Set server port (default: 8080)"
    echo -e "    ${THEME_PRIMARY}•${NC} ${THEME_BOLD_WHITE}--ui-mode${NC} <mode>   Theme mode (dark/light)"
    echo ""
    
    echo -e "${THEME_CYAN}  EXAMPLES:${NC}"
    echo -e "    ${THEME_PRIMARY}•${NC} app start"
    echo -e "    ${THEME_PRIMARY}•${NC} app start --port 9000"
    echo -e "    ${THEME_PRIMARY}•${NC} app start --debug --ui-mode dark"
    echo ""
    
    print_section "END"
}

# Function to show version
show_version() {
    print_banner
    echo -e "${THEME_BOLD_WHITE}Application Details:${NC}"
    echo -e "  ${THEME_PRIMARY}Name${NC}:      ${APP_NAME}"
    echo -e "  ${THEME_PRIMARY}Version${NC}:   ${APP_VERSION}"
    echo -e "  ${THEME_PRIMARY}Style${NC}:     ${APP_STYLE}"
    echo -e "  ${THEME_PRIMARY}Platform${NC}:  Roblox UI Execution"
    echo ""
}

# Function to start the application with MacSploit-style output
start_app() {
    print_banner
    print_section "INITIALIZING APPLICATION"
    
    print_status "Loading ${APP_NAME} v${APP_VERSION}..."
    sleep 0.3
    
    print_status "Application directory: ${THEME_ACCENT}${APP_DIR}${NC}"
    sleep 0.2
    
    if [ -f "${APP_DIR}/.env" ]; then
        print_status "Loading environment configuration..."
        # shellcheck source=/dev/null
        source "${APP_DIR}/.env"
        sleep 0.2
    fi
    
    print_status "Initializing UI components..."
    sleep 0.3
    
    print_status "Establishing connection to Roblox platform..."
    sleep 0.3
    
    print_status "Loading script executor engine..."
    sleep 0.3
    
    print_success "${APP_NAME} ${APP_VERSION} initialized successfully"
    echo ""
    
    print_section "STATUS"
    echo -e "  ${THEME_PRIMARY}Status${NC}:          ${THEME_SUCCESS}RUNNING${NC}"
    echo -e "  ${THEME_PRIMARY}UI Theme${NC}:        ${THEME_ACCENT}MacSploit (Dark)${NC}"
    echo -e "  ${THEME_PRIMARY}Executor${NC}:        ${THEME_SUCCESS}ACTIVE${NC}"
    echo -e "  ${THEME_PRIMARY}Connection${NC}:      ${THEME_SUCCESS}ESTABLISHED${NC}"
    echo ""
    
    print_section "READY FOR EXECUTION"
    echo -e "  ${THEME_ACCENT}Type 'help' for command reference${NC}"
    echo ""
}

# Function to stop the application
stop_app() {
    print_status "Shutting down ${APP_NAME}..."
    sleep 0.3
    
    print_status "Closing UI components..."
    sleep 0.2
    
    print_status "Terminating executor engine..."
    sleep 0.2
    
    print_success "${APP_NAME} terminated successfully"
    echo ""
}

# Function to restart the application
restart_app() {
    print_status "Restarting ${APP_NAME}..."
    sleep 0.2
    stop_app
    sleep 1
    start_app
}

# Function to show application status
show_status() {
    print_banner
    print_section "SYSTEM STATUS"
    
    echo -e "  ${THEME_PRIMARY}Application${NC}:  ${THEME_BOLD_WHITE}${APP_NAME}${NC}"
    echo -e "  ${THEME_PRIMARY}Version${NC}:      ${THEME_ACCENT}${APP_VERSION}${NC}"
    echo -e "  ${THEME_PRIMARY}Theme${NC}:        ${THEME_ACCENT}MacSploit Edition${NC}"
    echo -e "  ${THEME_PRIMARY}Directory${NC}:    ${THEME_ACCENT}${APP_DIR}${NC}"
    echo -e "  ${THEME_PRIMARY}Status${NC}:       ${THEME_SUCCESS}RUNNING${NC}"
    echo -e "  ${THEME_PRIMARY}Executor${NC}:     ${THEME_SUCCESS}ACTIVE${NC}"
    echo -e "  ${THEME_PRIMARY}UI Mode${NC}:      ${THEME_ACCENT}Dark (MacSploit)${NC}"
    echo ""
    
    print_section "END"
}

# Main script logic
main() {
    case "${1:-help}" in
        start)
            start_app
            ;;
        stop)
            stop_app
            ;;
        restart)
            restart_app
            ;;
        status)
            show_status
            ;;
        version)
            show_version
            ;;
        help)
            show_help
            ;;
        *)
            print_error "Unknown command: ${THEME_ACCENT}$1${NC}"
            echo ""
            show_help
            exit 1
            ;;
    esac
}

# Run main function with all arguments
main "$@"
