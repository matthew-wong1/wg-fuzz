struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<u32>(0u, 10246u), Struct_1(false, 2147483647i, vec4<i32>(2147483647i, 0i, 32938i, 18478i), true), Struct_1(true, 0i, vec4<i32>(1i, -1i, -18203i, 12690i), true)), Struct_2(vec2<u32>(12380u, 1u), Struct_1(false, -58169i, vec4<i32>(23413i, i32(-2147483648), 14142i, -10776i), true), Struct_1(true, -64475i, vec4<i32>(-18894i, 0i, -15141i, -12737i), true)), Struct_2(vec2<u32>(1u, 78083u), Struct_1(true, 0i, vec4<i32>(-47013i, -5871i, i32(-2147483648), 1i), false), Struct_1(false, -1i, vec4<i32>(-1i, 15971i, i32(-2147483648), 51935i), false)), Struct_2(vec2<u32>(1u, 67557u), Struct_1(false, -3382i, vec4<i32>(-1i, 6210i, 1i, -11425i), true), Struct_1(false, 1i, vec4<i32>(-18669i, -29171i, 0i, 2147483647i), false)), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(true, -18068i, vec4<i32>(-1i, 50228i, 0i, i32(-2147483648)), false), Struct_1(true, -47602i, vec4<i32>(-32323i, 0i, 2147483647i, 19184i), true)), Struct_2(vec2<u32>(4294967295u, 23269u), Struct_1(true, -35850i, vec4<i32>(30982i, i32(-2147483648), -1i, 2147483647i), false), Struct_1(true, 0i, vec4<i32>(-5192i, 2147483647i, 2147483647i, -9515i), true)), Struct_2(vec2<u32>(37161u, 1u), Struct_1(true, -7713i, vec4<i32>(-1i, -1i, -75458i, 2147483647i), true), Struct_1(false, -6292i, vec4<i32>(i32(-2147483648), 41574i, -28090i, 1i), false)), Struct_2(vec2<u32>(0u, 0u), Struct_1(true, 1i, vec4<i32>(9138i, 1i, 0i, i32(-2147483648)), true), Struct_1(true, 0i, vec4<i32>(0i, -1i, -1i, -30192i), true)), Struct_2(vec2<u32>(1u, 0u), Struct_1(false, 2147483647i, vec4<i32>(-1i, 2147483647i, 1i, -1i), false), Struct_1(true, i32(-2147483648), vec4<i32>(15363i, -17148i, 9517i, -20501i), true)), Struct_2(vec2<u32>(83557u, 3279u), Struct_1(false, 1i, vec4<i32>(2147483647i, -27620i, 39413i, 1i), true), Struct_1(false, 45130i, vec4<i32>(1i, 2147483647i, -32056i, i32(-2147483648)), false)), Struct_2(vec2<u32>(4294967295u, 6287u), Struct_1(false, 1i, vec4<i32>(1i, 31391i, -51266i, i32(-2147483648)), true), Struct_1(true, -36305i, vec4<i32>(9144i, 14739i, 0i, 2147483647i), true)), Struct_2(vec2<u32>(1u, 1u), Struct_1(false, 0i, vec4<i32>(49401i, 2147483647i, 1i, -9956i), true), Struct_1(false, -23684i, vec4<i32>(-36110i, 1i, 17325i, -66462i), false)), Struct_2(vec2<u32>(0u, 22027u), Struct_1(false, -41114i, vec4<i32>(0i, 36249i, 2147483647i, 18358i), true), Struct_1(false, 2147483647i, vec4<i32>(1i, 2147483647i, 2147483647i, 33104i), false)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, -1i, vec4<i32>(0i, -30376i, 7799i, -1i), false), Struct_1(true, -62962i, vec4<i32>(6814i, -58144i, 15556i, 0i), true)), Struct_2(vec2<u32>(0u, 46354u), Struct_1(true, -19320i, vec4<i32>(-10894i, 2147483647i, 2147483647i, 1i), false), Struct_1(false, 28025i, vec4<i32>(-15817i, -19672i, 16937i, -1i), false)), Struct_2(vec2<u32>(0u, 1u), Struct_1(false, -97071i, vec4<i32>(4574i, 18281i, -83117i, i32(-2147483648)), true), Struct_1(true, 31326i, vec4<i32>(33712i, 2147483647i, 0i, 2147483647i), false)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, 54811i, vec4<i32>(2147483647i, 0i, -7281i, 35771i), false), Struct_1(false, -13501i, vec4<i32>(i32(-2147483648), -3014i, 2147483647i, 1i), true)), Struct_2(vec2<u32>(1u, 1607u), Struct_1(false, -1i, vec4<i32>(-1i, -34003i, 1i, -14551i), false), Struct_1(false, i32(-2147483648), vec4<i32>(2147483647i, 360i, 63482i, -1i), false)), Struct_2(vec2<u32>(0u, 0u), Struct_1(true, -73736i, vec4<i32>(1i, 3443i, -1i, 39601i), false), Struct_1(false, 12054i, vec4<i32>(0i, 59257i, i32(-2147483648), 1i), true)), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(false, 33819i, vec4<i32>(1i, 1668i, -1i, i32(-2147483648)), true), Struct_1(false, 53679i, vec4<i32>(1i, 0i, -25668i, 53318i), false)), Struct_2(vec2<u32>(1u, 58989u), Struct_1(false, 1684i, vec4<i32>(2147483647i, -29954i, -24385i, 0i), false), Struct_1(true, -16478i, vec4<i32>(0i, 2147483647i, 2147483647i, -1i), false)), Struct_2(vec2<u32>(0u, 0u), Struct_1(true, 15109i, vec4<i32>(-29371i, 50744i, i32(-2147483648), 52911i), true), Struct_1(false, i32(-2147483648), vec4<i32>(33221i, 0i, -1i, -1i), false)), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(true, 35151i, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 29698i), true), Struct_1(true, 1i, vec4<i32>(0i, -8967i, -12771i, 1i), true)), Struct_2(vec2<u32>(6206u, 1u), Struct_1(false, 0i, vec4<i32>(-41959i, -32724i, i32(-2147483648), i32(-2147483648)), true), Struct_1(true, -19708i, vec4<i32>(-68192i, -1i, 41438i, 1i), false)), Struct_2(vec2<u32>(7661u, 1294u), Struct_1(true, 1i, vec4<i32>(0i, i32(-2147483648), 0i, 35421i), true), Struct_1(true, 0i, vec4<i32>(i32(-2147483648), 78704i, -14565i, i32(-2147483648)), true)), Struct_2(vec2<u32>(1u, 0u), Struct_1(true, 0i, vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i), false), Struct_1(true, 1i, vec4<i32>(-23376i, -1i, i32(-2147483648), i32(-2147483648)), true)), Struct_2(vec2<u32>(40996u, 1u), Struct_1(true, -2512i, vec4<i32>(-36817i, 0i, 9817i, 1i), true), Struct_1(false, -12444i, vec4<i32>(-16148i, 1i, -8284i, 1i), false)), Struct_2(vec2<u32>(1u, 0u), Struct_1(false, -1325i, vec4<i32>(-756i, 0i, 28859i, -10871i), true), Struct_1(false, i32(-2147483648), vec4<i32>(2147483647i, 14336i, -1i, i32(-2147483648)), false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32) -> f32 {
    global1 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_f_op_f32(-793f + -306f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f))));
    global1 = array<Struct_2, 28>();
    var_0 = var_1;
    return var_1;
}

fn func_3() -> vec3<u32> {
    let var_0 = vec3<i32>(firstLeadingBit(~(~u_input.a)), countOneBits(-2147483647i), 0i);
    var var_1 = (~_wgslsmith_add_i32(44932i, max(-46069i, u_input.a)) << (4294967295u % 32u)) << ((min(71513u, ~29581u) >> (_wgslsmith_dot_vec3_u32(max(~vec3<u32>(28438u, 18543u, 0u), select(vec3<u32>(17250u, 15461u, 46553u), vec3<u32>(14472u, 4294967295u, 1u), false)), vec3<u32>(1u, 1u, 1u)) % 32u)) % 32u);
    global1 = array<Struct_2, 28>();
    let var_2 = Struct_1(true, 1i, countOneBits(vec4<i32>(-1i) * -vec4<i32>(4983i, var_0.x, u_input.a, 1i)), true | select(all(vec4<bool>(false, false, true, true)) == true, false, true));
    var_1 = 1i;
    return vec3<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(38551u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(34586u, 0u), vec2<u32>(58443u, 47767u)), _wgslsmith_clamp_u32(64451u, 152839u, 1u))), 1u), _wgslsmith_add_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 19257u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 8836u))), 1u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_3, 17>();
    let var_0 = Struct_1(false, arg_1.b.c.x, arg_1.b.c, true || !(_wgslsmith_add_u32(49428u, 1u) <= arg_1.a.x));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), ~vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))), firstLeadingBit(~func_3())), 0u, 0u, ~_wgslsmith_mod_u32(arg_1.a.x, 0u));
    var var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~(~vec4<u32>(var_1.x, 13353u, arg_1.a.x, 49694u))) >> (vec4<u32>(firstTrailingBit(arg_1.a.x) & var_1.x, var_1.x, 49700u, var_1.x) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(~(~arg_1.a.x)), _wgslsmith_mod_u32(countOneBits(~var_1.x), 57285u), ~(~(~25616u)), _wgslsmith_div_u32(72739u, min(arg_1.a.x, ~arg_1.a.x))));
    let var_3 = u_input.a;
    return ~(~(~_wgslsmith_div_u32(select(57840u, var_1.x, arg_1.c.a), var_1.x ^ 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(716f, -1884f)) * _wgslsmith_f_op_f32(f32(-1f) * -118f)))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u)) + _wgslsmith_f_op_f32(f32(-1f) * -974f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.yz - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_1(1u))));
    global0 = array<Struct_3, 17>();
    global1 = array<Struct_2, 28>();
    var var_2 = vec3<u32>(~1u, ~2856u, _wgslsmith_clamp_u32(reverseBits(4294967295u), ~(~func_2(var_0.zww, Struct_2(vec2<u32>(0u, 57165u), Struct_1(true, u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), true), Struct_1(true, -1i, vec4<i32>(30169i, u_input.a, 79221i, 21120i), false)))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(0u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48802u, 4294967295u), vec3<u32>(19087u, 4294967295u, var_2.x)) & 1u)), max(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 10680i, -2147483647i) | vec3<i32>(-16936i, u_input.a, u_input.a), reverseBits(vec3<i32>(-1i, u_input.a, -30210i))), abs(vec3<i32>(u_input.a, u_input.a, -79332i) & vec3<i32>(0i, -2497i, -2147483647i)) | reverseBits(~vec3<i32>(u_input.a, 1i, u_input.a))));
}

