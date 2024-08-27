struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<f32>(1569f, -1162f, 397f), -2978f, vec4<u32>(1u, 4294967295u, 66750u, 1u)), Struct_2(vec3<f32>(1879f, -2073f, 1203f), -777f, vec4<u32>(117057u, 1u, 21259u, 1u)), Struct_2(vec3<f32>(662f, 596f, 463f), 1083f, vec4<u32>(86261u, 64441u, 452u, 1665u)), Struct_2(vec3<f32>(431f, 121f, 103f), 611f, vec4<u32>(9678u, 23511u, 28787u, 4294967295u)), Struct_2(vec3<f32>(-830f, 761f, 655f), -1104f, vec4<u32>(33496u, 59382u, 26014u, 0u)), Struct_2(vec3<f32>(386f, -2055f, -951f), 219f, vec4<u32>(3620u, 1u, 1u, 74337u)), Struct_2(vec3<f32>(-2629f, 1000f, -201f), 1000f, vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_2(vec3<f32>(274f, 416f, -417f), -794f, vec4<u32>(20714u, 63970u, 4294967295u, 23001u)), Struct_2(vec3<f32>(-1000f, 1075f, 680f), -352f, vec4<u32>(1u, 49592u, 25254u, 44622u)), Struct_2(vec3<f32>(-829f, 271f, -2662f), -764f, vec4<u32>(4294967295u, 0u, 24003u, 8788u)), Struct_2(vec3<f32>(1005f, -198f, -372f), -1000f, vec4<u32>(1u, 0u, 1u, 1u)), Struct_2(vec3<f32>(923f, -388f, 146f), -757f, vec4<u32>(1u, 0u, 19994u, 79913u)), Struct_2(vec3<f32>(844f, -1014f, 1000f), 790f, vec4<u32>(47357u, 845u, 4294967295u, 55059u)), Struct_2(vec3<f32>(628f, 640f, 1000f), -1010f, vec4<u32>(8634u, 1747u, 70337u, 50964u)), Struct_2(vec3<f32>(-632f, 491f, -867f), -1709f, vec4<u32>(11771u, 17361u, 4294967295u, 1u)), Struct_2(vec3<f32>(491f, -2002f, -493f), -281f, vec4<u32>(14036u, 22505u, 4294967295u, 4294967295u)), Struct_2(vec3<f32>(-1081f, -616f, -463f), 1677f, vec4<u32>(11891u, 47888u, 1u, 1u)), Struct_2(vec3<f32>(1035f, -724f, 1848f), -303f, vec4<u32>(0u, 4294967295u, 69045u, 20097u)), Struct_2(vec3<f32>(-1003f, 1405f, 556f), 1280f, vec4<u32>(4294967295u, 4294967295u, 1u, 1648u)), Struct_2(vec3<f32>(1312f, 1636f, 1314f), -846f, vec4<u32>(0u, 61244u, 56159u, 38299u)), Struct_2(vec3<f32>(-963f, -472f, -1752f), 427f, vec4<u32>(51811u, 0u, 12028u, 4294967295u)), Struct_2(vec3<f32>(-564f, 1130f, -1159f), -338f, vec4<u32>(25934u, 13150u, 25838u, 0u)), Struct_2(vec3<f32>(-905f, 3320f, -2007f), 163f, vec4<u32>(1u, 22258u, 3015u, 4294967295u)));

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(6595i, -1i, 12731i, i32(-2147483648)), vec4<i32>(-14358i, 1i, -1i, 34136i), vec4<i32>(16790i, 1i, 1i, 2695i), vec4<i32>(-12917i, i32(-2147483648), 15563i, 2147483647i), vec4<i32>(30141i, -10412i, 0i, 18221i), vec4<i32>(-22986i, 215i, -1i, 2147483647i), vec4<i32>(-60254i, 2795i, -1i, 10410i), vec4<i32>(-8298i, 1i, 1i, 1i), vec4<i32>(45559i, 1i, -50588i, -1i), vec4<i32>(33640i, 2147483647i, 0i, -1i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(1i, -8170i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 19890i, 0i), vec4<i32>(-33139i, 41501i, -21703i, 20500i), vec4<i32>(i32(-2147483648), -3205i, i32(-2147483648), 1i), vec4<i32>(33183i, 0i, 0i, 124172i), vec4<i32>(-16389i, i32(-2147483648), -17591i, 2147483647i), vec4<i32>(0i, 467i, 2147483647i, -10147i), vec4<i32>(-37382i, 11465i, 69733i, 0i), vec4<i32>(10711i, 13762i, 1292i, -9084i), vec4<i32>(i32(-2147483648), 37755i, -17745i, -1i), vec4<i32>(-38832i, 40181i, -13083i, -1i), vec4<i32>(1i, 29577i, -18277i, -17486i), vec4<i32>(0i, 0i, 9196i, 0i), vec4<i32>(i32(-2147483648), 54353i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(49057i, -3186i, 2147483647i, 16304i), vec4<i32>(-38274i, 1i, -2170i, i32(-2147483648)), vec4<i32>(-1i, 5296i, -1i, 30805i));

var<private> global2: vec3<f32> = vec3<f32>(164f, 983f, -1023f);

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-217f, 263f, -1000f), vec3<f32>(-775f, 1000f, -1216f), vec3<f32>(889f, 469f, -799f), vec3<f32>(-1175f, -550f, 1573f), vec3<f32>(1000f, 1000f, -544f), vec3<f32>(504f, -598f, -1490f), vec3<f32>(572f, 1000f, 426f), vec3<f32>(451f, -1293f, -411f), vec3<f32>(774f, 108f, -1000f), vec3<f32>(1253f, -957f, 285f), vec3<f32>(652f, 1000f, -2126f), vec3<f32>(506f, 1069f, 663f), vec3<f32>(849f, -1282f, -300f), vec3<f32>(-739f, 679f, -1196f), vec3<f32>(284f, 1862f, 268f), vec3<f32>(759f, 932f, 371f), vec3<f32>(-1000f, 1793f, 1660f));

var<private> global4: array<u32, 16> = array<u32, 16>(5771u, 1u, 20517u, 24216u, 4294967295u, 45332u, 0u, 16319u, 37457u, 0u, 4294967295u, 4294967295u, 4936u, 115863u, 1u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    global3 = array<vec3<f32>, 17>();
    global1 = array<vec4<i32>, 29>();
    var var_0 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(arg_0.d.x, false, arg_1.x, arg_1.x)), arg_0.b, arg_0.d.x, true), vec4<bool>(true, true, true, !arg_0.b))), select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c))) > -2331f, false, !(_wgslsmith_f_op_f32(-arg_0.c) == arg_2.a.x)), true);
    global3 = array<vec3<f32>, 17>();
    global1 = array<vec4<i32>, 29>();
    return _wgslsmith_f_op_f32(floor(545f));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(func_3(Struct_1(-27569i, u_input.b > 46037i, -905f, vec4<bool>(false, global2.x <= 795f, u_input.a.x > global4[_wgslsmith_index_u32(4294967295u, 16u)], all(vec3<bool>(false, false, false)))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(0u, 17u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(913f, -618f, 584f) - global3[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(vec4<u32>(27095u, u_input.d.x, 66632u, global4[_wgslsmith_index_u32(21068u, 16u)]) | vec4<u32>(global4[_wgslsmith_index_u32(31920u, 16u)], 23211u, 50816u, 21014u))))), _wgslsmith_f_op_f32(244f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f + global2.x) + _wgslsmith_f_op_f32(sign(-444f))))));
    var var_1 = vec3<bool>(select(true, any(vec3<bool>(true, select(false, true, false), false)), true), true || any(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, false, true)), true, true)), true);
    var var_2 = _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_mod_vec4_i32(min(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.d.x, u_input.a.x), vec4<u32>(1u, 83511u, u_input.a.x, 31500u)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(65237u, u_input.c.x, 4294967295u)), ~1u), 29u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, global4[_wgslsmith_index_u32(u_input.d.x, 16u)], 38476u), vec4<u32>(1u, 0u, global4[_wgslsmith_index_u32(38069u, 16u)], global4[_wgslsmith_index_u32(u_input.c.x, 16u)])), 29u)]), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b << (0u % 32u), ~(-2147483647i), u_input.b, reverseBits(u_input.b)), global1[_wgslsmith_index_u32(0u, 29u)])));
    let var_3 = Struct_1(u_input.b, false & var_1.x, _wgslsmith_f_op_f32(func_3(Struct_1(firstTrailingBit(min(1i, var_2.x)), all(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), true)), _wgslsmith_f_op_f32(floor(-1295f)), !(!vec4<bool>(true, var_1.x, var_1.x, false))), vec4<bool>(var_1.x, false || !var_1.x, all(!vec2<bool>(var_1.x, false)), false), global0[_wgslsmith_index_u32(~(~145020u), 23u)])), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26476u, 16u)], 16u)] > 4294967295u), vec4<bool>(true, true, true, any(vec3<bool>(true, var_1.x, true))), vec4<bool>(true, true, true, true)));
    var var_4 = ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 22420u, u_input.c.x, 1u), vec4<u32>(u_input.c.x, 1u, u_input.d.x, 45744u))) << ((~(vec4<u32>(global4[_wgslsmith_index_u32(u_input.d.x, 16u)], global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(u_input.c.x, 16u)], global4[_wgslsmith_index_u32(u_input.a.x, 16u)]) << (vec4<u32>(u_input.d.x, u_input.a.x, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)]) % vec4<u32>(32u))) & vec4<u32>(~15144u, ~13488u, u_input.c.x, 15387u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_add_i32(var_2.x, max(abs(-9605i), -var_2.x)), any(select(!var_3.d.wxw, !vec3<bool>(false, var_3.d.x, false), false)) | var_3.b, -114f, vec4<bool>(!all(select(vec3<bool>(var_3.d.x, true, var_1.x), vec3<bool>(var_3.b, var_3.b, true), var_3.d.yxy)), false, var_3.b, var_3.d.x));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = 2147483647i;
    let var_2 = arg_0;
    let var_3 = false;
    var var_4 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -975f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.c.zz;
    var var_1 = -227f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2())));
    var var_3 = 29095u;
    global3 = array<vec3<f32>, 17>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(~((u_input.b >> (1u % 32u)) & _wgslsmith_sub_i32(-1i, u_input.b))), (any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false)) || (-15589i == abs(u_input.b))) != false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), !vec4<bool>(any(vec3<bool>(false, false, true)) & (u_input.b != -51232i), true, any(vec2<bool>(false, false)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_0 = func_1();
    let var_1 = 33963i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.c.x, 17u)] * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-110f, global2.x, 1234f), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(87317u, 17u)] + vec3<f32>(global2.x, 983f, 902f)))), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(var_0.c + var_0.c))))), global2.x, reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(0u, 4294967295u), ~54586u), 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 1u, _wgslsmith_sub_u32(43862u, global4[_wgslsmith_index_u32(u_input.c.x | global4[_wgslsmith_index_u32(59611u, 16u)], 16u)]))));
    let var_3 = _wgslsmith_f_op_f32(-var_0.c);
    global4 = array<u32, 16>();
    var var_4 = -(~(-(13823i ^ abs(u_input.b))));
    global0 = array<Struct_2, 23>();
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_2.c, var_2.c, vec4<bool>(true, false, any(vec3<bool>(true, var_0.d.x, false)), !var_0.b)), -207f, vec2<i32>(-42141i, u_input.b) << (vec2<u32>(max(_wgslsmith_mod_u32(var_2.c.x, u_input.c.x), var_2.c.x), ~countOneBits(21279u)) % vec2<u32>(32u)), 0u);
}

