struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
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

var<private> global1: Struct_2;

var<private> global2: array<bool, 2>;

var<private> global3: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(7917u, 15727u));

var<private> global4: array<vec3<i32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> bool {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.e.wx, countOneBits(-vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, 80834i), arg_0.x)));
    let var_2 = global1.a;
    var var_3 = _wgslsmith_f_op_f32(-arg_1.b);
    let var_4 = arg_1;
    return true;
}

fn func_1() -> Struct_1 {
    global3 = array<vec2<u32>, 1>();
    global3 = array<vec2<u32>, 1>();
    global4 = array<vec3<i32>, 25>();
    let var_0 = Struct_1(vec4<bool>(global0.a.x, all(!vec3<bool>(global0.a.x, global1.a.a.x, true)), !select(true, global2[_wgslsmith_index_u32(~global1.a.b, 2u)], 13974u >= u_input.c), select(!any(global0.a.wy), all(!global1.a.a), select(any(vec3<bool>(global0.a.x, true, false)), true, func_2(vec2<i32>(u_input.d.x, u_input.e.x), Struct_3(global1.a, 1377f, vec2<bool>(true, true), Struct_1(global0.a, 1u)), global1.a.a.x)))), _wgslsmith_mod_u32(u_input.b.x, max(~_wgslsmith_sub_u32(87728u, 38073u), 1u)));
    var var_1 = -u_input.a.x;
    return global1.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = global0.a.xw;
    global4 = array<vec3<i32>, 25>();
    let var_1 = arg_1.b;
    var var_2 = Struct_3(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f))))), !(!global0.a.zy), Struct_1(!select(global0.a, vec4<bool>(arg_1.a.x, var_0.x, var_0.x, false), global2[_wgslsmith_index_u32(var_1, 2u)]), u_input.c));
    let var_3 = !select(!global1.a.a.xwy, vec3<bool>(!(!global0.a.x), true, func_2(arg_0.wy, Struct_3(Struct_1(vec4<bool>(true, true, true, false), var_2.d.b), var_2.b, vec2<bool>(true, var_0.x), arg_1), global1.a.a.x)), var_2.a.a.x);
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-353f)) - -337f) - 1f), 380f)), 1308f, _wgslsmith_f_op_f32(trunc(1131f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1());
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1516f, -1000f))))));
    var var_2 = global1.a;
    global0 = func_1();
    global1 = Struct_2(Struct_1(select(vec4<bool>(global1.a.a.x && global1.a.a.x, true, select(false, global2[_wgslsmith_index_u32(var_0.a.b, 2u)], global2[_wgslsmith_index_u32(var_2.b, 2u)]), 13650u <= global0.b), !(!vec4<bool>(var_0.a.a.x, global2[_wgslsmith_index_u32(79742u, 2u)], var_2.a.x, var_0.a.a.x)), !vec4<bool>(global1.a.a.x, global1.a.a.x, var_2.a.x, var_0.a.a.x)), max(~1u, u_input.c)));
    var_1 = -461f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-386f, 1043f, 714f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2620f, -1000f, 279f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.e.x, 1i, -1i, u_input.d.x), var_0.a)))), vec3<f32>(170f, -643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1537f)) - -917f)))));
}

