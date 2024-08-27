struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    var var_0 = !(!any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~1u), 18u)]));
    global0 = array<vec2<bool>, 18>();
    var var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(round(505f));
    var_1 = ~_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_add_u32(35653u | u_input.a.x, ~1u), u_input.a.x ^ _wgslsmith_clamp_u32(60839u, ~u_input.a.x, 24010u));
    return 1i;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> bool {
    global0 = array<vec2<bool>, 18>();
    var var_0 = Struct_1(_wgslsmith_div_i32(12453i ^ func_2(), -12481i), -17492i, ~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_1 | arg_1), arg_1, ~abs(62167u), 2711u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f * -1087f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-710f, -1669f, var_0.a >= var_0.b)))));
    global0 = array<vec2<bool>, 18>();
    let var_2 = arg_0.x;
    return !select(true || !all(vec3<bool>(true, false, true)), any(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, 1u), 18u)]), !(~1u != _wgslsmith_mult_u32(u_input.a.x, 0u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> vec2<u32> {
    global0 = array<vec2<bool>, 18>();
    let var_0 = Struct_1(_wgslsmith_add_i32(~abs(53406i), _wgslsmith_dot_vec3_i32(vec3<i32>(2511i, 0i, -2147483647i), vec3<i32>(2113i, -34234i, 2329i)) ^ 1i) ^ 51699i, (firstTrailingBit(47219i) ^ -61266i) ^ (i32(-1i) * -(i32(-1i) * -2147483647i)), ~(~firstTrailingBit(min(vec4<u32>(arg_0, 1u, arg_0, 4294967295u), vec4<u32>(u_input.a.x, arg_0, 32105u, u_input.a.x)))));
    let var_1 = vec4<f32>(-1261f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1302f), -586f), -1319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1068f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2050f)))));
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    return var_0.c.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(59182u, !select(vec4<bool>(func_1(vec4<i32>(-7999i, 2147483647i, -1i, 1i), 17u), true, true, true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false))), vec3<bool>(true, !any(vec4<bool>(true, false, false, true)), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) <= abs(u_input.a.x << (104274u % 32u))));
    var var_1 = Struct_1(abs(_wgslsmith_div_i32(0i, ~_wgslsmith_mod_i32(0i, 5323i))), ~_wgslsmith_mult_i32(1i, 1i), ~vec4<u32>(var_0.x, countOneBits(0u >> (var_0.x % 32u)), countOneBits(~u_input.a.x), 60532u | var_0.x));
    var var_2 = 94218i;
    var var_3 = var_0.x & ~48485u;
    let var_4 = var_1.a;
    var_2 = abs(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.a, var_1.a, var_1.b), ~vec3<i32>(var_1.a, var_1.b, var_1.a))), _wgslsmith_mod_i32(~var_1.a, _wgslsmith_div_i32(var_1.b, var_1.b)), firstLeadingBit(select(-(vec4<i32>(var_1.b, var_1.a, -6934i, -11513i) ^ vec4<i32>(1i, var_1.b, -2147483647i, var_1.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, -1i, 0i, var_1.a), vec4<i32>(var_1.b, -1i, 13530i, 21566i)) & _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_1.a, -50556i, 13094i), vec4<i32>(var_1.b, var_1.a, 2147483647i, var_1.a)), true)), ~select(vec2<u32>(4294967295u & u_input.a.x, ~u_input.a.x), min(var_0, vec2<u32>(var_1.c.x, 6252u)), all(vec3<bool>(true, true, true))), ~_wgslsmith_mult_i32(~reverseBits(var_1.a), var_1.a << (_wgslsmith_dot_vec2_u32(var_0, var_1.c.yx) % 32u)));
}

