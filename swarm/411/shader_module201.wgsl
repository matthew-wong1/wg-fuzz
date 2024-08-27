struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(2147483647i, 43101i, 1i), vec3<i32>(0i, -1i, 0i), vec3<i32>(-21594i, 13019i, 1i), vec3<i32>(i32(-2147483648), 2108i, -34704i), vec3<i32>(2147483647i, 92004i, 2147483647i), vec3<i32>(65243i, -3567i, -28409i), vec3<i32>(-1i, -37475i, -32037i), vec3<i32>(2147483647i, -18498i, -1i), vec3<i32>(22324i, 34746i, 1i), vec3<i32>(3542i, 1i, -24908i), vec3<i32>(-19520i, 7351i, -3960i), vec3<i32>(0i, 2147483647i, -26393i), vec3<i32>(-1i, 2147483647i, 17318i), vec3<i32>(1i, -1i, 26i), vec3<i32>(2147483647i, -431i, 24703i), vec3<i32>(46560i, 78213i, 1i), vec3<i32>(2147483647i, 55227i, i32(-2147483648)), vec3<i32>(41967i, -21987i, 1i), vec3<i32>(2503i, 8491i, 17130i), vec3<i32>(2147483647i, 42989i, 34883i), vec3<i32>(-25012i, 8563i, -38984i), vec3<i32>(i32(-2147483648), 5544i, i32(-2147483648)), vec3<i32>(29457i, 2147483647i, 0i), vec3<i32>(2147483647i, 1i, 40998i));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(9033u), Struct_1(4724u));

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(u_input.a.x, u_input.a.x);
    let var_1 = u_input.a.x;
    global1 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, 1032f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, -103f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-2499f, 492f), vec2<f32>(443f, -968f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1166f)) * _wgslsmith_f_op_f32(-998f * 496f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, 472f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(173f, 1521f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1309f, -332f) + vec2<f32>(-1697f, -1263f)))))));
    var var_3 = global1[_wgslsmith_index_u32(~14507u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

