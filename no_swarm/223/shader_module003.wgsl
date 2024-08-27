struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

var<private> global1: array<i32, 28> = array<i32, 28>(0i, i32(-2147483648), -1i, -16629i, 1i, 1i, 2147483647i, -1i, 25359i, 45479i, 2147483647i, 2147483647i, 27033i, i32(-2147483648), 39109i, -8755i, 0i, -1i, -1i, 18473i, 4660i, 1i, 0i, -13627i, -1i, 0i, -1i, i32(-2147483648));

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(1000f, 164f, -305f, 2044f), vec4<f32>(-414f, 1081f, 602f, -1000f), vec4<f32>(1078f, 1000f, -536f, 1453f), vec4<f32>(1061f, -879f, 1224f, 1020f), vec4<f32>(812f, -200f, -448f, -940f), vec4<f32>(-1233f, 930f, -1506f, 452f), vec4<f32>(464f, 437f, 874f, -957f), vec4<f32>(-1277f, 1136f, 352f, 1456f), vec4<f32>(2070f, -1072f, 114f, 542f), vec4<f32>(1572f, 1000f, 783f, 572f), vec4<f32>(1482f, 759f, -268f, -544f), vec4<f32>(-245f, -368f, 1000f, -929f), vec4<f32>(-1443f, 1205f, -1362f, -1431f), vec4<f32>(531f, -1138f, -930f, -1021f), vec4<f32>(150f, -258f, -1603f, 1036f), vec4<f32>(-1103f, -1583f, -1696f, 188f), vec4<f32>(521f, 421f, 1413f, 642f), vec4<f32>(-105f, -221f, 627f, -335f), vec4<f32>(1000f, -940f, 695f, -815f), vec4<f32>(314f, 1279f, 916f, -135f), vec4<f32>(1000f, -1524f, 696f, 1522f), vec4<f32>(-1601f, 674f, -1807f, -954f), vec4<f32>(-400f, -345f, 881f, -1729f), vec4<f32>(1243f, 848f, -1367f, -517f), vec4<f32>(-1135f, -336f, -1000f, -326f), vec4<f32>(1040f, 1049f, -1261f, 1170f), vec4<f32>(1888f, -1000f, 289f, -419f), vec4<f32>(1436f, -140f, -1096f, -155f), vec4<f32>(843f, 1000f, -1389f, 1342f), vec4<f32>(1207f, -1989f, 628f, -1022f), vec4<f32>(180f, 1000f, -1000f, 326f));

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = -(~48711i & _wgslsmith_sub_i32(0i, -firstLeadingBit(u_input.a)));
    let var_1 = abs(vec4<i32>(-global1[_wgslsmith_index_u32(min(123187u, 58271u), 28u)] << (~_wgslsmith_div_u32(26680u, 4294967295u) % 32u), 0i, ~46242i, _wgslsmith_sub_i32(firstLeadingBit(-1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, 55592i), vec4<i32>(-61294i, 1i, u_input.a, u_input.a)), ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(17885u, 28u)], u_input.a))));
    var var_2 = select(select(vec2<bool>(true, arg_0), vec2<bool>(!any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !any(vec2<bool>(arg_0, false))), !select(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true), vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(true, false), vec2<bool>(true, arg_0)))), !select(vec2<bool>(true, all(vec2<bool>(arg_0, true))), vec2<bool>(arg_0, all(vec4<bool>(arg_0, false, true, arg_0))), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), true)), !vec2<bool>(false, arg_0));
    let var_3 = Struct_1(!vec2<bool>(!var_2.x & arg_0, false));
    global0 = array<vec4<f32>, 9>();
    return select(var_3.a, vec2<bool>(true, true), var_2.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    var var_0 = vec2<i32>(u_input.a, ~2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_2.x), vec2<f32>(arg_0.x, arg_0.x)))))) + vec2<f32>(-1185f, arg_2.x));
    global2 = array<vec4<f32>, 31>();
    let var_2 = Struct_1(select(func_3(true), vec2<bool>(all(vec3<bool>(false, arg_3, arg_3)), !(arg_3 & arg_3)), vec2<bool>(true, arg_3)));
    var_0 = ~((~vec2<i32>(-2187i, -28550i) | vec2<i32>(10793i, var_0.x)) & vec2<i32>(1i, ~(-2147483647i))) | abs(~select(vec2<i32>(-1i, -25365i), reverseBits(vec2<i32>(-31168i, global1[_wgslsmith_index_u32(4294967295u, 28u)])), var_2.a.x));
    return !(!vec4<bool>(!(!arg_3), select(arg_3, true, false & var_2.a.x), true, true));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = array<vec4<f32>, 31>();
    var var_0 = !vec4<bool>(all(vec4<bool>(true, u_input.a < -29118i, true, false)), false, !any(func_2(vec2<f32>(188f, 156f), global1[_wgslsmith_index_u32(56244u, 28u)], vec2<f32>(2132f, -576f), false)), true);
    global2 = array<vec4<f32>, 31>();
    global2 = array<vec4<f32>, 31>();
    return Struct_1(vec2<bool>(var_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = u_input.a;
    var_0 = func_1(abs(-(firstLeadingBit(vec2<i32>(-53391i, var_1)) & (vec2<i32>(u_input.a, u_input.a) | vec2<i32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) - _wgslsmith_f_op_f32(f32(-1f) * -759f))));
    let var_3 = ~_wgslsmith_div_u32(1u, 56564u);
    global1 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-189f - _wgslsmith_f_op_f32(abs(781f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(884f, var_2, var_0.a.x)))), _wgslsmith_f_op_f32(-var_2)))), vec2<u32>(_wgslsmith_div_u32(countOneBits(10577u), ~121533u), 17780u & ((var_3 | 4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 9084u, 21578u), vec3<u32>(var_3, var_3, 0u)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(1u), ~89261u, var_3 & 1u), ~(~vec3<u32>(2236u, 10200u, var_3) | ~vec3<u32>(28570u, var_3, 0u))), ~vec4<u32>(14714u, min(~var_3, ~var_3), min(~var_3, ~0u), var_3), var_2);
}

