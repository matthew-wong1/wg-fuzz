struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, true, true, false, true, false, false, true, true, false, false, true, true, false, true, true, false, true, false, true, false, false, true, false, false, false, false, true, true, false, true);

var<private> global1: array<bool, 30>;

var<private> global2: array<Struct_4, 15>;

var<private> global3: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<bool>(false, true, true), vec3<u32>(55205u, 1u, 4294967295u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(66822u, 1u, 0u)), Struct_3(vec3<bool>(false, false, true), vec3<u32>(1u, 52858u, 1u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(1u, 4294967295u, 38995u)), Struct_3(vec3<bool>(false, false, true), vec3<u32>(17613u, 35326u, 4294967295u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(39516u, 21205u, 27602u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 1u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(28797u, 71493u, 69084u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(30704u, 15319u, 4294967295u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(0u, 6126u, 68560u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(1u, 1u, 11749u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 20491u, 0u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(20646u, 7292u, 0u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(15908u, 67u, 48906u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(53430u, 1u, 4294967295u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(29675u, 1u, 41649u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(4294967295u, 0u, 39403u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 51678u, 0u)), Struct_3(vec3<bool>(true, false, false), vec3<u32>(80306u, 23500u, 19267u)), Struct_3(vec3<bool>(false, false, true), vec3<u32>(14538u, 35407u, 1u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(1u, 4294967295u, 0u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(22172u, 44617u, 0u)), Struct_3(vec3<bool>(true, true, true), vec3<u32>(72021u, 4294967295u, 97812u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 15874u, 34948u)), Struct_3(vec3<bool>(false, true, false), vec3<u32>(4294967295u, 0u, 83965u)), Struct_3(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 65134u, 70513u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(1u, 54961u, 1u)), Struct_3(vec3<bool>(false, false, false), vec3<u32>(0u, 30013u, 33013u)), Struct_3(vec3<bool>(true, true, false), vec3<u32>(66092u, 0u, 1u)), Struct_3(vec3<bool>(true, false, true), vec3<u32>(36638u, 1u, 4294967295u)), Struct_3(vec3<bool>(true, false, true), vec3<u32>(16926u, 14351u, 0u)));

var<private> global4: vec2<i32> = vec2<i32>(1i, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    let var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(arg_2.e, ~45589u)), 15u)];
    var var_2 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, global4.x), var_1.a.b ^ 0i), abs(u_input.a.x)), 1i);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(-1165f)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) - -1000f), 1000f)), _wgslsmith_clamp_i32(-((arg_2.b >> (arg_1.e % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b, 40561i, u_input.a.x), vec3<i32>(0i, arg_1.b, 2147483647i))), ~1i << (arg_2.e % 32u), -20160i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1248f), var_1.a.d.x, _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(select(arg_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1070f + 1685f) * 762f), 1008f <= var_3.a))), ~66988u);
    return vec3<f32>(var_4.d.x, -1149f, arg_2.a.x);
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_1(arg_0.xyy, Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1315f, 1000f, 407f), vec3<f32>(384f, -273f, 308f))), _wgslsmith_sub_i32(-8984i, 37830i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1591f, 1543f, -117f)), vec4<f32>(443f, -198f, -511f, -346f), ~86799u), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 237f, 1113f), vec3<f32>(-1264f, 174f, -3491f)), -1i, _wgslsmith_div_vec3_f32(vec3<f32>(-511f, -927f, 1000f), vec3<f32>(-358f, -882f, 773f)), vec4<f32>(1391f, -546f, 434f, 1097f), ~90571u), global1[_wgslsmith_index_u32(~(~4294967295u), 30u)])).yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(394f, -514f), -2330f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1266f, 639f), vec2<f32>(-727f, -2136f)) * vec2<f32>(-1891f, 233f)))));
    global3 = array<Struct_3, 31>();
    global2 = array<Struct_4, 15>();
    let var_1 = vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, select(countOneBits(29389u), countOneBits(4294967295u), all(arg_0)))) | _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(69678u, 4294967295u)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(0u, 60437u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 51406u), vec2<u32>(36758u, 1u), vec2<u32>(4294967295u, 1u))), min(~vec2<u32>(2665u, 0u), ~vec2<u32>(1u, 4294967295u))), max(vec2<u32>(_wgslsmith_clamp_u32(50749u, 29265u, 21529u), ~0u), vec2<u32>(0u, 7040u >> (0u % 32u))));
    var var_2 = !((_wgslsmith_mult_u32(1u, ~var_1.x) < (var_1.x << (_wgslsmith_sub_u32(var_1.x, var_1.x) % 32u))) | any(vec2<bool>(global1[_wgslsmith_index_u32(38610u, 30u)], u_input.a.x < global4.x)));
    return ~(~(~select(~vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), ~vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), select(arg_0, vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_1.x, 32u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 32u)], false, false, false)))));
}

fn func_2() -> Struct_3 {
    global3 = array<Struct_3, 31>();
    global3 = array<Struct_3, 31>();
    global2 = array<Struct_4, 15>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(countOneBits(min(63974u, _wgslsmith_mod_u32(4294967295u, 23075u))), ~_wgslsmith_dot_vec4_u32(func_3(vec4<bool>(global0[_wgslsmith_index_u32(13020u, 32u)], true, global1[_wgslsmith_index_u32(25063u, 30u)], false)), vec4<u32>(1u, 1u, 1u, 1u))), 70550u, countOneBits(25073u));
    let var_1 = global4.x;
    return Struct_3(!vec3<bool>(!(!global0[_wgslsmith_index_u32(883u, 32u)]), true, global0[_wgslsmith_index_u32(1u, 32u)] == true), (vec3<u32>(~var_0.x, 0u, ~var_0.x) | ~vec3<u32>(var_0.x, var_0.x, 0u)) | firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(12744u, 86281u, 11651u), vec3<u32>(0u, var_0.x, var_0.x)), vec3<u32>(93423u, var_0.x, 45918u))));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.e, arg_0.a.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_0.e));
    var var_1 = func_2();
    global2 = array<Struct_4, 15>();
    var_1 = arg_0.b;
    let var_2 = -798f;
    return vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(873f * _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(692f, arg_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1849f, _wgslsmith_f_op_f32(633f + -475f))) * var_2), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -503f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    global3 = array<Struct_3, 31>();
    var var_0 = ~vec4<i32>(38909i, countOneBits(u_input.a.x), ~firstLeadingBit(firstTrailingBit(u_input.a.x)), ~(abs(global4.x) & 0i));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(648f, 968f, 1000f) - _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(false, global0[_wgslsmith_index_u32(11779u, 32u)], true), Struct_1(vec3<f32>(-373f, -1071f, -363f), var_0.x, vec3<f32>(974f, -405f, 824f), vec4<f32>(-296f, -422f, -310f, -840f), 0u), Struct_1(vec3<f32>(-1488f, -771f, -474f), var_0.x, vec3<f32>(401f, 1000f, -1827f), vec4<f32>(439f, 1000f, 539f, 386f), 31051u), global0[_wgslsmith_index_u32(1u, 32u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-175f, 2164f, -1656f)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, -1654f, -258f)) - vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(2640u, 30u)]), Struct_1(vec3<f32>(1000f, -856f, 862f), u_input.a.x, vec3<f32>(269f, 979f, 721f), vec4<f32>(119f, -1357f, -1316f, 822f), 1u), Struct_1(vec3<f32>(-1181f, -2103f, 1000f), -64123i, vec3<f32>(-888f, 146f, 174f), vec4<f32>(1000f, 188f, 294f, -1164f), 47891u), global0[_wgslsmith_index_u32(93304u, 32u)])).x, _wgslsmith_f_op_f32(438f + -1315f), _wgslsmith_f_op_f32(f32(-1f) * -1456f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(Struct_1(vec3<f32>(-212f, -444f, 903f), 11448i, vec3<f32>(1000f, -1000f, 1257f), vec4<f32>(-316f, 331f, 352f, -1000f), 60395u), func_2(), _wgslsmith_f_op_f32(-796f * 334f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12193u, 29375u, 68602u, 7938u), vec4<u32>(55256u, 55244u, 1u, 28678u)), 32u)], 1790f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(818f * 146f))))), 1u), func_2(), -399f, global1[_wgslsmith_index_u32(~(~(~1u)), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-119f))));
    var var_2 = vec2<f32>(-1492f, var_1.c);
    global4 = vec2<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, -40655i), u_input.a), vec2<i32>(_wgslsmith_div_i32(1i, global4.x), firstLeadingBit(u_input.a.x)), global1[_wgslsmith_index_u32(var_1.b.b.x, 30u)]), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(3455i, 2147483647i))), ~global4.x)), -33220i | u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_1.b.b.x, 21824u, var_1.a.e, 39264u) | vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_1.a.e), firstTrailingBit(var_1.b.b.x), ~var_1.a.e, 26597u)));
}

