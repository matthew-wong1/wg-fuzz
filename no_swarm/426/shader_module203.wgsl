struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.zy);
    let var_1 = Struct_2(18852u, 1u, Struct_1(36214u, u_input.b, u_input.c.x), (1i & -arg_1.c.c) == 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.x, -949f, false))))));
    var var_2 = arg_0;
    var var_3 = Struct_2(~(0u ^ ~countOneBits(var_1.c.b.x)), ~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), Struct_1((abs(u_input.a.x) ^ _wgslsmith_clamp_u32(4294967295u, arg_1.b, 24113u)) ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 9908u), u_input.b.x << (4294967295u % 32u)), u_input.a.wzy, u_input.c.x), var_1.d, _wgslsmith_f_op_f32(floor(var_0.x)));
    var var_4 = Struct_1(~arg_1.c.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(max(var_3.a, var_3.c.b.x), 4294967295u, ~var_1.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a, 79887u), var_3.c.b.xy), _wgslsmith_add_u32(var_3.b, var_3.c.b.x), select(14990u, var_1.b, arg_1.d)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, 4294967295u, 52595u)), countOneBits(u_input.b))) << (u_input.b % vec3<u32>(32u)), -arg_1.c.c);
    return 1u >> (~var_3.c.a % 32u);
}

fn func_2(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, arg_0, false))))), arg_0)));
    let var_1 = Struct_2(~(~(~(u_input.a.x | u_input.b.x))), _wgslsmith_div_u32(u_input.d, u_input.b.x) | (abs(firstLeadingBit(0u)) >> (_wgslsmith_clamp_u32(firstLeadingBit(0u), ~u_input.a.x, func_3(Struct_3(var_0.xx, vec3<bool>(false, true, false)), Struct_2(u_input.d, u_input.a.x, Struct_1(65644u, vec3<u32>(u_input.d, 9212u, u_input.a.x), u_input.c.x), false, var_0.x), vec4<f32>(arg_0, 162f, arg_0, 1402f))) % 32u)), Struct_1(~firstLeadingBit(min(4294967295u, u_input.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.a.x, u_input.b.x ^ 51811u), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 34559u, _wgslsmith_mod_u32(0u, u_input.d))), -58095i), false, _wgslsmith_f_op_f32(trunc(arg_0)));
    let var_2 = var_1.d;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(-630f)), _wgslsmith_f_op_f32(step(arg_0, var_0.x)), var_1.e);
    var var_4 = ~func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy)), vec3<bool>(true, true, true)), Struct_2(u_input.d, ~abs(var_1.a), Struct_1(~1u, var_1.c.b, u_input.c.x << (var_1.c.b.x % 32u)), var_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2497f - -189f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2602f, -189f, 1457f, var_0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1697f, 159f, arg_0, 1157f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1264f, var_1.e, 1000f), vec4<f32>(-2155f, 1029f, 197f, 1542f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(floor(641f)), var_3.x);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, -100f) - vec2<f32>(arg_1.e, arg_1.e)) - vec2<f32>(arg_1.e, -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_1.e)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.e, _wgslsmith_f_op_f32(-arg_1.e)), vec2<f32>(1551f, arg_1.e), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.d), vec2<bool>(arg_1.d, true), vec2<bool>(arg_1.d, false)), arg_1.d))))), vec3<bool>(false, true, true));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.c.zyx, _wgslsmith_add_vec3_i32(u_input.c.zxw, _wgslsmith_add_vec3_i32(u_input.c.ywz, ~countOneBits(vec3<i32>(arg_1.c.c, var_0, 33010i)))));
    var var_3 = vec4<u32>(28847u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(u_input.d), abs(5441u), u_input.a.x >> (arg_1.a % 32u)), vec3<u32>(func_3(Struct_3(var_1.a, var_1.b), Struct_2(arg_1.a, 27686u, Struct_1(13686u, vec3<u32>(2384u, 91247u, arg_1.a), 1i), arg_1.d, 481f), vec4<f32>(542f, -1082f, 176f, -1000f)), 1u, u_input.a.x)), ~4294967295u, 12130u);
    var var_4 = Struct_2(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(~u_input.a.x, 0u | u_input.b.x, 1u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, var_3.x), u_input.b))), max(_wgslsmith_add_u32(4294967295u, ~0u ^ ~arg_1.a), var_3.x), arg_1.c, true, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(round(arg_1.e)))).x);
    return 43431i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x >> (abs(u_input.a.x) % 32u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -299f))))), vec3<bool>(true, any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true))));
    let var_2 = Struct_1(35167u | ~(firstLeadingBit(var_0) & 0u), _wgslsmith_sub_vec3_u32(u_input.a.wwz, u_input.a.wxz), func_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, u_input.c.x), u_input.c.x), Struct_2(~u_input.a.x, 58662u, Struct_1(4294967295u, u_input.a.xww, u_input.c.x), (false == var_1.b.x) & var_1.b.x, var_1.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a.x, -996f), _wgslsmith_f_op_f32(f32(-1f) * -135f), true)), -393f))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1349f, var_3.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.xz * var_1.a), vec2<f32>(-1534f, var_3.x), !var_1.b.x))))), vec3<bool>(!any(!vec2<bool>(false, var_1.b.x)), any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, any(var_1.b))), var_1.b.x));
    let var_5 = !var_1.b.x;
    var var_6 = all(var_1.b.zy);
    var_6 = !var_4.b.x;
    var var_7 = _wgslsmith_f_op_f32(f32(-1f) * -494f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(u_input.a.xy << (vec2<u32>(1u, u_input.d) % vec2<u32>(32u))) & (select(vec2<u32>(4294967295u, 48183u), u_input.b.xy, var_4.b.x) << (vec2<u32>(115410u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-172f, var_3.x, 1091f, -379f), _wgslsmith_div_vec4_f32(vec4<f32>(816f, -693f, -151f, var_3.x), vec4<f32>(var_3.x, var_3.x, 114f, -665f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, -1801f, 789f, var_1.a.x) + vec4<f32>(-1000f, var_3.x, -406f, var_3.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1500f, var_3.x, var_3.x, 369f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, 1000f, 1400f, var_1.a.x), vec4<f32>(171f, var_4.a.x, -610f, -1079f))))))), _wgslsmith_clamp_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(select(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 17211i, u_input.c.x), vec4<bool>(false, false, true, true)) >> (~u_input.a % vec4<u32>(32u)), vec4<i32>(u_input.c.x >> (4294967295u % 32u), var_2.c, var_2.c, i32(-1i) * -31554i)), vec4<i32>(-11421i, u_input.c.x, -1i, min(2537i, u_input.c.x)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.b.xy, vec2<u32>(63746u, var_0)), func_3(Struct_3(vec2<f32>(215f, var_1.a.x), vec3<bool>(false, true, true)), Struct_2(var_0, 0u, var_2, true, var_1.a.x), vec4<f32>(var_1.a.x, var_4.a.x, var_1.a.x, var_3.x)), ~var_2.a, var_0 ^ 4294967295u) % vec4<u32>(32u))), -u_input.c.zyz, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1057f, var_1.a.x))));
}

