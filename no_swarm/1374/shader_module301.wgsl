struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 15> = array<f32, 15>(-436f, -124f, -1003f, -1316f, 1000f, 2607f, 1564f, 1741f, -967f, 657f, -501f, 498f, 1625f, 266f, 2308f);

var<private> global2: array<vec4<f32>, 21>;

var<private> global3: array<vec3<u32>, 19>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = !any(vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)), arg_1.x >= global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), 24u)]));
    var var_1 = all(vec2<bool>(var_0, false & all(!vec4<bool>(true, false, var_0, true))));
    let var_2 = vec4<bool>(true, all(!vec3<bool>(!var_0, any(vec2<bool>(false, false)), all(vec2<bool>(var_0, true)))), any(!select(!vec2<bool>(true, var_0), !vec2<bool>(false, var_0), true)), var_0);
    var var_3 = u_input.b;
    global1 = array<f32, 15>();
    return vec3<u32>(u_input.e, 4294967295u, u_input.e);
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<bool> {
    global3 = array<vec3<u32>, 19>();
    global2 = array<vec4<f32>, 21>();
    global0 = true;
    var var_0 = func_3(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(20989i, 59557i), _wgslsmith_mult_i32(u_input.d, 37360i)), u_input.c.x), u_input.c.x, u_input.a.x, -u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(55888u, 62691u), 21u)] + vec4<f32>(942f, -1058f, arg_1, global4[_wgslsmith_index_u32(0u, 24u)])))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 15u)])), 701f, 1765f));
    return !select(!(!(!vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(any(vec2<bool>(false, arg_0)), true, !any(vec2<bool>(true, true))), true);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = select(select(!func_2(select(true, true, true), -704f), vec3<bool>(!any(vec3<bool>(true, false, false)), true, ~0i < firstLeadingBit(arg_1)), true), !(!vec3<bool>(true, func_2(false, global4[_wgslsmith_index_u32(1u, 24u)]).x, select(true, true, true))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, false, true), true));
    let var_1 = arg_0;
    var var_2 = 3299u;
    global0 = var_0.x;
    global0 = true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 15u)]);
    let var_1 = 0u;
    let var_2 = func_1(Struct_1(~abs(~vec3<u32>(4294967295u, u_input.e, var_1)), u_input.c.x), ~(-(i32(-1i) * -43822i)), -u_input.c);
    global4 = array<f32, 24>();
    var var_3 = !select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), !all(vec4<bool>(false, true, false, false))), !vec3<bool>(all(vec3<bool>(true, true, false)), true, true), any(select(vec3<bool>(true, true, true), func_2(true, -182f), true)));
    var var_4 = vec4<f32>(global1[_wgslsmith_index_u32(var_1, 15u)], var_0, global4[_wgslsmith_index_u32(~0u, 24u)], var_0);
    var_3 = vec3<bool>(false, !(var_3.x | all(!vec4<bool>(true, var_3.x, var_3.x, var_3.x))), !var_3.x & var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~48423i, var_4.wy, i32(-1i) * -10823i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] * 1648f) + global1[_wgslsmith_index_u32(var_2.a.x, 15u)]), 729f)));
}

