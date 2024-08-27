struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(1052u, 4294967295u, 1u, 0u), true);

var<private> global2: array<u32, 10> = array<u32, 10>(0u, 38161u, 0u, 78675u, 44224u, 1u, 67756u, 1u, 4294967295u, 0u);

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], ~_wgslsmith_dot_vec4_u32(global1.a ^ vec4<u32>(0u, global2[_wgslsmith_index_u32(global1.a.x, 10u)], 1u, 22242u), ~select(global1.a, vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global1.a.x, global2[_wgslsmith_index_u32(global1.a.x, 10u)], global2[_wgslsmith_index_u32(global1.a.x, 10u)]), global1.b))), 28u)];
    let var_0 = _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~global2[_wgslsmith_index_u32(global1.a.x, 10u)] << (global2[_wgslsmith_index_u32(~4294967295u, 10u)] % 32u)), global1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1.a.wyx, ~global1.a.zxy), 33028u)), 10u)], reverseBits(global2[_wgslsmith_index_u32(~max(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 10u)], 10u)], 10u)], 10u)], 10u)]), global1.a.x | global1.a.x), 10u)]));
    let var_1 = Struct_2(true, all(!arg_1.c.zzy), arg_1.c, _wgslsmith_f_op_f32(floor(1363f)), vec3<i32>(-1i, ~_wgslsmith_add_i32(-53673i, arg_1.e.x) | u_input.b, firstTrailingBit(_wgslsmith_mod_i32(-25072i, arg_1.e.x) ^ arg_1.e.x)));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d * -249f) - _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)));
    return arg_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f * _wgslsmith_f_op_f32(sign(1f))));
}

fn func_2() -> f32 {
    global2 = array<u32, 10>();
    let var_0 = !vec3<bool>(global1.b, false, true);
    global1 = Struct_1(global1.a, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, _wgslsmith_f_op_f32(1020f * -123f), _wgslsmith_f_op_f32(f32(-1f) * -1248f))), Struct_2(global1.b, var_0.x, select(!vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(global1.b, var_0.x, true, false), !global1.b), _wgslsmith_f_op_f32(ceil(1952f)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, 55130i, -6857i), -vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)))));
    var var_1 = Struct_2(any(!var_0), func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(695f, 2066f, 202f) - vec3<f32>(1000f, -1611f, -1656f)))), vec3<f32>(1f, 1f, 1f))), Struct_2(true, !func_3(vec3<f32>(-845f, -490f, -1485f), Struct_2(true, var_0.x, vec4<bool>(global1.b, global1.b, var_0.x, var_0.x), 1442f, vec3<i32>(10932i, u_input.d, 0i))), select(select(vec4<bool>(false, true, var_0.x, global1.b), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, global1.b, false, global1.b)), select(vec4<bool>(global1.b, false, true, false), vec4<bool>(false, true, true, var_0.x), global1.b), select(vec4<bool>(true, true, global1.b, var_0.x), vec4<bool>(global1.b, true, true, true), vec4<bool>(global1.b, false, global1.b, true))), _wgslsmith_f_op_f32(f32(-1f) * -1176f), vec3<i32>(i32(-1i) * -21392i, ~1i, u_input.c))), !select(vec4<bool>(!var_0.x, any(vec4<bool>(false, true, false, var_0.x)), true, var_0.x), !vec4<bool>(global1.b, global1.b, var_0.x, global1.b), all(!var_0.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f + 1f)), -(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -2147483647i, u_input.a.x)) | ~_wgslsmith_mod_vec3_i32(~vec3<i32>(-97907i, u_input.b, u_input.b), vec3<i32>(u_input.d, u_input.a.x, u_input.d)));
    var var_2 = false;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1841f, var_1.d), -701f, false)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_2.a.x) & global1.a.wz, arg_2.a.wz), global1.a.ww), ~(~100397u) >> (global1.a.x % 32u), abs(4294967295u) >> (arg_2.a.x % 32u), ~global2[_wgslsmith_index_u32(arg_2.a.x, 10u)]), global1.b);
    var var_1 = u_input.d | (~reverseBits(1i) >> (~select(_wgslsmith_sub_u32(var_0.a.x, global1.a.x), 1u >> (global2[_wgslsmith_index_u32(arg_2.a.x, 10u)] % 32u), global1.b == arg_2.b) % 32u));
    var var_2 = select(arg_1.zwy, select(arg_1.wzx, vec3<bool>(all(select(arg_1.xz, vec2<bool>(arg_0, false), vec2<bool>(true, arg_0))), -u_input.b <= _wgslsmith_clamp_i32(u_input.b, 59781i, 29620i), all(vec3<bool>(var_0.b, var_0.b, arg_2.b))), var_0.b), !func_3(vec3<f32>(1f, 1f, 1f), Struct_2(global1.b, true, vec4<bool>(false, arg_0, false, arg_0), -1192f, vec3<i32>(u_input.a.x, -679i, -20520i))));
    return ~1u;
}

fn func_1() -> StorageBuffer {
    let var_0 = global1.b;
    var var_1 = Struct_1(global1.a, all(!vec3<bool>(global1.b, u_input.c < u_input.b, false)));
    global1 = Struct_1(vec4<u32>(~var_1.a.x, func_4(_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(f32(-1f) * -1338f), !(!vec4<bool>(true, false, true, global1.b)), Struct_1(~vec4<u32>(1u, global2[_wgslsmith_index_u32(27942u, 10u)], 0u, var_1.a.x), any(vec2<bool>(false, var_1.b)))), _wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 45858u), vec3<u32>(0u, 38303u, global2[_wgslsmith_index_u32(1u, 10u)]))), global2[_wgslsmith_index_u32(1u, 10u)]), 26062u), var_1.b);
    return StorageBuffer(-min(-countOneBits(u_input.c), -2147483647i), 4294967295u, countOneBits(~(~_wgslsmith_sub_u32(var_1.a.x, 1u))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1744f, 1441f, -960f, 408f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, 163f, 1000f, -947f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(466f, 1905f, 812f, 402f)))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-149f)), _wgslsmith_f_op_f32(-753f + -743f), 184f, _wgslsmith_f_op_f32(-107f * 184f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-353f + -218f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(511f, -446f), 222f))))));
    let x = u_input.a;
    s_output = func_1();
}

