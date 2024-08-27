struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, false, false), true));

var<private> global1: array<i32, 25> = array<i32, 25>(50876i, 1i, i32(-2147483648), i32(-2147483648), 3046i, -5828i, 0i, 1i, -20732i, -8186i, -1i, -28146i, 0i, -29096i, -41865i, 2147483647i, 2147483647i, -1i, -18345i, 88278i, 1623i, 1i, -17340i, 25192i, -1i);

var<private> global2: array<i32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(1000f - 110f);
    let var_1 = -899f;
    global1 = array<i32, 25>();
    let var_2 = !(!vec3<bool>(arg_0.a.x, arg_0.b, arg_0.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -423f), vec2<f32>(var_1, 485f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-197f, var_1))), false)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2102f, var_1), vec2<f32>(var_1, -1454f))), vec2<f32>(var_0, var_0))), vec2<f32>(-728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1876f * var_1) + _wgslsmith_f_op_f32(max(var_1, 886f))))));
    return 0i;
}

fn func_2() -> vec4<bool> {
    global2 = array<i32, 4>();
    global0 = array<Struct_1, 2>();
    var var_0 = !(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, any(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)))));
    global1 = array<i32, 25>();
    var_0 = vec4<bool>(!var_0.x, any(select(!select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(false, true, var_0.x, var_0.x)))), !var_0.x, !(all(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, false), var_0.x)) | any(!var_0.zyy)));
    return vec4<bool>(!(global2[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(44514u, 4081u, 0u), abs(4294967295u), true), 4u)] < func_3(Struct_1(vec3<bool>(false, false, true), true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(35101u, 31318u), 2u)], Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(77416u, 25u)], global2[_wgslsmith_index_u32(0u, 4u)], 2147483647i, u_input.a.x), Struct_1(var_0.zwz, var_0.x)))), !var_0.x, true, false);
}

fn func_1() -> Struct_3 {
    global1 = array<i32, 25>();
    let var_0 = func_2();
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    global2 = array<i32, 4>();
    return Struct_3(u_input.a, Struct_2(min(-vec4<i32>(0i, 16063i, u_input.a.x, global2[_wgslsmith_index_u32(1u, 4u)]), ~select(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -38513i, -18332i, global2[_wgslsmith_index_u32(58080u, 4u)]), var_0)), Struct_1(func_2().www, select(true & var_0.x, false, !var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    var_0 = 1u;
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = var_1.b.b.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1575f, 328f)), _wgslsmith_f_op_f32(min(-522f, -1039f)))))), -34825i, select(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(~27973u, ~52782u, 39384u, 1u >> (0u % 32u)), true));
}

