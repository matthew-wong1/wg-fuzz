struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: vec3<f32> = vec3<f32>(-383f, 1000f, 560f);

var<private> global3: array<bool, 13>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(-909f, -1000f, -1361f, 330f), true, vec4<f32>(1837f, 966f, 485f, -389f)), Struct_1(vec4<f32>(-933f, -229f, 396f, -1506f), true, vec4<f32>(-722f, -1586f, -1200f, 1000f)), Struct_1(vec4<f32>(-327f, 1746f, -372f, -140f), true, vec4<f32>(312f, 674f, 769f, -1617f)), Struct_1(vec4<f32>(1103f, 1469f, -153f, -921f), true, vec4<f32>(390f, -292f, 566f, -921f)), Struct_1(vec4<f32>(-543f, 1000f, -615f, -1519f), true, vec4<f32>(353f, 304f, -1145f, -993f)), Struct_1(vec4<f32>(-1397f, -397f, 127f, 1000f), false, vec4<f32>(236f, -147f, -1591f, 1084f)), Struct_1(vec4<f32>(106f, -2167f, 315f, 419f), true, vec4<f32>(-432f, 1742f, 646f, 1083f)), Struct_1(vec4<f32>(-752f, -880f, 331f, -585f), true, vec4<f32>(132f, 368f, 119f, 1065f)), Struct_1(vec4<f32>(-381f, -137f, 2056f, -667f), false, vec4<f32>(1252f, 901f, -909f, -1335f)), Struct_1(vec4<f32>(475f, -457f, 698f, -547f), true, vec4<f32>(-1000f, -350f, 2052f, -1538f)), Struct_1(vec4<f32>(1756f, 869f, -467f, -1753f), true, vec4<f32>(1035f, 105f, 697f, 1750f)), Struct_1(vec4<f32>(-275f, -1286f, 1356f, 1041f), false, vec4<f32>(-1704f, -471f, 435f, -512f)), Struct_1(vec4<f32>(-1000f, -1479f, 361f, -2284f), true, vec4<f32>(253f, -965f, 533f, 458f)), Struct_1(vec4<f32>(-565f, -136f, 308f, 2183f), true, vec4<f32>(905f, -2396f, -364f, 1282f)), Struct_1(vec4<f32>(-431f, -390f, -1816f, -1286f), true, vec4<f32>(458f, 521f, -542f, 752f)), Struct_1(vec4<f32>(638f, -1000f, -427f, -922f), false, vec4<f32>(654f, -197f, 1145f, 258f)), Struct_1(vec4<f32>(592f, -1483f, -677f, -345f), false, vec4<f32>(-298f, -578f, 1815f, 338f)), Struct_1(vec4<f32>(-1075f, 1206f, 2058f, -826f), false, vec4<f32>(1328f, 323f, -228f, -603f)), Struct_1(vec4<f32>(852f, 560f, -1259f, -1210f), true, vec4<f32>(-201f, -178f, 709f, -1000f)), Struct_1(vec4<f32>(-1602f, 631f, 394f, 1439f), false, vec4<f32>(-247f, 251f, 828f, 1000f)), Struct_1(vec4<f32>(1000f, 178f, -259f, 573f), true, vec4<f32>(-871f, -950f, -1030f, 627f)), Struct_1(vec4<f32>(-1327f, 597f, -1000f, -487f), true, vec4<f32>(752f, 950f, -548f, -233f)), Struct_1(vec4<f32>(836f, -1418f, -1442f, 626f), true, vec4<f32>(-422f, -1645f, -654f, 1037f)), Struct_1(vec4<f32>(-806f, -1554f, 1787f, 1607f), false, vec4<f32>(277f, -548f, -842f, -967f)), Struct_1(vec4<f32>(1254f, -310f, -984f, -653f), true, vec4<f32>(1935f, 973f, 744f, -649f)), Struct_1(vec4<f32>(774f, 863f, -1167f, -559f), true, vec4<f32>(519f, -455f, 408f, -1000f)), Struct_1(vec4<f32>(-2502f, 1086f, 717f, -241f), true, vec4<f32>(-138f, -1764f, -2060f, 660f)), Struct_1(vec4<f32>(208f, -1566f, 587f, -677f), true, vec4<f32>(1813f, -2438f, -878f, -1161f)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(943f * 680f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)]))) - 672f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x + 904f), 900f)), _wgslsmith_f_op_f32(trunc(arg_2.c.x))), true, arg_1.c);
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(~1u, 28u)], vec2<u32>(abs(0u), countOneBits(_wgslsmith_div_u32(~arg_0, ~4294967295u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1568f, -1700f, -160f, global2.x)));
    var var_2 = Struct_4(_wgslsmith_mult_i32(1i, 9314i));
    global4 = array<Struct_1, 28>();
    global4 = array<Struct_1, 28>();
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(trunc(global2.x));
    var var_2 = u_input.b.wwx | (abs(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 7777u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)))) | _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), 4294967295u, 41934u & u_input.b.x), u_input.b.xzy));
    var var_3 = func_2(~1u << (~(_wgslsmith_add_u32(65627u, var_2.x) << (~var_2.x % 32u)) % 32u), arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 109f, arg_0.a.x, -836f) + var_0.a))), ~var_2.x >= 28753u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1610f, 2095f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 14u)], 364f), var_0.c.x, _wgslsmith_f_op_f32(round(global2.x))))));
    global3 = array<bool, 13>();
    return _wgslsmith_mod_u32(~1u, 6153u);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a, u_input.b.zw, ~(~vec2<u32>(arg_0.x, 0u))) ^ u_input.a;
    let var_1 = Struct_2(~_wgslsmith_sub_u32(~arg_1.a, _wgslsmith_mult_u32(max(arg_0.x, 1890u), _wgslsmith_clamp_u32(0u, arg_1.a, 31464u))), vec2<i32>(arg_1.d.x, arg_1.b.x), global4[_wgslsmith_index_u32(var_0.x, 28u)], firstTrailingBit(arg_1.d));
    let var_2 = var_1.a >> (var_0.x % 32u);
    global3 = array<bool, 13>();
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.c.a.xxz)));
    return Struct_3(func_2(0u, arg_1.c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, var_1.c.c.x, global0[_wgslsmith_index_u32(arg_1.a, 14u)], global0[_wgslsmith_index_u32(49021u, 14u)]) * vec4<f32>(global0[_wgslsmith_index_u32(19399u, 14u)], 1143f, arg_1.c.a.x, var_1.c.a.x))), var_1.c.b, vec4<f32>(var_1.c.a.x, arg_1.c.c.x, var_1.c.c.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(24745u, var_0.x), 14u)]))), reverseBits(vec2<u32>(func_3(global4[_wgslsmith_index_u32(arg_0.x, 28u)], var_1.d.x) & arg_0.x, var_2)), arg_1.c.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    global3 = array<bool, 13>();
    var var_0 = Struct_4(select((abs(-2147483647i) >> (_wgslsmith_clamp_u32(1u, u_input.a.x, 1u) % 32u)) >> (25100u % 32u), _wgslsmith_mod_i32(max(-1i, 2147483647i), -32814i) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.b.x, 72861u), 51583u) % 32u), true));
    var var_1 = abs(~countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_0.a), vec2<i32>(var_0.a, -2147483647i)), vec2<i32>(var_0.a, var_0.a))));
    var var_2 = arg_1.c.ww;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f * arg_1.c.x))), _wgslsmith_f_op_f32(floor(380f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -230f), -943f)));
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(func_1(vec4<u32>(44664u, arg_0.x, arg_1.b.x, u_input.a.x), Struct_2(1u, vec2<i32>(var_1.x, -1i), global4[_wgslsmith_index_u32(4294967295u, 28u)], vec4<i32>(27156i, 5851i, var_0.a, -44840i))).b.x, arg_0.x), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 2530u), arg_0.x ^ 0u), abs(_wgslsmith_mod_u32(1u, arg_1.b.x))), 1u) & ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(~(~4294967295u)), max(~func_4(vec2<u32>(u_input.a.x, 0u) << (u_input.a % vec2<u32>(32u)), func_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.b.x), Struct_2(u_input.a.x, vec2<i32>(42625i, 69137i), global4[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<i32>(18096i, 37051i, 0i, 4377i))), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global2.x, global2.x)), 1u), ~(~4294967295u), firstTrailingBit(4294967295u));
    global4 = array<Struct_1, 28>();
    var var_1 = ~(699i >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), var_0.wx, var_0.zz), u_input.b.wx ^ vec2<u32>(35308u, 1u)) % 32u));
    var var_2 = vec4<i32>(-1i) * -select(-vec4<i32>(-7856i, 1i, 2147483647i, 47849i), vec4<i32>(min(20928i, -1i), 1i, -49296i, countOneBits(0i)), global3[_wgslsmith_index_u32(var_0.x, 13u)]);
    var var_3 = global3[_wgslsmith_index_u32(func_1(~u_input.b, Struct_2(81141u, countOneBits(firstTrailingBit(vec2<i32>(2147483647i, 2147483647i))) | var_2.zx, Struct_1(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x, var_0.x), vec4<u32>(u_input.a.x, 26853u, var_0.x, u_input.a.x)), Struct_2(44594u, var_2.zz, Struct_1(vec4<f32>(-594f, global2.x, global2.x, -477f), true, vec4<f32>(global2.x, 1000f, global2.x, 637f)), vec4<i32>(var_2.x, 1i, 8422i, 61563i))).a.c, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-264f, 536f, -276f, 138f), vec4<f32>(429f, global0[_wgslsmith_index_u32(1u, 14u)], 2467f, global0[_wgslsmith_index_u32(10498u, 14u)])))), vec4<i32>(-2147483647i >> ((var_0.x >> (19153u % 32u)) % 32u), var_2.x, -2147483647i, (-3573i >> (u_input.a.x % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-42864i, 2147483647i, var_2.x, -34776i), vec4<i32>(var_2.x, -15783i, var_2.x, var_2.x))))).b.x, 13u)];
    var var_4 = vec2<i32>(-14319i, -(i32(-1i) * -35570i) & _wgslsmith_sub_i32(1i, -var_2.x & 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] + global2.x) + 1472f), global0[_wgslsmith_index_u32(72529u, 14u)], global0[_wgslsmith_index_u32(37786u, 14u)], _wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(-global2.x))) * vec4<f32>(-487f, global0[_wgslsmith_index_u32(countOneBits(u_input.b.x | 0u), 14u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1478f * -1899f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 14u)]))), 1000f)), var_2.x, abs(~(u_input.b >> (u_input.b % vec4<u32>(32u)))), -62160i, countOneBits(vec4<i32>(max(0i, var_4.x | var_4.x), _wgslsmith_mod_i32(var_4.x, i32(-1i) * -16817i), _wgslsmith_mult_i32(-1i, var_4.x | var_2.x), 13418i)));
}

