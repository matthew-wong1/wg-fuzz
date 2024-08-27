struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(289f, 321f, arg_0.x) * _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(102f, arg_0.x, arg_0.x)))), arg_0))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0))));
    let var_1 = vec2<i32>(u_input.a, ~(-_wgslsmith_sub_i32(arg_1, 2147483647i)) | _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_1, -19841i, -97606i)) | ~vec3<i32>(arg_1, u_input.c, -3866i), -vec3<i32>(-19765i, 0i, u_input.c)));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(arg_0));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-698f - arg_0.x)) * -1570f), var_0.x)), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, var_1.x) & ~(~var_1.x), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(-1i, 2147483647i)), select(0i, ~arg_1, true))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(_wgslsmith_f_op_f32(round(-538f)), -905f, var_2.a))));
    return vec2<bool>(!((min(var_2.b, -8734i) <= var_2.b) || (all(vec3<bool>(false, true, false)) & false)), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(Struct_2(972f, (i32(-1i) * -7425i) | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 8116i, -2147483647i, 2147483647i), vec4<i32>(u_input.b, u_input.d, u_input.a, -20585i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, u_input.c), vec4<i32>(-25378i, 0i, u_input.a, -1963i)))));
    var var_1 = vec4<bool>(false, any(select(!select(vec4<bool>(arg_1.a.x, false, arg_1.a.x, true), vec4<bool>(arg_1.a.x, arg_1.a.x, true, false), arg_1.a.x), vec4<bool>(arg_1.a.x, !arg_1.a.x, arg_1.a.x, true & arg_1.a.x), !(true || arg_1.a.x))), !(var_0.a.a != -1877f), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, arg_1.b.x), vec2<u32>(4294967295u, arg_1.b.x), vec2<bool>(arg_1.a.x, arg_1.a.x)), arg_1.b.zz << (vec2<u32>(arg_1.b.x, arg_1.b.x) % vec2<u32>(32u))) < arg_1.b.x);
    let var_2 = var_0;
    return -1i ^ (_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, ~0i), -45629i) & ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(29897i, var_0.a.b), vec2<i32>(-1363i, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.a, var_0.a.b))));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = Struct_3(Struct_2(825f, -77866i));
    let var_1 = Struct_3(var_0.a);
    let var_2 = 47575u;
    let var_3 = !(!(!vec4<bool>(false, false, arg_0, !arg_0)));
    let var_4 = Struct_2(-836f, 7725i);
    return func_4(var_0.a.a, Struct_1(select(!var_3.zw, !func_3(vec3<f32>(var_1.a.a, var_0.a.a, var_1.a.a), -1i, var_2), true), ~_wgslsmith_add_vec3_u32(~vec3<u32>(54312u, 5741u, 1u), min(vec3<u32>(0u, 0u, 0u), vec3<u32>(var_2, 4294967295u, 44482u)))));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(40399i, u_input.b), 20358i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 20413i, u_input.d), vec4<i32>(-2147483647i, u_input.c, 36145i, u_input.c)), abs(u_input.d)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.b), vec4<i32>(u_input.c, -5775i, u_input.a, -19811i)), min(vec4<i32>(u_input.c, u_input.d, u_input.a, u_input.d), vec4<i32>(u_input.d, -1i, u_input.d, u_input.d))), vec4<bool>(true, true, true, true)), ~vec4<i32>(-24312i, func_2(false, true), -2147483647i, firstLeadingBit(1i))), -57378i);
    let var_1 = countOneBits(vec4<i32>(_wgslsmith_add_i32(var_0.x, ~(-30367i)), abs(abs(~var_0.x)), var_0.x, 14234i));
    let var_2 = Struct_1(vec2<bool>(true, true), select(vec3<u32>(~(~37787u), 1u, ~(~0u)), vec3<u32>(firstTrailingBit(36588u), 30699u, abs(4294967295u)) << (firstLeadingBit(vec3<u32>(1u, 51078u, 10u)) % vec3<u32>(32u)), vec3<bool>(false, true, true)));
    let var_3 = u_input.d;
    var_0 = abs(-abs(firstTrailingBit(vec2<i32>(var_1.x, 1i) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))));
    return -11642i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_2 {
    let var_0 = vec4<u32>(~(~1u), ~(arg_1.c.b.x | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.c.b.zx, arg_1.c.b.zy), vec2<u32>(4294967295u, arg_1.c.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~arg_1.c.b.x), 47268u, 0u), arg_1.c.b), arg_1.c.b.x);
    let var_1 = Struct_4(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-22846i, -1i, _wgslsmith_mod_i32(51680i, arg_0.x), arg_0.x), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -279f), Struct_1(select(arg_1.c.a, vec2<bool>(true, true), !func_3(vec3<f32>(923f, -282f, -1545f), arg_1.a, 0u).x), abs(vec3<u32>(arg_1.c.b.x, ~arg_1.c.b.x, _wgslsmith_div_u32(12236u, arg_1.c.b.x)))), countOneBits(firstTrailingBit(arg_1.d)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b)) * _wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.x, ~u_input.d), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_1.d.x, 7142i, 45132i)), var_1.d << (vec3<u32>(var_0.x, var_0.x, var_1.c.b.x) % vec3<u32>(32u))))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-1796f - var_1.b), arg_1.a));
    let var_4 = (vec4<i32>(-(~var_3.a.b), var_3.a.b, _wgslsmith_div_i32(var_3.a.b, -1i), ~1i) & -_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_3.a.b, 65283i, -1i), vec4<i32>(var_1.d.x, -18632i, u_input.c, -701i) | vec4<i32>(5312i, u_input.b, 19510i, 1i))) & vec4<i32>(-66304i, ~var_2.a.b, select(arg_0.x >> (60693u % 32u), -2147483647i, false), min(44079i, _wgslsmith_add_i32(-32092i, _wgslsmith_sub_i32(1i, u_input.c))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<i32>(~countOneBits(4458i), func_1(vec2<f32>(1f, 1f)) << (~1u % 32u), ~1i, firstTrailingBit((u_input.c << (1u % 32u)) >> (reverseBits(1u) % 32u))), Struct_4(abs(-u_input.c), _wgslsmith_div_f32(_wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_f_op_f32(select(764f, 2073f, true))), Struct_1(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, true)), vec3<u32>(40054u, abs(8953u), countOneBits(6421u))), vec3<i32>(u_input.c, ~_wgslsmith_div_i32(u_input.b, u_input.d), select(u_input.b, -2147483647i, any(vec2<bool>(false, false))))), all(vec2<bool>(all(vec2<bool>(true, false)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, 945f, -563f)), -24304i, abs(88865u)).x)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)))))), -2147483647i);
    var var_1 = 1774f;
    let var_2 = 4294967295u;
    let var_3 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, !any(vec2<bool>(false, true)), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(var_0.a >= var_0.a, true, u_input.b > 45004i, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), all(vec2<bool>(false, true))))), vec4<bool>(false, all(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), all(vec3<bool>(all(vec2<bool>(true, false)), false, true)), all(vec3<bool>(true, true, true))), (-(var_0.b | 2147483647i) >> (var_2 % 32u)) >= u_input.a);
    var var_4 = vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, var_2), vec2<u32>(var_2, var_2)), ~vec2<u32>(var_2, var_2)) | abs(var_2), var_2, _wgslsmith_mult_u32(var_2, _wgslsmith_sub_u32(4294967295u ^ countOneBits(var_2), var_2)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(countOneBits(vec4<u32>(var_2, var_2, 23633u, 4294967295u)), ~vec4<u32>(20219u, 17637u, var_2, 50964u), var_3.x), ~(vec4<u32>(var_2, var_2, var_2, var_2) | vec4<u32>(0u, var_2, var_2, 31499u))), _wgslsmith_sub_vec4_u32(vec4<u32>(64957u & var_2, var_2 | 26743u, 35222u, var_2), abs(vec4<u32>(var_2, var_2, 65375u, 1000u)) >> (vec4<u32>(var_2, 4294967295u, var_2, 41903u) % vec4<u32>(32u)))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, var_0.a)))))), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(var_0.b, 1i, 58223i) >> (var_4.xww % vec3<u32>(32u))), abs(firstTrailingBit(vec3<i32>(u_input.b, -1i, -24588i)))) >> (_wgslsmith_mod_vec3_u32(~(var_4.yxx >> (vec3<u32>(var_4.x, 47206u, 13932u) % vec3<u32>(32u))), var_4.wzx) % vec3<u32>(32u)), countOneBits(~var_2), ~select(vec4<i32>(1i, i32(-1i) * -27855i, ~var_0.b, 0i), vec4<i32>(_wgslsmith_mult_i32(var_0.b, u_input.d), abs(u_input.a), _wgslsmith_mod_i32(var_0.b, 2147483647i), u_input.a), vec4<bool>(var_3.x, true | var_3.x, var_0.a >= 1366f, false)), vec2<i32>(var_0.b, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d, ~u_input.c), func_4(var_0.a, Struct_1(vec2<bool>(false, var_3.x), var_4.xzy)))));
}

