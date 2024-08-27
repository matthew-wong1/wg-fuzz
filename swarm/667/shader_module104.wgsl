struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-904f, -843f, arg_2.b.x) * vec3<f32>(arg_2.a, 772f, arg_2.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-674f, -1000f, -1186f) + vec3<f32>(arg_2.b.x, 232f, arg_2.a))))), vec3<f32>(arg_2.a, 987f, -1911f))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(197f, _wgslsmith_f_op_f32(var_0.x - 517f))))));
    let var_2 = arg_2;
    var_1 = _wgslsmith_f_op_f32(-2451f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-464f, _wgslsmith_f_op_f32(var_0.x - 971f)))));
    let var_3 = ~(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, 24154i), ~vec2<i32>(-14170i, 0i)), vec2<i32>(20266i << (u_input.a.x % 32u), ~21141i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -53137i), vec2<i32>(3136i, 1i), vec2<i32>(-15307i, -1i))) >> (vec2<u32>(~u_input.a.x, ~43786u) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(select(var_0.x, var_2.a, arg_0.x)))), all(select(!vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(true, arg_3.x, false, arg_3.x), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_3.x, arg_0.x, false, true), vec4<bool>(arg_3.x, true, false, arg_3.x)))))) + -246f);
}

fn func_2() -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-553f)), 1f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_4(-618f, vec2<f32>(-473f, -1738f)), vec2<bool>(false, true)))))), countOneBits(~(-2147483647i)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 8319i), _wgslsmith_mult_vec2_i32(vec2<i32>(-25920i, -1i) >> (u_input.a.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 20427i), vec2<i32>(2923i, 1i)))));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = 722f;
    let var_2 = Struct_2(!select(!select(vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(var_0.b, true, true, true), vec4<bool>(var_0.b, var_0.b, true, true)), select(vec4<bool>(false, true, var_0.b, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), var_0.b)), any(select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.b, true, var_0.b), true))), Struct_1(~11270i, select(min(vec4<u32>(u_input.a.x, 108828u, 4873u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(2214u, u_input.a.x, 1u, u_input.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b))) ^ min(abs(vec4<u32>(u_input.a.x, 16301u, 11586u, 12546u)), firstLeadingBit(vec4<u32>(0u, u_input.a.x, 55800u, u_input.a.x)))), u_input.a ^ u_input.a, 32807i);
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(-334f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x), var_0.b);
    var_1 = var_0.a.x;
    return -16357i << (min(_wgslsmith_clamp_u32(~0u, ~_wgslsmith_div_u32(59576u, u_input.a.x), _wgslsmith_div_u32(35927u, _wgslsmith_mult_u32(var_2.c.x, var_2.b.b.x))), _wgslsmith_clamp_u32(1u, 1u, u_input.a.x >> (reverseBits(1u) % 32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~func_1(), ~(_wgslsmith_sub_i32(44581i << (u_input.a.x % 32u), max(0i, 0i)) | 1i), 1i <= select(i32(-1i) * -2147483647i, -20094i, true));
    let var_1 = 2147483647i;
    var_0 = max(func_1(), var_1);
    let var_2 = !any(vec4<bool>(select(true, true, true), select(select(true, true, false), true, any(vec4<bool>(true, true, false, false))), true, true));
    var_0 = -1i;
    let var_3 = Struct_2(vec4<bool>(var_2, !var_2 & (all(vec3<bool>(var_2, var_2, true)) && true), false, var_2), Struct_1(1i, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<u32>(0u, u_input.a.x, 1u, 0u), vec4<u32>(9543u, u_input.a.x, u_input.a.x, 4294967295u), true), ~vec4<u32>(1u, u_input.a.x, 55236u, 58980u)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 47661u, 42830u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)) | firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))), ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 100673u), vec2<u32>(u_input.a.x, u_input.a.x))), ~u_input.a.x, ~u_input.a.x | abs(u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(40851i, -1i, -2147483647i, var_1), vec4<i32>(var_1, 53272i, var_1, 1i)), min(-37201i, var_1)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1, var_1) << (u_input.a % vec3<u32>(32u)), vec3<i32>(-1i, 22079i, -1i)), ~vec3<i32>(var_1, 0i, var_1) >> (~u_input.a % vec3<u32>(32u)))));
    var var_4 = Struct_1(-23767i, ~(~var_3.b.b));
    var_0 = countOneBits(-1i) << (_wgslsmith_mod_u32(abs(85648u), var_3.b.b.x) % 32u);
    var var_5 = select(var_4.b, var_4.b, vec4<bool>(var_2, var_3.a.x, u_input.a.x > 0u, !(select(var_3.b.a, var_1, var_2) > 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1));
}

