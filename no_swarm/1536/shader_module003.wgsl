struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_4 = Struct_4(64612u, Struct_3(vec4<i32>(-22030i, -2726i, 0i, -1i), 2147483647i, Struct_1(false, 2147483647i, vec2<i32>(0i, i32(-2147483648)), -1849f), vec2<f32>(557f, -807f), 1u));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(57778u, Struct_3(vec4<i32>(-24839i, 0i, 0i, -14365i), 34567i, Struct_1(true, 0i, vec2<i32>(0i, -9564i), -794f), vec2<f32>(941f, 408f), 4294967295u)), Struct_4(62949u, Struct_3(vec4<i32>(-71107i, -1i, -266i, -7305i), 0i, Struct_1(true, i32(-2147483648), vec2<i32>(2147483647i, -5380i), -1369f), vec2<f32>(505f, -355f), 67984u)), Struct_4(2022u, Struct_3(vec4<i32>(2147483647i, 40570i, -17200i, i32(-2147483648)), 18353i, Struct_1(true, 1i, vec2<i32>(i32(-2147483648), 1i), 1365f), vec2<f32>(-367f, -959f), 4294967295u)), Struct_4(5909u, Struct_3(vec4<i32>(-4401i, -56513i, -8421i, -19301i), -45268i, Struct_1(true, -39977i, vec2<i32>(69477i, 5779i), -396f), vec2<f32>(-318f, 1565f), 20907u)), Struct_4(4294967295u, Struct_3(vec4<i32>(20460i, 2147483647i, -14591i, 2147483647i), i32(-2147483648), Struct_1(true, 2147483647i, vec2<i32>(17256i, 2147483647i), 1221f), vec2<f32>(-1042f, 872f), 71913u)), Struct_4(4294967295u, Struct_3(vec4<i32>(2147483647i, 52185i, -8023i, -10658i), 36734i, Struct_1(true, 8770i, vec2<i32>(-1i, i32(-2147483648)), -953f), vec2<f32>(2763f, 509f), 0u)), Struct_4(22375u, Struct_3(vec4<i32>(1i, 1i, 8719i, 0i), -1999i, Struct_1(true, -33469i, vec2<i32>(i32(-2147483648), 16389i), 248f), vec2<f32>(754f, 431f), 82545u)), Struct_4(1u, Struct_3(vec4<i32>(-1i, -1i, 1i, -10740i), -16124i, Struct_1(true, 2147483647i, vec2<i32>(0i, -49778i), 1000f), vec2<f32>(410f, 456f), 0u)), Struct_4(65710u, Struct_3(vec4<i32>(-46699i, i32(-2147483648), 25984i, 1i), 47721i, Struct_1(true, -20100i, vec2<i32>(-25835i, -20261i), 563f), vec2<f32>(390f, 133f), 26375u)), Struct_4(20422u, Struct_3(vec4<i32>(0i, -1841i, -49183i, -28150i), -6737i, Struct_1(true, 44500i, vec2<i32>(i32(-2147483648), -47893i), 388f), vec2<f32>(-624f, -364f), 62328u)), Struct_4(1u, Struct_3(vec4<i32>(-1i, -1i, 29184i, 2147483647i), 2147483647i, Struct_1(false, 989i, vec2<i32>(2147483647i, -1i), 2355f), vec2<f32>(1697f, 246f), 104370u)), Struct_4(4294967295u, Struct_3(vec4<i32>(-45921i, 55496i, 1i, 9347i), 0i, Struct_1(true, 2147483647i, vec2<i32>(18277i, 1i), 1885f), vec2<f32>(2620f, 322f), 1u)), Struct_4(0u, Struct_3(vec4<i32>(-2726i, -13695i, i32(-2147483648), -1i), 46434i, Struct_1(false, 1i, vec2<i32>(2147483647i, -21709i), 786f), vec2<f32>(652f, -158f), 14248u)), Struct_4(65787u, Struct_3(vec4<i32>(-41877i, -40616i, 1i, 13551i), 2147483647i, Struct_1(false, 12849i, vec2<i32>(-1i, 59188i), 144f), vec2<f32>(555f, -231f), 17777u)), Struct_4(1u, Struct_3(vec4<i32>(2084i, 0i, -1i, 0i), 2147483647i, Struct_1(false, 2147483647i, vec2<i32>(10006i, -1i), -1199f), vec2<f32>(-1000f, 1840f), 4294967295u)), Struct_4(0u, Struct_3(vec4<i32>(-317i, -26107i, i32(-2147483648), i32(-2147483648)), 2147483647i, Struct_1(false, 60376i, vec2<i32>(-1i, 1i), -334f), vec2<f32>(-999f, -1091f), 50828u)), Struct_4(31800u, Struct_3(vec4<i32>(20277i, 14205i, 1179i, 0i), 31306i, Struct_1(true, 1i, vec2<i32>(1i, 2147483647i), 1000f), vec2<f32>(-714f, 114f), 6469u)), Struct_4(18724u, Struct_3(vec4<i32>(-1i, -15395i, 31000i, -16123i), -1i, Struct_1(true, 26550i, vec2<i32>(0i, 0i), 137f), vec2<f32>(-1659f, -599f), 1u)), Struct_4(1u, Struct_3(vec4<i32>(-1i, i32(-2147483648), -1i, -1i), 12663i, Struct_1(true, -1i, vec2<i32>(-35240i, 0i), 1327f), vec2<f32>(-1000f, 587f), 4294967295u)), Struct_4(4294967295u, Struct_3(vec4<i32>(-15625i, 0i, -14581i, 1i), i32(-2147483648), Struct_1(true, -65888i, vec2<i32>(i32(-2147483648), 11419i), 1657f), vec2<f32>(324f, 421f), 18025u)), Struct_4(0u, Struct_3(vec4<i32>(0i, 24704i, -75288i, 2147483647i), 84567i, Struct_1(false, 8440i, vec2<i32>(-15219i, i32(-2147483648)), 133f), vec2<f32>(922f, 421f), 0u)), Struct_4(70959u, Struct_3(vec4<i32>(-10186i, -34638i, -5757i, 0i), 1i, Struct_1(true, 19363i, vec2<i32>(-1i, 1i), 729f), vec2<f32>(-1086f, 488f), 0u)), Struct_4(0u, Struct_3(vec4<i32>(31098i, -4029i, 2147483647i, -1i), 2147483647i, Struct_1(true, -1i, vec2<i32>(-5198i, i32(-2147483648)), 705f), vec2<f32>(-216f, -1965f), 44478u)), Struct_4(0u, Struct_3(vec4<i32>(i32(-2147483648), 1i, -1i, 52093i), 2147483647i, Struct_1(false, 61635i, vec2<i32>(-29039i, -1i), 982f), vec2<f32>(-650f, -761f), 0u)), Struct_4(0u, Struct_3(vec4<i32>(2646i, -16473i, 0i, 25484i), 0i, Struct_1(false, -1i, vec2<i32>(21713i, 89497i), -1171f), vec2<f32>(2062f, 191f), 1u)), Struct_4(25585u, Struct_3(vec4<i32>(0i, 1i, -1i, -1i), 1i, Struct_1(true, 47747i, vec2<i32>(2147483647i, 129i), -1383f), vec2<f32>(-500f, 1390f), 1u)), Struct_4(32325u, Struct_3(vec4<i32>(1i, 27427i, 1i, 59302i), 1i, Struct_1(false, i32(-2147483648), vec2<i32>(2147483647i, 41799i), 860f), vec2<f32>(-913f, -246f), 75137u)), Struct_4(62232u, Struct_3(vec4<i32>(i32(-2147483648), 28987i, 20337i, 28674i), 16197i, Struct_1(false, i32(-2147483648), vec2<i32>(1i, -13719i), 109f), vec2<f32>(-1060f, 1520f), 1u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = 2147483647i >> (u_input.b % 32u);
    var var_1 = u_input.b;
    global2 = vec3<bool>(false, global0.b.x, all(select(vec3<bool>(true, false, true), !vec3<bool>(arg_0.e.a.a, global2.x, arg_2.c.a), true)));
    let var_2 = global0.e.d;
    var_1 = global1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(288f, -581f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(~(~firstLeadingBit(u_input.b)), 28u)];
    global0 = Struct_5(global1.b.c.d, !global0.b, Struct_1((1379f != _wgslsmith_f_op_f32(sign(global0.e.d.x))) && global1.b.c.a, _wgslsmith_add_i32(10128i, -19653i), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(global0.c.c.x, 21501i)), vec2<i32>(0i, -arg_1.x)), -641f), reverseBits(~(~global0.d)), Struct_2(Struct_1(all(select(vec3<bool>(false, true, false), vec3<bool>(true, global2.x, false), vec3<bool>(true, global0.e.a.a, true))), global1.b.a.x, vec2<i32>(select(0i, var_0.b.a.x, global1.b.c.a), u_input.d), _wgslsmith_f_op_f32(trunc(global1.b.c.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_5(global1.b.d.x, global0.b, global0.e.a, vec4<i32>(86318i, global1.b.a.x, arg_1.x, arg_1.x), global0.e), vec4<f32>(var_0.b.d.x, global1.b.d.x, 782f, 532f), var_0.b)), global1.b.c.d)), reverseBits(arg_1 & vec2<i32>(var_0.b.b, 1i)) >> (select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.a, u_input.b), vec2<u32>(1u, 1u)), vec2<u32>(global1.b.e, 0u) ^ vec2<u32>(var_0.a, u_input.b), true) % vec2<u32>(32u)), vec4<f32>(global1.b.c.d, _wgslsmith_f_op_f32(abs(var_0.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(324f * 392f), _wgslsmith_f_op_f32(global1.b.d.x - global0.c.d)))));
    let var_1 = vec3<i32>(16395i, 56760i, abs(-87384i));
    let var_2 = global0.e;
    var var_3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(92645u, 1u, u_input.b, 11818u)), _wgslsmith_div_vec4_u32(vec4<u32>(46325u, u_input.b, 9867u, u_input.b), vec4<u32>(0u, 1u, var_0.b.e, var_0.a))), vec4<u32>(var_0.b.e, _wgslsmith_div_u32(69206u, 4294967295u), _wgslsmith_clamp_u32(u_input.b, var_0.b.e, u_input.b), countOneBits(0u)), ~(~vec4<u32>(global1.a, var_0.b.e, var_0.b.e, 4294967295u))));
    return global1.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b) ^ vec4<u32>(35167u, 12180u, arg_2.e, 48612u))), select(~vec4<u32>(0u, global1.b.e, arg_1.e, arg_2.e), vec4<u32>(global1.a, 65629u, global1.a, arg_1.e), global0.e.a.a) >> ((vec4<u32>(35534u, arg_1.e, global1.a, 0u) & vec4<u32>(u_input.b, 401u, 0u, arg_1.e)) % vec4<u32>(32u)));
    var var_1 = ~vec3<u32>(firstLeadingBit(var_0), ~4294967295u, 11685u);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(271f * _wgslsmith_f_op_f32(-arg_2.c.d));
    var var_4 = Struct_4(_wgslsmith_div_u32(firstTrailingBit(14760u ^ u_input.b), ~(~reverseBits(var_0))), Struct_3(vec4<i32>(-(~u_input.a), 2147483647i, reverseBits(2147483647i), arg_1.b >> (0u % 32u)), var_2.a.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.e, 55013u, var_0), reverseBits(vec3<u32>(var_0, arg_1.e, arg_1.e))) % 32u), Struct_1(any(select(global0.b, vec3<bool>(false, false, false), global0.b)), i32(-1i) * -14397i, _wgslsmith_mod_vec2_i32(select(arg_2.c.c, global1.b.c.c, false), vec2<i32>(0i, 24469i) >> (var_1.xy % vec2<u32>(32u))), arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.e.d.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-690f, 140f))) * global1.b.d), ~var_0));
    return arg_1.c.c.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: f32) -> i32 {
    global0 = Struct_5(global1.b.d.x, !global0.b, Struct_1(arg_0.x, 0i, vec2<i32>(_wgslsmith_div_i32(global1.b.c.b, global1.b.b), 0i), _wgslsmith_f_op_f32(sign(global1.b.d.x))), vec4<i32>(_wgslsmith_div_i32(1i >> (_wgslsmith_mult_u32(1u, u_input.b) % 32u), i32(-1i) * -2147483647i), firstLeadingBit(81847i), func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(518f, 641f))), func_2(_wgslsmith_div_vec3_i32(global1.b.a.wzw, vec3<i32>(global1.b.b, global0.e.c.x, -37443i)), ~u_input.c), Struct_3(select(global1.b.a, vec4<i32>(global0.e.a.c.x, 6328i, global0.d.x, u_input.c.x), vec4<bool>(false, false, global2.x, true)), max(u_input.c.x, global0.e.a.c.x), global0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, -2269f)), ~u_input.b)), global0.d.x), Struct_2(global1.b.c, _wgslsmith_f_op_f32(-864f * global0.a), global1.b.a.yx, global0.e.d));
    global1 = global3[_wgslsmith_index_u32(~global1.a, 28u)];
    let var_0 = global0.e.a;
    var var_1 = vec2<bool>(all(vec3<bool>(global1.a == 4294967295u, global2.x, false)), arg_0.x);
    var var_2 = Struct_3(vec4<i32>(~global1.b.c.b, 3902i, firstTrailingBit(1i), ~2147483647i), countOneBits(-u_input.d), global0.e.a, global1.b.d, ~_wgslsmith_mod_u32(u_input.b, 1u));
    return 16099i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!global2.x, true, !(~(-23937i) < (32160i ^ global1.b.c.b)), true), !vec4<bool>(_wgslsmith_f_op_f32(global1.b.c.d * global1.b.c.d) >= global1.b.d.x, all(global0.b.yy), -75023i != func_1(global0.b, false, global0.a), global0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.b.d.x, global1.b.c.d, false))))) < -1437f);
    var var_1 = true && func_2(~vec3<i32>(u_input.c.x, 2147483647i, global0.d.x) >> (vec3<u32>(30026u, global1.b.e, ~u_input.b) % vec3<u32>(32u)), ~_wgslsmith_mult_vec2_i32(-u_input.e, u_input.c)).c.a;
    var_1 = true;
    global3 = array<Struct_4, 28>();
    var var_2 = global1.b;
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(15404u, 1u, global1.b.e), vec3<u32>(global1.b.e, var_2.e, var_2.e)), reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global1.b.e, var_2.e), vec3<u32>(u_input.b, u_input.b, 4294967295u))), vec3<u32>(var_2.e, _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_2.e, 1u, 46981u, 22081u), vec4<u32>(var_2.e, 1u, u_input.b, 8866u)), vec4<u32>(0u, var_2.e, u_input.b, 4294967295u) ^ vec4<u32>(53337u, 1u, 8705u, u_input.b)), var_2.e)), ~select(~(~vec3<u32>(u_input.b, u_input.b, global1.b.e)), ~vec3<u32>(68271u, 1u, u_input.b), global1.b.c.a));
    var_1 = global0.b.x | global2.x;
    var var_4 = vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-1510f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.d), global0.c.d)), global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -global0.d.x, i32(-1i) * -50144i, _wgslsmith_add_i32(reverseBits(-30045i), u_input.c.x | -3157i)), vec4<i32>(_wgslsmith_mod_i32(-73755i, u_input.d) >> (~20196u % 32u), global0.d.x, i32(-1i) * -29465i, select(_wgslsmith_div_i32(var_2.a.x, 0i), _wgslsmith_div_i32(2596i, global1.b.c.c.x), true))));
}

