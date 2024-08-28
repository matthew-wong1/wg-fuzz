struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
    e: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_5, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec4<bool>, 12>();
    global3 = array<Struct_5, 24>();
    var var_0 = Struct_3(true, u_input.b, -max(-1i, _wgslsmith_add_i32(39885i, 3005i)));
    var var_1 = true;
    global2 = global1[_wgslsmith_index_u32(~min(0u, u_input.c), 8u)];
    return global0[_wgslsmith_index_u32(~countOneBits(0u), 12u)];
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = Struct_5(~u_input.a, -(~select(vec3<i32>(global2.x, 0i, 1i) << (vec3<u32>(u_input.b, u_input.a, 1u) % vec3<u32>(32u)), reverseBits(vec3<i32>(-1i, -43831i, 2147483647i)), func_1().x)), global1[_wgslsmith_index_u32(~18500u, 8u)], all(select(vec2<bool>(true, true), func_1().zy, all(vec2<bool>(false, true)))), !any(vec3<bool>(true, true, true)));
    global1 = array<vec4<i32>, 8>();
    global3 = array<Struct_5, 24>();
    var var_2 = reverseBits(vec4<i32>(-1i, 0i, ~_wgslsmith_mult_i32(1i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(65110i, global2.x), _wgslsmith_sub_i32(33183i, -4526i), _wgslsmith_add_i32(-1i, -2147483647i), global2.x), abs(global1[_wgslsmith_index_u32(4294967295u, 8u)]) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.a, 59149u, u_input.b), vec4<u32>(var_1.a, 0u, 457u, var_1.a)) % vec4<u32>(32u)))));
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(abs(0u | u_input.a), 24u)];
    global0 = array<vec4<bool>, 12>();
    var var_1 = Struct_1(true, _wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1011f, arg_0.x), -1124f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1005f + arg_0.x))))), var_0.d);
    global3 = array<Struct_5, 24>();
    let var_2 = arg_0.wy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1498f * _wgslsmith_f_op_f32(-1025f + var_2.x)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), func_3() < ~18346u)) * -2127f) - _wgslsmith_f_op_f32(floor(508f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1());
    global3 = array<Struct_5, 24>();
    global1 = array<vec4<i32>, 8>();
    var var_1 = var_0.x || all(vec2<bool>(true, true));
    let var_2 = vec3<u32>(u_input.b, 4294967295u, u_input.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(197f, -1452f, 1000f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1099f, 778f, 154f, -565f), vec4<f32>(-272f, 250f, 1000f, -1091f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f * 414f) + -243f), _wgslsmith_f_op_f32(abs(249f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f * 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1364f, 1784f, 2810f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2195f, -912f, -1000f), vec3<f32>(-682f, 1270f, 1499f)))))));
    var var_4 = -709f;
    var_1 = any(!vec2<bool>(var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_add_i32(0i, _wgslsmith_add_i32(global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_3.x, var_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, var_3.x, var_3.x))), var_0.x)) + vec3<f32>(var_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x + -493f))), -502f)));
}

