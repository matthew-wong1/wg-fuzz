struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<bool, 5>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-299f, vec2<bool>(true, false)), Struct_2(599f, vec2<bool>(false, true)), Struct_2(-1000f, vec2<bool>(false, false)), Struct_2(361f, vec2<bool>(true, false)), Struct_2(-738f, vec2<bool>(true, true)), Struct_2(858f, vec2<bool>(false, false)), Struct_2(1567f, vec2<bool>(true, false)), Struct_2(1457f, vec2<bool>(true, true)));

var<private> global2: array<vec3<f32>, 29>;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~94549u), 8u)];
    global2 = array<vec3<f32>, 29>();
    let var_1 = Struct_2(var_0.a, vec2<bool>(true, true));
    global2 = array<vec3<f32>, 29>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), (abs(u_input.a) ^ (u_input.a ^ (u_input.b << (31477u % 32u)))) >= abs(34385i), any(var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 1069f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2[_wgslsmith_index_u32(20433u, 29u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-586f, var_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(502f, var_1.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a, var_0.a))))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), -578f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -516f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.a, -2155f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = 1u;
    let var_1 = Struct_1(_wgslsmith_div_f32(-615f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -650f))))), arg_1.a.x, true || arg_1.a.x, arg_0.zyy, vec2<f32>(-207f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -139f))) * _wgslsmith_f_op_f32(func_3()))));
    let var_2 = 1195f;
    let var_3 = var_1.d.xx;
    let var_4 = !(any(vec4<bool>(true, true, false, true)) & global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(arg_1.c >> (105127u % 32u), 39900u, u_input.b >= -47632i), ~0u), 5u)]);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + -1099f), _wgslsmith_div_f32(777f, -2635f)), arg_0.x, _wgslsmith_div_f32(var_3.x, arg_0.x) <= _wgslsmith_f_op_f32(var_1.e.x * var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-731f, 829f), _wgslsmith_div_vec2_f32(vec2<f32>(1275f, 764f), vec2<f32>(824f, 1511f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(234f, _wgslsmith_f_op_f32(func_2(vec4<f32>(-2166f, -642f, 3100f, 1521f), Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(47628u, 5u)]), vec3<i32>(-1i, u_input.b, 15420i), 52668u)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-427f, -1093f), vec2<f32>(1539f, -1573f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2696f - -1534f), var_0.x, true))), true, true, vec3<f32>(var_0.x, var_0.x, -717f), vec2<f32>(-1000f, var_0.x));
    let var_2 = Struct_1(var_1.d.x, !var_1.b, true, vec3<f32>(var_0.x, 627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1240f + var_0.x) * -1094f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.d.zy, var_1.e))))))));
    global3 = array<Struct_2, 32>();
    global3 = array<Struct_2, 32>();
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2139f))))), vec2<bool>(true, select(!var_2.c, select(var_2.b, false, true), !var_1.c))), Struct_1(var_1.a, false || (u_input.b > -1i), all(vec3<bool>(var_1.c, !var_2.c, var_2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.d)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(121f)), var_2.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.d.xz, var_1.e) * vec2<f32>(165f, var_1.d.x)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(8416u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), false), select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 5u)]), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(33157u, 5u)], var_1.c), vec2<bool>(true, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    global3 = array<Struct_2, 32>();
    global0 = array<bool, 5>();
    let var_0 = func_1();
    global0 = array<bool, 5>();
    let var_1 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(abs(-1000f)), 3150f));
}

