struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, -2096f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b, -1612f), vec2<f32>(arg_0.b, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1677f, arg_0.b)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(259f, arg_0.b), vec2<f32>(-1089f, arg_0.b)))))), select(select(vec2<bool>(true, true), !(!arg_0.a.wx), select(true, arg_0.b != arg_0.b, false)), vec2<bool>(arg_0.a.x, (arg_0.b >= 190f) || any(arg_0.a.zzw)), false)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-arg_0.b)))));
    let var_2 = arg_1.x;
    var var_3 = Struct_3(true && arg_1.x, var_1.x, countOneBits(vec2<u32>(4294967295u, arg_2.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~1u, _wgslsmith_mult_u32(arg_0.c.a, 0u), firstLeadingBit(93968u), 4294967295u >> (0u % 32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(arg_0.c.a), arg_2.x << (arg_2.x % 32u), abs(1u), arg_0.c.a), vec4<u32>(arg_2.x, arg_0.c.a, arg_0.c.a, arg_2.x) & ~vec4<u32>(arg_0.c.a, arg_2.x, 4294967295u, arg_2.x))), _wgslsmith_f_op_f32(-arg_0.b));
    let var_4 = u_input.b;
    return 23867u <= _wgslsmith_clamp_u32(32517u, 0u, 18113u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = ~abs(1u);
    let var_1 = Struct_2(select(vec4<bool>(!any(vec2<bool>(arg_1, true)), !arg_1 && true, true, arg_1), !select(!vec4<bool>(true, arg_0, false, arg_0), select(vec4<bool>(true, arg_1, arg_0, true), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, false, arg_0, false)), vec4<bool>(arg_1, true, arg_1, false)), select(true, false, any(!vec4<bool>(true, arg_0, arg_1, true)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), Struct_1(34709u, true, u_input.b), vec2<i32>(~abs(~u_input.a.x), -36738i));
    var var_2 = arg_2;
    let var_3 = !select(!func_3(Struct_2(var_1.a, var_1.b, var_1.c, var_1.d), vec2<bool>(true, false), vec3<u32>(var_1.c.a, var_1.c.a, var_1.c.a)), !any(var_1.a), any(vec2<bool>(false, arg_0))) && !select(!(!arg_0), true, -1000f <= _wgslsmith_f_op_f32(-var_1.b));
    var var_4 = ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.c.a, var_1.c.a, 52105u), vec3<u32>(var_1.c.a, var_1.c.a ^ 1912u, reverseBits(var_1.c.a))));
    return -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-u_input.a.x, 1i, -11017i), ~firstLeadingBit(vec3<i32>(u_input.a.x, 0i, u_input.b))), abs(-vec3<i32>(1i, -60708i, 0i)));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(func_2(true, (any(vec2<bool>(true, true)) || true) && true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1165f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), firstLeadingBit(u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    let var_2 = ~(~(47929u & countOneBits(firstTrailingBit(50436u))));
    let var_3 = _wgslsmith_mult_i32(min(39096i, var_0), _wgslsmith_sub_i32(12191i, 1i) ^ -var_0);
    var var_4 = Struct_3(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - _wgslsmith_f_op_f32(ceil(-1000f))), min(vec2<u32>(20370u, max(_wgslsmith_sub_u32(67844u, var_2), var_2)), ~(~(~vec2<u32>(24742u, 5052u)))), var_2, _wgslsmith_f_op_f32(-937f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -1398f) + -719f)));
    return vec2<bool>(true, var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = vec2<bool>(false, true);
    var_1 = func_1();
    let var_2 = abs(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 33617u, 4294967295u), vec3<u32>(var_0, var_0, 11054u)), _wgslsmith_sub_vec3_u32(vec3<u32>(68001u, 4047u, var_0), vec3<u32>(var_0, var_0, var_0))), ~max(var_0, var_0), var_0, var_0)) & vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~55595u, var_0), var_0, var_0), 1u, 17976u, ~_wgslsmith_clamp_u32(44341u, 18494u, var_0) << (_wgslsmith_dot_vec3_u32(vec3<u32>(25266u, 0u, var_0), vec3<u32>(2551u, 4294967295u, 42548u)) % 32u));
    var var_3 = Struct_3(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(923f - 1000f))) - -280f))), vec2<u32>(~max(var_2.x, var_2.x), _wgslsmith_add_u32(var_0, 4294967295u)), ~(~var_2.x), 263f);
    let var_4 = var_1.x;
    let var_5 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(countOneBits(max(abs(vec4<i32>(1i, u_input.a.x, 61722i, -89213i)), vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 33613i))), _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.b, u_input.a.x)), vec4<i32>(func_2(false, true, var_3.b), u_input.a.x | -1801i, u_input.a.x, u_input.b))));
}

