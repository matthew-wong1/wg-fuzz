struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(2147483647i, -1i), vec2<i32>(-41642i, 49641i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(16776i, -2356i), vec2<i32>(59791i, 10164i), vec2<i32>(5088i, 1i), vec2<i32>(38114i, 30023i), vec2<i32>(2147483647i, 3300i), vec2<i32>(6327i, -1i), vec2<i32>(769i, 1i), vec2<i32>(-32156i, 2147483647i), vec2<i32>(45968i, 10949i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(7141i, 2147483647i));

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(-1493f, 1000f, 229f, 1742f), 416f, -5344i), Struct_1(vec4<f32>(332f, 2323f, -621f, -1008f), 869f, 1i), Struct_1(vec4<f32>(-300f, 1326f, -123f, -655f), -635f, -48890i), Struct_1(vec4<f32>(-748f, 557f, 1497f, 1183f), 839f, -62114i), Struct_1(vec4<f32>(794f, -464f, -1000f, 1615f), 204f, -44325i), Struct_1(vec4<f32>(310f, -377f, 312f, -349f), -268f, -1i), Struct_1(vec4<f32>(1094f, -302f, -935f, 717f), 1098f, -43822i), Struct_1(vec4<f32>(-1037f, 1000f, -284f, -541f), 328f, 1i), Struct_1(vec4<f32>(-133f, 271f, -563f, 1033f), 1112f, 0i), Struct_1(vec4<f32>(1028f, -782f, 248f, -1317f), -1000f, 1i), Struct_1(vec4<f32>(-1358f, -240f, 1624f, 1798f), -715f, i32(-2147483648)), Struct_1(vec4<f32>(-685f, 1334f, -669f, 135f), -1552f, 2147483647i), Struct_1(vec4<f32>(-1327f, -100f, -481f, 1242f), 771f, 2147483647i), Struct_1(vec4<f32>(-166f, -331f, 1000f, -205f), 116f, -22502i), Struct_1(vec4<f32>(338f, 846f, 409f, -668f), -472f, 35970i), Struct_1(vec4<f32>(-835f, -590f, 723f, 736f), -894f, -13382i), Struct_1(vec4<f32>(1865f, -785f, 1097f, -103f), -661f, -49657i), Struct_1(vec4<f32>(-491f, -167f, 452f, -772f), -1000f, 1i), Struct_1(vec4<f32>(-1672f, 914f, 494f, 612f), 2550f, 2147483647i), Struct_1(vec4<f32>(188f, 428f, -1293f, -1196f), 248f, -1i), Struct_1(vec4<f32>(-421f, -895f, -1527f, 816f), -1000f, 0i), Struct_1(vec4<f32>(-799f, 256f, -997f, -2241f), 225f, -1i), Struct_1(vec4<f32>(1000f, 1063f, -2158f, 553f), -301f, 13332i));

var<private> global2: array<i32, 15>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<f32>(1076f, 633f, -1000f, -1000f), 1000f, -2723i), Struct_1(vec4<f32>(-936f, 589f, 862f, 143f), 405f, -1i), Struct_1(vec4<f32>(1091f, -114f, -259f, 579f), 1029f, -1i), Struct_1(vec4<f32>(-134f, -144f, -910f, -1866f), 833f, 0i), Struct_1(vec4<f32>(114f, -1729f, -965f, 1000f), 792f, -58600i), Struct_1(vec4<f32>(224f, -656f, 1926f, -864f), -230f, -1i), Struct_1(vec4<f32>(839f, 387f, 312f, 2655f), -1650f, -14228i), Struct_1(vec4<f32>(639f, -283f, 1604f, 1000f), -1077f, 1i), Struct_1(vec4<f32>(-1044f, 1968f, -982f, 1894f), 1484f, -32629i), Struct_1(vec4<f32>(-1390f, -2035f, 566f, -491f), -312f, -10004i), Struct_1(vec4<f32>(-1791f, -335f, -967f, -1454f), 826f, 0i), Struct_1(vec4<f32>(817f, 1000f, -974f, 927f), -897f, -1i), Struct_1(vec4<f32>(255f, 305f, 125f, -2735f), -1203f, 6017i), Struct_1(vec4<f32>(-1000f, -697f, 674f, 1405f), 587f, 41058i), Struct_1(vec4<f32>(397f, -1209f, 1000f, 1331f), -233f, -6669i), Struct_1(vec4<f32>(368f, 2367f, 687f, -227f), -1791f, -1i), Struct_1(vec4<f32>(-1209f, -872f, 666f, 557f), -1908f, 2147483647i));

var<private> global4: array<vec4<i32>, 28>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    return _wgslsmith_mod_i32(-countOneBits(u_input.c.x) ^ select(firstLeadingBit(-44167i), _wgslsmith_mult_i32(0i, 43126i), true), -(i32(-1i) * -64362i)) << (~0u % 32u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = any(vec4<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(7787i, global2[_wgslsmith_index_u32(72849u, 15u)], global2[_wgslsmith_index_u32(arg_1.x, 15u)]), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(51869u, 15u)], 18003i)), u_input.c) >= ~(-42774i), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f + 1576f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(476f)))), true));
    var var_1 = !all(vec3<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), arg_0.x));
    var var_2 = abs(455u);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(~(~u_input.b.x)), 0u), 23u)];
    var var_4 = 1222f;
    return select(select(select(vec3<bool>(true, false, false && arg_0.x), select(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, false, true), false), select(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, true, false)), false), any(select(vec3<bool>(false, arg_0.x, true), vec3<bool>(false, true, arg_0.x), false))), select(vec3<bool>(arg_0.x, true, !arg_0.x), select(vec3<bool>(true, arg_0.x, false), !vec3<bool>(true, false, arg_0.x), true), arg_0.x), !arg_0.x), vec3<bool>(true && all(!vec4<bool>(true, true, true, arg_0.x)), !all(vec3<bool>(arg_0.x, arg_0.x, false)) & any(select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), any(arg_0)), arg_0.x);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = !func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(22900u, 15u)] >= u_input.a.x, any(vec3<bool>(true, true, false)))), ~(~(u_input.b ^ vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x))));
    var var_1 = vec3<bool>(-(arg_0.x | _wgslsmith_div_i32(-1i, u_input.a.x)) < (~firstLeadingBit(41575i) & arg_0.x), all(select(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)), vec4<bool>(true, false, false == var_0.x, var_0.x), !any(vec3<bool>(false, false, false)))), var_0.x);
    var var_2 = arg_0.x;
    var var_3 = !vec3<bool>(!func_3(var_1.xy, u_input.b).x, true, true);
    var_3 = vec3<bool>(any(!(!(!var_0.zx))), true, any(select(!select(vec4<bool>(false, var_0.x, var_3.x, var_1.x), vec4<bool>(var_3.x, var_3.x, false, var_1.x), vec4<bool>(true, var_3.x, false, false)), select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_1.x, var_0.x, false, false)), !vec4<bool>(false, true, var_1.x, true), !vec4<bool>(false, var_1.x, false, false)), select(select(vec4<bool>(false, var_1.x, var_0.x, true), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_1.x, var_1.x, true, false)), vec4<bool>(false, var_1.x, var_1.x, false), true))));
    return -1911f;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global4 = array<vec4<i32>, 28>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-409f * 1000f), -331f)), _wgslsmith_f_op_f32(arg_0 * arg_1.a.x), 352f, 416f)), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(arg_1.a.x + -794f))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(39438i, 19461i, 0i, u_input.c.x) >> (u_input.b % vec4<u32>(32u)), global4[_wgslsmith_index_u32(~40094u, 28u)]), -arg_1.c), -1342i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 14>();
    let var_0 = func_4(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2(vec4<i32>(56940i, select(u_input.c.x, u_input.a.x, true), func_1(global1[_wgslsmith_index_u32(52109u, 23u)], Struct_1(vec4<f32>(-2552f, 1530f, -1000f, -773f), 501f, u_input.a.x), global2[_wgslsmith_index_u32(0u, 15u)]), -global2[_wgslsmith_index_u32(0u, 15u)])))), global3[_wgslsmith_index_u32(23975u, 17u)]);
    global1 = array<Struct_1, 23>();
    global3 = array<Struct_1, 17>();
    var var_1 = reverseBits(u_input.b.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.a)))) + vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), -1025f, -608f)), _wgslsmith_f_op_f32(max(1749f, 756f)), 3948i);
    var_1 = abs(~(~_wgslsmith_div_u32(u_input.b.x, 86554u)) | ((~0u ^ reverseBits(u_input.b.x)) & 44764u));
    let var_3 = true || (610f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(var_2.b * var_2.a.x), any(vec3<bool>(false, false, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 25211u, 14416u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 13118u) & u_input.b), vec4<u32>(u_input.b.x, 62007u ^ u_input.b.x, _wgslsmith_mod_u32(9479u, 78825u), u_input.b.x)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~4294967295u, _wgslsmith_div_u32(u_input.b.x, 28710u), 1u), _wgslsmith_add_vec4_u32(abs(u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), u_input.b))), 15u)], 34072i);
}

