struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(572f, 141f, 323f, -1255f), vec4<f32>(-305f, -1690f, -735f, 2010f), vec4<f32>(-259f, 1000f, 438f, 478f), vec4<f32>(1033f, -962f, 1000f, -599f), vec4<f32>(856f, -1641f, 1000f, 283f), vec4<f32>(1226f, 1764f, 2403f, 1000f), vec4<f32>(1456f, 620f, 1000f, -1700f), vec4<f32>(-1792f, 946f, -446f, -250f), vec4<f32>(-2018f, 267f, 248f, 207f), vec4<f32>(1130f, -1014f, 701f, 777f), vec4<f32>(448f, 1265f, 1314f, -1870f), vec4<f32>(350f, -1000f, 1079f, -341f), vec4<f32>(1223f, -1741f, -933f, 1270f), vec4<f32>(709f, -449f, -249f, -271f), vec4<f32>(-2490f, -1000f, -1239f, 960f), vec4<f32>(252f, 343f, 968f, -543f), vec4<f32>(-832f, -622f, -181f, -492f), vec4<f32>(-446f, -1902f, -865f, -615f), vec4<f32>(830f, -439f, -1162f, 853f), vec4<f32>(-1000f, 356f, 1376f, -500f), vec4<f32>(1523f, 781f, -1622f, 942f), vec4<f32>(360f, -359f, 1359f, 462f), vec4<f32>(-1269f, 466f, -765f, 3209f), vec4<f32>(-427f, -1000f, 2242f, 823f), vec4<f32>(577f, -1448f, -281f, 234f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_0.c;
    return _wgslsmith_f_op_f32(exp2(arg_0.a.c.x));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~abs(countOneBits(~vec4<u32>(4294967295u, 47128u, 18209u, 8279u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1220f)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec2<bool>(true, false), vec2<u32>(1u, 4294967295u), vec2<f32>(-1139f, 929f)), u_input.a, Struct_1(vec2<u32>(20633u, var_0.x))), var_0)))))));
    global0 = var_1.x;
    global0 = _wgslsmith_f_op_f32(669f + -950f);
    let var_2 = -1624f;
    return Struct_1(~(var_0.wz & reverseBits(countOneBits(vec2<u32>(43845u, var_0.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = -1i << (~_wgslsmith_clamp_u32(arg_0.a.x >> (~52887u % 32u), arg_0.a.x, ~min(arg_0.a.x, 17261u)) % 32u);
    let var_1 = Struct_3(Struct_2(arg_2.xy, max(~arg_0.a, _wgslsmith_mod_vec2_u32(min(vec2<u32>(1u, 11028u), arg_0.a), abs(vec2<u32>(arg_0.a.x, arg_0.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(168f * 188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f - -1523f)))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)), min(u_input.a, vec3<i32>(25287i, arg_1, arg_1) & vec3<i32>(2147483647i, -54958i, arg_1)), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -2147483647i, -1i) << (vec3<u32>(arg_0.a.x, 65112u, 2839u) % vec3<u32>(32u)), -vec3<i32>(arg_1, -15751i, 1i))), u_input.a), func_2());
    global0 = var_1.a.c.x;
    var var_2 = var_1;
    return Struct_3(Struct_2(var_2.a.a, reverseBits(firstTrailingBit(vec2<u32>(arg_0.a.x, var_1.c.a.x))), _wgslsmith_f_op_vec2_f32(floor(var_1.a.c))), vec3<i32>(-1i) * -vec3<i32>(-var_1.b.x, select(var_2.b.x, var_1.b.x, var_2.a.a.x), 2147483647i >> (var_1.c.a.x % 32u)), Struct_1(vec2<u32>(_wgslsmith_mult_u32(0u, var_2.a.b.x) >> (countOneBits(1u) % 32u), select(func_2().a.x, _wgslsmith_clamp_u32(30232u, var_2.a.b.x, var_2.c.a.x), all(vec3<bool>(true, true, false))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec3<u32> {
    var var_0 = -23461i;
    let var_1 = func_4(func_2(), -5621i, !vec3<bool>(arg_0.a.x, false, arg_0.a.x));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1174f), arg_0.c.x)), _wgslsmith_f_op_f32(-304f - -1000f)) * arg_0.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) * var_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + var_1.a.c.x))));
    var var_3 = _wgslsmith_mod_i32(-_wgslsmith_add_i32(22758i, var_1.b.x), -u_input.a.x) ^ _wgslsmith_mod_i32(1i, u_input.a.x);
    var var_4 = func_4(var_1.c, min(~(1i << (var_1.a.b.x % 32u)), _wgslsmith_sub_i32(var_1.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.b.x, u_input.a.x), u_input.a), firstTrailingBit(0i)))), vec3<bool>(arg_0.a.x, (28574u == arg_0.b.x) | false, true));
    return max(vec3<u32>(arg_0.b.x, _wgslsmith_mult_u32(4294967295u, arg_0.b.x), abs(var_1.a.b.x)) << (~min(vec3<u32>(arg_0.b.x, 24419u, var_1.c.a.x), vec3<u32>(1u, var_4.a.b.x, 71966u)) % vec3<u32>(32u)), vec3<u32>(86040u, ~1u, 4294967295u)) | vec3<u32>(57109u, ~firstTrailingBit(31304u), 82470u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1437u, 4294967295u), vec3<u32>(53517u, 1u, 0u))) << (select(vec3<u32>(1u, 1u, 1u), func_1(Struct_2(vec2<bool>(false, false), vec2<u32>(5352u, 15620u), vec2<f32>(265f, 331f)), -1309f), vec3<bool>(true, true, true)) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(23279u >> (1u % 32u), firstLeadingBit(8513u), ~60020u), vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(96462u, 4294967295u, 0u, 79151u)), min(vec4<u32>(0u, 33754u, 0u, 0u), vec4<u32>(1u, 43291u, 0u, 8216u))), min(1u, func_1(Struct_2(vec2<bool>(false, false), vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1239f, 1468f)), -190f).x), 1u)) % vec3<u32>(32u));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(247f)) - 992f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1018f)), _wgslsmith_f_op_f32(f32(-1f) * -1390f), u_input.a.x >= -2147483647i))))), 977f);
    var var_1 = Struct_1(~max(firstLeadingBit(~vec2<u32>(var_0.x, var_0.x)), vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(48566u, 4294967295u, var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u)))));
    let var_2 = func_4(func_4(Struct_1(func_1(func_4(Struct_1(vec2<u32>(var_0.x, var_1.a.x)), -1i, vec3<bool>(true, true, false)).a, _wgslsmith_f_op_f32(min(-1316f, 252f))).xy), ~7729i >> ((var_1.a.x ^ reverseBits(var_1.a.x)) % 32u), !vec3<bool>(any(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, true, true, true)))).c, firstLeadingBit(_wgslsmith_mod_i32(reverseBits(-2736i >> (0u % 32u)), -30800i)), !vec3<bool>(false, true, select(true, func_4(Struct_1(vec2<u32>(var_1.a.x, 1u)), 1i, vec3<bool>(true, true, true)).a.a.x, true)));
    global0 = 672f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(40448u << (var_0.x % 32u)))), firstLeadingBit(abs(countOneBits(vec4<i32>(var_2.b.x, var_2.b.x, var_2.b.x, u_input.a.x)))) | max(max(vec4<i32>(6562i, 34637i, var_2.b.x, -13408i), ~vec4<i32>(37792i, u_input.a.x, u_input.a.x, 41442i)), vec4<i32>(-40355i, u_input.a.x << (4294967295u % 32u), firstTrailingBit(var_2.b.x), 0i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.a.c.x + var_2.a.c.x), _wgslsmith_div_f32(-379f, var_2.a.c.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-426f, -1613f), vec2<f32>(var_2.a.c.x, var_2.a.c.x)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.c.x, var_2.a.c.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c.x, var_2.a.c.x) * var_2.a.c), _wgslsmith_f_op_vec2_f32(-var_2.a.c)))))), _wgslsmith_div_u32(~var_1.a.x | _wgslsmith_add_u32(var_0.x, var_0.x), 90626u) >> (_wgslsmith_mult_u32(var_0.x, 85688u) % 32u));
}

