struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-462f, -1332f, -1485f, 1000f, 1006f, -1817f, 1530f, 251f, 1399f, -268f, 324f, 1518f, -889f, -1000f, -1715f, -922f, 483f, -2044f, 148f, 794f, 1000f, 1245f, -694f, -2022f, -346f, 612f, 1018f, -1000f, -1618f, 1108f, -430f, -224f);

var<private> global1: array<Struct_3, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = arg_1;
    global1 = array<Struct_3, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -515f));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f - -896f) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_1.a)))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(55306u, 32u)], -304f, false)) * _wgslsmith_f_op_f32(step(-1108f, -1111f)))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, arg_2), u_input.a.x), 27u)];
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)]) - _wgslsmith_f_op_f32(func_3(arg_1, Struct_2(global0[_wgslsmith_index_u32(33571u, 32u)], var_0.b), -953f, vec4<i32>(var_0.e.a, var_0.b.a, -1i, -1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f - 641f)))), _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a - 404f) + var_0.d.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 32u)] + global0[_wgslsmith_index_u32(1u, 32u)]) + global0[_wgslsmith_index_u32(10288u, 32u)]), _wgslsmith_f_op_f32(round(371f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(33307u, 32u)], -287f, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<f32>(1000f, 416f, global0[_wgslsmith_index_u32(arg_2, 32u)]))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a, 671f, var_0.d.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], var_0.d.a, global0[_wgslsmith_index_u32(arg_2, 32u)]) * vec3<f32>(var_0.d.a, -1000f, 338f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 32>();
    global1 = array<Struct_3, 27>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(-2441f, var_0.d.a)), var_0.e, Struct_1(_wgslsmith_mod_i32(-47971i, var_0.d.b.a)))), _wgslsmith_f_op_f32(round(301f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(abs(u_input.a.x), 32u)], -407f)), _wgslsmith_f_op_f32(ceil(-314f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a, 101f, -1300f) * vec3<f32>(-508f, global0[_wgslsmith_index_u32(var_0.c, 32u)], var_0.d.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a, -544f, 1507f) + vec3<f32>(1000f, -294f, 1936f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(true, var_0.b, var_0.c)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(33563u, 32u)], 1000f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a, global0[_wgslsmith_index_u32(11591u, 32u)], -184f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, 2012f, var_0.d.a))))));
    global1 = array<Struct_3, 27>();
    var_0 = global1[_wgslsmith_index_u32(~(~u_input.b), 27u)];
    var var_2 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 725f, var_0.d.a, var_1.x) + vec4<f32>(global0[_wgslsmith_index_u32(32658u, 32u)], var_0.d.a, global0[_wgslsmith_index_u32(var_0.a, 32u)], 1058f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a, var_2.a, 1404f, -1000f) * vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -464f, var_1.x, -1358f)))))), var_0.d.b.a, var_2.b.a, ~(vec4<i32>(0i, 2147483647i, -1i, min(0i, var_2.b.a)) & ~vec4<i32>(var_2.b.a, var_2.b.a, 2147483647i, var_2.b.a)), ~u_input.a.x);
}

