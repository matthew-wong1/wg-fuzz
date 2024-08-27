struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, 999f, -656f))))), arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-320f, -631f), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), 874f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, -1879f, 568f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -528f, 374f, var_0.a.x)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(var_2.x - var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1514f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) - _wgslsmith_f_op_f32(2219f * _wgslsmith_f_op_f32(f32(-1f) * -950f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(535f, _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(205f, 592f)) + _wgslsmith_div_f32(var_0.a.x, -1328f)))))));
    var var_3 = ~40544u;
    return u_input.b;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = u_input.b.xx;
    let var_2 = ~select(vec4<i32>(~u_input.c, var_0.a, -66192i, 13726i), _wgslsmith_mod_vec4_i32(~(vec4<i32>(-17775i, -2147483647i, 2147483647i, var_0.a) & vec4<i32>(var_0.b.x, -1i, -20837i, -1i)), -vec4<i32>(7373i, -1i, 2147483647i, -11395i) >> (func_3(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), Struct_1(var_0.a, vec2<i32>(var_0.a, arg_1.a)), false) % vec4<u32>(32u))), select(!vec4<bool>(arg_1.b.x, false, arg_1.b.x, false), vec4<bool>(arg_1.b.x, arg_1.b.x | arg_1.b.x, true, u_input.d >= u_input.a), !vec4<bool>(arg_1.b.x, false, arg_1.b.x, true)));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_add_i32(1i, abs(var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, 1087f)))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = -u_input.c;
    var_0 = arg_0.a >> (u_input.a % 32u);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f - -1401f) + _wgslsmith_f_op_f32(func_2(Struct_4(vec3<f32>(1548f, 454f, 702f), Struct_1(u_input.c, vec2<i32>(u_input.c, arg_0.a))), Struct_3(u_input.c, vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(1f * -1604f), 1392f)), Struct_1(-1i, countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, 29700i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0.a), vec2<i32>(arg_0.a, arg_0.a))))));
    var_0 = arg_0.a;
    let var_2 = ~u_input.c;
    return ~(~61208u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(5188u, u_input.e.x, _wgslsmith_mod_u32(10767u, u_input.a) & func_1(Struct_3(30914i, vec3<bool>(false, true, false)))));
    let var_1 = vec4<i32>((-27907i >> (firstTrailingBit(var_0.x) % 32u)) >> (min(max(var_0.x << (24313u % 32u), 45257u), ~4294967295u) % 32u), 0i, u_input.c, _wgslsmith_mult_i32(u_input.c, -u_input.c) | firstTrailingBit(-1i));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, 127f, -232f)), Struct_1(u_input.c, vec2<i32>(var_1.x, u_input.c))), Struct_3(_wgslsmith_div_i32(-1i, var_1.x), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(round(568f)), true)), -1000f));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -992f);
    var_3 = _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(trunc(var_2)));
    var var_4 = vec3<bool>(true || ((~2147483647i << (func_3(vec4<bool>(true, false, true, false), Struct_1(0i, vec2<i32>(var_1.x, u_input.c)), true).x % 32u)) > -2147483647i), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(10022i ^ _wgslsmith_clamp_i32(1i, -46018i, 1i), select(11659i, -6276i, false), 1i)), reverseBits(u_input.c));
}

