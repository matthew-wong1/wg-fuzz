struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_1(vec2<u32>(26044u, 1u), -501f, vec3<f32>(-1000f, 280f, 373f), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<i32>(2147483647i, -66912i), vec2<u32>(0u, 1u), Struct_3(Struct_2(i32(-2147483648)), Struct_2(-1i), -406f, 3535u)), Struct_4(Struct_1(vec2<u32>(48298u, 4294967295u), 1227f, vec3<f32>(-301f, -1182f, -656f), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<i32>(0i, 18133i), vec2<u32>(4294967295u, 10090u), Struct_3(Struct_2(-10488i), Struct_2(15547i), 619f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(25768u, 0u), -994f, vec3<f32>(773f, 563f, 868f), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<i32>(41340i, 2147483647i), vec2<u32>(1u, 21394u), Struct_3(Struct_2(-7363i), Struct_2(0i), -2038f, 0u)), Struct_4(Struct_1(vec2<u32>(40435u, 4294967295u), -1140f, vec3<f32>(456f, 182f, 212f), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<i32>(-1i, -51820i), vec2<u32>(0u, 0u), Struct_3(Struct_2(0i), Struct_2(2105i), 541f, 47396u)), Struct_4(Struct_1(vec2<u32>(4294967295u, 4294967295u), -1708f, vec3<f32>(-2408f, -288f, 2322f), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<i32>(32397i, 2147483647i), vec2<u32>(0u, 0u), Struct_3(Struct_2(2147483647i), Struct_2(-39029i), 458f, 41345u)), Struct_4(Struct_1(vec2<u32>(124646u, 1u), -1595f, vec3<f32>(-544f, 2059f, 963f), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<i32>(-46825i, -17874i), vec2<u32>(28683u, 4294967295u), Struct_3(Struct_2(2147483647i), Struct_2(0i), -2848f, 24707u)), Struct_4(Struct_1(vec2<u32>(33282u, 13634u), -216f, vec3<f32>(-529f, -1569f, 810f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<i32>(-1i, -1i), vec2<u32>(4294967295u, 7774u), Struct_3(Struct_2(-29479i), Struct_2(i32(-2147483648)), 1304f, 2927u)), Struct_4(Struct_1(vec2<u32>(0u, 37076u), -694f, vec3<f32>(-557f, 552f, -1000f), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<i32>(1i, 8901i), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(-1i), Struct_2(4049i), -244f, 0u)), Struct_4(Struct_1(vec2<u32>(4294967295u, 8844u), -319f, vec3<f32>(842f, 1000f, -478f), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<i32>(3667i, 12711i), vec2<u32>(0u, 4294967295u), Struct_3(Struct_2(0i), Struct_2(-81324i), -1731f, 60651u)), Struct_4(Struct_1(vec2<u32>(13774u, 15257u), 1000f, vec3<f32>(-1452f, -1112f, -378f), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<i32>(-28236i, 50484i), vec2<u32>(93985u, 32128u), Struct_3(Struct_2(-1i), Struct_2(1i), -283f, 1u)), Struct_4(Struct_1(vec2<u32>(16280u, 4294967295u), -885f, vec3<f32>(1000f, 2759f, 1000f), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<i32>(-32208i, 9577i), vec2<u32>(0u, 1u), Struct_3(Struct_2(0i), Struct_2(10121i), -861f, 1200u)), Struct_4(Struct_1(vec2<u32>(5710u, 23779u), -216f, vec3<f32>(-210f, 215f, -1000f), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<i32>(1i, 97i), vec2<u32>(1u, 72047u), Struct_3(Struct_2(-26527i), Struct_2(2147483647i), -418f, 17831u)), Struct_4(Struct_1(vec2<u32>(34594u, 25085u), -1000f, vec3<f32>(128f, -883f, 1517f), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<i32>(0i, 70291i), vec2<u32>(4294967295u, 0u), Struct_3(Struct_2(17324i), Struct_2(1i), -2315f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(1u, 1u), 926f, vec3<f32>(-420f, -3168f, 1019f), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<i32>(-1593i, 1i), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(i32(-2147483648)), Struct_2(-13612i), 1098f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(60216u, 1u), -1927f, vec3<f32>(-1621f, -491f, 184f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<i32>(-11844i, -29324i), vec2<u32>(0u, 44220u), Struct_3(Struct_2(2147483647i), Struct_2(-42016i), -140f, 1u)), Struct_4(Struct_1(vec2<u32>(45998u, 4294967295u), 398f, vec3<f32>(270f, 1081f, -238f), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<i32>(43865i, 2147483647i), vec2<u32>(37101u, 27756u), Struct_3(Struct_2(-16069i), Struct_2(41883i), 724f, 0u)), Struct_4(Struct_1(vec2<u32>(2309u, 1u), -1121f, vec3<f32>(1018f, 1000f, -294f), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<i32>(1i, -1i), vec2<u32>(12611u, 1u), Struct_3(Struct_2(2147483647i), Struct_2(0i), 624f, 2540u)), Struct_4(Struct_1(vec2<u32>(1u, 55483u), -241f, vec3<f32>(427f, -1961f, 358f), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<i32>(-31062i, -27723i), vec2<u32>(11942u, 0u), Struct_3(Struct_2(0i), Struct_2(-21798i), -1255f, 32349u)), Struct_4(Struct_1(vec2<u32>(100524u, 0u), -1737f, vec3<f32>(585f, -408f, -700f), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<i32>(0i, -32937i), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(-21706i), Struct_2(18800i), 829f, 0u)), Struct_4(Struct_1(vec2<u32>(45474u, 1u), 1284f, vec3<f32>(1736f, -708f, -356f), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<i32>(2147483647i, 36268i), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(16321i), Struct_2(-1i), 1731f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(0u, 2403u), 247f, vec3<f32>(385f, 850f, 893f), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<i32>(-48028i, -13324i), vec2<u32>(39411u, 4294967295u), Struct_3(Struct_2(2277i), Struct_2(-1i), 640f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(77939u, 52222u), -889f, vec3<f32>(346f, 844f, 426f), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<i32>(1i, -15850i), vec2<u32>(4294967295u, 4294967295u), Struct_3(Struct_2(-1i), Struct_2(57516i), 1000f, 4294967295u)), Struct_4(Struct_1(vec2<u32>(33743u, 1u), -1007f, vec3<f32>(-308f, -1920f, -1671f), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<i32>(-18926i, 1i), vec2<u32>(4294967295u, 44355u), Struct_3(Struct_2(1i), Struct_2(22923i), 1735f, 90753u)), Struct_4(Struct_1(vec2<u32>(21182u, 50154u), 368f, vec3<f32>(2001f, -1000f, 1898f), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<i32>(16551i, i32(-2147483648)), vec2<u32>(0u, 4294967295u), Struct_3(Struct_2(2691i), Struct_2(73526i), -1649f, 1u)), Struct_4(Struct_1(vec2<u32>(25801u, 70561u), -1586f, vec3<f32>(-344f, 1000f, -260f), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<i32>(48335i, 35384i), vec2<u32>(0u, 8183u), Struct_3(Struct_2(-76345i), Struct_2(0i), -203f, 13635u)), Struct_4(Struct_1(vec2<u32>(58263u, 57025u), 346f, vec3<f32>(-896f, -1969f, 1117f), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<i32>(36012i, 2147483647i), vec2<u32>(0u, 37415u), Struct_3(Struct_2(1i), Struct_2(2147483647i), -1370f, 23489u)), Struct_4(Struct_1(vec2<u32>(7691u, 51330u), -273f, vec3<f32>(1256f, -1348f, -1991f), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<i32>(12496i, 0i), vec2<u32>(0u, 0u), Struct_3(Struct_2(-30406i), Struct_2(2147483647i), 225f, 91195u)), Struct_4(Struct_1(vec2<u32>(7464u, 4294967295u), 1049f, vec3<f32>(661f, -465f, 490f), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<i32>(i32(-2147483648), 10091i), vec2<u32>(72635u, 4294967295u), Struct_3(Struct_2(3396i), Struct_2(0i), 539f, 5216u)), Struct_4(Struct_1(vec2<u32>(23865u, 112489u), 886f, vec3<f32>(-898f, 652f, -1000f), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<i32>(44762i, -30564i), vec2<u32>(93738u, 35125u), Struct_3(Struct_2(45060i), Struct_2(-1i), 879f, 12463u)));

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: array<u32, 9>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, 973u), 9u)], ~abs(11831u) >> (global1.x % 32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(970f + _wgslsmith_f_op_f32(f32(-1f) * -418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1034f)), _wgslsmith_f_op_f32(f32(-1f) * -490f), true))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(811f)), _wgslsmith_f_op_f32(floor(-735f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f - -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-151f - -852f), 1f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1483f, -201f, 1000f, 686f), vec4<f32>(1139f, 968f, -1564f, 220f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, -142f, -418f, 515f))))));
    var var_1 = Struct_1(reverseBits(vec2<u32>(abs(_wgslsmith_sub_u32(global1.x, 5386u)), 49058u)), -302f, _wgslsmith_f_op_vec3_f32(var_0.wxy * var_0.yyw), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), vec2<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(var_0.x + -886f), all(vec3<bool>(false, true, false)))) == var_0.x));
    var var_2 = Struct_4(Struct_1(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-645f + var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(abs(var_1.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.wwx)) * vec3<f32>(var_1.b, _wgslsmith_div_f32(228f, var_0.x), -1076f)), var_1.e, !var_1.e), -min(~(-vec2<i32>(-38524i, -2147483647i)), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(0i, 19839i)), select(vec2<i32>(-20478i, 22962i), vec2<i32>(-1i, 2147483647i), true))), firstTrailingBit(u_input.a.zy), Struct_3(Struct_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(-39134i, 2147483647i), -18005i)), Struct_2(1i), var_1.c.x, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global1.x, 100764u, var_1.a.x)), max(countOneBits(u_input.c.zyx), ~u_input.c.ywy))));
    var var_3 = var_2.d.c;
    return _wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * var_2.a.c.x));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_5, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_1(vec2<u32>(1u & (firstTrailingBit(global1.x) << (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16340u, 9u)], 9u)] % 32u)), ~global1.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec3_f32(round(arg_2.b)), select(select(vec2<bool>(!arg_1, -685f > arg_3.x), vec2<bool>(true, true), any(!vec2<bool>(true, arg_1))), select(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_2.a, false), vec2<bool>(false, arg_2.d)), select(select(vec2<bool>(false, true), vec2<bool>(true, arg_1), arg_2.d), vec2<bool>(false, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false))), any(!vec3<bool>(arg_2.d, arg_1, arg_2.d))), !all(select(vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_1, arg_1, arg_2.d), vec3<bool>(arg_1, arg_2.d, false)))), vec2<bool>(true, false));
    global0 = array<Struct_4, 29>();
    let var_1 = i32(-1i) * -(~1i);
    var var_2 = Struct_2(-24059i);
    var var_3 = vec2<u32>(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 17012u), _wgslsmith_div_u32(27132u, global2[_wgslsmith_index_u32(56807u, 9u)])), 9u)] | ((~global1.x & ~global1.x) << (global2[_wgslsmith_index_u32(u_input.c.x, 9u)] % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(global1.x, var_0.a.x), ~u_input.c.x) >> (0u % 32u), global2[_wgslsmith_index_u32(abs(60069u), 9u)]));
    return ~min(~(_wgslsmith_mod_u32(70606u, 1u) ^ u_input.c.x), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~(~var_3.x), 9u)], min(4294967295u, global1.x) >> (_wgslsmith_mult_u32(6960u, 1u) % 32u)));
}

fn func_1() -> i32 {
    global1 = _wgslsmith_div_vec2_u32(~u_input.b, u_input.a.yx);
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    global1 = vec2<u32>(_wgslsmith_mod_u32(func_2(_wgslsmith_sub_i32(-2147483647i, -29210i), true, Struct_5(true, vec3<f32>(-1058f, 1397f, -1169f), vec2<f32>(2365f, -804f), true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-664f, 395f, 1119f)))), u_input.b.x) >> (~global1.x % 32u), _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(~global1.x, 9u)], _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, u_input.d, 38641u), 1u), global1.x), 1u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(837f)))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), (vec2<i32>(22765i, -24143i) << (~u_input.a.zy % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 12709u << (global2[_wgslsmith_index_u32(global1.x, 9u)] % 32u)) % vec2<u32>(32u))) << (64162u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> i32 {
    global2 = array<u32, 9>();
    let var_0 = Struct_1(u_input.b, -106f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1537f, arg_2.c, arg_2.c), vec3<f32>(arg_2.c, -681f, arg_2.c), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_2.c, arg_2.c))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c, arg_2.c, arg_2.c), vec3<f32>(1378f, arg_2.c, 1000f))))))), !(!vec2<bool>(any(vec2<bool>(true, true)), !arg_1)), vec2<bool>(arg_1, true));
    let var_1 = -abs(select(abs(vec4<i32>(arg_0.a, arg_2.a.a, arg_2.b.a, 0i)), -(~vec4<i32>(arg_0.a, arg_2.a.a, 20564i, 64715i)), all(vec4<bool>(true, true, true, true))));
    let var_2 = Struct_4(var_0, vec2<i32>(arg_2.a.a, -7130i >> (1u % 32u)), var_0.a, Struct_3(Struct_2(_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), -4612i)), Struct_2(abs(1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(-50227i, var_1.x, arg_0.a, arg_2.b.a), vec4<i32>(arg_2.b.a, arg_0.a, -2147483647i, 44331i))), 1000f, 4294967295u));
    let var_3 = vec4<i32>(~(-1i), arg_2.a.a, -(_wgslsmith_sub_i32(firstTrailingBit(var_2.b.x), -1i) << (_wgslsmith_dot_vec3_u32(max(u_input.a, u_input.a), vec3<u32>(4294967295u, arg_2.d, 0u)) % 32u)), -(firstTrailingBit(~var_2.d.a.a) & -66264i));
    return min(arg_2.b.a, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(vec2<u32>(firstTrailingBit(global1.x), 28606u) ^ u_input.b);
    let var_0 = Struct_5(true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1180f, -769f, 340f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-340f, -262f, -1972f), vec3<f32>(-1591f, -993f, 483f))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1845f - _wgslsmith_f_op_f32(f32(-1f) * -737f)) - _wgslsmith_f_op_f32(f32(-1f) * -1286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-170f * 625f))), !all(vec4<bool>(true, true, true, global1.x != global2[_wgslsmith_index_u32(global1.x, 9u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.c);
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, 0i) | (vec2<i32>(-2147483647i, 33433i) << (vec2<u32>(4294967295u, global1.x) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(2147483647i, -1i)), min(max(vec2<i32>(57077i, 0i), vec2<i32>(-13871i, -19696i)), firstTrailingBit(vec2<i32>(8120i, 1i)))), vec2<i32>(-_wgslsmith_mult_i32(-22322i, -1i), -1i)), func_4(Struct_2(func_1()), any(vec3<bool>(any(vec2<bool>(var_0.d, false)), false, u_input.c.x != global1.x)), Struct_3(Struct_2(2147483647i), Struct_2(-24093i), var_1.x, 10340u)));
    global1 = ~_wgslsmith_mult_vec2_u32(u_input.b, ~_wgslsmith_add_vec2_u32(u_input.c.zz, ~u_input.a.zy));
    let var_3 = any(!select(!(!vec3<bool>(true, var_0.d, false)), select(vec3<bool>(var_0.d, var_0.a, false), !vec3<bool>(var_0.d, false, var_0.a), any(vec3<bool>(false, var_0.d, var_0.d))), var_0.d));
    var_2 = _wgslsmith_div_i32(~(-2147483647i), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~9365i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2280f - var_1.x) - _wgslsmith_f_op_f32(-var_1.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
}

