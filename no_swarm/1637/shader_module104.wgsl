struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 8> = array<u32, 8>(48542u, 1u, 1u, 63174u, 67456u, 4294967295u, 9598u, 5922u);

var<private> global2: array<Struct_3, 8>;

var<private> global3: Struct_4 = Struct_4(i32(-2147483648), Struct_2(-978f), true, 63893u, vec3<f32>(339f, 1962f, 233f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(exp2(global3.e.x)));
    global1 = array<u32, 8>();
    var var_2 = Struct_3(var_0.a, Struct_1(vec3<bool>(false, !(global3.c || false), any(!vec2<bool>(arg_0, global3.c))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, global3.a, arg_1, 85129i), vec4<i32>(arg_1, 0i, arg_1, arg_1)) ^ abs(vec4<i32>(9340i, 0i, arg_1, arg_1))), vec4<bool>(select(!arg_0, arg_0, any(vec3<bool>(false, arg_0, arg_0))), true | all(vec3<bool>(false, true, true)), any(select(vec3<bool>(true, global3.c, false), vec3<bool>(true, global3.c, false), true)), true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(abs(arg_2.a))));
    let var_3 = vec4<f32>(1159f, arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(step(var_1, var_0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f * var_2.a)))), _wgslsmith_f_op_f32(trunc(arg_2.a)));
    return 69728u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> Struct_2 {
    global3 = Struct_4(-33949i, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b.a + -1341f), _wgslsmith_f_op_f32(-global3.b.a))), false, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(func_3(true, -64341i, Struct_2(global3.e.x), u_input.b.x), 8u)]), 16457u, 36254u), global3.e);
    var var_0 = u_input.d.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-global3.e.x));
    global3 = Struct_4(_wgslsmith_mod_i32(-2147483647i, -global3.a), global3.b, true, 23391u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1767f, var_1.a)))) + var_1.a), -529f, 1337f));
    var var_2 = Struct_3(-1120f, Struct_1(select(vec3<bool>(true, all(arg_2.yy), arg_1), !(!arg_2), all(vec2<bool>(true, true))), firstTrailingBit(vec4<i32>(arg_0, 2147483647i ^ global3.a, abs(arg_0), abs(-9077i))), vec4<bool>(arg_2.x, !global3.c, !(var_1.a <= -1575f), arg_1 && (var_1.a < 1892f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.e.x, 422f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, -2068f) - global3.e.yz)) + _wgslsmith_div_vec2_f32(global3.e.zx, _wgslsmith_div_vec2_f32(global3.e.yz, global3.e.zx)))));
    return global3.b;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_3, 8>();
    let var_0 = func_2(_wgslsmith_add_i32(max(-firstLeadingBit(global3.a), 1i), arg_3.a), true, !select(!select(vec3<bool>(global3.c, true, arg_3.c), vec3<bool>(false, arg_3.c, true), vec3<bool>(false, global3.c, false)), vec3<bool>(arg_3.c, global3.c, global3.c), !(!vec3<bool>(arg_3.c, false, global3.c))));
    global2 = array<Struct_3, 8>();
    global1 = array<u32, 8>();
    var var_1 = Struct_4(2147483647i >> (select(arg_0, arg_3.d, global3.c & !arg_3.c) % 32u), Struct_2(arg_3.e.x), ~abs(firstLeadingBit(33839u)) <= _wgslsmith_dot_vec3_u32(select(~u_input.c, ~vec3<u32>(global1[_wgslsmith_index_u32(global3.d, 8u)], u_input.b.x, 1u), -39562i < arg_3.a), firstLeadingBit(~u_input.b)), arg_3.d, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, var_0.a, arg_2.x > arg_3.a))), arg_3.b.a, arg_3.e.x));
    return -1289f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-710f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(1u, vec4<i32>(global3.a, global3.a, -1i, -1i), vec4<i32>(-1i, -10206i, global3.a, 0i), Struct_4(global3.a, Struct_2(1580f), false, 20481u, global3.e))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1000f, global3.b.a)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(~2932u, ~vec4<i32>(global3.a, -1i, global3.a, global3.a), firstTrailingBit(vec4<i32>(global3.a, -13861i, global3.a, 54407i)), Struct_4(global3.a, global3.b, false, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.d, 8u)], 8u)], vec3<f32>(global3.b.a, global3.e.x, global3.e.x))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(global3.e)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-275f, global3.e.x, global3.e.x))))), global3.e, true)), global3.e, global3.c))));
    let var_1 = Struct_2(global3.e.x);
    var var_2 = global3.c || global3.c;
    global2 = array<Struct_3, 8>();
    global1 = array<u32, 8>();
    global1 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), abs(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(26848u, func_3(true, global3.a, Struct_2(-177f), global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), select(global1[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 8u)], _wgslsmith_mult_u32(3481u, u_input.a.x), false)), 8u)]), global3.d);
}

