struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<f32>(1540f, -175f, -448f, -1156f), vec2<bool>(false, true), 1544f, 1i, Struct_2(Struct_1(810f, vec3<bool>(true, false, false), true, vec2<u32>(18172u, 1u), vec2<i32>(1i, -21491i)), vec4<f32>(589f, 962f, -1072f, 495f), vec3<i32>(i32(-2147483648), -1i, 0i), Struct_1(-1530f, vec3<bool>(false, true, true), true, vec2<u32>(0u, 33299u), vec2<i32>(-24010i, 2147483647i)), -1i)), Struct_3(vec4<f32>(-1102f, -826f, -136f, -1043f), vec2<bool>(true, false), 1140f, 35138i, Struct_2(Struct_1(716f, vec3<bool>(true, true, true), true, vec2<u32>(1u, 0u), vec2<i32>(-34800i, 42826i)), vec4<f32>(1000f, 175f, -638f, -250f), vec3<i32>(26481i, -1i, -28394i), Struct_1(-779f, vec3<bool>(false, true, true), true, vec2<u32>(4294967295u, 1u), vec2<i32>(i32(-2147483648), 67386i)), -1i)), Struct_3(vec4<f32>(-324f, 776f, 1273f, 607f), vec2<bool>(false, true), 708f, -258i, Struct_2(Struct_1(328f, vec3<bool>(false, true, true), true, vec2<u32>(0u, 4294967295u), vec2<i32>(22023i, 2147483647i)), vec4<f32>(-137f, -1686f, -434f, -350f), vec3<i32>(i32(-2147483648), 46096i, 11863i), Struct_1(922f, vec3<bool>(false, false, true), false, vec2<u32>(30884u, 21134u), vec2<i32>(-14329i, 2147483647i)), 2147483647i)), Struct_3(vec4<f32>(1468f, 232f, -849f, 188f), vec2<bool>(false, true), 794f, 0i, Struct_2(Struct_1(-269f, vec3<bool>(true, true, true), false, vec2<u32>(75451u, 1u), vec2<i32>(1i, 13101i)), vec4<f32>(698f, -1168f, 622f, -1226f), vec3<i32>(i32(-2147483648), -1i, -24613i), Struct_1(-833f, vec3<bool>(false, true, false), true, vec2<u32>(4294967295u, 1u), vec2<i32>(17430i, 2147483647i)), -31943i)), Struct_3(vec4<f32>(-160f, -468f, 1000f, -575f), vec2<bool>(false, false), 149f, i32(-2147483648), Struct_2(Struct_1(-779f, vec3<bool>(false, true, false), true, vec2<u32>(53422u, 41692u), vec2<i32>(2147483647i, -16841i)), vec4<f32>(-452f, 369f, -703f, 1042f), vec3<i32>(20785i, i32(-2147483648), 1233i), Struct_1(1027f, vec3<bool>(true, true, false), false, vec2<u32>(47780u, 1u), vec2<i32>(-20519i, 0i)), 96914i)), Struct_3(vec4<f32>(391f, -803f, 1010f, -1290f), vec2<bool>(false, true), -257f, -10801i, Struct_2(Struct_1(600f, vec3<bool>(true, false, true), false, vec2<u32>(0u, 29717u), vec2<i32>(12958i, 40123i)), vec4<f32>(-492f, -1000f, -746f, 631f), vec3<i32>(0i, i32(-2147483648), 1i), Struct_1(-2210f, vec3<bool>(false, false, true), false, vec2<u32>(21761u, 4294967295u), vec2<i32>(2834i, 14491i)), 1208i)), Struct_3(vec4<f32>(-1025f, 563f, -428f, -341f), vec2<bool>(false, true), 557f, -24546i, Struct_2(Struct_1(-926f, vec3<bool>(true, false, false), false, vec2<u32>(1u, 1u), vec2<i32>(-5936i, -8174i)), vec4<f32>(-134f, -1800f, -235f, 1136f), vec3<i32>(27249i, -1i, -6002i), Struct_1(262f, vec3<bool>(false, true, false), false, vec2<u32>(30362u, 29591u), vec2<i32>(0i, -1i)), 2147483647i)), Struct_3(vec4<f32>(965f, -257f, 2302f, -729f), vec2<bool>(false, false), -1198f, -21996i, Struct_2(Struct_1(-323f, vec3<bool>(false, true, false), true, vec2<u32>(4294967295u, 1u), vec2<i32>(-25970i, -18764i)), vec4<f32>(807f, 1526f, 163f, -877f), vec3<i32>(i32(-2147483648), 1i, 9410i), Struct_1(-1632f, vec3<bool>(true, true, true), false, vec2<u32>(0u, 1u), vec2<i32>(11269i, -46652i)), -1i)), Struct_3(vec4<f32>(1666f, -506f, 1847f, 141f), vec2<bool>(true, true), 527f, i32(-2147483648), Struct_2(Struct_1(-525f, vec3<bool>(false, true, true), true, vec2<u32>(2829u, 4294967295u), vec2<i32>(0i, 0i)), vec4<f32>(269f, 1000f, -663f, -535f), vec3<i32>(16183i, -1i, -1i), Struct_1(469f, vec3<bool>(true, true, true), false, vec2<u32>(55053u, 89671u), vec2<i32>(-1i, -1i)), -1485i)), Struct_3(vec4<f32>(2707f, -573f, -525f, 1131f), vec2<bool>(true, false), 1416f, 0i, Struct_2(Struct_1(-605f, vec3<bool>(true, false, true), false, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-24497i, -1563i)), vec4<f32>(-1130f, -1000f, 271f, 612f), vec3<i32>(0i, -38383i, i32(-2147483648)), Struct_1(118f, vec3<bool>(true, true, false), false, vec2<u32>(1u, 58815u), vec2<i32>(-31580i, 2147483647i)), -1i)), Struct_3(vec4<f32>(165f, 942f, 1175f, -1151f), vec2<bool>(true, true), -1080f, 1i, Struct_2(Struct_1(-2202f, vec3<bool>(true, false, false), true, vec2<u32>(6526u, 26774u), vec2<i32>(-2901i, i32(-2147483648))), vec4<f32>(-1358f, -266f, 1000f, -2901f), vec3<i32>(-1i, 378i, -87269i), Struct_1(-1006f, vec3<bool>(false, false, true), true, vec2<u32>(4294967295u, 0u), vec2<i32>(1i, -3834i)), 0i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(-1046f, -126f), select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.x <= u_input.a), true || select(false, true, true)), true, arg_0.yy, vec2<i32>(13383i, 5757i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1073f, 808f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(860f))), _wgslsmith_f_op_f32(796f - _wgslsmith_f_op_f32(-228f - -264f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(995f))))), abs(vec3<i32>(-(~(-26899i)), _wgslsmith_clamp_i32(-2147483647i, -6351i, -5746i), 1i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1255f), vec3<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))), true), true, ~arg_0.yw >> (vec2<u32>(~arg_0.x, firstLeadingBit(arg_0.x)) % vec2<u32>(32u)), select(~(-vec2<i32>(-10440i, -2147483647i)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -22129i), vec2<i32>(-16770i, -14819i), vec2<i32>(-45941i, 1i)), max(vec2<i32>(-2147483647i, -84425i), vec2<i32>(-5200i, -26480i))), vec2<bool>(true, false))), -9259i);
    var var_1 = Struct_1(var_0.d.a, !vec3<bool>(any(var_0.a.b.yz), true, any(select(vec2<bool>(var_0.d.b.x, var_0.d.c), var_0.a.b.zz, vec2<bool>(true, var_0.a.c)))), select(false, !var_0.d.b.x, !(~var_0.a.e.x >= var_0.e)), ~(~vec2<u32>(~58660u, var_0.a.d.x)), vec2<i32>(~var_0.c.x, -1i));
    global0 = var_0.a.c;
    var var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1571f, -1402f)))))) + vec2<f32>(-475f, var_1.a));
    return -1245f;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    global1 = _wgslsmith_mult_u32(37398u, 1u);
    var var_0 = arg_0.e.e;
    global2 = array<Struct_3, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1070f, 1425f, _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a, arg_0.e.d.d.x, arg_0.e.d.d.x, u_input.a)), ~vec4<u32>(4294967295u, 41570u, arg_0.e.a.d.x, 28817u))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)), -1006f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(1000f, arg_0.a.x, -1678f), arg_0.b.x)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-259f, 2426f, var_1.x, arg_1.x))))), vec2<bool>(true, true), _wgslsmith_f_op_f32(248f * _wgslsmith_f_op_f32(-223f + arg_1.x)), -25308i, arg_0.e);
    return ~arg_0.e.d.d.x;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<i32> {
    var var_0 = select(select(vec3<bool>(false, false, true), !(!(!vec3<bool>(true, arg_1, arg_1))), !vec3<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, false)), arg_1, arg_0 <= arg_0)), !vec3<bool>(arg_1 && (false | arg_1), arg_1, arg_1), !(!(!vec3<bool>(true, false, arg_1))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(~arg_0, arg_0 | arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 15922u, 1u), vec3<u32>(arg_0, u_input.a, arg_0)), 4294967295u)), countOneBits(~select(vec4<u32>(1u, 4294967295u, 59005u, 61102u) << (vec4<u32>(1u, 4294967295u, u_input.a, 108121u) % vec4<u32>(32u)), ~vec4<u32>(67345u, 1u, u_input.a, 49093u), vec4<bool>(arg_1, false, arg_1, var_0.x))), vec4<u32>(_wgslsmith_mod_u32(u_input.a << (0u % 32u), 0u) ^ 25732u, ~max(10677u, 20959u), ~(~func_2(Struct_3(vec4<f32>(554f, -480f, 109f, -712f), vec2<bool>(false, true), -2558f, 1i, Struct_2(Struct_1(488f, vec3<bool>(var_0.x, true, false), true, vec2<u32>(65926u, 0u), vec2<i32>(-89774i, 2147483647i)), vec4<f32>(1738f, -367f, -849f, 114f), vec3<i32>(2147483647i, 63761i, 33714i), Struct_1(3222f, vec3<bool>(true, var_0.x, true), var_0.x, vec2<u32>(4294967295u, 10039u), vec2<i32>(2147483647i, 38053i)), 0i)), vec2<f32>(973f, 499f))), arg_0));
    let var_2 = max(_wgslsmith_clamp_vec3_u32(~max(vec3<u32>(1u, u_input.a, 14747u), var_1.wwy), vec3<u32>(1u, var_1.x, max(84758u, u_input.a)), vec3<u32>(var_1.x, 4939u, 4294967295u)), var_1.yzw) >> (vec3<u32>(firstTrailingBit(54580u), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(arg_0, arg_0, u_input.a, u_input.a), vec4<u32>(1u, arg_0, 16081u, var_1.x)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_1.x, 4294967295u, u_input.a), vec4<u32>(var_1.x, var_1.x, var_1.x, 35362u), vec4<u32>(1u, arg_0, 19542u, 0u)))), func_2(Struct_3(vec4<f32>(-1622f, -359f, -165f, 198f), vec2<bool>(arg_1, false), _wgslsmith_f_op_f32(step(-1344f, -727f)), 1i, Struct_2(Struct_1(-984f, vec3<bool>(true, false, arg_1), false, vec2<u32>(65504u, 1u), vec2<i32>(26879i, -2147483647i)), vec4<f32>(229f, -1235f, -632f, -1000f), vec3<i32>(-2147483647i, -1i, 2147483647i), Struct_1(-294f, vec3<bool>(false, arg_1, true), arg_1, vec2<u32>(arg_0, 4294967295u), vec2<i32>(-2147483647i, -25470i)), 0i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, -959f)))))) % vec3<u32>(32u));
    global1 = ~67371u;
    let var_3 = u_input.a;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(select(-min(vec3<i32>(-22931i, -5454i, 23761i), vec3<i32>(-34298i, -27058i, -1i)), vec3<i32>(countOneBits(-53788i), ~161i, 0i), select(select(vec3<bool>(arg_1, false, true), vec3<bool>(var_0.x, arg_1, true), var_0.x), !vec3<bool>(false, var_0.x, arg_1), !vec3<bool>(false, arg_1, var_0.x))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 38730i, -6643i, 2147483647i), vec4<i32>(-1i, 16002i, 1i, 2147483647i)), -1i, 0i)), abs(max(57148i, -33208i) << (~var_3 % 32u)), -29039i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i), _wgslsmith_div_i32(0i, -13145i)), true));
    var var_1 = var_0.x;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2745f)), 641f, true)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f - 858f) - _wgslsmith_f_op_f32(step(-1404f, -493f))) - _wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(1636f + 943f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(min(countOneBits(vec3<i32>(var_0.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), -func_1(u_input.a, true)), ~reverseBits(firstLeadingBit(vec3<i32>(-74731i, var_0.x, var_0.x))), vec3<i32>(countOneBits(~35108i), _wgslsmith_mod_i32(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 43680i, -2147483647i, var_0.x), vec4<i32>(var_0.x, var_0.x, -2147483647i, -15503i))), var_0.x)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 61327u, u_input.a)), ~vec3<u32>(u_input.a, 62597u, 54996u)), 0u << ((u_input.a | 82494u) % 32u)), 4294967295u, u_input.a));
}

