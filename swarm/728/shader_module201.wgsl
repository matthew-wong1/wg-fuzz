struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(firstLeadingBit(arg_0.a), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.a, 0u, arg_0.b.x), arg_0.b), ~(~(vec3<u32>(arg_0.b.x, 141501u, arg_0.b.x) & vec3<u32>(2434u, 5250u, 4294967295u)))), u_input.c);
    let var_1 = vec2<u32>(58215u, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.a >> (arg_0.b.x % 32u), _wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(7312u, var_0.a))), 0u));
    var var_2 = arg_0;
    var_2 = arg_0;
    let var_3 = 2147483647i;
    return _wgslsmith_mod_u32(~(~var_1.x), countOneBits(_wgslsmith_clamp_u32(0u, ~0u, 58294u)) >> (_wgslsmith_mod_u32(var_2.a, arg_0.b.x) % 32u));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(reverseBits(func_3(Struct_1(27836u, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 17898u, 4294967295u), vec3<u32>(56672u, 85818u, 58263u), vec3<u32>(14928u, 17720u, 1u)), abs(23066i)))), _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(34640u, 6395u, 21228u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(9753u, 4294967295u), 12136u, _wgslsmith_add_u32(4294967295u, 0u)), 48497u, _wgslsmith_mult_u32(1u, reverseBits(56701u)))), 1i);
    let var_1 = max((vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, u_input.c, 1i), vec3<i32>(39640i, -1i, u_input.a)), ~var_0.c, 1i, firstTrailingBit(var_0.c)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18220u, 1u, var_0.b.x), vec4<u32>(var_0.a, 54172u, 0u, var_0.b.x)) % vec4<u32>(32u))) >> (~(select(vec4<u32>(33423u, 4294967295u, var_0.b.x, var_0.b.x), vec4<u32>(1u, var_0.b.x, 34283u, var_0.b.x), false) & _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, var_0.a, 4294967295u, var_0.b.x), vec4<u32>(var_0.b.x, 1u, 1u, 0u))) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, -1i, var_0.c, u_input.c), -vec4<i32>(22737i, -14058i, -41497i, var_0.c), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-11743i, var_0.c, -14815i, 1i), vec4<i32>(13053i, -4424i, 56152i, var_0.c)))));
    var_0 = Struct_1(~(var_0.b.x | 1u), var_0.b | (~var_0.b & var_0.b), var_1.x);
    var var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_mod_u32(7799u, max(1u, var_0.b.x)), ~var_0.b.x), var_0.b, i32(-1i) * -firstLeadingBit(15461i));
    var_2 = Struct_1(min(80035u, var_2.a & ~0u), vec3<u32>(~4294967295u, var_2.b.x, min(~52106u, var_0.b.x)) & vec3<u32>(select(var_2.b.x, 79010u << (0u % 32u), false), 1u >> (var_2.b.x % 32u), ~var_0.a), -_wgslsmith_mult_i32(var_2.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 0i, -2147483647i), var_1.wwy)));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~max(var_2.a, var_0.a), var_2.b.x, 50987u), abs(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 57463u, 1u, 78586u), vec4<u32>(var_2.b.x, var_0.a, var_0.a, var_2.b.x)), select(vec4<u32>(var_0.b.x, 4294967295u, 98907u, 74715u), vec4<u32>(var_0.a, var_0.a, var_2.b.x, 60049u), vec4<bool>(true, true, true, true)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(arg_2.x, 4294967295u, arg_3.b.x, arg_2.x) ^ vec4<u32>(arg_3.b.x, 69044u, 1u, arg_3.b.x))), ~countOneBits(vec4<u32>(6253u, arg_3.a, 1u, arg_2.x) & vec4<u32>(arg_3.a, arg_3.b.x, arg_3.a, 7485u)) | ~vec4<u32>(24977u, arg_2.x, func_2(), arg_2.x));
    let var_1 = -(~countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1200i, arg_3.c), vec2<i32>(0i, u_input.a))) << (~vec2<u32>(17873u | var_0.x, func_3(arg_3)) % vec2<u32>(32u)));
    let var_2 = firstTrailingBit(-2147483647i);
    var_0 = min(_wgslsmith_add_vec4_u32((vec4<u32>(var_0.x, 92313u, var_0.x, 0u) | reverseBits(vec4<u32>(var_0.x, arg_2.x, arg_2.x, arg_2.x))) << (vec4<u32>(firstTrailingBit(0u), countOneBits(4294967295u), 2701u, abs(var_0.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(88037u, 42254u, 73621u, 0u), vec4<u32>(12500u, arg_2.x, 17046u, 1u)), vec4<u32>(arg_3.a, 1u, var_0.x, 13382u)), ~(~vec4<u32>(62372u, arg_2.x, 0u, 1u)))), min(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_3.b.x, arg_2.x, 73431u)), abs(vec4<u32>(arg_3.b.x, var_0.x, arg_2.x, arg_3.b.x))), vec4<u32>(~arg_3.a, 1u, arg_3.b.x, ~0u)));
    var_0 = abs(countOneBits(countOneBits(vec4<u32>(var_0.x, arg_3.b.x, 2605u, arg_3.b.x) | vec4<u32>(var_0.x, 0u, arg_2.x, 0u))));
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(68273u, 39608u, 615u)) | 1u, ~(4294967295u << (func_1(false, vec4<bool>(true, true, true, true), vec2<u32>(53219u, 0u), Struct_1(0u, vec3<u32>(1u, 0u, 0u), u_input.b)) % 32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(13112u, 1u, 1u), ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 83067u, 20450u), vec3<u32>(4294967295u, 46836u, 37123u)), firstTrailingBit(vec3<u32>(23790u, 1u, 101883u)), true)), u_input.a & 34094i);
    var_0 = Struct_1(_wgslsmith_sub_u32(32392u, var_0.a), firstLeadingBit(~countOneBits(var_0.b)), ~(-1672i));
    var var_1 = vec3<i32>(reverseBits(var_0.c), _wgslsmith_clamp_i32(u_input.c, -5145i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -27487i, 0i), vec4<i32>(var_0.c, 2147483647i, -36335i, var_0.c)), u_input.a), 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.c, -51823i), reverseBits(-vec3<i32>(-2147483647i, 1i, u_input.b))) | _wgslsmith_mult_i32(0i & (0i >> (var_0.a % 32u)), -select(var_0.c, var_0.c, false)));
    let var_2 = vec3<f32>(-1120f, -110f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-365f, -1560f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(256f, -115f, false)), _wgslsmith_f_op_f32(min(674f, 442f)))))));
    var var_3 = vec2<i32>(var_1.x, _wgslsmith_add_i32(var_1.x, _wgslsmith_mod_i32(-11509i, -39628i)) & -29687i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_1(true, vec4<bool>(false, true, true, false), var_0.b.zz, Struct_1(var_0.a, vec3<u32>(var_0.a, 42386u, 0u), 54179i)) & max(var_0.a, 0u), _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(var_0.b.yx)), var_0.b.yy), ~firstLeadingBit(_wgslsmith_div_u32(1u, var_0.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b.x, 1u, var_0.a, 38719u), vec4<u32>(0u << (var_0.a % 32u), firstLeadingBit(var_0.b.x), var_0.a << (var_0.a % 32u), 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1746f, var_2.x, var_2.x, -702f) - vec4<f32>(var_2.x, var_2.x, var_2.x, -2100f)) * vec4<f32>(var_2.x, -429f, 167f, var_2.x))) + vec4<f32>(_wgslsmith_f_op_f32(662f - 1432f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1273f, -257f)))), -1044f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_2, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1000f, var_2.x))))))));
}

