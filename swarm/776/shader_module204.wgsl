struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: f32 = -1000f;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 24>;

var<private> global4: array<vec3<i32>, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(~max(reverseBits(reverseBits(-1i)), 20777i), vec3<f32>(-836f, _wgslsmith_f_op_f32(round(-453f)), -519f), Struct_1(vec2<bool>(true, true), 97912u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(711f + _wgslsmith_f_op_f32(sign(552f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(809f + 790f), 1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-864f, -599f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-764f, -1681f, 2727f, 358f)))), u_input.d.x));
    var var_1 = Struct_4(vec4<u32>(61509u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, var_0.c.b), 4294967295u ^ var_0.c.b), ~var_0.c.e, 4294967295u), Struct_1(select(!select(vec2<bool>(false, var_0.c.a.x), var_0.c.a, var_0.c.a.x), !(!var_0.c.a), false), firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_0.c.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.c.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c.d + vec4<f32>(244f, 1000f, -3010f, 386f)))), firstTrailingBit(14456u)), ~(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.e, u_input.b), _wgslsmith_clamp_u32(0u, u_input.b, u_input.d.x)) >> (~min(4294967295u, u_input.d.x) % 32u)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-325f)), _wgslsmith_f_op_f32(106f * var_0.b.x), _wgslsmith_f_op_f32(trunc(var_0.c.c.x)))), Struct_1(vec2<bool>(all(vec2<bool>(true, var_0.c.a.x)), any(vec4<bool>(var_0.c.a.x, var_0.c.a.x, true, true))), _wgslsmith_mod_u32(4294967295u, u_input.b << (0u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.d.x, 608f, 759f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(-var_0.c.c), var_0.c.b), var_0.b, -firstTrailingBit(1i)), var_0.c.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d.x, var_0.c.c.x, var_0.c.c.x)));
    var_1 = Struct_4(min(abs(var_1.a), _wgslsmith_div_vec4_u32(countOneBits(abs(var_1.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(35767u, var_0.c.e, 4294967295u, var_0.c.e), abs(var_1.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.e, 31935u, var_1.e, var_0.c.b), vec4<u32>(0u, 1u, 0u, var_1.c))))), var_1.d.b, ~u_input.d.x, var_1.d, ~(~1u));
    var var_3 = var_1.d.b;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c.x, -1000f)), -1000f));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    var var_0 = arg_1 == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global0 = array<Struct_2, 22>();
    global4 = array<vec3<i32>, 10>();
    var_0 = false;
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())));
    return Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, -120f, arg_1), vec3<bool>(false, false, true)))))))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, false)), vec2<bool>(true, true)), ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1398f, 1073f, -2111f, 567f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1811f)), _wgslsmith_div_f32(1672f, arg_1), _wgslsmith_f_op_f32(trunc(arg_1)), 148f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1435f, arg_1) * vec4<f32>(arg_1, -1000f, arg_1, 332f))))), reverseBits(countOneBits(arg_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1678f)))), arg_1, _wgslsmith_f_op_f32(-452f - -2274f)), abs(u_input.c));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(firstTrailingBit(~firstTrailingBit(reverseBits(-2147483647i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.d.x) * _wgslsmith_f_op_f32(arg_3.b.c.x + 1000f)), 498f, arg_3.b.c.x)), func_2(1u, arg_3.a.x).b);
    let var_1 = Struct_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.b.b, 44699u, u_input.b, ~4294967295u), ~vec4<u32>(50872u, 87235u, 4294967295u, arg_1)), Struct_1(var_0.c.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.c.e, 8152u, 1u, arg_0.x)), (vec4<u32>(u_input.d.x, var_0.c.b, 28524u, arg_0.x) ^ vec4<u32>(u_input.d.x, var_0.c.b, arg_3.b.e, arg_0.x)) | (vec4<u32>(9802u, 4294967295u, u_input.d.x, arg_0.x) << (vec4<u32>(var_0.c.e, 4294967295u, arg_3.b.e, arg_3.b.b) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-764f)) * arg_3.c.x), 227f, _wgslsmith_f_op_f32(trunc(-346f)), arg_3.c.x), func_2(1u, -129f).b.d, arg_0.x), ~(~(~u_input.b)), func_2(21655u, arg_3.b.d.x), arg_1);
    return func_2(~_wgslsmith_mod_u32(~72259u, 7857u), _wgslsmith_f_op_f32(abs(-1569f))).b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-111f * arg_0.d.x))) - _wgslsmith_f_op_f32(-1530f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, 1363f) * arg_0.d.x))));
    let var_1 = arg_0.b;
    let var_2 = ~reverseBits(_wgslsmith_sub_u32(~_wgslsmith_div_u32(arg_0.e, 0u), 1u));
    var var_3 = var_2;
    let var_4 = arg_0.a;
    return func_4(vec3<u32>(22287u, func_4(~global3[_wgslsmith_index_u32(u_input.d.x, 24u)], arg_0.e >> (4294967295u % 32u), arg_0.a.x, func_2(1u, -987f)).b, 1u) ^ global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.e, u_input.b, 0u), vec4<u32>(var_1, 19928u, 4294967295u, u_input.d.x)), var_1) & 4294967295u, 24u)], _wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(_wgslsmith_div_u32(u_input.d.x >> (arg_0.e % 32u), ~14856u), ~_wgslsmith_add_u32(var_2, arg_0.e))), any(!select(vec3<bool>(var_4.x, arg_0.a.x, arg_0.a.x), select(vec3<bool>(var_4.x, true, arg_0.a.x), vec3<bool>(false, arg_0.a.x, true), vec3<bool>(arg_0.a.x, var_4.x, false)), true)), func_2(abs(~u_input.b), 925f));
}

fn func_1() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = u_input.b;
    return Struct_3(vec3<f32>(-290f, -282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-316f, -1464f)) + _wgslsmith_f_op_f32(f32(-1f) * -1958f))), func_5(func_4(vec3<u32>(1u, u_input.d.x, select(136056u, 1u, true)), u_input.b, all(vec4<bool>(false, true, false, true)) | true, func_2(u_input.d.x, -576f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(898f, 832f, 969f))))), u_input.c);
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = Struct_1(arg_2.b.a, firstTrailingBit(~func_4(~global3[_wgslsmith_index_u32(10798u, 24u)], abs(arg_2.b.e), all(vec4<bool>(false, arg_2.b.a.x, false, false)), arg_2).e), vec4<f32>(1788f, arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) * 1096f), _wgslsmith_f_op_f32(arg_2.b.c.x + -227f)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x - 682f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-274f)))), arg_2.b.a.x)), -1000f, -335f, _wgslsmith_f_op_f32(1426f + arg_2.b.d.x)), firstTrailingBit(min(46468u, 39679u)));
    global3 = array<vec3<u32>, 24>();
    let var_1 = true;
    var_0 = func_1().b;
    var var_2 = arg_2;
    return reverseBits(vec2<u32>(~0u | _wgslsmith_mod_u32(var_0.b, 18973u), countOneBits(u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 24>();
    global0 = array<Struct_2, 22>();
    let var_0 = ~((_wgslsmith_add_vec2_u32(u_input.d.yy, vec2<u32>(u_input.d.x, 50850u)) ^ _wgslsmith_div_vec2_u32(u_input.d.xz, vec2<u32>(0u, 1u))) << (u_input.d.xz % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(select(vec2<u32>(68936u, firstTrailingBit(0u)), ~u_input.d.xz, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), abs(func_6(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 20268u, 18868u, 28936u), vec4<u32>(u_input.d.x, u_input.d.x, 21403u, u_input.d.x)), func_1())), u_input.d.xz) % vec2<u32>(32u));
    let var_1 = func_1().b.a;
    let var_2 = Struct_1(!(!(!var_1)), 54732u, vec4<f32>(-960f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1050f * 1f))), _wgslsmith_f_op_f32(step(func_4(vec3<u32>(67218u, u_input.d.x, u_input.b), var_0.x ^ 1u, all(var_1), Struct_3(vec3<f32>(1088f, 238f, -2314f), Struct_1(var_1, 26988u, vec4<f32>(-1283f, -1000f, 1426f, -1000f), vec4<f32>(145f, 1000f, -703f, -1315f), 4294967295u), vec3<f32>(1766f, 531f, 538f), u_input.c)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 527f)), -1000f, select(true, var_1.x, var_1.x))), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1().b.d + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 2103f, -575f, 692f)))), vec4<f32>(600f, _wgslsmith_f_op_f32(-338f + -408f), _wgslsmith_f_op_f32(step(-181f, -1000f)), 701f), false)), u_input.d.x);
    let var_3 = vec2<bool>(false, any(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, var_1.x, var_2.a.x)), !vec3<bool>(var_2.a.x, var_2.a.x, var_1.x), select(vec3<bool>(false, var_2.a.x, true), vec3<bool>(var_2.a.x, var_1.x, var_2.a.x), vec3<bool>(var_2.a.x, true, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(74042u, abs(u_input.b ^ var_0.x)), 10u)] << (~vec3<u32>(4294967295u, u_input.d.x, ~var_2.b) % vec3<u32>(32u)), var_2.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, -781f)) * vec2<f32>(_wgslsmith_f_op_f32(var_2.d.x + -940f), _wgslsmith_f_op_f32(-var_2.c.x))) * vec2<f32>(_wgslsmith_div_f32(var_2.d.x, var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x))), func_2(_wgslsmith_add_u32(78040u, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(198f, var_2.c.x)) - var_2.d.x)).c.x, vec3<i32>(4703i, _wgslsmith_add_i32(-u_input.c, 1i), u_input.a.x >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.d, global3[_wgslsmith_index_u32(1223u, 24u)]), select(var_0.x, 1080u, false)) % 32u)));
}

