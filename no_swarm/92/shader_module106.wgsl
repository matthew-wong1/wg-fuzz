struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(1062f, 1399f, 143f, -2531f, 115f, 374f, -1146f, -360f, 1309f, -780f, 474f, 274f, -1572f, 625f, 254f, 866f, -793f, 123f, 540f, -281f, 1240f);

var<private> global1: Struct_5;

var<private> global2: Struct_5 = Struct_5(vec4<bool>(false, true, true, false));

var<private> global3: array<bool, 22>;

var<private> global4: i32 = -22537i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(arg_0.b.x, arg_0.c.x), 21u)]), 311f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, 1531f)), false)));
    let var_1 = global1.a.zx;
    var_0 = Struct_4(var_0.a);
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c.x, 21u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 21u)] - _wgslsmith_f_op_f32(501f + -430f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.c.x, 21u)] + 1583f), _wgslsmith_f_op_f32(select(-2579f, var_0.a.x, global2.a.x))))));
    var var_3 = ~arg_0.b.x;
    return arg_0.c.x;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1) -> u32 {
    var var_0 = ~(~firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 65480i), vec2<i32>(37975i, -9002i))) << (_wgslsmith_add_vec2_u32(~arg_1.b.yy ^ _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 3944u), vec2<u32>(4294967295u, arg_1.c.x)), vec2<u32>(~47895u, func_3(arg_1, arg_1.a.wxw))) % vec2<u32>(32u)));
    global2 = Struct_5(!(!(!vec4<bool>(arg_0.a.x, false, false, arg_1.a.x))));
    global3 = array<bool, 22>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~arg_1.c.x, 21u)], global0[_wgslsmith_index_u32(~arg_1.c.x, 21u)]))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1893f - _wgslsmith_f_op_f32(min(-2573f, global0[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(253f + global0[_wgslsmith_index_u32(4294967295u, 21u)]))), any(select(arg_1.a, arg_1.a, arg_1.a.x))))));
    var var_2 = !(true == ((arg_1.b.x > 95498u) && true)) | !select(all(arg_0.a.wwx) || global2.a.x, true, false);
    return ~(_wgslsmith_add_u32(_wgslsmith_sub_u32(11208u, arg_1.b.x), min(~4294967295u, 1u)) << (0u % 32u));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_sub_u32(~reverseBits(49846u), 4096u)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2512f * _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(306f)), global0[_wgslsmith_index_u32(max(1u, 19480u), 21u)])))) + -184f), (func_2(Struct_5(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], false, global1.a.x, global3[_wgslsmith_index_u32(15530u, 22u)])), Struct_1(global2.a, vec3<u32>(10708u, 0u, 82166u), vec2<u32>(0u, 1u))) < ~4294967295u) && (global3[_wgslsmith_index_u32(1u, 22u)] | (_wgslsmith_dot_vec4_u32(vec4<u32>(16545u, 0u, 0u, 50839u), vec4<u32>(12378u, 0u, 26055u, 46207u)) != 67778u))));
    var var_1 = ~(~(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 15196u, 0u), vec3<u32>(46148u, 0u, 43611u)))));
    let var_2 = 64563u;
    let var_3 = Struct_1(global1.a, ~(~(~(~vec3<u32>(20389u, 31135u, var_2)))), min(~var_1.xx, ~vec2<u32>(var_1.x | var_1.x, ~var_1.x)));
    global2 = Struct_5(select(select(select(select(vec4<bool>(true, var_3.a.x, var_3.a.x, global3[_wgslsmith_index_u32(30728u, 22u)]), global1.a, vec4<bool>(global2.a.x, global1.a.x, true, false)), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(22683u, 22u)], false, true), true), select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(var_2, 22u)], false), !vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), u_input.a != -95703i), !select(vec4<bool>(var_3.a.x, true, true, var_3.a.x), global2.a, global1.a.x)), vec4<bool>(any(select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global1.a.x), global2.a.xx, vec2<bool>(global2.a.x, false))), select(true, !var_3.a.x, all(vec3<bool>(global2.a.x, global1.a.x, global2.a.x))), true, global3[_wgslsmith_index_u32(firstLeadingBit(var_3.b.x), 22u)]), any(vec4<bool>(global3[_wgslsmith_index_u32(~1u, 22u)], false, any(var_3.a.xzw), !var_3.a.x))));
    return ~reverseBits(~1u | var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-2128f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45025u, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -846f))), global0[_wgslsmith_index_u32(select(func_1(), _wgslsmith_dot_vec4_u32(vec4<u32>(30899u, 16731u, 19921u, 4294967295u), vec4<u32>(4294967295u, 72500u, 45396u, 4612u)) >> (~4294967295u % 32u), global3[_wgslsmith_index_u32(0u, 22u)]), 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1482f - global0[_wgslsmith_index_u32(4294967295u, 21u)]) - _wgslsmith_f_op_f32(round(-111f)))))));
    let var_1 = ~1u;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~27080u, 21u)]), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1099f)))));
    var var_3 = Struct_3(var_2.x);
    var var_4 = select(vec4<bool>(!any(vec3<bool>(false, global3[_wgslsmith_index_u32(var_1, 22u)], true)), false, global2.a.x, !global3[_wgslsmith_index_u32(var_1, 22u)] | ((u_input.a | u_input.a) <= _wgslsmith_mult_i32(u_input.a, 137i))), vec4<bool>(!all(!vec4<bool>(global3[_wgslsmith_index_u32(var_1, 22u)], true, global3[_wgslsmith_index_u32(0u, 22u)], global2.a.x)), true, !(-u_input.a > ~u_input.a), global2.a.x), vec4<bool>(global3[_wgslsmith_index_u32(max(~1u, 16342u), 22u)], !global3[_wgslsmith_index_u32(~(var_1 & var_1), 22u)], select(_wgslsmith_f_op_f32(var_3.a - var_0.x) != _wgslsmith_f_op_f32(-329f + 411f), global3[_wgslsmith_index_u32(var_1, 22u)], global2.a.x), !(!global2.a.x)));
    var_4 = global2.a;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, var_1, 0u), max(vec3<u32>(0u, 4621u, 0u), vec3<u32>(11346u, 85054u, 0u)) >> (abs(vec3<u32>(var_1, 1u, 1u)) % vec3<u32>(32u))) & vec3<u32>(~(68281u ^ var_1), 47094u, 55819u), var_0.zyx, ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(10862i, u_input.a, u_input.a))), 0i, u_input.a, u_input.a), var_1);
}

