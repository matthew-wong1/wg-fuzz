struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(1u, 16888u), vec2<u32>(594u, 4294967295u), vec2<u32>(24594u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(56951u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(32733u, 0u), vec2<u32>(1421u, 1u), vec2<u32>(0u, 1u), vec2<u32>(108869u, 95381u), vec2<u32>(38428u, 0u), vec2<u32>(737u, 28996u), vec2<u32>(1119u, 1u));

var<private> global1: array<f32, 13> = array<f32, 13>(-529f, 206f, 1590f, -956f, -410f, 1129f, 109f, -163f, 146f, -855f, -862f, 794f, 1067f);

var<private> global2: Struct_2;

var<private> global3: u32 = 1u;

var<private> global4: array<bool, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_2.a ^ ~u_input.d.x);
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = !vec4<bool>(all(!vec4<bool>(global2.b, true, false, true)), u_input.c.x < 8885u, select(all(!vec4<bool>(arg_0.b, true, false, global4[_wgslsmith_index_u32(6798u, 30u)])), all(!vec3<bool>(false, false, global2.b)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(64714u, 13u)], -130f)) == _wgslsmith_div_f32(-1229f, arg_0.d.x)), true);
    var var_1 = all(vec3<bool>(all(!(!vec3<bool>(true, true, arg_0.b))), all(!select(vec2<bool>(var_0.x, true), var_0.zx, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d.x, 13u)])), global1[_wgslsmith_index_u32(71328u, 13u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-618f)))));
    global3 = ~_wgslsmith_sub_u32(u_input.c.x, 19855u << (1u % 32u)) << (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(37748u, u_input.b.x), u_input.b.x) % 32u);
    let var_2 = arg_0;
    var var_3 = var_0.yy;
    return all(vec4<bool>(2153i >= _wgslsmith_div_i32(20462i, u_input.e.x >> (u_input.c.x % 32u)), ~u_input.d.x == ~1u, var_0.x, !any(var_0.xwz)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~(~((-67502i ^ global2.e.x) >> (1695u % 32u))));
    let var_1 = Struct_1(u_input.c.x);
    let var_2 = all(vec2<bool>(all(vec3<bool>(func_3(Struct_2(vec3<f32>(1000f, global2.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), global2.b, global1[_wgslsmith_index_u32(4294967295u, 13u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global2.c, global1[_wgslsmith_index_u32(46236u, 13u)]), u_input.e.yx)), false, true)), !(!(!global2.b))));
    var var_3 = global2.e.x;
    var_3 = _wgslsmith_div_i32(-23520i, -59686i);
    return Struct_2(global2.d, true, global1[_wgslsmith_index_u32(abs(87242u), 13u)], _wgslsmith_f_op_vec3_f32(-global2.a), -(u_input.e.wx << (~global0[_wgslsmith_index_u32(u_input.b.x, 16u)] % vec2<u32>(32u))) ^ (vec2<i32>(-1i) * -(~vec2<i32>(global2.e.x, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = func_1(-941f, true & global2.b, func_1(_wgslsmith_f_op_f32(f32(-1f) * -648f), (u_input.c.x > arg_2.a) && true, Struct_1(0u)));
    global1 = array<f32, 13>();
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 13u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-707f, global2.c)))) + _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~(var_0.a ^ 39895u), 13u)]))), (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, var_0.a), global0[_wgslsmith_index_u32(4294967295u, 16u)]), ~vec2<u32>(4294967295u, u_input.a.x)) | 17164u) >= 90802u, Struct_1(1u));
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.d.x)))))), any(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, global2.b, arg_0.b), vec4<bool>(arg_0.b, true, false, arg_0.b)), vec4<bool>(arg_0.b, true, false, global4[_wgslsmith_index_u32(31097u, 30u)]), select(vec4<bool>(true, global2.b, arg_0.b, false), vec4<bool>(global4[_wgslsmith_index_u32(29883u, 30u)], global2.b, global2.b, global4[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(global2.b, false, global2.b, true))), vec4<bool>(true, !global4[_wgslsmith_index_u32(arg_2.a, 30u)], true, 107811u != var_0.a), !global2.b)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.b, func_1(_wgslsmith_f_op_f32(select(-379f, _wgslsmith_div_f32(1640f, global2.c), var_1.a >= 4294967295u)), arg_0.c <= _wgslsmith_f_op_f32(-852f * 1000f), var_0)));
    global3 = ~4294967295u;
    return select(any(!select(vec3<bool>(global2.b, arg_0.b, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b), select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_2.a, 30u)], false), vec3<bool>(false, arg_0.b, global2.b), global4[_wgslsmith_index_u32(83133u, 30u)]))), global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) * _wgslsmith_f_op_f32(abs(arg_0.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(f32(-1f) * -671f)))) < _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.x, -753f)) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_0.a, 13u)]))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_vec2_i32(~(~vec2<i32>(0i, u_input.e.x)), global2.e);
    var_0 = abs(vec2<i32>(firstLeadingBit(-func_2().e.x), i32(-1i) * -22074i));
    global3 = ~1u ^ u_input.d.x;
    var var_1 = func_1(global1[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(0u, 30u)], func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) * _wgslsmith_f_op_f32(477f - arg_1.c)))), func_4(arg_1, abs(~var_0.x), func_1(_wgslsmith_f_op_f32(f32(-1f) * -906f), global1[_wgslsmith_index_u32(u_input.c.x, 13u)] == arg_1.d.x, func_1(-499f, arg_1.b, Struct_1(u_input.a.x)))), Struct_1(~4361u)));
    global0 = array<vec2<u32>, 16>();
    return !vec3<bool>(true, all(select(select(vec4<bool>(global2.b, true, arg_0.x, false), vec4<bool>(true, true, arg_0.x, false), vec4<bool>(true, true, arg_2, true)), vec4<bool>(false, false, global2.b, arg_0.x), true)), global4[_wgslsmith_index_u32(var_1.a, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(463f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c))), global4[_wgslsmith_index_u32(~u_input.c.x, 30u)])), global4[_wgslsmith_index_u32(u_input.c.x, 30u)])), global4[_wgslsmith_index_u32(0u, 30u)], Struct_1(_wgslsmith_sub_u32(reverseBits(u_input.b.x), u_input.c.x)));
    var var_1 = func_5(vec3<bool>(all(!select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 30u)], false, false), vec3<bool>(global2.b, global2.b, false), vec3<bool>(false, global2.b, false))), true, func_4(func_2(), firstLeadingBit(reverseBits(u_input.e.x)), func_1(_wgslsmith_f_op_f32(abs(1355f)), false, var_0))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), select(true, all(!vec4<bool>(global2.b, global2.b, global4[_wgslsmith_index_u32(var_0.a, 30u)], global2.b)), global2.b), -2430f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-866f, _wgslsmith_f_op_f32(1775f + global2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -291f)))), u_input.e.zy), any(select(!(!vec4<bool>(global2.b, global4[_wgslsmith_index_u32(4294967295u, 30u)], global2.b, global4[_wgslsmith_index_u32(var_0.a, 30u)])), vec4<bool>(global2.b && false, func_4(Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(var_0.a, 13u)], 813f, global2.a.x), global4[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global2.a, vec2<i32>(60642i, 3527i)), u_input.e.x, Struct_1(u_input.d.x)), func_4(Struct_2(global2.a, global2.b, -673f, global2.a, vec2<i32>(global2.e.x, 13102i)), -1i, var_0), true), select(select(vec4<bool>(global2.b, true, global2.b, global4[_wgslsmith_index_u32(var_0.a, 30u)]), vec4<bool>(global2.b, global2.b, global2.b, false), vec4<bool>(false, false, false, false)), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 30u)], global2.b, global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global2.b), select(vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 30u)], true, false), vec4<bool>(global4[_wgslsmith_index_u32(1u, 30u)], false, true, false), true)))), select(vec3<bool>(~var_0.a >= abs(0u), true, true), select(vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.a, 30u)], any(vec2<bool>(true, false))), select(!vec3<bool>(global2.b, false, true), select(vec3<bool>(true, global2.b, true), vec3<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 30u)]), true), global4[_wgslsmith_index_u32(countOneBits(var_0.a), 30u)]), vec3<bool>(true, !global4[_wgslsmith_index_u32(var_0.a, 30u)], true)), !vec3<bool>(!global4[_wgslsmith_index_u32(0u, 30u)], any(vec4<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 30u)], false)), global4[_wgslsmith_index_u32(59416u, 30u)])));
    let var_2 = var_0;
    global3 = ~64031u;
    global2 = func_2();
    var var_3 = vec4<i32>(min(-(~u_input.e.x), u_input.e.x) << (var_0.a % 32u), u_input.e.x, ~global2.e.x, u_input.e.x);
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(320f, ~21811u);
}

