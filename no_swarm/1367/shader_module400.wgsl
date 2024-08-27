struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(true, false), Struct_2(false, false), vec4<f32>(352f, -1006f, -1743f, 111f), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<u32>(32200u, 27778u, 33996u, 1u)), Struct_3(Struct_2(true, false), Struct_2(true, false), vec4<f32>(-1731f, -537f, -1551f, 1007f), vec3<u32>(22171u, 46796u, 49581u), vec4<u32>(0u, 20899u, 0u, 112846u)), Struct_3(Struct_2(false, true), Struct_2(true, false), vec4<f32>(1168f, 292f, -1654f, 2081f), vec3<u32>(1u, 6127u, 0u), vec4<u32>(0u, 0u, 1u, 11523u)), Struct_3(Struct_2(true, false), Struct_2(true, true), vec4<f32>(884f, -274f, 164f, -1037f), vec3<u32>(0u, 7419u, 4294967295u), vec4<u32>(64603u, 1u, 56629u, 0u)), Struct_3(Struct_2(true, false), Struct_2(true, false), vec4<f32>(-360f, -1475f, -390f, 1227f), vec3<u32>(0u, 65276u, 15157u), vec4<u32>(1u, 1u, 49804u, 45742u)), Struct_3(Struct_2(false, false), Struct_2(true, true), vec4<f32>(158f, 1329f, -1008f, 747f), vec3<u32>(36353u, 1u, 4294967295u), vec4<u32>(6174u, 38230u, 52291u, 8310u)), Struct_3(Struct_2(false, true), Struct_2(true, true), vec4<f32>(689f, -338f, 1021f, -1069f), vec3<u32>(1u, 21248u, 40374u), vec4<u32>(0u, 0u, 3468u, 1u)), Struct_3(Struct_2(true, true), Struct_2(true, false), vec4<f32>(-429f, -915f, 445f, 573f), vec3<u32>(1u, 51066u, 13396u), vec4<u32>(17567u, 4294967295u, 1u, 0u)), Struct_3(Struct_2(true, false), Struct_2(true, true), vec4<f32>(-1993f, 621f, 1000f, 558f), vec3<u32>(1u, 30210u, 4294967295u), vec4<u32>(1u, 15558u, 33213u, 1u)), Struct_3(Struct_2(true, true), Struct_2(false, false), vec4<f32>(-1835f, 923f, 456f, 383f), vec3<u32>(4294967295u, 4294967295u, 0u), vec4<u32>(26882u, 60997u, 1u, 4294967295u)), Struct_3(Struct_2(true, false), Struct_2(false, false), vec4<f32>(-1000f, -335f, 202f, -1244f), vec3<u32>(4294967295u, 75741u, 46745u), vec4<u32>(49410u, 88292u, 4294967295u, 4294967295u)), Struct_3(Struct_2(true, false), Struct_2(false, false), vec4<f32>(-876f, -1818f, 1104f, 378f), vec3<u32>(12611u, 15434u, 1u), vec4<u32>(66844u, 1u, 4294967295u, 0u)), Struct_3(Struct_2(false, false), Struct_2(true, false), vec4<f32>(-295f, 443f, 610f, 522f), vec3<u32>(1u, 40011u, 25604u), vec4<u32>(3579u, 1u, 0u, 26859u)), Struct_3(Struct_2(false, false), Struct_2(false, false), vec4<f32>(281f, 903f, -1334f, 108f), vec3<u32>(106315u, 4294967295u, 1u), vec4<u32>(27844u, 51866u, 109344u, 19160u)), Struct_3(Struct_2(false, true), Struct_2(true, true), vec4<f32>(-607f, -327f, -870f, 315f), vec3<u32>(73810u, 30050u, 89585u), vec4<u32>(51978u, 1u, 4294967295u, 69581u)), Struct_3(Struct_2(false, false), Struct_2(true, true), vec4<f32>(819f, 1765f, 385f, -493f), vec3<u32>(2549u, 1u, 7436u), vec4<u32>(0u, 152666u, 1u, 35391u)), Struct_3(Struct_2(true, true), Struct_2(false, false), vec4<f32>(-240f, 1197f, -132f, -103f), vec3<u32>(1u, 4294967295u, 20581u), vec4<u32>(13240u, 29571u, 1u, 1u)), Struct_3(Struct_2(false, true), Struct_2(false, false), vec4<f32>(-1226f, 583f, 663f, 2043f), vec3<u32>(1u, 14750u, 112817u), vec4<u32>(65358u, 70231u, 1u, 20408u)), Struct_3(Struct_2(false, false), Struct_2(true, true), vec4<f32>(-286f, -872f, -1060f, -1857f), vec3<u32>(45u, 1u, 83164u), vec4<u32>(14425u, 831u, 9650u, 33569u)), Struct_3(Struct_2(true, true), Struct_2(true, true), vec4<f32>(-609f, -1000f, -351f, 776f), vec3<u32>(50082u, 81086u, 52622u), vec4<u32>(54985u, 15796u, 3669u, 103316u)), Struct_3(Struct_2(false, false), Struct_2(false, false), vec4<f32>(-390f, 713f, -418f, -305f), vec3<u32>(0u, 4294967295u, 102437u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_3(Struct_2(false, false), Struct_2(false, true), vec4<f32>(465f, -828f, -694f, -362f), vec3<u32>(6579u, 20666u, 0u), vec4<u32>(1u, 31581u, 1u, 4294967295u)), Struct_3(Struct_2(false, true), Struct_2(true, false), vec4<f32>(-205f, -1110f, 633f, -1374f), vec3<u32>(1u, 40423u, 69442u), vec4<u32>(1u, 1393u, 7842u, 0u)), Struct_3(Struct_2(false, false), Struct_2(false, false), vec4<f32>(-673f, -2107f, -1733f, 643f), vec3<u32>(76203u, 0u, 0u), vec4<u32>(1u, 0u, 1u, 41229u)), Struct_3(Struct_2(true, true), Struct_2(false, false), vec4<f32>(1576f, 2088f, 1712f, -568f), vec3<u32>(47574u, 43837u, 1u), vec4<u32>(4294967295u, 26526u, 1u, 1u)), Struct_3(Struct_2(true, false), Struct_2(false, true), vec4<f32>(1318f, -420f, -495f, -728f), vec3<u32>(38567u, 55959u, 0u), vec4<u32>(4294967295u, 4294967295u, 85874u, 30016u)), Struct_3(Struct_2(false, true), Struct_2(false, true), vec4<f32>(1072f, 2869f, -266f, -559f), vec3<u32>(30868u, 65678u, 52459u), vec4<u32>(10390u, 1u, 4294967295u, 12168u)), Struct_3(Struct_2(false, false), Struct_2(true, false), vec4<f32>(-385f, -730f, 946f, 285f), vec3<u32>(18816u, 1u, 7006u), vec4<u32>(4294967295u, 56606u, 4294967295u, 92130u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(true, true);
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 18>();
    var_0 = Struct_2(var_0.b, !(!(var_0.b || !var_0.a)));
    let var_1 = abs(arg_0 & vec2<i32>(-_wgslsmith_mod_i32(-19257i, arg_0.x), 0i));
    return Struct_2(true, false);
}

fn func_3() -> vec4<f32> {
    global2 = array<Struct_3, 28>();
    let var_0 = !select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(select(false, false, true), true), any(vec3<bool>(true, false, true)) && true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    var var_1 = Struct_3(Struct_2(true, all(select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), true))), func_2(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.c, u_input.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(38936i, u_input.c), vec2<i32>(u_input.c, u_input.c))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.b)), select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a, u_input.a), true)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f - 404f)), -485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f - 465f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1332f, -368f, -271f, -876f)))))))), vec3<u32>(u_input.a, 72588u & max(u_input.b, ~u_input.b), ~min(u_input.a, 4294967295u) ^ 89320u), ~(max(~vec4<u32>(u_input.a, 25793u, 115441u, u_input.a), select(vec4<u32>(u_input.b, 4294967295u, 7689u, 0u), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), true)) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(15728u, u_input.a, 0u, u_input.a))));
    global0 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_f_op_f32(round(var_1.c.x));
    return var_1.c;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(any(!(!vec3<bool>(arg_0.b.b, arg_0.b.a, arg_0.a.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(147f + arg_2.x), _wgslsmith_f_op_f32(ceil(arg_2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c.zx + vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), arg_0.c.x))), firstTrailingBit(10202i));
    var var_1 = arg_0.e;
    global2 = array<Struct_3, 28>();
    var var_2 = Struct_3(arg_0.b, func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, var_0.d), vec3<i32>(var_0.d, 2147483647i, var_0.d)), -33146i), vec2<i32>(u_input.c, ~(-1i)), vec2<i32>(firstLeadingBit(var_0.d), u_input.c >> (u_input.a % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 282f, arg_1, arg_2.x), arg_0.c)))), ~(~(~vec3<u32>(var_1.x, 0u, 0u))), arg_0.e);
    let var_3 = select(select(!(!vec2<bool>(arg_0.b.b, false)), !(!select(vec2<bool>(false, var_2.b.b), vec2<bool>(var_0.a, false), var_0.a)), vec2<bool>(arg_0.b.a, all(vec4<bool>(arg_0.b.a, var_0.a, var_0.a, false)))), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(var_2.b.a, false), var_2.b.b), vec2<bool>(var_0.a, arg_0.a.a))), vec2<bool>(var_0.a, true));
    return !(!var_3);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_5 {
    global0 = array<Struct_1, 12>();
    var var_0 = Struct_2(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-473f)))) <= -1768f), false);
    global2 = array<Struct_3, 28>();
    let var_1 = _wgslsmith_div_u32(u_input.b, u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(178f, -202f, 572f, -196f), vec4<f32>(107f, 2000f, 1133f, 724f), var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, 245f, -203f, -600f) + vec4<f32>(-368f, 571f, 1000f, 582f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -943f), -1000f, _wgslsmith_f_op_f32(select(-1029f, 1564f, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1512f, 389f, 1214f), vec4<f32>(318f, -111f, -104f, 1030f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, 964f, 529f, -388f)), select(vec4<bool>(false, var_0.a, true, false), vec4<bool>(true, true, arg_1, false), vec4<bool>(true, arg_0.x, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, 679f, 930f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1341f + -722f), _wgslsmith_div_f32(925f, -563f), _wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(-1887f * -582f))))));
    return Struct_5(all(select(select(vec3<bool>(arg_1, var_0.a, false), vec3<bool>(true, arg_0.x, var_0.a), !vec3<bool>(var_0.a, false, false)), vec3<bool>(u_input.c > -1i, true, any(vec4<bool>(false, var_0.a, arg_1, var_0.a))), !var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = 415f;
    var var_1 = func_4(!select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(true, true, false, true)), true), select(func_1(global2[_wgslsmith_index_u32(u_input.a, 28u)], 857f, vec2<f32>(-952f, -536f)), vec2<bool>(true, false), func_2(vec2<i32>(-1i, 2147483647i)).a)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(true, true), true)));
    let var_2 = !(!select(!func_1(Struct_3(Struct_2(false, true), Struct_2(false, var_1.a), vec4<f32>(785f, 1731f, 187f, 2267f), vec3<u32>(u_input.b, 0u, 1u), vec4<u32>(u_input.b, 9605u, u_input.a, 19990u)), -759f, vec2<f32>(796f, -1033f)), select(!vec2<bool>(true, var_1.a), !vec2<bool>(var_1.a, true), vec2<bool>(true, true)), any(!vec2<bool>(false, var_1.a))));
    var_1 = Struct_5(u_input.c >= u_input.c);
    global2 = array<Struct_3, 28>();
    var var_3 = !vec4<bool>(var_2.x, func_2(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)))).a, var_2.x, var_2.x);
    global1 = array<Struct_1, 18>();
    var var_4 = Struct_4(Struct_3(Struct_2(!all(vec3<bool>(var_1.a, true, var_1.a)), var_2.x), Struct_2(!var_2.x, true || func_1(global2[_wgslsmith_index_u32(u_input.a, 28u)], -1301f, vec2<f32>(-144f, -1899f)).x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-950f * -718f), -1385f, _wgslsmith_f_op_f32(f32(-1f) * -849f), -159f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(284f, 788f, -832f, 381f), vec4<f32>(731f, 691f, -251f, 1307f))))), max(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(34793u, 4294967295u, u_input.b)), vec3<u32>(min(0u, 4294967295u), _wgslsmith_mod_u32(u_input.b, 0u), ~u_input.b)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.a), vec4<u32>(~4294967295u, ~8649u, u_input.b, ~8590u))), vec4<bool>(all(vec2<bool>(!var_3.x, !var_1.a)), true, var_2.x, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-372f, var_4.a.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.c.x - 471f)), var_4.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1295f + -1751f), _wgslsmith_f_op_f32(sign(var_4.a.c.x)), u_input.c == u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -874f) - var_4.a.c.x), false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4.a.c.x - _wgslsmith_f_op_f32(1000f + 1000f))))));
}

