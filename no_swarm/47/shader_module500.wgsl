struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-12157i, 1i), vec2<i32>(-34780i, 13328i), vec2<i32>(-45485i, -22546i), vec2<i32>(-1i, 0i), vec2<i32>(6054i, -1i), vec2<i32>(i32(-2147483648), -1i));

var<private> global1: bool;

var<private> global2: array<Struct_3, 22>;

var<private> global3: array<u32, 25>;

var<private> global4: array<u32, 1> = array<u32, 1>(21273u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global3 = array<u32, 25>();
    global3 = array<u32, 25>();
    global0 = array<vec2<i32>, 6>();
    global4 = array<u32, 1>();
    global2 = array<Struct_3, 22>();
    return Struct_1(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 25u)] << (u_input.a % 32u), 1u)], 31242u ^ u_input.d.x), 6u)], firstLeadingBit(_wgslsmith_sub_vec2_i32(-global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 25u)], 6u)], _wgslsmith_div_vec2_i32(vec2<i32>(46560i, u_input.b.x), u_input.b)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(u_input.e, u_input.b.x, 0i, u_input.b.x);
    var var_1 = 2147483647i;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(489f, 140f), vec2<f32>(816f, -489f)))))), func_2());
    var var_3 = false;
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 257f)) * var_2.a), var_2.b);
    return Struct_1(var_0.x);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    var var_0 = global3[_wgslsmith_index_u32(56615u, 25u)];
    let var_1 = min(-u_input.e << (_wgslsmith_mult_u32(select(u_input.d.x, _wgslsmith_add_u32(1u, 1u), select(false, false, false)), ~arg_1) % 32u), 1i);
    let var_2 = Struct_2(~(~0u), Struct_1(-select(-2147483647i, u_input.e << (16832u % 32u), true)), func_2());
    var var_3 = vec4<bool>(~global3[_wgslsmith_index_u32(44607u, 25u)] == (69183u & u_input.a), true || any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false)), true, all(vec3<bool>(!any(vec4<bool>(false, false, false, true)), false, true)));
    let var_4 = !any(!select(select(var_3.wz, vec2<bool>(var_3.x, var_3.x), var_3.zz), !var_3.xz, select(var_3.xx, var_3.xx, false)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1072f, -1751f, arg_0) - vec4<f32>(arg_0, arg_0, -1000f, -1563f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, 921f, -782f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 410f, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -1000f, arg_0, -686f), vec4<f32>(arg_0, arg_0, -780f, 649f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = 2147483647i;
    var var_1 = func_1();
    var var_2 = Struct_1(var_1.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(459f, 29679u)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-939f, -680f) + _wgslsmith_f_op_vec4_f32(func_3(916f, 26406u)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2800f + -386f) * _wgslsmith_f_op_f32(-2013f + 927f))), _wgslsmith_f_op_f32(floor(245f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(-714f, ~23301u)).x)))));
    global4 = array<u32, 1>();
    let var_4 = var_3.x;
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_sub_i32(6937i, min(var_2.a, 12132i))), countOneBits(var_0 | u_input.e) | _wgslsmith_clamp_i32(u_input.e ^ u_input.e, firstLeadingBit(var_1.a), 1i), ~17668i, ~var_2.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) + _wgslsmith_f_op_f32(select(var_3.x, 1680f, true))), -1528f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1361f)))), _wgslsmith_f_op_f32(1079f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-604f, 1718f, false)), -547f)), _wgslsmith_f_op_f32(min(760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, -1132f)))))), u_input.e, ~83018u | global3[_wgslsmith_index_u32(u_input.d.x, 25u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-263f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(f32(-1f) * -177f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-232f + var_3.x), _wgslsmith_div_f32(-1430f, var_3.x)))));
}

