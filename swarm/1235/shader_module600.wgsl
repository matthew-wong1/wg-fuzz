struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 530f;

var<private> global1: array<f32, 8> = array<f32, 8>(-542f, 1512f, -564f, 741f, -1272f, 756f, 2126f, 568f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    global0 = 1317f;
    let var_0 = Struct_2(~(-firstLeadingBit(2147483647i)));
    let var_1 = firstLeadingBit(abs(vec2<i32>(firstTrailingBit(6127i) & _wgslsmith_add_i32(2147483647i, -517i), _wgslsmith_div_i32(2147483647i, var_0.a))));
    return var_1;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    global1 = array<f32, 8>();
    let var_0 = select(vec4<bool>(any(vec3<bool>(all(vec3<bool>(true, true, true)), false, true)), true, _wgslsmith_dot_vec2_u32(countOneBits(u_input.c.zz), reverseBits(vec2<u32>(4294967295u, u_input.a))) < 4294967295u, false), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true))), vec4<bool>(false, true, true, true));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1265f)), -1843f));
    var var_1 = ~(-vec3<i32>(-countOneBits(arg_1.x), 12270i, _wgslsmith_sub_i32(-15190i << (arg_2 % 32u), arg_1.x)));
    let var_2 = all(!select(vec2<bool>(true, true), var_0.xw, true));
    return 0i;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_div_i32(func_4(-883f, ~func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(20524u, u_input.c.x), u_input.b.yw) | 23821u), 2147483647i), -2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> Struct_4 {
    var var_0 = func_2();
    global1 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 8u)])) - global1[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~arg_0.x, 8u)] - _wgslsmith_f_op_f32(floor(-265f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xww, ~vec3<u32>(74100u, u_input.c.x, u_input.c.x)), 8u)]), vec4<f32>(295f, global1[_wgslsmith_index_u32(29256u, 8u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] - _wgslsmith_f_op_f32(-1080f * -194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_0.x, 8u)])) + global1[_wgslsmith_index_u32(19617u, 8u)]))))));
    let var_2 = !(!vec2<bool>(!select(arg_2, arg_2, arg_2), true != select(arg_2, false, arg_2)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x << (arg_1 % 32u), 8u)] + -1110f) + _wgslsmith_div_f32(_wgslsmith_div_f32(-1310f, global1[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_f_op_f32(148f + global1[_wgslsmith_index_u32(arg_1, 8u)]))))), 1000f, !(!select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, var_2.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 182f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(arg_0.x, 8u)]), true))))), var_1.yz)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> u32 {
    global1 = array<f32, 8>();
    var var_0 = u_input.c;
    var_0 = u_input.c;
    let var_1 = arg_0;
    global1 = array<f32, 8>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 359f;
    global0 = -429f;
    let var_0 = !(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(func_5(func_1(vec2<u32>(u_input.a, 4294967295u), 0u, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-582f, global1[_wgslsmith_index_u32(4294967295u, 8u)], 422f, -1197f))), -36579i >> (u_input.a % 32u), u_input.b.x), 8u)], 1229f)) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.c.x), vec3<u32>(u_input.b.x, 1u, u_input.c.x)), 8u)]));
    global1 = array<f32, 8>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, 1014u), 8u)])), global1[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(select(4294967295u, u_input.b.x, true), 8u)])), select(!vec3<bool>(true, var_0, all(vec3<bool>(false, var_0, false))), func_1(vec2<u32>(min(27858u, 27412u), ~u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c & vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x)), func_1(vec2<u32>(0u, u_input.c.x), _wgslsmith_mult_u32(0u, u_input.b.x), true).c.x).c, !select(var_0, all(vec4<bool>(var_0, var_0, var_0, var_0)), var_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2617f, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 8u)])) + 1466f), global1[_wgslsmith_index_u32(1u, 8u)]));
    global0 = _wgslsmith_f_op_f32(select(465f, _wgslsmith_f_op_f32(floor(1592f)), any(!var_1.c.zy)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -517f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1073f * global1[_wgslsmith_index_u32(reverseBits(0u), 8u)])))), -362f));
    var var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-9524i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.a, -307f, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, -254f, 870f, -1323f)), true)))));
}

