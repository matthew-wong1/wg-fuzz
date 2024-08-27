struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 157f;

var<private> global1: f32 = 239f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = vec2<u32>(countOneBits(0u), 1u ^ u_input.d.x);
    let var_1 = _wgslsmith_f_op_f32(-1361f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1426f + -1785f))), -304f)));
    var var_2 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.b.x), _wgslsmith_add_vec2_u32(u_input.d, u_input.d))), u_input.d.x) <= var_0.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    var_0 = _wgslsmith_mult_vec2_u32(u_input.d, u_input.d);
    return ~(~vec4<u32>(1u, select(0u, u_input.a, false), 4294967295u, 70409u)) | reverseBits(vec4<u32>(u_input.a << (~u_input.a % 32u), var_0.x, _wgslsmith_div_u32(var_0.x, ~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, u_input.b.x, 1u), abs(vec4<u32>(u_input.d.x, 111763u, var_0.x, u_input.d.x)))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_3(func_3(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-142f)))))), abs(-1i), true);
    let var_1 = Struct_3(~vec4<u32>(var_0.a.x, ~1u, u_input.d.x, ~(~1u)), var_0.b, countOneBits(~_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.c, -1i), u_input.c)), !(var_0.a.x < ~u_input.a));
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_f_op_f32(abs(355f));
    var_2 = u_input.d.x | (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(46352u, var_1.a.x, var_1.a.x, 5608u)), vec4<u32>(40682u, 1u, 41340u, 0u)), ~max(5505u, var_1.a.x)) << (0u % 32u));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1145f, var_0.b)))), arg_0)), arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)))))).x)), arg_0.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f));
    let var_0 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), arg_1.x != ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(20328u, u_input.d.x, 0u), u_input.b)));
    var var_1 = true | (false | !select(true, true && var_0.x, var_0.x));
    global1 = -341f;
    return arg_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.d.zwz, countOneBits(u_input.b | arg_0.d.xxx)), _wgslsmith_mod_u32(28950u, ~arg_1.x ^ min(0u, 76842u))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-786f, -176f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, -530f))) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1066f, _wgslsmith_f_op_f32(-124f * 1713f)))));
    var_0 = arg_0.c;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1124f, var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-209f, var_1.x))))));
    return vec4<u32>(func_4(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.x) + var_1))))), min(~vec2<u32>(u_input.b.x, u_input.d.x) << (~vec2<u32>(0u, 12u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, arg_1.x), arg_0.d.ww) | ~arg_0.e.a), u_input.e.x, vec4<f32>(var_1.x, -1122f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x))))), ~0u & _wgslsmith_sub_u32(select(0u, u_input.a, arg_0.a) & (arg_1.x ^ 5910u), u_input.b.x), 1u, arg_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, 2147483647i, Struct_1(u_input.b.yz), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, u_input.a, 48697u, u_input.a), func_1(Struct_2(false, -41171i, Struct_1(vec2<u32>(u_input.a, u_input.b.x)), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.b.x), Struct_1(u_input.b.xz)), vec2<u32>(6089u, 85816u))) ^ _wgslsmith_mod_vec4_u32(~(vec4<u32>(0u, u_input.d.x, 92169u, 60415u) << (vec4<u32>(u_input.a, 3405u, 33608u, 30239u) % vec4<u32>(32u))), min(abs(vec4<u32>(u_input.a, 0u, u_input.d.x, 0u)), abs(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.a)))), Struct_1(~(~(~vec2<u32>(u_input.a, 74157u)))));
    let var_1 = var_0.c;
    let var_2 = Struct_3(firstLeadingBit(_wgslsmith_add_vec4_u32(max(var_0.d, vec4<u32>(u_input.d.x, u_input.d.x, 1610u, 89712u)), min(var_0.d, var_0.d))) & var_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(3072f - -859f))))), _wgslsmith_div_i32(-2147483647i, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), u_input.e), _wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(u_input.c, u_input.c, u_input.e.x), vec3<i32>(u_input.e.x, 1i, 7141i))))), var_0.a);
    var var_3 = reverseBits(abs(min(~vec4<i32>(-24135i, 1i, u_input.e.x, var_2.c), min(vec4<i32>(var_0.b, var_2.c, var_0.b, -2147483647i), vec4<i32>(var_0.b, -85383i, 5802i, -2147483647i))))) & ~(vec4<i32>(abs(u_input.c), var_0.b, ~var_2.c, -18337i) & _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.b, u_input.e.x, 8053i, u_input.c), -vec4<i32>(-48864i, 7187i, -2147483647i, var_2.c)));
    global0 = _wgslsmith_f_op_f32(-var_2.b);
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) - 724f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-256f + 736f) + 1521f)))));
    let x = u_input.a;
    s_output = StorageBuffer(65717u | _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.d.x, _wgslsmith_clamp_u32(var_2.a.x, var_0.c.a.x, 83225u)), ~var_2.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-347f, 470f) + vec2<f32>(var_2.b, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, 161f)))))), u_input.e);
}

