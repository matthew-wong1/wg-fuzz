struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global3: array<u32, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    global3 = array<u32, 16>();
    let var_0 = arg_0;
    var var_1 = true;
    var_1 = global0.b.x;
    var var_2 = arg_0;
    return var_0.a;
}

fn func_3() -> bool {
    var var_0 = Struct_1(global0.a, select(vec4<bool>(any(vec3<bool>(true, false, global1.b.x)), true, !global1.b.x, true), global0.b, vec4<bool>(global3[_wgslsmith_index_u32(15640u, 16u)] == _wgslsmith_mult_u32(9693u, 1u), -829f >= _wgslsmith_f_op_f32(-global0.a.x), global1.d == 2147483647i, false)), !(!(!select(vec3<bool>(global0.b.x, true, global0.b.x), vec3<bool>(true, global0.c.x, global1.b.x), vec3<bool>(global1.b.x, global0.b.x, false)))), -u_input.a.x);
    let var_1 = !vec3<bool>(var_0.c.x, false, global1.c.x);
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -144f)), -1260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f * global1.a.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-530f - global0.a.x))))), select(!var_0.b, !(!(!vec4<bool>(true, global0.c.x, var_1.x, true))), !(all(var_1.yx) | (var_1.x || true))), global1.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(2483i & u_input.a.x, -32352i, max(global1.d, 1i), 18254i), abs(max(vec4<i32>(-39760i, u_input.a.x, global1.d, -35715i) | vec4<i32>(u_input.a.x, global0.d, 0i, 26159i), vec4<i32>(13698i, u_input.a.x, 933i, global1.d)))));
    let var_2 = global2[_wgslsmith_index_u32(~abs(~(~(global3[_wgslsmith_index_u32(1u, 16u)] ^ global3[_wgslsmith_index_u32(1u, 16u)]))), 19u)];
    global3 = array<u32, 16>();
    return var_0.c.x;
}

fn func_1() -> vec4<bool> {
    global3 = array<u32, 16>();
    var var_0 = 72764i;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 2420f, 431f) + vec3<f32>(628f, 1093f, 141f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1.a.x, global1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, global0.a.x) - vec3<f32>(global0.a.x, global0.a.x, 1621f)) * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(global0.a.x, global0.a.x, 715f), global1.b, vec3<bool>(global0.b.x, global1.c.x, false), global1.d), Struct_1(vec3<f32>(global1.a.x, global0.a.x, global0.a.x), vec4<bool>(global1.b.x, global0.b.x, global1.b.x, true), global1.c, -40691i)))))), vec4<bool>(global0.c.x, func_3(), all(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 19u)]), false), global1.c, ~u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -969f, global1.a.x))))), !global1.b, select(select(!select(vec3<bool>(false, false, true), vec3<bool>(global1.b.x, global1.c.x, global1.b.x), global1.b.zxw), select(global0.c, global0.b.wwx, select(vec3<bool>(false, global1.c.x, global1.b.x), vec3<bool>(global0.c.x, true, true), global0.c.x)), true), !global1.b.xzx, global0.c.x), global0.d);
    let var_2 = global1.a.zy;
    return select(select(var_1.b, !(!global1.b), !(!(0i <= global1.d))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * var_1.a.x) - _wgslsmith_f_op_f32(select(var_2.x, global0.a.x, var_1.c.x))) > global1.a.x, global1.b.x, all(!vec3<bool>(false, global0.c.x, global0.c.x)), all(global0.b.xw)), select(var_1.b, global1.b, vec4<bool>(any(!var_1.c.zz), var_1.c.x, global0.c.x, any(!global0.c.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(global1.a.x, global1.a.x, global1.a.x)) * _wgslsmith_f_op_vec3_f32(sign(global0.a))), all(!global1.b)))), func_1(), !select(select(!vec3<bool>(global0.b.x, false, false), !vec3<bool>(global1.c.x, global1.b.x, false), global0.c.x || true), global0.b.yxy, false), -1i);
    global1 = Struct_1(vec3<f32>(global0.a.x, 2240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1555f)))), vec4<bool>(global1.b.x, !global1.b.x, func_1().x || !global1.c.x, select(true, true, global0.b.x) || global1.b.x), global0.c, global0.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(262f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1455f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1002f + global1.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1748f * -1855f), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<f32>(global0.a.x, global0.a.x, global0.a.x), global1.b, global1.b.yyw, 22718i), Struct_1(vec3<f32>(-621f, global1.a.x, global0.a.x), global1.b, vec3<bool>(global1.b.x, global0.c.x, true), global1.d))).x, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), select(vec4<bool>(select(true, func_1().x, true), global1.c.x, func_3(), global0.b.x), global0.b, select(vec4<bool>(false, true, true, true), vec4<bool>(func_1().x, !global0.b.x, global1.c.x, any(vec4<bool>(true, global0.b.x, true, true))), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 16u)] != global3[_wgslsmith_index_u32(0u, 16u)], global0.c.x, true)))));
    global3 = array<u32, 16>();
    let var_1 = Struct_1(global0.a, select(!select(vec4<bool>(global0.c.x, false, global1.c.x, false), global1.b, !global0.b), !(!select(vec4<bool>(global1.b.x, global0.c.x, global1.c.x, global1.c.x), vec4<bool>(global0.c.x, global1.c.x, false, false), false)), !(!vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x))), vec3<bool>(any(vec2<bool>(global1.b.x, global0.b.x)) || global0.c.x, global1.c.x != (global0.c.x == global0.b.x), false), u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1247f) - var_0.x), -463f), vec3<f32>(_wgslsmith_f_op_f32(214f + -174f), -1997f, _wgslsmith_f_op_f32(round(420f)))), func_1(), !var_1.c, _wgslsmith_mult_i32(1i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1442f, var_1.a.x, var_0.x) * _wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(global1.a.x, 944f, 781f), var_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(841f, -1637f, var_1.a.x) - global0.a))))));
}

