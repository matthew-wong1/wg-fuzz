struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-arg_0.x, _wgslsmith_sub_i32(0i, arg_0.x))), ~arg_0), arg_0);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(33321u, countOneBits(58396u), 1u), ~max(vec3<u32>(u_input.a.x, u_input.a.x, 29023u), vec3<u32>(u_input.a.x, 13858u, u_input.a.x))), max(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(4294967295u, 0u, 1u)) % vec3<u32>(32u)), vec3<u32>(~u_input.a.x, u_input.a.x & 30619u, u_input.a.x))) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(min(min(vec4<u32>(1u, 71513u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 106995u, u_input.a.x)), vec4<u32>(27939u, 0u, 70347u, 143584u)), ~select(vec4<u32>(u_input.a.x, u_input.a.x, 9646u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 125232u), vec4<bool>(true, arg_1, arg_1, true))), u_input.a.x & 26289u, 1u);
    var_2 = firstLeadingBit(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(u_input.a.x, 73060u, 0u)))) << (~vec3<u32>(~_wgslsmith_add_u32(u_input.a.x, 38365u), ~(u_input.a.x << (1u % 32u)), reverseBits(41167u)) % vec3<u32>(32u));
    let var_3 = var_0.x;
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<i32> {
    var var_0 = func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, 1i), -vec2<i32>(-13470i, arg_1)), all(vec4<bool>(true, false, select(true, true, any(vec3<bool>(true, true, true))), true)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1097f, 242f)) * vec2<f32>(-675f, -277f)))));
    var_0 = select(u_input.a, vec2<u32>(var_0.x, 0u), !vec2<bool>(any(vec2<bool>(false, true)) && select(true, true, true), ~var_0.x <= u_input.a.x));
    var_0 = vec2<u32>(~var_0.x, 78678u);
    return vec2<i32>(-1i) * -(~firstTrailingBit(vec2<i32>(arg_1, arg_1)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(func_2(-650f, 2147483647i), vec2<i32>(-27732i, arg_0) ^ vec2<i32>(-21244i, 72044i)), abs(arg_0), -20093i, _wgslsmith_clamp_i32(~arg_0, 1i, 0i)), reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, arg_0, 37767i, arg_0), vec4<i32>(616i, arg_0, arg_0, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, 1683i, arg_0), vec4<i32>(arg_0, arg_0, 42933i, -1i))))) & ~max(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, arg_0, -30584i, arg_0), vec4<i32>(2147483647i, 0i, arg_0, -2147483647i)), vec4<i32>(~16000i, arg_0, -41797i, arg_0));
    var var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-900f * 171f)))) - -1369f), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1803f))))), 409f));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 435f)) + 1170f), _wgslsmith_f_op_f32(-1075f + var_1.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-235f, -353f) - vec2<f32>(-1502f, var_1.x)) - _wgslsmith_f_op_vec2_f32(-var_1.xx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.yx)) - var_1.xx))));
    var var_3 = arg_0;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1658f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-35224i, -13618i), 1i) & reverseBits(select(-21176i, -1i, false)), 24998i), _wgslsmith_clamp_vec2_u32(abs((vec2<u32>(u_input.a.x, u_input.a.x) ^ u_input.a) | (vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a)), u_input.a, abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))));
    let var_1 = Struct_3(func_1(~0i | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, 47934i) << (vec4<u32>(u_input.a.x, 61491u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), abs(vec4<i32>(14911i, -28414i, 0i, 2147483647i))), firstTrailingBit(_wgslsmith_mod_vec2_u32(select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), true), vec2<u32>(u_input.a.x, u_input.a.x)))).a, Struct_2(var_0.a), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, var_0.a.a.x) * vec2<f32>(var_0.a.a.x, var_0.a.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(15800u, _wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.a.x, var_1.c.a.a.x, var_1.a.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2757f, var_1.b.a.a.x) + _wgslsmith_f_op_f32(sign(var_0.a.a.x))), _wgslsmith_f_op_f32(var_1.c.a.a.x * _wgslsmith_div_f32(-327f, var_1.b.a.a.x)), 1640f, var_0.a.a.x)), -vec4<i32>(1i, 1i, 1i, 1i));
}

