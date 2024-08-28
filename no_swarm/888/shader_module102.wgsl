struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 10> = array<i32, 10>(52921i, i32(-2147483648), 1i, -1i, i32(-2147483648), 47620i, 29958i, 9037i, -19459i, 1i);

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(2147483647i, 25005i, 0i, -1i), vec4<i32>(2036i, 1i, 19365i, -39023i), vec4<i32>(-1i, -72958i, -33499i, 1i), vec4<i32>(0i, i32(-2147483648), -5053i, 1551i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), 1758i, 10563i, -7442i), vec4<i32>(-16857i, 0i, 44126i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 18211i, 1i));

var<private> global3: Struct_1 = Struct_1(-113134i, 4294967295u, vec2<bool>(false, true), vec2<bool>(true, true), vec3<f32>(1691f, 2146f, -1421f));

var<private> global4: array<f32, 29>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-527f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, min(1u, u_input.b)), 29u)] + global4[_wgslsmith_index_u32(4294967295u, 29u)]), 1625f, global3.e.x));
    let var_1 = Struct_1(-1i, u_input.b, select(global3.c, global3.c, !(!select(global3.c, global3.c, vec2<bool>(false, false)))), !select(global3.d, global3.d, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.e + vec3<f32>(-1192f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-1230f, var_0.x), _wgslsmith_f_op_f32(select(var_0.x, global4[_wgslsmith_index_u32(global3.b, 29u)], global3.d.x)), global3.e.x)))));
    global4 = array<f32, 29>();
    global1 = array<i32, 10>();
    let var_2 = Struct_1(-5012i, global3.b, select(select(vec2<bool>(true, true), select(select(global3.d, var_1.c, vec2<bool>(true, var_1.c.x)), !vec2<bool>(global3.d.x, global3.d.x), true), !vec2<bool>(global3.c.x, true)), select(global3.d, !vec2<bool>(global3.d.x, global3.d.x), global3.d), select(var_1.c, var_1.d, !var_1.d)), global3.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1160f + global3.e.x), global3.e.x, _wgslsmith_f_op_f32(trunc(315f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.www))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.e, global3.e)) + _wgslsmith_f_op_vec3_f32(global3.e - _wgslsmith_f_op_vec3_f32(sign(var_1.e)))), global3.d.x)));
    return !vec2<bool>(var_1.d.x, global3.d.x);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(abs(global3.a), 1u, global3.c, !(!select(vec2<bool>(global3.d.x, false), select(vec2<bool>(global3.d.x, global3.d.x), vec2<bool>(global3.d.x, global3.c.x), vec2<bool>(global3.c.x, false)), global3.d.x)), global3.e);
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 9u)];
    var var_2 = select(global1[_wgslsmith_index_u32(var_0.b, 10u)], global3.a, var_0.d.x);
    let var_3 = Struct_1(-37157i << ((~(~7509u) & u_input.b) % 32u), global3.b >> (59022u % 32u), func_3(), !(!func_3()), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1677f, global4[_wgslsmith_index_u32(global3.b, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(var_0.b, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], global3.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-596f - var_0.e.x), _wgslsmith_f_op_f32(-857f * -635f))), false)));
    let var_4 = ~_wgslsmith_clamp_u32(countOneBits(~global3.b), 4294967295u, max(~_wgslsmith_div_u32(global3.b, u_input.b), global3.b));
    return ~(~14437u);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    global2 = array<vec4<i32>, 9>();
    let var_0 = func_2();
    global2 = array<vec4<i32>, 9>();
    global3 = arg_3;
    global3 = arg_3;
    return vec4<bool>(reverseBits(select(arg_0, 5740i, all(vec3<bool>(false, global3.c.x, true)))) > -u_input.c, !(!all(select(vec3<bool>(false, arg_2, arg_3.d.x), vec3<bool>(arg_3.d.x, arg_3.d.x, global3.c.x), vec3<bool>(global3.d.x, true, arg_2)))), arg_3.d.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(vec4<bool>(false, global3.c.x, global3.c.x, true), func_1(-9203i, global3.a, global3.c.x, Struct_1(-47723i, 0u, vec2<bool>(global3.d.x, true), vec2<bool>(global3.c.x, global3.c.x), vec3<f32>(-1034f, -638f, global4[_wgslsmith_index_u32(u_input.b, 29u)]))), true)));
    global4 = array<f32, 29>();
    let var_1 = ~u_input.b;
    let var_2 = ~global1[_wgslsmith_index_u32(~abs(1u) >> (global3.b % 32u), 10u)];
    var var_3 = firstLeadingBit(vec4<i32>(firstLeadingBit(~u_input.a.x), var_2, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(80006u, 10u)], -7413i), _wgslsmith_sub_i32(5511i, -var_2)) >> (_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 42034u, global3.b, 15324u), vec4<u32>(1u, global3.b, 1u, u_input.b)), vec4<u32>(u_input.b, 77807u, ~86599u, ~var_1), min(vec4<u32>(4294967295u, 1u, u_input.b, 107187u) & vec4<u32>(u_input.b, var_1, 1u, 18886u), ~vec4<u32>(41079u, global3.b, u_input.b, 1u))) % vec4<u32>(32u)));
    let var_4 = ~(~(vec2<u32>(1u, ~1u) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global3.b, 108281u), vec4<u32>(5890u, u_input.b, 4294967295u, global3.b)), var_1 & 35388u)));
    global0 = _wgslsmith_div_f32(-1801f, global3.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(select(~var_3.xwz, -var_3.xyx, true)), var_3.xzz), _wgslsmith_f_op_f32(-global3.e.x));
}

