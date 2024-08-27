struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 32>();
    let var_0 = -1009f;
    let var_1 = Struct_1(~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1090f, -735f))), -1000f, -1005f, firstLeadingBit(select(vec2<u32>(_wgslsmith_div_u32(130665u, 4294967295u), ~15798u), ~vec2<u32>(15458u, 43948u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    global0 = array<vec4<i32>, 32>();
    let var_2 = Struct_2(all(!vec4<bool>(true, true, true, all(vec2<bool>(true, false)))), max(var_1.a.x, 22890u), var_1.e.x, vec4<u32>(0u, _wgslsmith_div_u32(4294967295u, ~(~2991u)), var_1.e.x, 32416u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f * _wgslsmith_f_op_f32(ceil(var_1.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(u_input.b.x, ~(~select(1i, u_input.c.x, true))));
    let var_1 = _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(-181f + -393f));
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(14729i, -44405i, -33079i) >> (vec3<u32>(arg_1.x, arg_0.e.x, arg_3.c) % vec3<u32>(32u)), u_input.c, u_input.c), abs(u_input.c), abs(reverseBits(vec3<i32>(-2147483647i, var_0, u_input.b.x)))) ^ firstLeadingBit(u_input.b), -(~select(~vec3<i32>(u_input.b.x, 0i, 2147483647i), u_input.b, vec3<bool>(arg_3.a, arg_3.a, true))));
    var var_3 = var_2.yz;
    let var_4 = arg_2;
    return vec3<u32>(~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(var_4.e.x << (1u % 32u), 7076u, 89910u, arg_0.a.x | 1u)), arg_0.e.x, ~arg_3.b);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(func_4(Struct_1(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 52704u), 14170u, 1u), 896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1062f, 228f)) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(abs(-437f)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(32613u, 98891u), vec2<u32>(26120u, 1u)))), ~abs(select(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(48313u, 11524u, 0u, 1u), vec4<bool>(true, false, false, arg_1.x))), Struct_1(max(vec3<u32>(0u, 1u, 0u), ~vec3<u32>(4294967295u, 12396u, 11819u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-285f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f)), _wgslsmith_f_op_f32(f32(-1f) * -481f), vec2<u32>(firstTrailingBit(19241u), 13690u)), Struct_2(arg_1.x, 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(102935u, 4294967295u, 4294967295u, 0u), vec4<u32>(38009u, 0u, 8801u, 5998u)), _wgslsmith_clamp_u32(40436u, 1u, 4294967295u)), abs(vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-445f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1870f + 1f))), 391f, ~(~vec2<u32>(1u, 1u)));
    global0 = array<vec4<i32>, 32>();
    var var_1 = 2147483647i;
    global0 = array<vec4<i32>, 32>();
    var_1 = firstLeadingBit(arg_0);
    return var_0;
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<i32>, 32>();
    let var_0 = 1u;
    global0 = array<vec4<i32>, 32>();
    let var_1 = _wgslsmith_div_i32(max(59733i, u_input.c.x), min(-27498i, firstLeadingBit(abs(u_input.c.x & u_input.c.x))));
    let var_2 = func_2(u_input.c.x, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !all(vec4<bool>(true, true, true, true)) && true));
    return Struct_2(all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(var_0, ~var_0), 4294967295u, (vec4<u32>(0u, firstLeadingBit(1u), 4294967295u, var_0) << (_wgslsmith_sub_vec4_u32(vec4<u32>(24313u, var_0, var_2.a.x, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(31553u, 16934u, 63889u, var_2.a.x), vec4<u32>(var_2.a.x, var_2.a.x, 0u, var_2.e.x))) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.e.x, 26170u, 6821u, 24411u), ~(~vec4<u32>(var_2.a.x, 1u, var_0, var_2.e.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<i32>, 32>();
    var var_0 = false;
    let var_1 = vec4<bool>(true, false, select(arg_0.a, arg_0.a, false), select(true & arg_0.a, !all(!vec3<bool>(true, arg_0.a, arg_0.a)), !arg_0.a));
    var_0 = var_1.x;
    let var_2 = var_1;
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_0 = ~(~1u);
    var var_1 = arg_1;
    var_1 = arg_1;
    return func_2(_wgslsmith_mult_i32(arg_0, -(~arg_0)), select(!vec3<bool>(all(vec3<bool>(arg_1.a, arg_1.a, false)), !arg_1.a, !arg_1.a), select(select(!vec3<bool>(false, true, arg_1.a), vec3<bool>(var_1.a, arg_1.a, false), true), !select(vec3<bool>(false, true, var_1.a), vec3<bool>(false, true, arg_1.a), vec3<bool>(false, arg_1.a, false)), any(vec3<bool>(false, arg_1.a, true))), vec3<bool>(false, all(vec2<bool>(false, false)), all(vec2<bool>(arg_1.a, arg_1.a)))));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_2(abs(1i | ~u_input.b.x), !(!select(vec3<bool>(arg_2.a, false, true), vec3<bool>(false, true, arg_2.a), vec3<bool>(false, arg_2.a, false)))).d - 715f);
    global0 = array<vec4<i32>, 32>();
    var var_1 = select(0i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, u_input.c.x, -1i), global0[_wgslsmith_index_u32(62461u, 32u)]), _wgslsmith_div_i32(arg_1, ~arg_1)) | -_wgslsmith_mod_i32(-u_input.a, _wgslsmith_clamp_i32(u_input.b.x, 3519i, arg_1)), false);
    let var_2 = _wgslsmith_mod_i32(~(-16865i >> ((~0u ^ _wgslsmith_sub_u32(20161u, arg_0.e.x)) % 32u)), u_input.c.x);
    var var_3 = arg_3.x;
    return Struct_2(!(!arg_2.a), func_4(Struct_1(~arg_0.a, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(floor(-858f)), ~arg_0.e), ~arg_2.d, Struct_1(vec3<u32>(arg_2.d.x, arg_0.e.x, arg_2.c), 1010f, -784f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), arg_2.d.xy)), func_5(Struct_2(arg_2.a, 0u, 24044u, vec4<u32>(4294967295u, 4294967295u, arg_2.b, 27690u)))).x | ~arg_2.c, 0u, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_add_i32(u_input.a, -max(0i, -u_input.b.x));
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u) | ~4294967295u, _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(50501u, 1u)), ~0u), ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~14717u, ~1u)));
    let var_2 = func_7(func_6(_wgslsmith_sub_i32(~abs(-1i), select(abs(-1i), u_input.a, all(vec3<bool>(true, false, true)))), func_5(func_1())), _wgslsmith_add_i32(u_input.a, 0i), Struct_2(any(vec2<bool>(true, true)), func_1().d.x | func_1().d.x, _wgslsmith_add_u32(func_4(Struct_1(vec3<u32>(14626u, 4294967295u, 14171u), -2469f, -1381f, -942f, vec2<u32>(38551u, 1u)), vec4<u32>(4294967295u, 31263u, 57809u, 22957u), Struct_1(vec3<u32>(4294967295u, 0u, 6830u), -264f, -1999f, 1207f, vec2<u32>(4294967295u, 25361u)), Struct_2(false, 44u, 4294967295u, vec4<u32>(4294967295u, 11793u, 0u, 4294967295u))).x << (14183u % 32u), ~0u), ~(~vec4<u32>(1u, 1u, 1u, 1u))), -u_input.b.zy);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(156f, -1018f, -1000f)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, 129f, 494f))))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(984f, -904f, -292f), vec3<f32>(1845f, -1404f, 1602f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-725f, 144f, 471f), vec3<f32>(1000f, -107f, 1072f), vec3<bool>(var_2.a, false, var_2.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(510f, -541f, 544f) * vec3<f32>(-1723f, 378f, -1167f)))), reverseBits(~u_input.c.x) < min(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(10680i, 1i, -27656i))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, _wgslsmith_dot_vec3_u32(var_2.d.wxy, var_2.d.xxy), func_1().b, 0u) & vec4<u32>(~46789u << (reverseBits(var_2.c) % 32u), ~var_2.d.x, _wgslsmith_dot_vec3_u32(var_2.d.ywz, vec3<u32>(17724u, 0u, 0u)) >> ((var_2.c << (4294967295u % 32u)) % 32u), 733u), _wgslsmith_sub_u32(var_2.c, func_7(Struct_1(~var_2.d.yyy, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(var_3.x - var_3.x), var_2.d.wz), firstTrailingBit(-1081i >> (var_2.b % 32u)), Struct_2(false, 14061u, ~var_2.d.x, var_2.d), ~vec2<i32>(u_input.a, 0i)).c), var_2.c);
}

