struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(20249u, 4294967295u, 0u, 67141u)), Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(38525u, 4294967295u, 4294967295u, 4294967295u)), vec3<f32>(-571f, 1012f, 2042f)), Struct_2(Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(0u, 4294967295u, 49909u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(1u, 54073u, 0u, 0u)), vec3<f32>(-197f, 743f, 198f)), Struct_2(Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(26454u, 1u, 87714u, 1u)), Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(4294967295u, 85845u, 82190u, 595u)), vec3<f32>(954f, 409f, 415f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(4294967295u, 1u, 1u, 1u)), Struct_1(vec2<bool>(false, false), false, true, vec4<u32>(0u, 36421u, 4294967295u, 0u)), vec3<f32>(-456f, -2220f, 2452f)), Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(0u, 0u, 40786u, 69167u)), Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(4294967295u, 47403u, 80627u, 43608u)), vec3<f32>(-2004f, 215f, -168f)), Struct_2(Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(80369u, 1u, 2692u, 16924u)), Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(17448u, 39699u, 99889u, 0u)), vec3<f32>(994f, 1000f, -167f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(25670u, 0u, 73904u, 116549u)), Struct_1(vec2<bool>(false, true), false, true, vec4<u32>(0u, 0u, 0u, 1u)), vec3<f32>(176f, 173f, 830f)), Struct_2(Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(31812u, 831u, 1u, 42388u)), Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(264u, 1u, 4294967295u, 34131u)), vec3<f32>(1414f, 315f, -1155f)), Struct_2(Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(45911u, 1u, 50560u, 0u)), Struct_1(vec2<bool>(false, false), false, true, vec4<u32>(0u, 4294967295u, 54376u, 3014u)), vec3<f32>(1000f, -516f, 1359f)), Struct_2(Struct_1(vec2<bool>(false, true), true, true, vec4<u32>(27800u, 9030u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(27512u, 0u, 8664u, 93367u)), vec3<f32>(217f, -206f, 744f)), Struct_2(Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(1u, 0u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(8617u, 35301u, 0u, 0u)), vec3<f32>(-1667f, -1140f, 1000f)), Struct_2(Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(4294967295u, 4294967295u, 18303u, 4294967295u)), Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(1u, 1u, 0u, 28800u)), vec3<f32>(-235f, 2682f, -260f)), Struct_2(Struct_1(vec2<bool>(true, false), false, true, vec4<u32>(19601u, 0u, 31871u, 17856u)), Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(1265u, 1u, 0u, 0u)), vec3<f32>(-1634f, 1479f, 554f)), Struct_2(Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(31958u, 9681u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(11165u, 1u, 1u, 50527u)), vec3<f32>(-1473f, 907f, 2408f)), Struct_2(Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(41148u, 26626u, 1u, 0u)), Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(4294967295u, 1u, 14937u, 0u)), vec3<f32>(303f, 380f, 959f)), Struct_2(Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(0u, 4294967295u, 209u, 1u)), Struct_1(vec2<bool>(false, true), false, true, vec4<u32>(4294967295u, 27355u, 69767u, 4294967295u)), vec3<f32>(-259f, -1705f, 1398f)), Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(79094u, 46060u, 82027u, 4294967295u)), vec3<f32>(184f, -1805f, 241f)), Struct_2(Struct_1(vec2<bool>(true, true), false, true, vec4<u32>(1u, 7408u, 9500u, 38311u)), Struct_1(vec2<bool>(false, false), false, true, vec4<u32>(14780u, 1u, 0u, 66918u)), vec3<f32>(-1727f, 1209f, 355f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(0u, 12923u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, true), false, true, vec4<u32>(4392u, 4294967295u, 4294967295u, 1792u)), vec3<f32>(-1766f, -350f, -714f)), Struct_2(Struct_1(vec2<bool>(false, false), true, true, vec4<u32>(0u, 28123u, 4294967295u, 39779u)), Struct_1(vec2<bool>(true, true), false, true, vec4<u32>(0u, 1u, 1u, 0u)), vec3<f32>(-101f, 503f, -405f)), Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(124906u, 21234u, 17273u, 0u)), Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(1u, 1u, 61132u, 65545u)), vec3<f32>(-1389f, 374f, -499f)), Struct_2(Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(118457u, 96443u, 59134u, 28454u)), Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), vec3<f32>(632f, 1000f, -574f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(79349u, 27400u, 0u, 36629u)), Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(0u, 0u, 0u, 14978u)), vec3<f32>(529f, 377f, 257f)), Struct_2(Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(0u, 104279u, 25516u, 4294967295u)), Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(26699u, 1u, 1u, 1u)), vec3<f32>(617f, 257f, 362f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(56209u, 44165u, 32840u, 4294967295u)), Struct_1(vec2<bool>(false, false), false, true, vec4<u32>(76346u, 31626u, 5895u, 27847u)), vec3<f32>(-1275f, 1542f, 250f)), Struct_2(Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(123267u, 30894u, 55174u, 1u)), Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(4294967295u, 0u, 61817u, 1u)), vec3<f32>(-1712f, 2234f, 831f)), Struct_2(Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(40149u, 0u, 94508u, 0u)), Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(33580u, 48741u, 36751u, 36443u)), vec3<f32>(979f, 1800f, -469f)), Struct_2(Struct_1(vec2<bool>(false, false), true, true, vec4<u32>(0u, 4294967295u, 48484u, 1661u)), Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(36192u, 0u, 4294967295u, 1u)), vec3<f32>(-1000f, -108f, -776f)));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(0u, 9356u, 35772u, 4294967295u)), Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(58868u, 0u, 56285u, 76482u)), vec3<f32>(1074f, 124f, -1255f)), Struct_2(Struct_1(vec2<bool>(false, true), false, true, vec4<u32>(1564u, 1u, 0u, 52807u)), Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(13831u, 30485u, 41055u, 38677u)), vec3<f32>(-1000f, 2077f, -1590f)), Struct_2(Struct_1(vec2<bool>(false, true), true, true, vec4<u32>(31054u, 40138u, 0u, 1u)), Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(2375u, 1915u, 4294967295u, 4294967295u)), vec3<f32>(-857f, -256f, -529f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(40673u, 70768u, 72776u, 1u)), Struct_1(vec2<bool>(true, true), true, true, vec4<u32>(36457u, 1u, 11929u, 54639u)), vec3<f32>(-1016f, -380f, 149f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(42838u, 4294967295u, 1u, 34212u)), Struct_1(vec2<bool>(false, true), false, true, vec4<u32>(0u, 0u, 24720u, 1u)), vec3<f32>(-1000f, -314f, -290f)), Struct_2(Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(0u, 49002u, 49591u, 67055u)), Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), vec3<f32>(696f, -911f, 1396f)), Struct_2(Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(1u, 9046u, 54043u, 4294967295u)), Struct_1(vec2<bool>(false, true), true, false, vec4<u32>(1u, 21927u, 45639u, 8890u)), vec3<f32>(1000f, -1333f, -889f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(20907u, 53647u, 67255u, 10293u)), Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(12978u, 46199u, 1u, 10782u)), vec3<f32>(-983f, -1000f, -1903f)), Struct_2(Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(0u, 0u, 6012u, 8871u)), Struct_1(vec2<bool>(false, false), false, true, vec4<u32>(40708u, 0u, 45188u, 7377u)), vec3<f32>(1187f, 173f, 160f)), Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(45468u, 30578u, 5320u, 1u)), Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(4294967295u, 15159u, 94100u, 1u)), vec3<f32>(-147f, 746f, -1000f)), Struct_2(Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(15741u, 4294967295u, 1u, 4294967295u)), Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(47830u, 79971u, 90502u, 19572u)), vec3<f32>(614f, -900f, 932f)), Struct_2(Struct_1(vec2<bool>(true, false), false, true, vec4<u32>(91386u, 64994u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), true, true, vec4<u32>(1u, 64219u, 1u, 6021u)), vec3<f32>(-265f, 1143f, -1000f)), Struct_2(Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(43053u, 1219u, 40939u, 77073u)), Struct_1(vec2<bool>(false, true), true, true, vec4<u32>(4294967295u, 4294967295u, 11812u, 110513u)), vec3<f32>(-816f, -1049f, -128f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(13879u, 1u, 5143u, 34007u)), Struct_1(vec2<bool>(true, true), false, true, vec4<u32>(1u, 52723u, 70384u, 1u)), vec3<f32>(1000f, -1154f, 640f)), Struct_2(Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(45361u, 4294967295u, 5561u, 21641u)), Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(37559u, 1u, 38252u, 45222u)), vec3<f32>(1000f, 580f, 976f)), Struct_2(Struct_1(vec2<bool>(true, false), true, false, vec4<u32>(4294967295u, 0u, 43414u, 71763u)), Struct_1(vec2<bool>(false, false), true, false, vec4<u32>(30980u, 32844u, 0u, 13839u)), vec3<f32>(-1398f, -722f, -564f)), Struct_2(Struct_1(vec2<bool>(false, true), true, true, vec4<u32>(4294967295u, 0u, 1u, 37195u)), Struct_1(vec2<bool>(true, true), true, false, vec4<u32>(1u, 15019u, 0u, 25282u)), vec3<f32>(-369f, -1374f, -1909f)), Struct_2(Struct_1(vec2<bool>(true, false), false, false, vec4<u32>(32920u, 4294967295u, 1u, 0u)), Struct_1(vec2<bool>(false, true), false, false, vec4<u32>(35892u, 8795u, 45859u, 35759u)), vec3<f32>(433f, 1058f, -722f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(0u, 55797u, 45802u, 27184u)), Struct_1(vec2<bool>(true, true), false, true, vec4<u32>(14240u, 0u, 1u, 24620u)), vec3<f32>(-311f, -1178f, 1000f)), Struct_2(Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(10730u, 45037u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), false, false, vec4<u32>(49930u, 65683u, 73123u, 1408u)), vec3<f32>(-2133f, 281f, -260f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    return select(-17046i, -_wgslsmith_div_i32(9520i, -45182i), !arg_2.b && (any(!vec4<bool>(arg_2.b, false, true, true)) | true));
}

fn func_2(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1148f - _wgslsmith_f_op_f32(abs(-301f))));
    global0 = array<Struct_2, 28>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 28u)];
    global0 = array<Struct_2, 28>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 20u)];
    return _wgslsmith_mult_vec3_i32(abs(~reverseBits(vec3<i32>(45140i, -2376i, 53098i))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, 1i), vec3<i32>(1i, -2147483647i, 2147483647i)), -vec3<i32>(23869i, 96036i, 35342i)), ~vec3<i32>(253i, 18164i, 2147483647i)), _wgslsmith_div_i32(~0i, ~func_3(157f, vec4<u32>(u_input.a, var_1.a.d.x, 1u, 27299u), var_2.b))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_2, 28>();
    global1 = array<Struct_2, 20>();
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(377f + -714f), 203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-813f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-680f)) - _wgslsmith_f_op_f32(515f + -874f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))).x;
    let var_1 = max(~(arg_3.d.x | (~4294967295u | _wgslsmith_add_u32(4294967295u, arg_2.d.x))), ~u_input.a);
    let var_2 = vec3<f32>(-2411f, 300f, _wgslsmith_f_op_f32(f32(-1f) * -1691f));
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(reverseBits(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, 257f, -1204f, 445f)))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true)), true, false, vec4<u32>(countOneBits(1u), 1u, u_input.a, u_input.a)), Struct_1(vec2<bool>(true, true), !all(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, true)), max(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 113630u, u_input.a)), abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))))) >> (~32261u % 32u);
    let var_1 = 1100f == _wgslsmith_f_op_f32(ceil(-203f));
    let var_2 = !vec2<bool>(true, _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(330f - 1167f))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1151f, _wgslsmith_f_op_f32(abs(-1450f)))), -189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1338f)) * -650f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(208f, -1139f) * -577f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), var_2.x), var_1, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(11539i, -58675i, 75834i), vec3<i32>(0i, 2147483647i, 2147483647i))) >= -66726i, countOneBits(countOneBits(vec4<u32>(65359u, u_input.a, u_input.a, u_input.a))) << (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u) & vec4<u32>(u_input.a, 16979u, 4294967295u, u_input.a), select(vec4<u32>(1u, u_input.a, 0u, 4338u), vec4<u32>(0u, 29541u, u_input.a, 1u), true)) % vec4<u32>(32u))), Struct_1(var_2, var_2.x, true, vec4<u32>(abs(~u_input.a), _wgslsmith_clamp_u32(min(1u, u_input.a), 48594u, 4294967295u), u_input.a, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.zyz)));
    return Struct_1(!(!select(vec2<bool>(var_2.x, var_1), !var_2, select(false, var_4.b.c, var_1))), true, var_2.x, vec4<u32>(u_input.a, firstLeadingBit(~u_input.a), _wgslsmith_mod_u32(38606u, ~u_input.a), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = select(-1i, func_4(-vec3<i32>(54471i, 1i, 2147483647i), all(!vec2<bool>(var_0.c, false)), Struct_1(!var_0.a, true, true, var_0.d), Struct_1(select(var_0.a, var_0.a, var_0.b), func_1().a.x, true, var_0.d)) >> (countOneBits(firstLeadingBit(64220u)) % 32u), any(vec4<bool>(false, true, !var_0.a.x, false)) | var_0.a.x);
    global0 = array<Struct_2, 28>();
    var var_2 = func_1();
    global1 = array<Struct_2, 20>();
    global1 = array<Struct_2, 20>();
    var_2 = func_1();
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(803f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(396f)) - 1000f), 661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) + _wgslsmith_f_op_f32(-755f - -562f))))), var_0.d.x, abs(func_4(-max(vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(-1i, 2147483647i, 2147483647i)), true, func_1(), func_1())));
}

