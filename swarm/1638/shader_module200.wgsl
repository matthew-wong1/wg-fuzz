struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_2(51539u);
    global0 = 32682i;
    return var_0;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(~min(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -13360i), vec2<i32>(-2147483647i, u_input.a)), min(vec2<i32>(u_input.c, -5019i), vec2<i32>(u_input.a, 2096i))) ^ vec2<i32>(~(-1i << (u_input.b % 32u)), ~(-19112i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 28768i), vec2<i32>(0i, u_input.a))), vec2<i32>(0i, 2147483647i));
    global0 = -17204i;
    let var_1 = func_2(vec4<bool>(arg_2.x || !arg_2.x, true, true, _wgslsmith_clamp_i32(~(-2147483647i), 1i, var_0.x & var_0.x) > (var_0.x | countOneBits(u_input.c))));
    global0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(14964i, 1i, 0i), ~max(vec3<i32>(max(u_input.a, var_0.x), firstLeadingBit(u_input.c), _wgslsmith_div_i32(-2147483647i, var_0.x)), max(abs(vec3<i32>(u_input.c, var_0.x, u_input.c)), reverseBits(vec3<i32>(var_0.x, 1i, u_input.c)))));
    global0 = (1i >> (0u % 32u)) & (0i | _wgslsmith_add_i32(~(-2147483647i), -var_0.x));
    return !select(!select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, true, false, arg_2.x), !arg_2.x), vec4<bool>(arg_2.x, !any(arg_2), true, false), false);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> bool {
    let var_0 = func_2(vec4<bool>((firstTrailingBit(-1i) != firstLeadingBit(u_input.c)) && false, false, false, arg_1.x));
    let var_1 = var_0;
    let var_2 = -u_input.a >= 31467i;
    var var_3 = func_2(select(select(!vec4<bool>(true, arg_1.x, var_2, arg_1.x), vec4<bool>(arg_1.x, var_2 | true, !arg_1.x, false), (var_2 | true) && !arg_1.x), func_3(min(vec2<u32>(37563u, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, arg_0), vec2<u32>(u_input.b, 1u))), var_1, arg_1, Struct_2(_wgslsmith_mult_u32(1u, var_1.a))), u_input.a <= 1i));
    let var_4 = abs(select(~(~vec3<u32>(0u, 3223u, 29923u) & abs(vec3<u32>(40987u, 71062u, arg_0))), ~vec3<u32>(~0u, var_0.a, ~var_0.a), var_2));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(5133i, 38925i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)) == _wgslsmith_mod_i32(u_input.c, -1i), ~u_input.b <= u_input.b, all(vec3<bool>(true, false, false)) != true, true));
    let var_1 = 29239i;
    global0 = 16026i;
    var_0 = func_1(_wgslsmith_mod_u32(51651u, ~(~1u << (_wgslsmith_sub_u32(u_input.b, 3545u) % 32u))), select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), any(vec3<bool>(false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, false)), false), select(vec3<bool>(true, false, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true & (u_input.b <= 1u), select(true, true, true), true)));
    var var_2 = _wgslsmith_mult_vec4_u32(~reverseBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 38923u, 0u), false), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(select(u_input.b, u_input.b, true), abs(20672u), u_input.b, u_input.b), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 7720u) & vec4<u32>(36589u, 8055u, u_input.b, u_input.b), max(vec4<u32>(0u, 56684u, 1u, 63024u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), vec4<u32>(0u, 12805u, reverseBits(27152u), select(u_input.b, u_input.b, false))), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(u_input.b), _wgslsmith_div_u32(1u, u_input.b)), ~u_input.b ^ ~0u, _wgslsmith_mult_u32(~u_input.b, 88416u), _wgslsmith_mult_u32(65584u, ~4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~(~var_2.x)), ~(~var_2.x)));
}

