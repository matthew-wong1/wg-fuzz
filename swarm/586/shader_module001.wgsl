struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32) -> vec4<i32> {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(547f, 1308f))))), _wgslsmith_f_op_f32(ceil(-156f))), _wgslsmith_f_op_f32(ceil(140f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), -214f), true | select(false, false, true))))), var_0.x);
    let var_1 = 73925u;
    var_0 = vec2<f32>(1350f, _wgslsmith_f_op_f32(f32(-1f) * -624f));
    return countOneBits(firstLeadingBit(min(u_input.a, _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 0i, -15281i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 9686i, 25556i), u_input.a)))));
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(all(vec2<bool>(true, true)) != (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(820f, -164f, false)))) > _wgslsmith_f_op_f32(f32(-1f) * -650f)), !(4294967295u != abs(_wgslsmith_add_u32(u_input.c.x, u_input.b))), !(true | select(4294967295u < u_input.d.x, select(false, true, true), true)));
    var var_1 = all(!(!vec4<bool>(any(vec3<bool>(true, false, var_0.x)), true, true, any(vec4<bool>(false, true, true, var_0.x)))));
    let var_2 = Struct_1(502f, vec4<i32>(~func_2(3994u).x, _wgslsmith_clamp_i32(u_input.a.x, (1i ^ u_input.a.x) << (_wgslsmith_add_u32(u_input.b, u_input.d.x) % 32u), u_input.a.x), max(8754i << (u_input.d.x % 32u), _wgslsmith_div_i32(u_input.a.x, 12591i)) & _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -27338i), ~(~reverseBits(1u)));
    var var_3 = vec4<bool>((var_2.a > _wgslsmith_f_op_f32(step(var_2.a, var_2.a))) & all(vec3<bool>(true & var_0.x, true, true)), var_0.x, all(select(select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, var_0.x)), vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(var_0.x, var_0.x, all(vec3<bool>(var_0.x, false, true))))), any(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, false), vec3<bool>(var_0.x, false, false)))) && all(var_0.zy));
    var var_4 = Struct_3(-587f, Struct_1(var_2.a, vec4<i32>(-5085i, 7014i & -var_2.b.x, _wgslsmith_dot_vec3_i32(var_2.b.xwy, var_2.b.zxw) << (var_2.c % 32u), min(var_2.b.x, -8822i)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c), ~vec2<u32>(u_input.b, 53319u)), ~var_2.c)), vec3<u32>(var_2.c, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.b), vec3<u32>(7750u, 4294967295u, 0u)), ~u_input.d)), var_2.c), Struct_1(-1000f, u_input.a, 5873u | (4294967295u | ~var_2.c)), _wgslsmith_div_vec2_u32(u_input.d.xx, vec2<u32>(countOneBits(~4294967295u), var_2.c)));
    return _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1403f + -437f), 1f)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(arg_2, u_input.a, select(u_input.c.x, u_input.d.x, false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1793f))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(53015i), arg_3.a.x, u_input.a.x, 0i), arg_0), var_0.b), 95117u);
    var var_2 = !select(!(!vec3<bool>(true, arg_1.x, arg_1.x)), select(select(vec3<bool>(arg_1.x, false, true), !vec3<bool>(false, arg_1.x, false), !arg_1.x), select(!vec3<bool>(arg_1.x, false, true), select(vec3<bool>(false, arg_1.x, false), vec3<bool>(arg_1.x, true, true), true), select(arg_1.x, false, true)), var_1.c < 6484u), true && (arg_0.x < reverseBits(2147483647i)));
    var var_3 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(min(vec3<u32>(var_1.c, u_input.d.x, 9960u), u_input.d)), u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(11186u, 0u, 4294967295u), ~u_input.d)), u_input.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -414f)))), max(func_2(4294967295u), vec4<i32>(~(-2147483647i), var_1.b.x, _wgslsmith_mult_i32(2147483647i, arg_0.x), min(-35i, var_0.b.x))), 21945u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.a, arg_2)))), _wgslsmith_f_op_f32(var_1.a - var_1.a))), ~vec4<i32>(~(-21451i), arg_0.x, u_input.a.x, 0i), 1224f);
    let var_4 = arg_3;
    return var_3.b;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = -513f;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(var_0)), func_4(_wgslsmith_add_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-49030i, u_input.a.x, arg_3.x, arg_3.x), u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, u_input.a.x, -29471i, 10594i), vec4<i32>(48628i, 2147483647i, u_input.a.x, -69331i))), func_2(arg_1)), vec2<bool>(true, -617f > _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(func_3()), Struct_4(abs(-u_input.a.xw))), vec3<u32>(u_input.d.x, ~arg_2.x, _wgslsmith_dot_vec2_u32(abs(u_input.d.zx) | arg_2.xy, vec2<u32>(1u, arg_1) ^ ~vec2<u32>(1u, 0u))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1283f)), -2730f), u_input.a, ~40644u | arg_2.x), ~arg_2.zx);
    let var_2 = -16909i;
    var var_3 = ~u_input.d.yx;
    let var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2, firstLeadingBit(select(vec4<u32>(var_3.x, arg_2.x, 0u, var_1.e.x) >> (arg_2 % vec4<u32>(32u)), vec4<u32>(38553u, 16686u, 25738u, 0u), arg_0)), vec4<u32>(51444u, ~firstLeadingBit(4294967295u), ~44649u, _wgslsmith_mod_u32(~u_input.c.x, 80587u))), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(~arg_2, _wgslsmith_sub_vec4_u32(vec4<u32>(53101u, 4104u, 31077u, 4294967295u), vec4<u32>(1u, 63191u, 0u, var_3.x)), vec4<u32>(var_3.x, 66810u, 79612u, 5768u))));
    return Struct_2(~reverseBits(~(~u_input.d.x)), var_1.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.d.a, var_1.d.a), vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(335f - var_0)), -1000f))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(549f)) + var_1.d.a) + var_1.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(vec3<bool>(false, false, select(true, u_input.d.x < u_input.b, true))), 17559u, ~(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.c.x, u_input.b, 1u, u_input.b)), vec4<u32>(26179u, u_input.d.x, u_input.c.x, 4294967295u), vec4<bool>(false, false, false, false)) >> (~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 44779u)) % vec4<u32>(32u))), vec2<i32>(1i, 1i));
    var var_1 = max(_wgslsmith_add_u32(~u_input.d.x, abs(u_input.d.x)) ^ _wgslsmith_div_u32(0u, u_input.c.x), countOneBits(u_input.b << (1u % 32u)));
    let var_2 = any(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(true, any(vec2<bool>(true, false)), false))));
    var var_3 = ~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(65568u, 4294967295u, u_input.b, 46092u), vec4<u32>(var_0.a, 4294967295u, u_input.b, u_input.b)) | ~vec4<u32>(7124u, u_input.d.x, 1u, 61304u)));
    let var_4 = _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(trunc(2099f)));
    var_0 = Struct_2(106367u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - -936f), var_0.b.a)), var_0.b.b, ~22309u), var_0.c, select(vec4<i32>(~u_input.a.x, -u_input.a.x >> (var_0.b.c % 32u), u_input.a.x, 1i), ~(~u_input.a), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x - var_4) + 236f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-4475i, 1194f, vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), -1556f));
}

