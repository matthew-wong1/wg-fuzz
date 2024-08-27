struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-669f, 683f, 764f), vec3<f32>(379f, -405f, -1413f), vec3<f32>(-1028f, 706f, -101f), vec3<f32>(557f, -2036f, -1089f), vec3<f32>(2221f, 1079f, -1499f), vec3<f32>(-2123f, 561f, 376f), vec3<f32>(-261f, 1000f, -227f), vec3<f32>(-449f, 277f, -1074f), vec3<f32>(-2329f, -1961f, -1466f), vec3<f32>(1409f, -555f, -2585f), vec3<f32>(-515f, -1779f, 723f), vec3<f32>(437f, 560f, 1053f), vec3<f32>(873f, -139f, 1435f), vec3<f32>(-1000f, -1937f, -115f), vec3<f32>(-387f, 1323f, 319f), vec3<f32>(-177f, 1000f, 335f), vec3<f32>(458f, -520f, 546f), vec3<f32>(1350f, 372f, -1841f), vec3<f32>(156f, 1190f, 1751f), vec3<f32>(1000f, -874f, -1258f), vec3<f32>(-1000f, -1766f, -727f), vec3<f32>(-940f, 1716f, -1453f), vec3<f32>(-208f, -263f, -404f), vec3<f32>(-1000f, 769f, 829f), vec3<f32>(1749f, -791f, -525f), vec3<f32>(1820f, -1000f, -530f), vec3<f32>(-1811f, 271f, 1332f), vec3<f32>(-1340f, -3419f, -735f), vec3<f32>(1075f, 2005f, 722f), vec3<f32>(-1134f, -260f, -1286f), vec3<f32>(-1700f, -868f, 1000f), vec3<f32>(1353f, 238f, 953f));

var<private> global1: array<i32, 2> = array<i32, 2>(2147483647i, 0i);

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    var var_0 = ~arg_1.e.yz;
    global2 = _wgslsmith_f_op_f32(arg_0 * arg_0);
    let var_1 = arg_1;
    let var_2 = select(_wgslsmith_div_u32(39238u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 28276u, var_1.a), arg_1.e), reverseBits(var_0.x)), ~_wgslsmith_add_u32(1u, 86738u))), ~arg_1.a, !all(select(vec3<bool>(arg_2.b.x, arg_2.d, var_1.b.x), vec3<bool>(true, false, true), false)));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.c, 0u), 1u), var_2), var_1.e.zx >> (~vec2<u32>(50156u, var_1.c) % vec2<u32>(32u)));
    return -314i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    var var_0 = vec2<bool>(any(select(vec4<bool>(false, select(false, true, true), false, true), vec4<bool>(false, true, any(vec3<bool>(false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), true);
    global0 = array<vec3<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1406f, -140f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(189f, -130f) - vec2<f32>(-1000f, -945f))))))), vec3<i32>(1i >> (~(~0u) % 32u), _wgslsmith_clamp_i32(max(-56591i, func_1(1024f, Struct_1(1110u, vec2<bool>(var_0.x, var_0.x), 1u, var_0.x, vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_1(u_input.b, vec2<bool>(false, true), u_input.b, var_0.x, vec3<u32>(u_input.b, 0u, 0u)), vec3<i32>(1i, -46422i, u_input.a))), -21395i, 0i), global1[_wgslsmith_index_u32(u_input.b, 2u)] | ~(-2147483647i >> (0u % 32u))));
}

