struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(0u, 4294967295u, Struct_1(0u, -1153f, -836f, vec3<i32>(46627i, 1i, -25982i), vec2<u32>(1u, 4294967295u)), Struct_1(0u, 518f, -307f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec2<u32>(36588u, 40899u))), Struct_2(4294967295u, 21550u, Struct_1(50471u, -1294f, -1000f, vec3<i32>(1459i, 18014i, i32(-2147483648)), vec2<u32>(18650u, 1u)), Struct_1(0u, -512f, -1000f, vec3<i32>(35849i, -3377i, -1i), vec2<u32>(0u, 4294967295u))), Struct_2(17664u, 2014u, Struct_1(0u, -1590f, -738f, vec3<i32>(2147483647i, -1i, 43891i), vec2<u32>(4294967295u, 1u)), Struct_1(1u, -1233f, -697f, vec3<i32>(0i, 23895i, 11400i), vec2<u32>(1u, 18900u))), Struct_2(51516u, 10213u, Struct_1(4294967295u, -1290f, -1000f, vec3<i32>(-24551i, 7945i, 1i), vec2<u32>(10920u, 4294967295u)), Struct_1(29269u, 1126f, 100f, vec3<i32>(9685i, -14152i, 1i), vec2<u32>(4294967295u, 1u))), Struct_2(14139u, 4294967295u, Struct_1(4294967295u, -349f, -642f, vec3<i32>(2147483647i, 1i, -1i), vec2<u32>(74491u, 0u)), Struct_1(16333u, 2585f, -1048f, vec3<i32>(-101642i, 37623i, i32(-2147483648)), vec2<u32>(4294967295u, 10325u))), Struct_2(36161u, 1u, Struct_1(0u, 1829f, -197f, vec3<i32>(0i, 0i, 1i), vec2<u32>(1u, 24u)), Struct_1(32160u, -530f, 1487f, vec3<i32>(-3273i, 1i, 2147483647i), vec2<u32>(4294967295u, 0u))), Struct_2(32400u, 1u, Struct_1(17472u, -840f, -1069f, vec3<i32>(-1i, 1i, 2147483647i), vec2<u32>(4294967295u, 41957u)), Struct_1(1u, -1756f, -1835f, vec3<i32>(-3059i, 2289i, 50230i), vec2<u32>(10010u, 4294967295u))), Struct_2(73559u, 84391u, Struct_1(2297u, -445f, -927f, vec3<i32>(37567i, 2147483647i, 26283i), vec2<u32>(42807u, 1u)), Struct_1(2568u, 723f, -988f, vec3<i32>(44481i, 84566i, -1i), vec2<u32>(0u, 4294967295u))), Struct_2(17686u, 10266u, Struct_1(71960u, 128f, -961f, vec3<i32>(16483i, -1i, -1i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(64688u, 320f, 207f, vec3<i32>(2147483647i, -53308i, 59197i), vec2<u32>(4294967295u, 0u))), Struct_2(76905u, 1u, Struct_1(40641u, -1098f, -904f, vec3<i32>(45643i, 2147483647i, 16446i), vec2<u32>(0u, 61177u)), Struct_1(51724u, -898f, -199f, vec3<i32>(-1i, 0i, 2147483647i), vec2<u32>(0u, 119433u))), Struct_2(5522u, 0u, Struct_1(1u, -1000f, 185f, vec3<i32>(0i, -76681i, -1i), vec2<u32>(9811u, 33180u)), Struct_1(6888u, 152f, 575f, vec3<i32>(2147483647i, 2147483647i, 66063i), vec2<u32>(85016u, 0u))), Struct_2(10808u, 0u, Struct_1(65244u, -181f, -318f, vec3<i32>(-13384i, 2147483647i, 27581i), vec2<u32>(25911u, 4294967295u)), Struct_1(17120u, 1000f, -757f, vec3<i32>(19486i, 2147483647i, -7605i), vec2<u32>(42205u, 0u))), Struct_2(4294967295u, 0u, Struct_1(40315u, 126f, -164f, vec3<i32>(23063i, 2147483647i, -1i), vec2<u32>(0u, 0u)), Struct_1(4294967295u, -1042f, -1000f, vec3<i32>(-62409i, -11669i, 13853i), vec2<u32>(30848u, 1u))), Struct_2(61253u, 4294967295u, Struct_1(59076u, -647f, -1604f, vec3<i32>(11346i, 29986i, 2147483647i), vec2<u32>(1u, 1u)), Struct_1(105194u, -617f, 1748f, vec3<i32>(-53603i, -1i, -1i), vec2<u32>(1u, 4294967295u))), Struct_2(0u, 63362u, Struct_1(0u, -1751f, -166f, vec3<i32>(22200i, 18823i, 26794i), vec2<u32>(0u, 40540u)), Struct_1(8442u, 1000f, -1171f, vec3<i32>(-14198i, 7798i, 0i), vec2<u32>(1u, 114468u))), Struct_2(0u, 1u, Struct_1(1u, 912f, 153f, vec3<i32>(0i, 2147483647i, -1i), vec2<u32>(59520u, 1464u)), Struct_1(4294967295u, -1081f, -524f, vec3<i32>(-14266i, -1i, -10588i), vec2<u32>(0u, 4294967295u))), Struct_2(0u, 116555u, Struct_1(1u, -1000f, 387f, vec3<i32>(24324i, -8269i, 0i), vec2<u32>(0u, 0u)), Struct_1(0u, 264f, 421f, vec3<i32>(18517i, 0i, -32110i), vec2<u32>(0u, 11565u))), Struct_2(17333u, 1u, Struct_1(2179u, 634f, 1000f, vec3<i32>(-20286i, 0i, 17764i), vec2<u32>(0u, 4294967295u)), Struct_1(1u, -849f, -894f, vec3<i32>(-19557i, i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 38476u))), Struct_2(112815u, 0u, Struct_1(4294967295u, -1137f, 1000f, vec3<i32>(2147483647i, -2206i, 2147483647i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(6151u, 1925f, -1000f, vec3<i32>(41781i, -43420i, i32(-2147483648)), vec2<u32>(53223u, 1u))), Struct_2(52459u, 0u, Struct_1(0u, 148f, 301f, vec3<i32>(1i, 0i, 1i), vec2<u32>(1u, 1u)), Struct_1(0u, 639f, 501f, vec3<i32>(8495i, -16864i, -84431i), vec2<u32>(4294967295u, 17510u))), Struct_2(4294967295u, 0u, Struct_1(19504u, -1000f, 1000f, vec3<i32>(1i, 27640i, -37921i), vec2<u32>(28175u, 1653u)), Struct_1(4294967295u, 976f, 105f, vec3<i32>(-15570i, -31506i, 0i), vec2<u32>(18611u, 41024u))), Struct_2(79858u, 1u, Struct_1(4294967295u, 703f, 706f, vec3<i32>(-1i, 2147483647i, 2147483647i), vec2<u32>(9752u, 3160u)), Struct_1(52568u, -696f, -1282f, vec3<i32>(1i, 65963i, 0i), vec2<u32>(4294967295u, 0u))), Struct_2(15637u, 1u, Struct_1(1u, -1000f, -1466f, vec3<i32>(43941i, -15307i, -4405i), vec2<u32>(1u, 7841u)), Struct_1(19614u, -519f, 1500f, vec3<i32>(-72646i, -2284i, 20088i), vec2<u32>(105783u, 4294967295u))), Struct_2(2460u, 2456u, Struct_1(27194u, -544f, -1478f, vec3<i32>(-1i, 0i, -1i), vec2<u32>(1u, 4294967295u)), Struct_1(4294967295u, 1104f, -1000f, vec3<i32>(12794i, 0i, -14403i), vec2<u32>(4294967295u, 4294967295u))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1530f)))), -119f, 285f);
    global0 = vec2<bool>(var_0, any(vec3<bool>(global0.x, true, global0.x & global0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(-1000f, 630f)), _wgslsmith_f_op_f32(abs(205f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -130f, 1000f), vec3<f32>(var_1.x, -817f, -480f), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 2277f, -148f))))))));
    let var_3 = vec3<bool>(var_0, global0.x, global0.x);
    return _wgslsmith_add_u32(~6415u, _wgslsmith_mult_u32(firstLeadingBit(~_wgslsmith_add_u32(0u, 0u)), ~_wgslsmith_mult_u32(15447u, 35089u)));
}

fn func_2() -> vec3<i32> {
    var var_0 = vec3<u32>(~0u, _wgslsmith_mod_u32(1u, 26823u), ~(~firstTrailingBit(_wgslsmith_sub_u32(70821u, 26619u))));
    var_0 = vec3<u32>(42879u, _wgslsmith_add_u32(select(~37753u, ~var_0.x, any(!vec3<bool>(false, global0.x, true))), _wgslsmith_dot_vec2_u32(var_0.yy, var_0.xy & ~vec2<u32>(var_0.x, var_0.x))), ~countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.xy))));
    let var_1 = vec4<u32>(59447u, 2292u, var_0.x, var_0.x);
    let var_2 = Struct_2(var_1.x, func_3(), Struct_1((~var_0.x ^ abs(var_0.x)) >> (~firstLeadingBit(21368u) % 32u), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-2420f, 284f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2130f, 712f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(floor(-811f)))), -firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, u_input.b.x)), _wgslsmith_div_vec2_u32(firstTrailingBit(~var_0.xz), var_1.xy)), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 53562u, 4294967295u) << (vec3<u32>(var_1.x, var_0.x, var_1.x) % vec3<u32>(32u)), select(vec3<u32>(1u, 0u, var_0.x), vec3<u32>(var_0.x, 29080u, var_0.x), vec3<bool>(global0.x, global0.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1195f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(690f + -1189f))))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, 1i), _wgslsmith_mult_i32(u_input.a, 36755i)), u_input.a, -_wgslsmith_mult_i32(26418i, u_input.a)), ~(var_1.zz ^ max(vec2<u32>(var_1.x, var_0.x), var_0.zz))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-354f)))), -288f, 141f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)), var_2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.c.b))))))));
    return _wgslsmith_mult_vec3_i32(~(~_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.d.x, 2147483647i, -2147483647i), vec3<i32>(-2147483647i, 17517i, -55091i))) << (var_1.xwy % vec3<u32>(32u)), max(~vec3<i32>(6001i, u_input.a, 2147483647i) & ~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -76724i | u_input.b.x, -15937i | u_input.b.x)) << (vec3<u32>(~var_1.x, ~89206u, _wgslsmith_sub_u32(abs(var_1.x), _wgslsmith_mult_u32(var_2.d.e.x, 4294967295u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_add_u32(arg_3.a, arg_3.a | arg_3.a), ~36923u), -1106f, arg_1.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(func_2(), u_input.b.zyz), vec3<i32>(~arg_1.d.x, (u_input.b.x ^ 7490i) & -4663i, 1i), select(vec3<i32>(~arg_3.d.x, firstLeadingBit(arg_1.d.x), -arg_3.d.x), arg_1.d, !vec3<bool>(arg_0.x, global0.x, false))), arg_3.e);
    let var_1 = vec2<bool>(true, arg_0.x);
    var var_2 = Struct_1(0u, arg_3.b, -462f, vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.d.zx, var_0.d.zx), 3967i, ~_wgslsmith_mod_i32(arg_1.d.x, -2147483647i)), ~(~arg_3.e));
    let var_3 = Struct_1(~select(24113u, firstLeadingBit(_wgslsmith_add_u32(1u, var_0.e.x)), any(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(arg_2, arg_2, true, false), arg_0.x))), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-507f))), var_0.d, reverseBits(arg_1.e));
    let var_4 = global1[_wgslsmith_index_u32(~(arg_3.e.x >> (0u % 32u)), 24u)];
    return Struct_1(~1u, arg_3.b, 341f, countOneBits(abs(reverseBits(vec3<i32>(0i, var_3.d.x, var_2.d.x)))), firstTrailingBit(var_3.e));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global0 = vec2<bool>(global0.x, select(true, all(vec3<bool>(arg_1, arg_1, arg_1)) != global0.x, all(vec2<bool>(false, !global0.x))));
    let var_0 = vec4<u32>(2470u, ~(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_2.a, 4294967295u), arg_2.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(59279u, 80880u, 1u), vec3<u32>(arg_2.a, arg_2.a, arg_2.e.x)))), _wgslsmith_sub_u32(~arg_0.e.x, 20791u), firstTrailingBit(4294967295u << (~(~arg_2.a) % 32u)));
    let var_1 = func_1(select(!select(select(vec2<bool>(arg_1, global0.x), vec2<bool>(global0.x, true), vec2<bool>(false, true)), vec2<bool>(arg_1, global0.x), vec2<bool>(arg_1, global0.x)), !select(vec2<bool>(global0.x, global0.x), !vec2<bool>(false, global0.x), true), select(vec2<bool>(global0.x, all(vec3<bool>(false, arg_1, true))), vec2<bool>(true, true), all(!vec2<bool>(true, arg_1)))), arg_2, -max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 39933i, u_input.b.x), u_input.b.www), _wgslsmith_mult_i32(u_input.b.x, -22898i)) > arg_2.d.x, arg_2);
    var var_2 = min(vec4<i32>(((i32(-1i) * -10341i) ^ u_input.b.x) >> (15362u % 32u), func_2().x, ~_wgslsmith_dot_vec3_i32(~arg_0.d, firstTrailingBit(arg_2.d)), arg_0.d.x >> (arg_0.e.x % 32u)), vec4<i32>(-30298i, max(-u_input.a, arg_0.d.x), -29009i, u_input.b.x));
    let var_3 = Struct_2(~(~min(_wgslsmith_add_u32(arg_2.a, 56859u), ~0u)), var_1.e.x, func_1(select(vec2<bool>(true, false), !select(vec2<bool>(arg_1, global0.x), vec2<bool>(false, global0.x), vec2<bool>(global0.x, true)), any(select(vec4<bool>(true, global0.x, arg_1, true), vec4<bool>(global0.x, false, arg_1, global0.x), false))), Struct_1((arg_2.a ^ 20348u) ^ firstLeadingBit(31070u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(532f * 510f) + _wgslsmith_f_op_f32(-arg_3)), -1652f, firstTrailingBit(-u_input.b.yyx), reverseBits(~vec2<u32>(var_1.e.x, 61080u))), (firstLeadingBit(arg_0.d.x) << (func_3() % 32u)) == arg_0.d.x, func_1(!vec2<bool>(global0.x, global0.x), func_1(select(vec2<bool>(global0.x, arg_1), vec2<bool>(true, true), false), var_1, true, Struct_1(arg_2.a, -1000f, arg_2.c, vec3<i32>(-5739i, 10039i, arg_2.d.x), arg_0.e)), !arg_1, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 95850u, 54067u), vec3<u32>(var_0.x, arg_0.a, arg_0.e.x)), arg_2.b, arg_3, _wgslsmith_mod_vec3_i32(var_1.d, var_2.yxy), var_0.wx))), func_1(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), true)), Struct_1(43491u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), -326f, vec3<i32>(_wgslsmith_add_i32(arg_2.d.x, -36790i), 14057i, arg_2.d.x), select(~vec2<u32>(arg_2.a, arg_2.a), var_0.yw, true)), false, var_1));
    return global1[_wgslsmith_index_u32(abs(0u) << (_wgslsmith_add_u32(_wgslsmith_div_u32(max(var_0.x, ~var_0.x), ~41203u), ~1u) % 32u), 24u)];
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = func_4(Struct_1(max(arg_0.b, 0u), 1534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.b, 1245f))) - arg_0.c.c), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.d.x | u_input.a, firstLeadingBit(2147483647i), u_input.a | 22301i), _wgslsmith_clamp_vec3_i32(func_4(arg_0.c, false, Struct_1(arg_0.b, 801f, arg_0.c.c, u_input.b.yzz, vec2<u32>(arg_0.d.a, 44670u)), -255f).d.d, vec3<i32>(2147483647i, u_input.b.x, arg_0.c.d.x), u_input.b.zxz)), ~arg_0.c.e), !(!any(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true)))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2186f)), 860f), -267f)));
    let var_1 = all(vec4<bool>(true, (_wgslsmith_f_op_f32(arg_0.c.c + -1143f) > func_4(Struct_1(16407u, arg_0.c.b, 499f, arg_0.c.d, arg_0.c.e), true, var_0.d, arg_0.d.c).d.b) | all(!vec3<bool>(global0.x, global0.x, true)), true, !any(vec2<bool>(false, false))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.c)) * -128f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.c.b)))));
    var var_3 = vec4<bool>(all(select(!vec3<bool>(true, var_1, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(var_1, global0.x, var_1), global0.x && true), any(select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), false)))), !(!all(vec4<bool>(global0.x, true, var_1, var_1))), select(global0.x, false, !all(vec2<bool>(var_1, true)) && any(!vec4<bool>(false, true, var_1, false))), true);
    let var_4 = var_3.zzw;
    return arg_0.c.e.x ^ 44793u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = vec3<i32>(~(-21188i), _wgslsmith_div_i32(max(u_input.a, 2147483647i), 31734i), u_input.b.x >> (reverseBits(~16223u) % 32u)) ^ -vec3<i32>(-2147483647i, 0i, ~firstLeadingBit(-18584i));
    var var_2 = Struct_1(1u, -265f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(280f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.b.xzw, vec2<u32>(~1u | firstTrailingBit(~47377u), _wgslsmith_add_u32(~abs(10483u), 407u)));
    global0 = vec2<bool>(global0.x, !global0.x);
    var var_3 = Struct_2(func_5(func_4(func_1(vec2<bool>(global0.x, false), Struct_1(1u, var_2.c, 968f, u_input.b.xyy, vec2<u32>(12446u, var_2.e.x)), var_2.b < var_2.c, Struct_1(var_2.e.x, -1818f, var_2.c, vec3<i32>(var_1.x, var_1.x, 12474i), vec2<u32>(var_2.a, var_2.a))), true, Struct_1(var_2.e.x, _wgslsmith_div_f32(var_2.c, -793f), _wgslsmith_f_op_f32(-var_2.b), vec3<i32>(var_0.x, var_0.x, 24888i), ~var_2.e), var_2.b)), var_2.a & ~firstTrailingBit(~var_2.a), func_1(vec2<bool>(var_2.d.x == var_1.x, global0.x), Struct_1(var_2.a, var_2.c, _wgslsmith_f_op_f32(var_2.b + var_2.c), var_2.d, min(var_2.e, var_2.e)), true, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.e.x, 4294967295u, var_2.e.x), vec4<u32>(var_2.a, var_2.e.x, var_2.a, var_2.a)), -693f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1037f, -1000f) * var_2.b), var_0.xyw, var_2.e)), func_1(!(!select(vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), global0.x)), func_1(vec2<bool>(global0.x, global0.x), Struct_1(~59234u, _wgslsmith_f_op_f32(round(110f)), _wgslsmith_f_op_f32(f32(-1f) * -324f), ~var_2.d, vec2<u32>(var_2.a, var_2.a)), ~var_2.a >= ~24649u, func_1(vec2<bool>(true, true), Struct_1(10136u, var_2.b, var_2.b, u_input.b.yzy, vec2<u32>(81023u, 1u)), select(true, true, global0.x), func_1(vec2<bool>(false, false), Struct_1(var_2.e.x, 126f, var_2.b, vec3<i32>(12054i, var_2.d.x, 2147483647i), var_2.e), global0.x, Struct_1(4294967295u, var_2.c, -1000f, vec3<i32>(-1i, var_0.x, 48198i), vec2<u32>(var_2.a, var_2.e.x))))), global0.x, func_4(func_4(Struct_1(var_2.a, 665f, -303f, vec3<i32>(10600i, 0i, u_input.a), var_2.e), true, func_1(vec2<bool>(true, false), Struct_1(30263u, var_2.b, -551f, vec3<i32>(var_1.x, -41355i, var_1.x), var_2.e), true, Struct_1(45421u, 1000f, 1566f, vec3<i32>(var_0.x, 80326i, var_0.x), var_2.e)), _wgslsmith_f_op_f32(380f + var_2.b)).c, any(vec2<bool>(false, global0.x)), Struct_1(59701u, var_2.b, func_1(vec2<bool>(false, true), Struct_1(53248u, -471f, var_2.c, vec3<i32>(var_0.x, var_0.x, var_2.d.x), vec2<u32>(var_2.a, var_2.e.x)), false, Struct_1(72932u, var_2.b, var_2.b, vec3<i32>(var_0.x, var_0.x, -21721i), vec2<u32>(var_2.e.x, 1u))).b, _wgslsmith_add_vec3_i32(var_2.d, vec3<i32>(u_input.b.x, var_0.x, var_0.x)), vec2<u32>(var_2.a, 15135u)), 1f).c));
    let var_4 = vec3<bool>(false, select(true, abs(u_input.b.x) != var_0.x, all(select(!vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(true, false, global0.x, true), vec4<bool>(true, true, global0.x, false), false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), global0.x)))), false);
    var_1 = ~_wgslsmith_mod_vec3_i32(-u_input.b.zyx & vec3<i32>(_wgslsmith_mult_i32(16892i, u_input.a), -5052i, u_input.a), -(-vec3<i32>(u_input.b.x, u_input.b.x, -3918i) << (vec3<u32>(var_2.e.x, var_2.e.x, 4294967295u) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c))), ~func_1(var_4.xy, Struct_1(~var_3.a, -303f, var_2.b, func_2(), vec2<u32>(var_2.a, 11197u)), select(false, any(vec3<bool>(false, true, true)), any(vec3<bool>(global0.x, false, global0.x))), func_1(select(vec2<bool>(var_4.x, false), var_4.yz, vec2<bool>(global0.x, global0.x)), func_4(var_3.c, true, Struct_1(75911u, var_2.c, 1367f, var_0.xww, vec2<u32>(75u, var_3.b)), var_3.d.b).c, var_4.x, Struct_1(var_2.a, var_3.d.c, 585f, u_input.b.ywx, vec2<u32>(19418u, var_2.e.x)))).d.xx, ~(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(80800u, var_2.e.x, 15767u), vec3<u32>(0u, 46074u, 4294967295u), vec3<u32>(1u, 31160u, 26274u)))), -func_1(select(select(vec2<bool>(true, false), var_4.xx, vec2<bool>(false, true)), !vec2<bool>(var_4.x, var_4.x), !var_4.yy), Struct_1(1u, _wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(ceil(var_3.d.c)), ~u_input.b.wxw, vec2<u32>(var_2.e.x, var_3.d.e.x)), all(var_4), var_3.d).d);
}

