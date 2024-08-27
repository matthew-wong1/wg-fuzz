struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-860f, -225f, 767f, -710f), vec4<f32>(211f, 1059f, 556f, 1049f), vec4<f32>(-1400f, -602f, 326f, 448f), vec4<f32>(768f, -1086f, -1000f, 1000f), vec4<f32>(-157f, -773f, -1057f, -799f), vec4<f32>(-843f, -1026f, -785f, 1560f), vec4<f32>(1772f, -1048f, 857f, 1977f), vec4<f32>(-889f, -1102f, 276f, 1420f), vec4<f32>(-157f, 223f, 2355f, -1000f), vec4<f32>(-1345f, -541f, 778f, -359f), vec4<f32>(-511f, -300f, -1637f, -1173f), vec4<f32>(1234f, -253f, -346f, 660f), vec4<f32>(-1256f, 632f, -320f, -888f), vec4<f32>(1197f, -2215f, 1000f, -178f), vec4<f32>(1251f, -830f, -1620f, 1497f), vec4<f32>(245f, 1499f, 562f, 488f), vec4<f32>(391f, -1073f, 627f, 597f), vec4<f32>(-284f, 271f, -850f, -920f), vec4<f32>(747f, -2138f, -1524f, 1611f), vec4<f32>(-1543f, 678f, -567f, -318f), vec4<f32>(1000f, 880f, 125f, -2084f), vec4<f32>(430f, -1284f, -393f, -1000f), vec4<f32>(-1691f, -1942f, -433f, -199f), vec4<f32>(-636f, 840f, 1868f, 392f), vec4<f32>(-1170f, 440f, -2340f, 584f), vec4<f32>(-291f, -922f, 365f, 1610f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(711f, -396f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1111f + var_0.x) - var_0.x)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -791f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))), -766f);
    global0 = array<vec4<f32>, 26>();
    return !arg_0.c.ww;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    var var_0 = vec3<i32>(1i, 1i, 1i);
    var var_1 = vec3<bool>(false, arg_0.x, 1507f == arg_2);
    var_1 = !(!(!(!select(vec3<bool>(arg_0.x, true, true), vec3<bool>(var_1.x, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, false)))));
    let var_2 = ((vec4<u32>(4294967295u, _wgslsmith_mult_u32(0u, u_input.a), 1231u & u_input.a, 34569u << (u_input.a % 32u)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 22922u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, 0u) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) >> (abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 5132u), vec4<u32>(84703u, u_input.a, 8725u, u_input.a))) % vec4<u32>(32u))) >> ((_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 65529u), vec4<u32>(32766u, 4615u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u) | ~vec4<u32>(23576u, u_input.a, u_input.a, u_input.a)) ^ vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~47927u), u_input.a, u_input.a, 0u)) % vec4<u32>(32u));
    global0 = array<vec4<f32>, 26>();
    return _wgslsmith_f_op_f32(trunc(-1000f));
}

fn func_2(arg_0: i32) -> bool {
    global0 = array<vec4<f32>, 26>();
    let var_0 = _wgslsmith_add_i32(abs(0i), 67233i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_3(Struct_1(true, vec2<u32>(0u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(true, vec2<u32>(4294967295u, u_input.a), vec4<bool>(true, false, true, true)), Struct_1(false, vec2<u32>(0u, u_input.a), vec4<bool>(true, false, false, true))), vec3<i32>(arg_0, arg_0, var_0), vec3<u32>(4294967295u, u_input.a, 36176u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1151f, 2266f, -1694f) - vec3<f32>(-1019f, -782f, -1349f)), _wgslsmith_f_op_f32(trunc(507f)))), 1090f)), _wgslsmith_f_op_f32(-234f * 226f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-289f, 510f)) - _wgslsmith_f_op_f32(-1119f + -545f)), 1123f)));
    let var_2 = Struct_1(true, select(~(~vec2<u32>(u_input.a, 15173u)), ~(~reverseBits(vec2<u32>(3946u, 4294967295u))), vec2<bool>(true, true)), vec4<bool>(true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(50407u, u_input.a), vec2<u32>(u_input.a, u_input.a)) <= firstTrailingBit(29386u), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true));
    global0 = array<vec4<f32>, 26>();
    return false;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(func_2(arg_1.x), max(vec2<u32>(_wgslsmith_div_u32(arg_0, arg_2.b.x), arg_2.b.x), arg_2.b), vec4<bool>(all(arg_2.c.yw), true, func_3(arg_2, Struct_2(arg_2, Struct_1(arg_2.a, arg_2.b, arg_2.c)), vec3<i32>(32032i, arg_1.x, arg_1.x) & vec3<i32>(arg_1.x, arg_1.x, arg_1.x), ~vec3<u32>(u_input.a, arg_0, 51092u)).x, false)), Struct_1(true, ((arg_2.b & vec2<u32>(arg_0, 62567u)) ^ abs(vec2<u32>(arg_0, arg_2.b.x))) << (select(vec2<u32>(64400u, 4294967295u), abs(arg_2.b), !vec2<bool>(false, arg_2.a)) % vec2<u32>(32u)), !vec4<bool>(any(arg_2.c), false, arg_2.c.x | arg_2.a, arg_2.c.x)));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -(~abs(vec4<i32>(arg_1.x, 0i, 0i, arg_1.x))), -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, -2147483647i, -11873i, arg_1.x), vec4<i32>(1i, arg_1.x, arg_1.x, 9012i))) << (select(~(vec4<u32>(6977u, arg_2.b.x, 19422u, arg_0) >> (vec4<u32>(u_input.a, arg_0, 78930u, var_0.a.b.x) % vec4<u32>(32u))), countOneBits(~vec4<u32>(arg_2.b.x, arg_2.b.x, 32603u, 0u)), select(select(var_0.b.c, arg_2.c, var_0.a.c), arg_2.c, true)) % vec4<u32>(32u)));
    var_0 = Struct_2(Struct_1(arg_2.a, vec2<u32>(4294967295u, arg_2.b.x), vec4<bool>(var_0.b.a, arg_2.a, !(arg_0 != 6356u), true)), var_0.b);
    var_0 = Struct_2(Struct_1(!all(select(vec3<bool>(false, false, arg_2.c.x), vec3<bool>(true, arg_2.c.x, false), vec3<bool>(false, true, true))), ~arg_2.b, arg_2.c), Struct_1(all(select(!vec4<bool>(true, true, arg_2.c.x, true), select(arg_2.c, vec4<bool>(var_0.a.a, false, var_0.b.c.x, true), arg_2.c), vec4<bool>(arg_2.a, var_0.a.c.x, var_0.a.a, true))), _wgslsmith_div_vec2_u32(var_0.a.b, vec2<u32>(arg_2.b.x, ~4294967295u)), vec4<bool>(true, !func_3(arg_2, Struct_2(Struct_1(false, var_0.b.b, vec4<bool>(arg_2.c.x, true, arg_2.a, false)), Struct_1(arg_2.c.x, var_0.a.b, vec4<bool>(true, false, var_0.b.a, true))), vec3<i32>(arg_1.x, var_1.x, 0i), vec3<u32>(var_0.b.b.x, 72879u, 20189u)).x, false, arg_2.a)));
    let var_2 = var_0.a;
    return Struct_1(var_2.c.x, ~_wgslsmith_sub_vec2_u32(~(~var_2.b), vec2<u32>(~var_2.b.x, 0u >> (var_2.b.x % 32u))), select(!arg_2.c, select(!var_0.b.c, !vec4<bool>(var_2.c.x, var_2.a, var_2.a, arg_2.c.x), var_0.b.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(~4294967295u, vec2<i32>(14604i, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 0i), -vec2<i32>(-2147483647i, 2147483647i))), Struct_1(true, vec2<u32>(u_input.a, 80628u) & vec2<u32>(4294967295u, u_input.a), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)))), Struct_1(true, max(~vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(32295u, u_input.a))) | _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(85202u, u_input.a), vec2<u32>(1u, u_input.a), false)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, func_1(select(_wgslsmith_div_u32(1u, var_0.a.b.x), min(var_0.b.b.x, u_input.a), func_2(29700i)), -vec2<i32>(1i, 1i), func_1(abs(15612u), select(vec2<i32>(-1i, -1i), vec2<i32>(3127i, -7216i), false), func_1(var_0.a.b.x, vec2<i32>(-11251i, 35725i), Struct_1(var_0.b.a, vec2<u32>(1u, u_input.a), vec4<bool>(var_0.a.a, var_0.a.c.x, var_0.b.c.x, var_0.a.a))))).b.x), u_input.a);
    var_1 = ~select(firstTrailingBit(var_0.a.b.x), 1u, var_0.a.c.x);
    let var_2 = var_0;
    var var_3 = Struct_1(any(select(var_0.b.c, select(var_2.a.c, var_0.a.c, false), var_2.a.a)), ~_wgslsmith_clamp_vec2_u32(var_0.b.b, ~(~vec2<u32>(u_input.a, 4294967295u)), select(vec2<u32>(var_0.a.b.x, var_2.b.b.x), ~vec2<u32>(var_0.b.b.x, var_2.b.b.x), true)), func_1(firstTrailingBit(var_2.a.b.x) & abs(21624u), -vec2<i32>(1i, abs(0i)), func_1(81178u, select(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 34446i), vec2<i32>(8899i, 9882i)), ~vec2<i32>(-47758i, 0i), var_2.b.c.zz), Struct_1(!var_2.a.c.x, ~vec2<u32>(var_2.b.b.x, 18061u), vec4<bool>(true, var_2.b.a, true, var_0.b.c.x)))).c);
    global0 = array<vec4<f32>, 26>();
    var_3 = var_0.b;
    let var_4 = abs(var_3.b << (~vec2<u32>(u_input.a, firstLeadingBit(var_0.b.b.x)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~max(select(vec4<i32>(15443i, -68315i, -1i, 0i), vec4<i32>(-2147483647i, 2147483647i, -1i, 20544i), true), vec4<i32>(3377i, -4591i, -5579i, 0i) << (vec4<u32>(u_input.a, var_2.b.b.x, var_3.b.x, var_4.x) % vec4<u32>(32u))), -firstTrailingBit(-vec4<i32>(-5745i, 36282i, -2147483647i, 44315i))));
}

