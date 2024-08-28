struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(1584f, -943f, -614f, 373f), false, -34507i), Struct_1(vec4<f32>(863f, 1069f, 1228f, -274f), true, 3249i), Struct_1(vec4<f32>(1132f, 321f, -1270f, -380f), true, 61445i), Struct_1(vec4<f32>(962f, 295f, 281f, -2994f), true, 33448i), Struct_1(vec4<f32>(-1068f, -478f, 629f, -584f), false, -58416i), Struct_1(vec4<f32>(-987f, 321f, 950f, -142f), true, -2346i), Struct_1(vec4<f32>(411f, -2068f, 1000f, -1796f), true, -1i), Struct_1(vec4<f32>(830f, 114f, -521f, 459f), false, 1i), Struct_1(vec4<f32>(-539f, 709f, 660f, -1358f), false, -1i), Struct_1(vec4<f32>(-2090f, -242f, -883f, -936f), false, -33963i), Struct_1(vec4<f32>(-153f, -755f, 1000f, -157f), true, i32(-2147483648)), Struct_1(vec4<f32>(-1016f, 1142f, 1874f, -897f), false, 27034i), Struct_1(vec4<f32>(607f, 367f, 771f, 1067f), true, -15455i), Struct_1(vec4<f32>(1000f, 102f, -834f, -1147f), true, 12611i), Struct_1(vec4<f32>(-1694f, -2750f, 546f, 1254f), false, i32(-2147483648)), Struct_1(vec4<f32>(2064f, -977f, 1522f, -933f), false, 38350i), Struct_1(vec4<f32>(1000f, 1403f, -142f, 344f), false, i32(-2147483648)), Struct_1(vec4<f32>(-135f, 500f, 859f, 1287f), true, 1298i), Struct_1(vec4<f32>(1660f, -463f, -1303f, -1000f), false, -27335i), Struct_1(vec4<f32>(-1120f, -103f, -2102f, 1155f), false, -42733i), Struct_1(vec4<f32>(301f, -1428f, 186f, -543f), true, -24507i), Struct_1(vec4<f32>(1309f, 1000f, 2384f, -728f), true, -109636i), Struct_1(vec4<f32>(-150f, -1196f, -1833f, 2153f), false, 2161i), Struct_1(vec4<f32>(-2048f, 1245f, 894f, -315f), true, -47439i), Struct_1(vec4<f32>(-1715f, 838f, -1234f, -318f), true, 19313i), Struct_1(vec4<f32>(-432f, 1000f, 161f, 574f), false, 1i), Struct_1(vec4<f32>(391f, -635f, 340f, -283f), true, i32(-2147483648)), Struct_1(vec4<f32>(1162f, -656f, 437f, -115f), true, i32(-2147483648)), Struct_1(vec4<f32>(732f, -361f, -772f, 413f), false, 2147483647i), Struct_1(vec4<f32>(132f, -806f, -385f, -321f), false, 9274i), Struct_1(vec4<f32>(-991f, -1031f, -1000f, 1234f), true, 35957i), Struct_1(vec4<f32>(1139f, 742f, -607f, 1009f), false, 4732i));

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(1000f, true, Struct_1(vec4<f32>(-522f, 479f, 1524f, -277f), false, -49760i)), Struct_2(1365f, true, Struct_1(vec4<f32>(1528f, 805f, 984f, 2905f), false, i32(-2147483648))), Struct_2(-638f, false, Struct_1(vec4<f32>(1114f, 2592f, -145f, -897f), false, 39931i)), Struct_2(1391f, false, Struct_1(vec4<f32>(-1623f, 277f, 1703f, -691f), false, 2147483647i)), Struct_2(2245f, false, Struct_1(vec4<f32>(-2486f, 454f, -723f, 244f), true, 2147483647i)), Struct_2(467f, false, Struct_1(vec4<f32>(845f, 335f, 1000f, 1000f), true, 2147483647i)), Struct_2(422f, false, Struct_1(vec4<f32>(342f, -1391f, 248f, 1000f), false, 2147483647i)), Struct_2(-550f, false, Struct_1(vec4<f32>(470f, 1000f, 688f, -1426f), false, 1i)), Struct_2(-1162f, true, Struct_1(vec4<f32>(2026f, -144f, 1000f, 1616f), true, 2147483647i)), Struct_2(-785f, true, Struct_1(vec4<f32>(-1000f, -911f, 741f, 576f), true, -53489i)), Struct_2(457f, false, Struct_1(vec4<f32>(-523f, 291f, -1338f, 333f), false, 20194i)), Struct_2(176f, false, Struct_1(vec4<f32>(1963f, -1255f, 1292f, -1077f), false, -1i)), Struct_2(1000f, false, Struct_1(vec4<f32>(-359f, -794f, 1000f, -589f), true, -1i)));

var<private> global2: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(2008f, 829f), _wgslsmith_f_op_f32(-1804f + -872f), -552f, 923f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-156f, -701f), _wgslsmith_f_op_f32(min(1061f, -873f)), -738f, _wgslsmith_f_op_f32(-349f + -593f)))))), true, u_input.b);
    global0 = array<Struct_1, 32>();
    var var_1 = var_0.a.xz;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1038f) * _wgslsmith_f_op_vec2_f32(-var_0.a.xz)))))));
    return _wgslsmith_div_u32(abs(u_input.a.x) >> ((41650u ^ _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 46573u, 21762u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))) % 32u), 107479u);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global1 = array<Struct_2, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -942f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) * _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1041f)))), all(vec4<bool>(any(vec3<bool>(true, false, true)) == all(vec2<bool>(false, true)), true, all(vec2<bool>(true, true)), true)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1818f, arg_0, -125f, arg_0))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1067f, arg_0, -578f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2470f, 390f, 219f, -289f) + vec4<f32>(arg_0, arg_0, -195f, 1036f))))), ~(u_input.c | u_input.c) <= u_input.c, reverseBits(-(~u_input.c))));
    var var_1 = global1[_wgslsmith_index_u32(40356u, 13u)];
    global0 = array<Struct_1, 32>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, -426f, var_0.a, arg_0) * vec4<f32>(var_0.a, arg_0, var_0.a, 813f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, -1136f, arg_0, var_0.a) + vec4<f32>(405f, -3700f, var_1.c.a.x, 743f)), _wgslsmith_f_op_vec4_f32(var_1.c.a * vec4<f32>(-659f, 1421f, 723f, arg_0))))), true, var_1.c.c);
    return vec3<bool>(var_0.c.b, true, var_1.c.c != ~(-1i));
}

fn func_1(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_u32(max(u_input.a.x, _wgslsmith_sub_u32(1u, ~u_input.a.x)), func_2(abs(-vec4<i32>(-5178i, -2147483647i, u_input.c, 5760i))), countOneBits(7244u)));
    let var_1 = select(!select(vec3<bool>(u_input.a.x != var_0, arg_0.x || false, true), select(!vec3<bool>(true, arg_0.x, arg_0.x), func_3(1258f), vec3<bool>(false, arg_0.x, arg_0.x)), !func_3(-279f)), vec3<bool>(arg_0.x, false, !(!arg_0.x)), true);
    let var_2 = _wgslsmith_f_op_f32(sign(-199f));
    global2 = true;
    var var_3 = ~(-(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.c, -1i), vec3<i32>(u_input.c, 75441i, 30302i))) << ((_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(4175u, u_input.a.x, var_0)), vec3<u32>(0u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0, var_0), vec3<u32>(70777u, u_input.a.x, 8726u))) >> (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 1u, var_0), vec3<u32>(u_input.a.x, var_0, 1u), vec3<u32>(var_0, var_0, var_0))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return ~firstTrailingBit(vec2<i32>(-1i) * -(var_3.zy ^ vec2<i32>(var_3.x, 0i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(54801u, 13u)];
    let var_1 = global1[_wgslsmith_index_u32(func_2(vec4<i32>(_wgslsmith_mod_i32(25723i, var_0.c.c), 23936i, -24574i, -35272i)), 13u)];
    var var_2 = arg_1;
    let var_3 = 1290f;
    let var_4 = var_2.c.c << (min(u_input.a.x, u_input.a.x & (~8164u & _wgslsmith_clamp_u32(4294967295u, 0u, 3345u))) % 32u);
    return _wgslsmith_sub_u32(17687u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(143640u, _wgslsmith_div_u32(1597u >> (u_input.a.x % 32u), func_4(func_1(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -485f), true, Struct_1(vec4<f32>(-1000f, 651f, -475f, -2416f), true, 2147483647i)), true))), 13u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(357f, _wgslsmith_f_op_f32(max(var_0.c.a.x, _wgslsmith_f_op_f32(ceil(var_0.c.a.x)))), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(step(-422f, var_0.c.a.x)))), var_0.a), var_0.c.a, true)), _wgslsmith_f_op_f32(ceil(-789f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) * _wgslsmith_f_op_f32(-var_0.c.a.x)))), firstLeadingBit(u_input.b & u_input.c));
    global2 = any(vec2<bool>(false, false));
    var var_2 = global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 29392u), 83604u, var_1.b), 13u)];
    var var_3 = var_2.c.c;
    let var_4 = global1[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(450f - 1493f), var_4.a, _wgslsmith_div_f32(-577f, -734f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, -814f) + _wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f - 366f))))), var_4.a);
}

