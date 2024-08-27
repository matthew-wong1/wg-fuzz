struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, -12611i), vec3<i32>(1i, 2147483647i, -31074i), vec3<i32>(2100i, i32(-2147483648), 1i), vec3<i32>(-46514i, 0i, 47269i), vec3<i32>(-27039i, -24202i, -1i), vec3<i32>(8587i, -24430i, 1i), vec3<i32>(-39802i, 12247i, 36965i), vec3<i32>(60518i, -15537i, -1i));

var<private> global1: array<Struct_1, 2>;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-804f)))) + _wgslsmith_f_op_f32(-295f - _wgslsmith_f_op_f32(-1085f - 363f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(324f + 1000f) - _wgslsmith_f_op_f32(ceil(-2173f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1844f - -295f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(min(-205f, -1303f)))))));
    return !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1397f + var_0.x)))) < var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    global0 = array<vec3<i32>, 9>();
    let var_0 = firstTrailingBit(~_wgslsmith_mult_u32(arg_0.b, ~1930u)) | (arg_0.b >> (firstTrailingBit(10558u) % 32u));
    let var_1 = -104f;
    global1 = array<Struct_1, 2>();
    global0 = array<vec3<i32>, 9>();
    return u_input.a;
}

fn func_2() -> Struct_4 {
    var var_0 = ~45638u;
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a | -28138i, _wgslsmith_div_i32(-1i, func_4(Struct_1(-66826i, 60077u, u_input.a, vec3<bool>(false, false, true)), func_3())), _wgslsmith_sub_i32(-1i, -43053i), reverseBits(~(-33744i))), max(abs(min(vec4<i32>(1i, -72764i, -72386i, -2296i), vec4<i32>(0i, u_input.a, 23540i, u_input.a))), vec4<i32>(_wgslsmith_add_i32(u_input.a, 1i), -2446i, u_input.a, u_input.a) << (~vec4<u32>(4294967295u, 40588u, 42874u, 4294967295u) % vec4<u32>(32u))));
    let var_2 = select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), true);
    var var_3 = ~_wgslsmith_clamp_u32(reverseBits(~1u), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(24394u, 27951u, 1u, 522u)), ~(~0u)), ~_wgslsmith_add_u32(firstTrailingBit(43390u), ~34515u));
    var var_4 = Struct_5(var_1.x, Struct_1(~(~(~23191i)), 0u, var_1.x, select(vec3<bool>(var_2.x, true, all(vec2<bool>(false, true))), select(var_2.xww, !var_2.wyy, true), vec3<bool>(false, u_input.a != 17024i, !var_2.x))), ~max(~vec2<u32>(4414u, 3808u), select(select(vec2<u32>(23653u, 22902u), vec2<u32>(4294967295u, 1262u), true), vec2<u32>(6096u, 1u), any(var_2))), _wgslsmith_dot_vec3_i32((vec3<i32>(0i, -28035i, -1i) & min(var_1.xxx, var_1.zyw)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(var_1, var_1), -1i, ~var_1.x) ^ (-vec3<i32>(16485i, -1i, u_input.a) ^ ~global0[_wgslsmith_index_u32(78990u, 9u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(768f, _wgslsmith_f_op_f32(floor(-603f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(955f)))))));
    return Struct_4(Struct_2(Struct_1(-2496i, 80760u, u_input.a, var_4.b.d), Struct_1(_wgslsmith_mult_i32(var_1.x, ~var_4.d), abs(var_4.b.b), _wgslsmith_sub_i32(var_1.x, var_1.x), vec3<bool>(-1000f != var_4.e, var_4.b.d.x, var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-650f * -1374f), _wgslsmith_f_op_f32(649f * _wgslsmith_f_op_f32(-var_4.e))))));
}

fn func_1() -> Struct_5 {
    global0 = array<vec3<i32>, 9>();
    let var_0 = func_2();
    var var_1 = !vec4<bool>(select(true, var_0.a.a.d.x, true), var_0.a.b.d.x | !any(vec2<bool>(var_0.a.a.d.x, var_0.a.b.d.x)), all(var_0.a.b.d), var_0.a.a.d.x);
    var var_2 = select(_wgslsmith_add_vec4_i32(vec4<i32>(-14773i, var_0.a.b.c, -(~2147483647i), select(u_input.a, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(var_0.a.a.b, 9u)], global0[_wgslsmith_index_u32(var_0.a.a.b, 9u)]), true)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, var_0.a.a.c, var_0.a.b.c, u_input.a), min(vec4<i32>(30081i, -2147483647i, u_input.a, -1i), vec4<i32>(var_0.a.a.a, 32516i, var_0.a.b.a, -10253i)), max(vec4<i32>(1i, 0i, u_input.a, -1i), vec4<i32>(u_input.a, 59206i, 1i, -2147483647i))), vec4<i32>(-15019i, _wgslsmith_mod_i32(u_input.a, u_input.a), firstTrailingBit(0i), -4914i))), -vec4<i32>(min(-u_input.a, var_0.a.a.a), select(u_input.a, -2147483647i, var_0.a.a.d.x) >> (1u % 32u), ~0i & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 13127i, var_0.a.a.c), vec4<i32>(u_input.a, var_0.a.b.c, 35112i, 2147483647i)), _wgslsmith_clamp_i32(-21383i, reverseBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(var_0.a.a.c, -1i, -6393i)))), var_0.a.b.d.x);
    global2 = var_0.a.a.c;
    return Struct_5(min(-var_0.a.b.c, u_input.a), Struct_1(_wgslsmith_dot_vec2_i32(~firstTrailingBit(var_2.wy), -var_2.ww), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(24646u), ~25853u), firstLeadingBit(~vec2<u32>(var_0.a.a.b, 0u))), -2147483647i, !var_0.a.b.d), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a.b, ~4294967295u | (var_0.a.a.b | var_0.a.a.b)), ~min(vec2<u32>(var_0.a.b.b, 41839u), abs(vec2<u32>(4294967295u, var_0.a.a.b)))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(18508i), _wgslsmith_add_i32(var_2.x, -16840i), 52901i), vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_2.x), ~1i, -27946i)), _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(~var_2.x, -35694i))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 105918u;
    var_0 = Struct_5(~u_input.a, func_2().a.b, ~(func_1().c ^ vec2<u32>(var_0.b.b, 0u)), _wgslsmith_mult_i32(-11828i, max(var_0.b.c, -1i ^ u_input.a)) << (select(~(var_0.c.x | var_0.b.b), _wgslsmith_add_u32(func_1().c.x, var_0.b.b >> (var_0.c.x % 32u)), var_0.b.d.x | !var_0.b.d.x) % 32u), -1183f);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-687f, _wgslsmith_f_op_f32(min(var_0.e, var_0.e))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.e + var_0.e))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f * 745f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_0.e, -129f) - vec4<f32>(-1000f, 741f, var_0.e, var_0.e)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_0.e, -1175f) - vec4<f32>(var_0.e, 512f, var_0.e, var_0.e)))))), vec4<bool>(true, func_3(), var_0.b.d.x & func_1().b.d.x, false)));
    global0 = array<vec3<i32>, 9>();
    var_0 = func_1();
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-144f, 1032f, true)), _wgslsmith_f_op_f32(897f * 1660f), -879f, _wgslsmith_f_op_f32(var_0.e - var_2.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1633f, var_2.x, var_2.x, 730f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-612f, var_2.x, var_0.e, var_2.x), vec4<f32>(var_0.e, var_0.e, var_0.e, 1104f))))))));
    let var_3 = countOneBits(-(~(-_wgslsmith_mod_i32(38277i, var_0.d))));
    var var_4 = Struct_2(func_2().a.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.e + var_0.e)) - 514f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 1000f)), ~_wgslsmith_clamp_u32(~abs(var_4.b.b), 4294967295u, min(25716u, 45485u) ^ var_0.b.b), ~_wgslsmith_div_i32(_wgslsmith_div_i32(3445i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3), vec2<i32>(var_4.b.a, var_4.a.c))), func_2().a.a.a), (0i << (_wgslsmith_div_u32(abs(var_0.c.x), 111427u | var_0.b.b) % 32u)) & min(_wgslsmith_mult_i32(u_input.a, -2147483647i) & var_3, _wgslsmith_sub_i32(var_3, var_3) >> (firstLeadingBit(1u) % 32u)), vec2<i32>(-1i, var_4.b.a | var_4.a.c));
}

