struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    return ~_wgslsmith_dot_vec2_u32(u_input.b.xz, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, arg_1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(34792u, 41950u), arg_1.xw)));
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = Struct_4(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, 274f)))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 54942u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 9010u, 2260u)), firstLeadingBit(vec4<u32>(6962u, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-543f, 1092f), vec2<f32>(330f, -215f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, 1480f)))) == ~(u_input.b.x ^ 41281u), u_input.d);
    let var_1 = Struct_1(_wgslsmith_mult_i32(i32(-1i) * -10476i, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) * -1000f))), select(!vec2<bool>(all(vec4<bool>(false, true, var_0.a, false)), all(vec4<bool>(true, true, false, var_0.a))), select(!(!vec2<bool>(var_0.a, var_0.a)), select(!vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false), var_0.a), !vec2<bool>(var_0.a, var_0.a)), vec2<bool>(true, false)), vec2<bool>(!any(vec3<bool>(true, false, var_0.a)), all(select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, false), var_0.a)))));
    var var_2 = arg_0;
    var_0 = Struct_4(var_0.a, arg_0.a.x);
    let var_3 = any(vec3<bool>(any(select(!var_1.c, var_1.c, var_1.c.x)), true, select(any(vec4<bool>(true, var_0.a, false, true)), select(true, var_1.c.x, var_1.c.x), select(any(vec3<bool>(false, true, false)), var_1.c.x, false))));
    return vec3<u32>(29055u, u_input.b.x, _wgslsmith_mult_u32(0u | u_input.b.x, (func_3(vec2<f32>(var_1.b, var_1.b), vec4<u32>(1u, 72828u, 5458u, u_input.b.x), vec2<f32>(var_1.b, 311f)) ^ _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) >> (select(~u_input.b.x, firstTrailingBit(16907u), !var_3) % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(~vec3<i32>(-2147483647i, arg_2.c.a, _wgslsmith_clamp_i32(0i, -1328i, arg_1.x)) << (_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(arg_2.e, arg_2.e, 4294967295u)), func_2(Struct_2(vec3<i32>(arg_2.c.a, arg_1.x, arg_1.x))) | u_input.b) % vec3<u32>(32u)));
    var_0 = Struct_2(~(~countOneBits(var_0.a >> (u_input.b % vec3<u32>(32u)))));
    var var_1 = any(vec4<bool>(true, 1789f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(sign(492f)))), ~54947u <= arg_2.e, false));
    var_0 = Struct_2(~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a, ~var_0.a), -min(var_0.a, vec3<i32>(arg_2.c.a, arg_1.x, arg_1.x))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -155f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1947f * 699f)) + arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -900f)));
    return arg_2.c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = func_1(733f, -(~_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-4482i, -17316i))) & _wgslsmith_add_vec2_i32(-(u_input.c | u_input.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -2147483647i), u_input.c) ^ vec2<i32>(-1i, u_input.c.x)), Struct_3(false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-106f, arg_0.b, arg_0.b, 1000f), vec4<f32>(arg_0.b, -479f, 1358f, -1000f)))))), func_1(_wgslsmith_f_op_f32(-arg_0.b), u_input.c, Struct_3(13827u < u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -168f, -1568f, arg_0.b) + vec4<f32>(arg_0.b, arg_0.b, arg_0.b, -522f)), func_1(arg_0.b, vec2<i32>(-8020i, u_input.a), Struct_3(false, vec4<f32>(-631f, arg_0.b, arg_0.b, arg_0.b), arg_0, arg_0.b, 0u)), arg_0.b, u_input.b.x)), arg_0.b, u_input.b.x));
    var_0 = _wgslsmith_add_u32(~23795u, _wgslsmith_div_u32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, 937f) - vec2<f32>(-745f, 759f)), vec4<u32>(u_input.b.x, 43868u, 4294967295u, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1173f, 1184f))) ^ 15794u, 31137u));
    var var_2 = !var_1.c;
    var_2 = select(var_1.c, vec2<bool>(3260u <= _wgslsmith_mod_u32(1u, u_input.b.x), arg_0.c.x), false);
    return arg_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> Struct_4 {
    return Struct_4(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), all(vec4<bool>(false, true, true, true)))), -40832i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(abs(vec3<i32>(-u_input.d, u_input.a & u_input.a, _wgslsmith_mult_i32(-25652i, u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(-1686f, vec2<i32>(u_input.c.x, -21846i), Struct_3(true, vec4<f32>(1000f, -1000f, -772f, -206f), Struct_1(-2147483647i, -844f, vec2<bool>(false, true)), 304f, 67239u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-686f, 1118f))), _wgslsmith_f_op_f32(-881f - -791f)))), select(vec3<i32>(reverseBits(u_input.a), _wgslsmith_div_i32(u_input.d, 1i), select(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(34908i, u_input.c.x, u_input.a), vec3<i32>(0i, u_input.c.x, u_input.c.x)), false)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -19925i) ^ vec3<i32>(1i, u_input.c.x, u_input.c.x), abs(vec3<i32>(70959i, 2147483647i, 1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.a, u_input.c.x) ^ vec3<i32>(41597i, 6454i, u_input.c.x), ~vec3<i32>(-24573i, -101418i, u_input.c.x)), firstTrailingBit(vec3<i32>(0i, -2147483647i, 18717i)) << ((vec3<u32>(0u, u_input.b.x, 0u) >> (vec3<u32>(u_input.b.x, u_input.b.x, 41160u) % vec3<u32>(32u))) % vec3<u32>(32u))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(~firstTrailingBit(u_input.a), _wgslsmith_clamp_i32(u_input.a, var_0.b << (0u % 32u), 2147483647i), -2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, var_0.b, u_input.a), vec3<i32>(var_0.b, -2147483647i, 35730i)), select(vec3<i32>(u_input.a, var_0.b, var_0.b), vec3<i32>(-63581i, var_0.b, var_0.b), true)), var_0.b, u_input.a >> (47823u % 32u)), min(var_0.b, var_0.b | countOneBits(var_0.b)), u_input.a));
    var var_2 = Struct_4(var_0.a, var_1.x);
    let var_3 = u_input.b.x;
    var_2 = func_5(Struct_2(vec3<i32>(~(~(-26283i)), func_5(Struct_2(vec3<i32>(3465i, var_2.b, -1i)), _wgslsmith_div_f32(1000f, -891f), reverseBits(vec3<i32>(var_1.x, 1i, 51851i))).b, _wgslsmith_mod_i32(var_0.b ^ -1040i, -u_input.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2677f, -530f)))), _wgslsmith_f_op_f32(f32(-1f) * -993f)), -firstLeadingBit(var_1 & firstTrailingBit(vec3<i32>(u_input.d, -1i, -39264i))));
    var var_4 = select(!var_2.a, ~func_1(_wgslsmith_f_op_f32(f32(-1f) * -316f), u_input.c << (u_input.b.xz % vec2<u32>(32u)), Struct_3(var_2.a, vec4<f32>(1926f, -1087f, -1000f, -1852f), Struct_1(u_input.d, 161f, vec2<bool>(false, false)), -492f, u_input.b.x)).a < (max(var_1.x, -var_0.b) >> (max(u_input.b.x ^ u_input.b.x, u_input.b.x >> (var_3 % 32u)) % 32u)), any(select(vec4<bool>(-1i < var_2.b, false, var_0.a, var_0.a & true), vec4<bool>(select(var_0.a, false, var_2.a), u_input.b.x > 2591u, var_0.a, false), !select(vec4<bool>(false, true, var_0.a, var_2.a), vec4<bool>(true, var_2.a, var_0.a, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, func_2(Struct_2(firstTrailingBit(var_1) >> (abs(vec3<u32>(var_3, 4294967295u, 4294967295u)) % vec3<u32>(32u)))).x, _wgslsmith_f_op_f32(529f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1601f, -606f)))))), _wgslsmith_f_op_f32(func_4(func_1(func_1(_wgslsmith_f_op_f32(791f + 979f), -vec2<i32>(0i, -1i), Struct_3(var_2.a, vec4<f32>(-238f, 853f, -664f, 604f), Struct_1(2147483647i, -1422f, vec2<bool>(var_2.a, var_2.a)), 1656f, 35881u)).b, (vec2<i32>(u_input.d, var_1.x) & var_1.xy) << (~vec2<u32>(var_3, var_3) % vec2<u32>(32u)), Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -290f, 2862f, -1347f) + vec4<f32>(-524f, 512f, -991f, -1836f)), func_1(1000f, vec2<i32>(var_1.x, -11986i), Struct_3(var_2.a, vec4<f32>(-242f, -109f, 835f, -273f), Struct_1(-1i, 1417f, vec2<bool>(true, true)), -335f, 26172u)), _wgslsmith_f_op_f32(abs(1172f)), firstTrailingBit(var_3))))));
}

