struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(4294967295u, 39504u, 30367u, 0u, 0u, 0u, 4294967295u, 49848u, 38488u, 0u, 4294967295u, 4735u, 34960u, 4294967295u, 1u, 90173u, 1u, 0u, 15816u, 4294967295u, 4294967295u, 14715u, 1u, 4294967295u, 0u, 34651u);

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-118f, 924f, -1000f, -1329f), vec4<f32>(1576f, -1082f, 943f, 1081f), vec4<f32>(-614f, -1000f, -1000f, -228f), vec4<f32>(-1157f, 151f, -1685f, 959f), vec4<f32>(-349f, -1116f, -1727f, 327f), vec4<f32>(1100f, -213f, 1102f, 118f), vec4<f32>(1333f, -195f, -452f, 900f), vec4<f32>(1359f, -1758f, -385f, -202f), vec4<f32>(1112f, 279f, -1212f, -321f), vec4<f32>(-609f, 465f, 194f, -1040f), vec4<f32>(-327f, 1000f, 1479f, 1000f), vec4<f32>(1216f, -1163f, -1172f, 965f), vec4<f32>(-1085f, -1000f, 458f, 765f), vec4<f32>(447f, -1487f, -878f, -116f), vec4<f32>(1776f, -923f, -899f, -713f), vec4<f32>(1530f, 2000f, 1381f, -1329f), vec4<f32>(516f, -786f, 565f, 1077f), vec4<f32>(264f, 448f, 323f, -1731f));

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_2(vec3<f32>(1610f, 165f, -665f))), Struct_5(Struct_2(vec3<f32>(-627f, -811f, -1487f))), Struct_5(Struct_2(vec3<f32>(-255f, -833f, -394f))), Struct_5(Struct_2(vec3<f32>(1000f, 1247f, -699f))), Struct_5(Struct_2(vec3<f32>(1662f, -876f, -613f))), Struct_5(Struct_2(vec3<f32>(-1012f, 838f, 225f))), Struct_5(Struct_2(vec3<f32>(1337f, 342f, -586f))), Struct_5(Struct_2(vec3<f32>(790f, 173f, 618f))), Struct_5(Struct_2(vec3<f32>(-839f, 623f, -384f))), Struct_5(Struct_2(vec3<f32>(1017f, -942f, 1000f))), Struct_5(Struct_2(vec3<f32>(101f, -206f, 682f))), Struct_5(Struct_2(vec3<f32>(-776f, -778f, 336f))), Struct_5(Struct_2(vec3<f32>(467f, -1312f, 1129f))), Struct_5(Struct_2(vec3<f32>(-1110f, -406f, -553f))), Struct_5(Struct_2(vec3<f32>(2584f, 1000f, -828f))), Struct_5(Struct_2(vec3<f32>(-114f, -1861f, 1434f))), Struct_5(Struct_2(vec3<f32>(2520f, 595f, 512f))), Struct_5(Struct_2(vec3<f32>(-597f, -212f, -799f))), Struct_5(Struct_2(vec3<f32>(-162f, -753f, -1616f))), Struct_5(Struct_2(vec3<f32>(860f, -690f, -278f))), Struct_5(Struct_2(vec3<f32>(1270f, -2668f, 410f))), Struct_5(Struct_2(vec3<f32>(918f, 267f, 1307f))), Struct_5(Struct_2(vec3<f32>(-553f, -1527f, 1664f))), Struct_5(Struct_2(vec3<f32>(-707f, -780f, -991f))), Struct_5(Struct_2(vec3<f32>(1000f, -1000f, 982f))), Struct_5(Struct_2(vec3<f32>(-1023f, -1390f, 1655f))), Struct_5(Struct_2(vec3<f32>(804f, -1007f, -418f))), Struct_5(Struct_2(vec3<f32>(-347f, -524f, -1016f))), Struct_5(Struct_2(vec3<f32>(-140f, 1238f, -328f))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    let var_0 = ~(-(~min(40015i, arg_1))) << (4294967295u % 32u);
    let var_1 = vec2<i32>(0i, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, arg_1, -2147483647i), var_0 << (~u_input.c.x % 32u))));
    return -2147483647i;
}

fn func_3() -> i32 {
    global0 = array<u32, 26>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1000f, 1909f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 436f, -243f), vec3<f32>(-1306f, -554f, -312f))), any(vec4<bool>(false, true, false, true)))) + vec3<f32>(568f, _wgslsmith_f_op_f32(-1006f + -757f), _wgslsmith_f_op_f32(max(-710f, 1039f)))))));
    global0 = array<u32, 26>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, -953f, 377f), var_0.a)))))) * var_0.a));
    global0 = array<u32, 26>();
    return 0i;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    global2 = array<Struct_5, 29>();
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.d), 26u)] <= (abs(_wgslsmith_dot_vec3_u32(arg_3 & vec3<u32>(4294967295u, arg_3.x, 67011u), u_input.a)) | arg_3.x);
    var var_1 = _wgslsmith_mod_i32(-(~35790i), _wgslsmith_sub_i32(i32(-1i) * -1i, func_3()));
    var var_2 = select(!select(!vec4<bool>(arg_0.x, arg_0.x, false, var_0), vec4<bool>(true, !var_0, all(vec4<bool>(false, true, arg_0.x, false)), true), select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, false, false, var_0), all(vec3<bool>(false, true, true)))), vec4<bool>(any(!select(vec4<bool>(var_0, var_0, arg_0.x, var_0), vec4<bool>(false, arg_0.x, true, arg_0.x), var_0)), false, all(select(select(vec4<bool>(false, var_0, arg_0.x, arg_0.x), vec4<bool>(var_0, false, false, true), vec4<bool>(var_0, false, true, true)), select(vec4<bool>(false, false, false, var_0), vec4<bool>(arg_0.x, var_0, arg_0.x, false), vec4<bool>(true, var_0, false, false)), any(vec4<bool>(var_0, var_0, true, true)))), !all(vec4<bool>(false, arg_0.x, var_0, false)) && arg_0.x), !vec4<bool>(var_0, var_0, true, any(vec4<bool>(arg_0.x, true, false, arg_0.x))));
    global2 = array<Struct_5, 29>();
    return arg_3.x;
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_5, 29>();
    let var_0 = Struct_4(arg_0.zx);
    global1 = array<vec4<f32>, 18>();
    global1 = array<vec4<f32>, 18>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, _wgslsmith_div_f32(-1185f, 699f), _wgslsmith_f_op_f32(-340f * -2086f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(469f, 2147f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-205f, -549f, -1056f), vec3<f32>(880f, 381f, -898f))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(1005f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(var_1.a.x, var_1.a.x)), true)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -569f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_2(vec2<bool>(true, any(vec3<bool>(true, false, true))), func_1(vec4<u32>(1u, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], 2982u), -12285i), 323f, ~u_input.a), 26u)], 26u)], _wgslsmith_dot_vec2_u32(select(vec2<u32>(44660u, 59930u), u_input.a.zy, vec2<bool>(true, true)), select(u_input.b >> (u_input.a.yz % vec2<u32>(32u)), ~u_input.b, true)), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a >> (_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(69010u, 26u)], global0[_wgslsmith_index_u32(29275u, 26u)])) % vec3<u32>(32u)))));
    var var_1 = global0[_wgslsmith_index_u32(~reverseBits(countOneBits(4294967295u)), 26u)];
    let var_2 = var_0.a.x;
    let var_3 = -21638i != select(abs(select(i32(-1i) * -4133i, ~(-6699i), all(vec2<bool>(false, true)))), ~(-countOneBits(1i)), true);
    var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 26u)];
    var var_4 = vec4<bool>(var_3, any(vec3<bool>(!var_3, false, false)), !any(!vec2<bool>(var_3, true)), var_3);
    global0 = array<u32, 26>();
    var var_5 = !select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_4.x, false, false, false), var_4.x), select(vec4<bool>(var_3, var_3, true, var_3), vec4<bool>(true, var_3, true, var_4.x), var_4.x), any(var_4.zw)), !vec4<bool>(true, false, var_3, var_3), select(vec4<bool>(true, true, var_4.x, true), vec4<bool>(false, true, false, var_4.x), true)), vec4<bool>(!(!var_4.x), all(vec4<bool>(true, var_4.x, var_4.x, true)), true, !(!var_4.x)), select(vec4<bool>(select(true, true, var_3), false, any(var_4.xw), false), vec4<bool>(true, true, var_3 & var_4.x, var_3 == true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -_wgslsmith_add_i32(-52921i, -min(2147483647i, 15992i)));
}

