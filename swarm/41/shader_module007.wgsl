struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(689f, -214f, 682f, 580f), vec4<f32>(-1000f, -442f, -1329f, 1000f), vec4<f32>(921f, 1895f, -823f, 1502f), vec4<f32>(1210f, 1341f, 1081f, 113f), vec4<f32>(-1760f, 1217f, -641f, 228f), vec4<f32>(628f, -571f, -2483f, -727f), vec4<f32>(320f, 366f, -1849f, -653f), vec4<f32>(1000f, 298f, 445f, -275f), vec4<f32>(-942f, -252f, 1000f, -433f), vec4<f32>(1000f, -1697f, -2472f, 2032f), vec4<f32>(154f, 230f, 662f, -427f), vec4<f32>(-935f, -856f, -230f, 507f), vec4<f32>(266f, -755f, 233f, -461f), vec4<f32>(591f, 1016f, 1014f, -1261f), vec4<f32>(260f, 142f, 575f, -1000f), vec4<f32>(-108f, 699f, -257f, 719f), vec4<f32>(-639f, 825f, -1030f, -2005f), vec4<f32>(-1388f, 202f, 259f, 1256f), vec4<f32>(-499f, 849f, -297f, -1501f), vec4<f32>(-1001f, -841f, -1260f, 965f), vec4<f32>(-1070f, 435f, -1074f, 275f), vec4<f32>(-187f, 1114f, -131f, 169f), vec4<f32>(1409f, 1539f, -909f, 118f), vec4<f32>(230f, -822f, -637f, -678f), vec4<f32>(-250f, 1418f, 364f, 267f), vec4<f32>(1622f, 338f, -893f, -219f), vec4<f32>(-559f, -1000f, 1851f, -1636f), vec4<f32>(741f, 1522f, -1000f, 242f), vec4<f32>(260f, 173f, -695f, -1073f), vec4<f32>(240f, -1000f, -328f, 781f));

var<private> global1: array<f32, 2> = array<f32, 2>(236f, 187f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: i32) -> vec2<i32> {
    var var_0 = !(((_wgslsmith_sub_i32(37909i, arg_1.x) & 1i) ^ 1i) < 1i);
    var_0 = true;
    var var_1 = Struct_2(_wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(-42521i, 32018i)));
    let var_2 = global1[_wgslsmith_index_u32(225u, 2u)];
    global1 = array<f32, 2>();
    return -_wgslsmith_div_vec2_i32(var_1.a, select(~(~vec2<i32>(-2147483647i, 20738i)), _wgslsmith_div_vec2_i32(var_1.a, ~vec2<i32>(arg_1.x, arg_3)), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !vec2<bool>(-1406f <= _wgslsmith_f_op_f32(max(146f, _wgslsmith_f_op_f32(-325f * global1[_wgslsmith_index_u32(1u, 2u)]))), arg_1);
    let var_1 = Struct_1(_wgslsmith_sub_i32(-2147483647i, 0i) << (u_input.a % 32u));
    var var_2 = Struct_2(arg_2.a);
    let var_3 = 12144u;
    let var_4 = vec3<u32>(min(_wgslsmith_mod_u32(firstTrailingBit(u_input.a), u_input.a), 52793u) >> (1u % 32u), u_input.a, var_3);
    return Struct_2(_wgslsmith_mod_vec2_i32(abs(func_3(~var_3, firstLeadingBit(var_2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 38823u, var_4.x), vec3<u32>(1u, var_3, 1u)), _wgslsmith_mult_i32(-1i, -11443i))), ~firstTrailingBit(~arg_2.a)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<bool> {
    global0 = array<vec4<f32>, 30>();
    var var_0 = vec3<i32>(-2147483647i, 13599i, _wgslsmith_add_i32(-2147483647i, arg_0.d.a.x));
    var_0 = arg_0.c;
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x) <= arg_3.x, Struct_2(_wgslsmith_clamp_vec2_i32(arg_2.a, vec2<i32>(-1157i, select(arg_2.a.x, arg_2.a.x, false)), vec2<i32>(arg_0.c.x, 0i))));
    let var_2 = ~(reverseBits(select(~vec2<u32>(3814u, u_input.a), vec2<u32>(0u, 29871u) | vec2<u32>(u_input.a, 1u), false)) << (~(~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)));
    return vec4<bool>(true, true, !(!arg_0.e && (arg_0.e & true)), ~(~abs(0u)) <= u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-22357i);
    global0 = array<vec4<f32>, 30>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(4294967295u, 2172u) | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), countOneBits(vec2<u32>(u_input.a, 18273u))) & (~u_input.a ^ (13163u ^ u_input.a)))), 30u)];
    var var_2 = all(!(!select(vec4<bool>(false, false, false, false), func_1(Struct_3(3320f, global0[_wgslsmith_index_u32(u_input.a, 30u)], vec3<i32>(var_0.a, 10314i, -3633i), Struct_2(vec2<i32>(var_0.a, var_0.a)), true), vec3<f32>(-878f, var_1.x, 1351f), Struct_2(vec2<i32>(var_0.a, var_0.a)), vec4<f32>(var_1.x, 336f, 1000f, global1[_wgslsmith_index_u32(0u, 2u)])), func_1(Struct_3(-1640f, global0[_wgslsmith_index_u32(24015u, 30u)], vec3<i32>(var_0.a, var_0.a, var_0.a), Struct_2(vec2<i32>(352i, 2147483647i)), true), var_1.yxw, Struct_2(vec2<i32>(16964i, -2147483647i)), global0[_wgslsmith_index_u32(1u, 30u)]))));
    var var_3 = countOneBits(select(~(~(-vec3<i32>(-1i, -14626i, var_0.a))), vec3<i32>(0i, firstLeadingBit(firstLeadingBit(1i)), _wgslsmith_mod_i32(1i, -1i)), func_1(Struct_3(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(22987u, 2u)])), global0[_wgslsmith_index_u32(u_input.a >> (4294967295u % 32u), 30u)], vec3<i32>(var_0.a, var_0.a, var_0.a), func_2(global1[_wgslsmith_index_u32(u_input.a, 2u)], false, Struct_2(vec2<i32>(-1i, var_0.a))), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(76334u, 2u)], -1329f, -1452f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 178f, -800f), false)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1025f), all(vec2<bool>(false, true)), func_2(1224f, true, Struct_2(vec2<i32>(790i, var_0.a)))), global0[_wgslsmith_index_u32(u_input.a, 30u)]).wxz));
    let x = u_input.a;
    s_output = StorageBuffer(1i, var_3.x);
}

