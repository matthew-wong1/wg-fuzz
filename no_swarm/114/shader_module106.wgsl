struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<i32>(31724i, i32(-2147483648), 23860i, 2147483647i), vec3<f32>(176f, 459f, -358f), 387i);

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-394f, -1000f), vec2<f32>(-591f, -471f), vec2<f32>(-115f, -1876f), vec2<f32>(-722f, 1089f), vec2<f32>(457f, -1309f), vec2<f32>(251f, 432f), vec2<f32>(239f, -2317f), vec2<f32>(866f, 495f));

var<private> global4: f32 = -1000f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c) - global1.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.c.x, var_0.x, -773f))), vec4<f32>(_wgslsmith_f_op_f32(929f + global1.c.x), _wgslsmith_f_op_f32(global1.c.x + -813f), global1.c.x, _wgslsmith_f_op_f32(abs(-1395f)))))));
    return all(select(!(!select(vec3<bool>(global1.a.x, global1.a.x, arg_1.a.x), vec3<bool>(global1.a.x, true, true), arg_1.a.x)), vec3<bool>(any(vec3<bool>(arg_1.a.x, arg_1.a.x, true)) && true, !arg_1.a.x & all(vec3<bool>(arg_1.a.x, false, arg_1.a.x)), true || global1.a.x), !(!vec3<bool>(true, arg_1.a.x, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = global1.a.x;
    var_0 = any(vec2<bool>(true, true)) && !(false & any(!vec4<bool>(false, false, global1.a.x, global1.a.x)));
    global3 = array<vec2<f32>, 8>();
    let var_1 = Struct_1(vec2<bool>(!func_3(_wgslsmith_div_f32(global1.c.x, 883f), Struct_1(global1.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, global1.b.x), vec3<f32>(global1.c.x, 282f, -357f), 1i)), select(false, false, !global1.a.x)), global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 1552f, global1.c.x) - vec3<f32>(global1.c.x, -202f, 1697f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1038f, 1f, -1885f))), 1i);
    var var_2 = all(global0[_wgslsmith_index_u32(u_input.b, 24u)]);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_i32(-26897i, -1i);
    global3 = array<vec2<f32>, 8>();
    let var_1 = Struct_1(!(!vec2<bool>(true, select(global1.a.x, true, false))), vec4<i32>(44824i, 1i, -24406i, (u_input.a.x & 1i) << (1u % 32u)), global1.c, -(~arg_0.b.x));
    global4 = func_2().c.x;
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.x)) + global1.c.x), _wgslsmith_f_op_f32(round(-252f)));
    return ~global1.b;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global2 = array<vec2<bool>, 26>();
    let var_0 = vec3<i32>(global1.b.x, 4576i, reverseBits(min(-(~43159i), 16220i ^ u_input.a.x)));
    let var_1 = u_input.b;
    var var_2 = Struct_1(vec2<bool>(any(select(vec2<bool>(arg_0.x, false), select(global2[_wgslsmith_index_u32(u_input.b, 26u)], vec2<bool>(false, false), global1.a.x), vec2<bool>(false, global1.a.x))), !(!arg_0.x)), func_4(func_2(), vec2<u32>(u_input.b, 1u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f + global1.c.x) + _wgslsmith_f_op_f32(global1.c.x * 1278f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x)))), _wgslsmith_div_f32(global1.c.x, 353f), global1.c.x), -u_input.a.x << (countOneBits(~_wgslsmith_div_u32(27428u, u_input.b)) % 32u));
    global0 = array<vec4<bool>, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(0i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_div_f32(global1.c.x, global1.c.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(global1.c.x - 689f))))) + _wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + global1.c.x)));
    global1 = func_1(global0[_wgslsmith_index_u32(69934u, 24u)]);
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 24u)];
    global4 = _wgslsmith_f_op_f32(1004f * 284f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(663f, var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -786f))))), u_input.b);
}

