struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(789f, -1850f, 697f, -438f), vec4<f32>(845f, 463f, 2359f, -599f), vec4<f32>(253f, -2953f, 237f, 500f), vec4<f32>(1737f, 174f, 121f, 1256f), vec4<f32>(964f, 835f, -715f, 1682f), vec4<f32>(2479f, 696f, -2125f, 457f), vec4<f32>(-236f, 518f, -1318f, 1025f), vec4<f32>(-649f, 1490f, -1519f, 1441f), vec4<f32>(2174f, -1113f, 232f, 741f), vec4<f32>(1131f, -182f, 535f, -668f), vec4<f32>(-1912f, -692f, -650f, 243f), vec4<f32>(755f, 457f, 530f, 734f), vec4<f32>(885f, -510f, -1934f, -525f), vec4<f32>(1308f, 1778f, -710f, -1437f), vec4<f32>(-1000f, -364f, -909f, 1708f), vec4<f32>(186f, -1087f, 237f, -1000f), vec4<f32>(1578f, 231f, 735f, 461f), vec4<f32>(271f, -1000f, -1834f, -364f), vec4<f32>(489f, 1645f, -616f, 961f), vec4<f32>(1448f, -735f, -854f, -824f), vec4<f32>(-852f, 645f, 318f, 1362f), vec4<f32>(-809f, -516f, 338f, 356f), vec4<f32>(613f, 1903f, 1018f, -447f), vec4<f32>(-563f, -1557f, 1584f, -759f), vec4<f32>(1000f, 838f, 389f, 1046f), vec4<f32>(790f, 355f, -145f, 524f), vec4<f32>(-827f, 510f, 513f, 1042f), vec4<f32>(396f, -1940f, 612f, 182f), vec4<f32>(-585f, -1525f, 412f, 568f));

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<bool>, 5>();
    global0 = array<vec4<f32>, 29>();
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.a;
    global1 = array<vec4<bool>, 5>();
    global0 = array<vec4<f32>, 29>();
    var var_1 = Struct_2(arg_2.b, var_0);
    var var_2 = Struct_2(var_0, var_0);
    return _wgslsmith_mult_u32(4294967295u, arg_0);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = 1u;
    var_0 = _wgslsmith_mult_u32(countOneBits(func_3(1u, 1i, Struct_2(Struct_1(vec4<bool>(arg_1, arg_1, false, true), -39248i), Struct_1(global1[_wgslsmith_index_u32(1u, 5u)], -977i)))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 4294967295u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 77857u, 78454u), vec4<u32>(61029u, 19976u, 1383u, 0u)))));
    var var_1 = _wgslsmith_div_u32(max(_wgslsmith_div_u32(0u, ~1042u), ~0u), 1u);
    let var_2 = ~(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, 0u), 1u, ~51890u, max(0u, 48040u)), vec4<u32>(1u, 1u, 1u, 1u)) % 32u));
    var_1 = 6698u;
    return Struct_1(func_2(2147483647i, func_2(-1i, func_2(_wgslsmith_sub_i32(37726i, 42840i), Struct_1(global1[_wgslsmith_index_u32(var_2, 5u)], -1i), func_2(arg_0.x, Struct_1(vec4<bool>(arg_1, arg_1, true, arg_1), u_input.a), Struct_1(global1[_wgslsmith_index_u32(var_2, 5u)], u_input.b))), Struct_1(vec4<bool>(false, arg_1, arg_1, false), -7671i)), func_2(_wgslsmith_div_i32(-arg_0.x, u_input.a), Struct_1(global1[_wgslsmith_index_u32(var_2 ^ 33417u, 5u)], ~(-36798i)), Struct_1(!global1[_wgslsmith_index_u32(57884u, 5u)], ~u_input.b))).a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a, -2147483647i)), ~(-(vec3<i32>(1i, 2147483647i, 52198i) | arg_0))));
}

fn func_1() -> bool {
    global1 = array<vec4<bool>, 5>();
    let var_0 = func_4(vec3<i32>(u_input.a, u_input.b, min(u_input.b, 1i)), 60772u > func_3(1u | _wgslsmith_clamp_u32(0u, 119867u, 154422u), ~u_input.a, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 2147483647i), func_2(-35577i, Struct_1(vec4<bool>(false, true, false, false), u_input.a), Struct_1(vec4<bool>(false, false, false, false), u_input.a)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-185f - -555f), _wgslsmith_f_op_f32(-1587f - 955f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1251f * -870f), _wgslsmith_f_op_f32(max(-616f, 602f))))))), 720f, -311f);
    var var_2 = -1i;
    let var_3 = select(select(!var_0.a.wyy, !vec3<bool>(all(vec3<bool>(false, var_0.a.x, true)), true, any(var_0.a.wy)), var_0.a.wzw), vec3<bool>(0u > ~select(53403u, 0u, true), var_0.a.x, true), !var_0.a.xzz);
    return !(!var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = vec4<bool>(true, any(!vec3<bool>(true, true, func_1())), _wgslsmith_f_op_f32(min(-270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1869f))))) >= _wgslsmith_f_op_f32(trunc(387f)), all(vec2<bool>(true, true)));
    let var_2 = Struct_2(Struct_1(vec4<bool>(func_1(), func_4(countOneBits(vec3<i32>(2147483647i, 27645i, 0i)), var_1.x).a.x, any(vec4<bool>(var_1.x, false, var_1.x, false)) && func_1(), true), -2147483647i), Struct_1(!vec4<bool>(var_1.x, var_1.x, var_1.x, any(var_1.xyw)), 2147483647i));
    global0 = array<vec4<f32>, 29>();
    let var_3 = ~(~(~firstLeadingBit(4294967295u)) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(26954u, 34934u, 11118u)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(36427u, var_3), 29u)]))))), min(4294967295u, ~(~63038u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1110f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1562f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(614f))) * _wgslsmith_f_op_f32(f32(-1f) * -1504f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2098f - 687f)), -347f))));
}

