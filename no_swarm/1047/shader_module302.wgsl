struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = ~(_wgslsmith_mult_u32(firstTrailingBit(1u), 19453u) << (firstTrailingBit(60117u) % 32u));
    var var_1 = 30088u;
    let var_2 = vec4<u32>(var_0, var_0, abs(reverseBits(4294967295u)), _wgslsmith_clamp_u32(60425u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), ~vec2<u32>(var_0, var_0)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(65720u, var_0, var_0, var_0), vec4<u32>(27465u, 0u, 1u, var_0)), 4294967295u << (var_0 % 32u))));
    let var_3 = Struct_1(abs(~min(_wgslsmith_mod_u32(var_0, var_2.x), _wgslsmith_clamp_u32(24993u, 1u, var_0))), true, _wgslsmith_sub_i32(min(-1i, -countOneBits(1i)), 15492i), arg_0.c.xxz, ~vec2<u32>(0u, 28969u) >> (vec2<u32>(19411u, ~var_0) % vec2<u32>(32u)));
    var var_4 = any(vec2<bool>(true, arg_0.c.x));
    return any(!arg_0.c);
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(39680u, true, _wgslsmith_mod_i32(u_input.a.x, arg_0), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(select(true, true, true), true, true)), vec3<bool>(func_3(Struct_2(825f, vec4<f32>(1785f, 1000f, -1364f, 1710f), vec4<bool>(true, false, true, true))), all(vec3<bool>(true, false, true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(false, func_3(Struct_2(1416f, vec4<f32>(578f, 961f, 323f, -145f), vec4<bool>(true, false, false, false))), true))), vec2<u32>(96299u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 48109u), ~vec2<u32>(4294967295u, 1u)), 1u));
    let var_1 = true;
    var_0 = Struct_1(4202u, !all(!(!var_0.d.xz)), ~u_input.b, select(!vec3<bool>(false, var_0.d.x, var_0.b), var_0.d, !var_1), ~_wgslsmith_add_vec2_u32(max(vec2<u32>(var_0.a, var_0.a) >> (var_0.e % vec2<u32>(32u)), var_0.e), ~vec2<u32>(1u, 11506u)));
    let var_2 = false;
    var_0 = Struct_1(~var_0.e.x, any(!(!select(vec3<bool>(true, var_2, false), vec3<bool>(var_1, var_2, var_1), vec3<bool>(true, var_0.d.x, false)))), 2147483647i, vec3<bool>(!var_1, all(select(select(vec3<bool>(var_2, var_0.d.x, var_1), var_0.d, true), !var_0.d, var_0.d)), var_0.b), var_0.e);
    return u_input.a.x > abs(-57788i);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_1(1u, all(!(!select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, true, false), arg_3.x))), 24500i, !vec3<bool>(arg_3.x, true, true && func_2(18529i)), vec2<u32>(9225u, _wgslsmith_mod_u32(~5291u, _wgslsmith_add_u32(arg_2, 35676u)) & (firstLeadingBit(arg_2) << (~4294967295u % 32u))));
    let var_1 = firstLeadingBit(~(~var_0.e >> (countOneBits(var_0.e) % vec2<u32>(32u)))) & _wgslsmith_sub_vec2_u32(~var_0.e, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(max(var_0.e, vec2<u32>(arg_0, arg_0)), ~vec2<u32>(18977u, arg_1)), max(var_0.e, vec2<u32>(arg_2, arg_1))));
    var var_2 = 1i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-101f, _wgslsmith_f_op_f32(f32(-1f) * -677f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(283f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1165f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) + _wgslsmith_f_op_f32(1000f + -144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1452f))))), 1287f);
    return ~(~(~firstLeadingBit(u_input.b ^ u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~0u, _wgslsmith_sub_u32(firstLeadingBit(79076u), 77582u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(12909u, 16308u, 1u), vec3<u32>(9326u, 4294967295u, 104389u))), ~(~33746u), vec2<bool>(-u_input.b < ~u_input.a.x, true));
    let var_1 = vec3<u32>(((_wgslsmith_mod_u32(21193u, 41147u) << (1u % 32u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9885u, 4294967295u, 1u, 0u), vec4<u32>(54029u, 18466u, 4065u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(55416u, 0u), vec2<u32>(0u, 1u)))) ^ (1u << (0u % 32u)), 50593u, 0u);
    let var_2 = _wgslsmith_sub_i32(~abs(-1i), 21561i);
    let var_3 = ~firstTrailingBit(_wgslsmith_div_u32(var_1.x, 1u) ^ var_1.x);
    let var_4 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !any(vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(var_3, ~23679u, firstLeadingBit(var_3))) ^ _wgslsmith_clamp_vec3_u32(min(vec3<u32>(4294967295u, 25251u, var_1.x), vec3<u32>(var_3, var_1.x, var_1.x)) ^ (var_1 ^ var_1), select(vec3<u32>(var_1.x, var_1.x, 0u), abs(vec3<u32>(var_1.x, 67454u, 7933u)), !var_4), ~var_1 << (var_1 % vec3<u32>(32u))), -27583i, firstTrailingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, var_0, 2147483647i, u_input.b), vec4<i32>(-53309i, 21798i, -50768i, u_input.b))), vec4<i32>(u_input.b << (66569u % 32u), _wgslsmith_add_i32(46256i, u_input.a.x), -25907i, max(19581i, 6148i)), abs(vec4<i32>(u_input.a.x, -26690i, 0i, 6647i) ^ vec4<i32>(-21368i, -2147483647i, var_2, -12177i)))), _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(var_3), var_3, var_3 ^ 4294967295u, ~var_1.x) << (vec4<u32>(select(73964u, var_3, var_4.x), ~var_1.x, _wgslsmith_mult_u32(25623u, var_3), var_3) % vec4<u32>(32u)), abs(vec4<u32>(var_3 | var_1.x, 1u, 70369u ^ var_1.x, 116719u))));
}

