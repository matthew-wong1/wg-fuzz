struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    var var_0 = 1059f;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1305f)), -420f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1526f)), -1000f), _wgslsmith_f_op_f32(f32(-1f) * -466f)))), arg_1));
    let var_2 = firstLeadingBit(countOneBits(~0u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1));
    var var_3 = -2147483647i;
    return ~min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_2, firstTrailingBit(36416u)), ~select(29494u, 1u, arg_1), var_2), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, abs(42843u), var_2, var_2), ~vec4<u32>(var_2, var_2, var_2, var_2)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> vec3<bool> {
    var var_0 = vec4<i32>(~_wgslsmith_add_i32(_wgslsmith_mult_i32(~arg_1.x, min(u_input.a, u_input.a)), arg_1.x), u_input.a << ((func_3(-vec4<i32>(arg_1.x, u_input.a, -1i, arg_1.x), true) & 1u) % 32u), (countOneBits(-1i) << (1u % 32u)) | u_input.a, 1i);
    let var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(arg_0.a, arg_0.a) & (~vec4<u32>(1u, arg_0.a.x, arg_0.a.x, arg_2) >> (vec4<u32>(~1u, arg_0.b.x, _wgslsmith_dot_vec4_u32(arg_0.a, arg_0.b), arg_0.b.x) % vec4<u32>(32u))), firstLeadingBit(arg_0.b) & max(arg_0.a, select(select(arg_0.b, arg_0.a, vec4<bool>(true, true, true, false)), countOneBits(arg_0.b), arg_1.x < 2147483647i)));
    let var_2 = Struct_1(~(~(~vec4<u32>(arg_0.b.x, var_1.a.x, 44182u, var_1.b.x))), vec4<u32>(36210u, ~_wgslsmith_mod_u32(~var_1.a.x, select(4294967295u, 30588u, true)), _wgslsmith_dot_vec3_u32(abs(arg_0.a.zyx), vec3<u32>(arg_2, ~arg_2, _wgslsmith_mult_u32(44530u, var_1.b.x))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 29967u), vec2<u32>(var_1.b.x, arg_0.b.x)) | ~arg_0.a.x)));
    let var_3 = Struct_1(~arg_0.b >> (arg_0.b % vec4<u32>(32u)), ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(var_1.a << (var_1.a % vec4<u32>(32u)), vec4<u32>(arg_0.a.x, 11790u, 11214u, 4294967295u), var_2.b)));
    var_0 = vec4<i32>(-1322i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_1, _wgslsmith_add_vec3_i32(select(arg_1, vec3<i32>(-5028i, u_input.a, u_input.a), vec3<bool>(true, true, false)), ~vec3<i32>(u_input.a, -1i, arg_1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, var_0.x, arg_1.x), abs(var_0.yxy), arg_1)), arg_1), firstTrailingBit(1i), var_0.x);
    return !vec3<bool>(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), any(vec2<bool>(true, true)), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> vec4<u32> {
    let var_0 = ~countOneBits(-reverseBits(-u_input.a));
    let var_1 = Struct_2(!select(select(select(vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, arg_1), true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(true, !arg_1, true), vec3<bool>(arg_1 || arg_1, arg_1, true)), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(11765u, 58391u, 67641u), firstLeadingBit(vec3<u32>(4294967295u, 876u, 27595u))), firstLeadingBit(abs(63173u)), _wgslsmith_mod_u32(1u, 9612u), abs(~1u)), ~max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 98603u, 6095u, 4294967295u))), Struct_1(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 36130u), func_3(abs(vec4<i32>(u_input.a, 30469i, -4380i, var_0)), arg_1), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 36705u), vec2<u32>(0u, 3842u)), _wgslsmith_sub_u32(~1u, ~4294967295u)), ~(~select(vec4<u32>(88482u, 1u, 51621u, 12482u), vec4<u32>(0u, 4294967295u, 0u, 27849u), vec4<bool>(true, arg_1, true, true)))));
    let var_2 = Struct_1(vec4<u32>(var_1.b.a.x, abs(firstTrailingBit(0u)), _wgslsmith_dot_vec4_u32(~var_1.c.b, var_1.c.a), var_1.c.b.x), firstLeadingBit(vec4<u32>(var_1.b.a.x, ~min(111341u, 34650u), select(~var_1.b.a.x, ~0u, false), 9357u >> (_wgslsmith_add_u32(0u, var_1.b.b.x) % 32u))));
    let var_3 = firstLeadingBit(0u);
    var var_4 = vec2<bool>(var_1.a.x, true);
    return ~(~(~(~vec4<u32>(0u, var_1.c.b.x, var_3, 4294967295u) << (vec4<u32>(var_3, var_2.a.x, 4294967295u, 73173u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 193f, _wgslsmith_f_op_f32(max(arg_0, -862f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, arg_0, 1284f, arg_0) - vec4<f32>(arg_0, arg_0, -248f, arg_0)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 138f, arg_0, -344f)))))));
    let var_1 = Struct_1(func_4(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 10511i, -2147483647i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), func_2(Struct_1(vec4<u32>(1u, 5532u, 21684u, 0u), vec4<u32>(17456u, 4294967295u, 41227u, 41439u)), vec3<i32>(u_input.a, u_input.a, u_input.a), 51559u)))), vec4<u32>(~(~min(4294967295u, 0u)), 91778u, ~(reverseBits(30832u) | _wgslsmith_clamp_u32(34420u, 85646u, 1u)), firstLeadingBit(~(~48058u))));
    let var_2 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -844f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * arg_0), arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x);
    let var_3 = Struct_2(vec3<bool>(false, true, !(u_input.a >= ~0i)), var_1, var_1);
    var var_4 = Struct_1(~(var_1.b & vec4<u32>(~var_1.a.x, ~var_1.b.x, ~23838u, _wgslsmith_add_u32(0u, var_3.b.a.x))), ~(min(_wgslsmith_div_vec4_u32(var_1.a, var_3.c.b), countOneBits(vec4<u32>(7860u, 0u, 4294967295u, 1u))) >> (vec4<u32>(firstTrailingBit(1u), var_3.c.a.x, 46090u, max(var_1.a.x, var_3.c.b.x)) % vec4<u32>(32u))));
    return ~(_wgslsmith_add_vec4_u32(vec4<u32>(~var_1.a.x, 40405u, ~4294967295u, var_3.c.b.x), _wgslsmith_div_vec4_u32(~vec4<u32>(var_4.a.x, 10289u, 18302u, var_3.c.b.x), min(vec4<u32>(1u, var_3.b.a.x, 99367u, var_4.a.x), vec4<u32>(var_1.a.x, var_3.c.a.x, var_1.a.x, 88434u)))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(62169u), var_3.b.b.x, min(var_1.b.x, 9242u), var_1.b.x), select(var_1.a, ~var_1.a, var_3.a.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<u32>(1u, ~1u, reverseBits(1u), ~16571u) >> ((firstLeadingBit(func_1(-120f)) ^ (firstTrailingBit(vec4<u32>(4294967295u, 40909u, 0u, 1u)) | ~vec4<u32>(23217u, 0u, 1u, 0u))) % vec4<u32>(32u)), ~(~vec4<u32>(78499u, _wgslsmith_div_u32(29074u, 4294967295u), 1u, 72929u)));
    let var_1 = all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1219f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(715f, -687f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(752f, 592f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-267f - -1446f)))), vec2<bool>(var_1, ~u_input.a < firstTrailingBit(u_input.a)))), _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-642f))) - 1f) + -710f));
}

