struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(411f - arg_1.x);
    let var_1 = select(select(vec4<bool>(firstLeadingBit(67748i) <= u_input.b.x, all(select(vec3<bool>(arg_3.x, arg_0, arg_3.x), arg_3, arg_3)), true, any(arg_3)), select(!(!vec4<bool>(arg_0, true, arg_0, arg_3.x)), vec4<bool>(false, arg_0, !arg_0, arg_0), !(!vec4<bool>(arg_0, arg_0, arg_3.x, false))), false), vec4<bool>(~_wgslsmith_dot_vec2_u32(arg_2, arg_2) >= firstTrailingBit(min(58986u, 17088u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(79103u, u_input.a), 0u) >= u_input.a, false, (select(true, arg_0, arg_0) || false) & arg_3.x), vec4<bool>(true, !all(select(vec4<bool>(arg_0, true, true, arg_3.x), vec4<bool>(arg_0, true, true, arg_0), false)), u_input.b.x >= u_input.b.x, arg_3.x));
    var_0 = 900f;
    let var_2 = !(!arg_3);
    var var_3 = ~(-_wgslsmith_sub_i32(max(0i, -76460i), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))) < ~_wgslsmith_div_i32(-1i, u_input.b.x);
    return min(~(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, u_input.a), vec3<u32>(53448u, u_input.a, arg_2.x), vec3<u32>(1u, arg_2.x, u_input.a)), vec3<u32>(1u, 36860u, arg_2.x)) << (~(~vec3<u32>(arg_2.x, u_input.a, arg_2.x)) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(abs(u_input.a), 0u, 13727u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 0u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 30880u), vec3<u32>(u_input.a, 1980u, 2435u), vec3<u32>(arg_2.x, u_input.a, u_input.a)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> Struct_4 {
    let var_0 = vec2<i32>(i32(-1i) * -(~(-u_input.b.x)), -38985i);
    let var_1 = 1i > var_0.x;
    var var_2 = Struct_2(Struct_1(-(vec4<i32>(-1i) * -vec4<i32>(arg_0.x, -34464i, arg_2.x, arg_0.x)), min(func_3(false, vec4<f32>(-2933f, 208f, 993f, 1000f), vec2<u32>(0u, 22437u), vec3<bool>(false, arg_1, arg_1)) | ~vec3<u32>(0u, 49439u, 1u), vec3<u32>(23794u, 1u, 1u))), Struct_1(select(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-9039i, -1i, var_0.x, 18451i), vec4<i32>(2147483647i, arg_2.x, arg_2.x, arg_2.x), false), vec4<i32>(0i, u_input.b.x, -23244i, 1010i) << (vec4<u32>(0u, 80924u, u_input.a, 48817u) % vec4<u32>(32u)), min(vec4<i32>(var_0.x, arg_2.x, 1i, 1i), vec4<i32>(arg_2.x, -31164i, arg_0.x, arg_2.x))), countOneBits(select(vec4<i32>(var_0.x, var_0.x, 0i, u_input.b.x), vec4<i32>(37932i, arg_0.x, 2147483647i, var_0.x), vec4<bool>(var_1, arg_1, true, arg_1))), all(vec2<bool>(var_1, false))), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_3, 37059u), vec3<u32>(13902u, 0u, 18862u))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 49244u, 66873u), abs(vec3<u32>(1u, 4294967295u, 33094u))) % vec3<u32>(32u))), Struct_1(-_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_2.x, 22021i, u_input.b.x, -38958i)), ~vec4<i32>(arg_0.x, -1i, -1i, -1i), ~vec4<i32>(0i, -4826i, 1i, -2147483647i)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_3, arg_3, 17153u), vec3<u32>(1u, 80244u, ~arg_3))), arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-448f, 431f, var_1)) - _wgslsmith_f_op_f32(1816f + -589f))))));
    let var_3 = Struct_2(var_2.b, var_2.b, Struct_1(vec4<i32>(~(i32(-1i) * -3633i), firstTrailingBit(2147483647i), 1079i, (u_input.b.x ^ arg_0.x) & 1i), vec3<u32>(abs(var_2.d), 42412u, ~_wgslsmith_mult_u32(u_input.a, 1u))), select(var_2.d, arg_3 & ~var_2.b.b.x, _wgslsmith_f_op_f32(-var_2.e) > var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)));
    let var_4 = var_3.b;
    return Struct_4(vec2<bool>(!(false || arg_1) && (_wgslsmith_f_op_f32(var_2.e * var_2.e) <= var_2.e), true), var_3.b.a.ywy);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> bool {
    var var_0 = 1305f;
    let var_1 = func_2(u_input.b.yy, !all(vec2<bool>(false, arg_1)), ~u_input.b.yy, abs(u_input.a));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(f32(-1f) * -929f))))) - 1f);
    let var_3 = select(vec3<bool>(var_1.a.x, !(!arg_1), true), !vec3<bool>(!any(vec3<bool>(true, true, true)), false && any(var_1.a), true), select(any(select(!var_1.a, select(vec2<bool>(arg_1, true), var_1.a, var_1.a), vec2<bool>(arg_1, false))), true, !all(select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(var_1.a.x, true), false))));
    return select(!all(select(select(vec4<bool>(arg_1, var_1.a.x, false, true), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(var_3.x, arg_1, var_3.x, arg_1)), !vec4<bool>(true, false, false, var_1.a.x), all(vec3<bool>(true, false, arg_1)))), any(vec4<bool>(!func_2(vec2<i32>(u_input.b.x, 2147483647i), arg_1, u_input.b.yx, 1u).a.x, func_2(-var_1.b.yx, true, -u_input.b.zz, max(var_2.x, 12268u)).a.x, !any(vec4<bool>(true, false, true, arg_1)), all(select(vec4<bool>(true, var_3.x, false, arg_1), vec4<bool>(false, false, var_1.a.x, var_1.a.x), true)))), arg_1);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> vec3<u32> {
    let var_0 = arg_2.x;
    let var_1 = ~(-_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -2147483647i, -11492i, u_input.b.x)), ~max(vec4<i32>(u_input.b.x, 16430i, -818i, 35762i), vec4<i32>(0i, u_input.b.x, -1i, -18261i))));
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(62733u, u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(85106u, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(6314u, u_input.a, 0u, 67780u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 43518u, 15735u), vec4<u32>(u_input.a, u_input.a, 51876u, u_input.a))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 51699u, u_input.a), vec4<u32>(0u, u_input.a, 39524u, u_input.a))), vec4<u32>(0u, ~u_input.a, ~countOneBits(11688u), u_input.a)), abs(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 83907u, 1u), vec4<u32>(58161u, u_input.a, 9881u, 12800u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 36317u))));
    var var_3 = Struct_1(var_1 | -vec4<i32>(min(u_input.b.x, u_input.b.x), 6650i, _wgslsmith_div_i32(4954i, 1550i), u_input.b.x), ~select(~vec3<u32>(var_2.x, 4294967295u, var_2.x) >> (vec3<u32>(7069u, var_2.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(35886u, var_2.x, var_2.x), ~var_2.zzw), vec3<bool>(var_2.x < var_2.x, true, all(vec4<bool>(true, var_0, var_0, var_0)))));
    var_3 = Struct_1(-var_3.a, min(var_2.xxz, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 42530u, u_input.a), var_3.b) | ~vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x), ~var_3.b)));
    return ~vec3<u32>(_wgslsmith_mod_u32(~(~32697u), 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(21689u, var_3.b.x & u_input.a)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1176f, 569f)))) * _wgslsmith_f_op_f32(-207f - -163f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1188f))))), !vec4<bool>(func_1(vec4<u32>(u_input.a, 105460u, u_input.a, 16584u), true), any(vec4<bool>(false, true, false, true)), true, true));
    let var_1 = Struct_2(Struct_1(~(vec4<i32>(2147483647i, -88859i, 1i, -1i) ^ -vec4<i32>(u_input.b.x, 2927i, u_input.b.x, -12118i)), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, u_input.a), firstLeadingBit(vec3<u32>(1u, var_0.x, var_0.x))))), Struct_1((vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 952i) ^ vec4<i32>(0i, u_input.b.x, -28402i, -1i)) ^ vec4<i32>(u_input.b.x, i32(-1i) * -13769i, firstLeadingBit(2147483647i), 20063i), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 35530u, 1u), vec3<u32>(4294967295u, var_0.x, var_0.x))) & _wgslsmith_sub_vec3_u32(select(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(754u, 4294967295u, 1u), vec3<bool>(false, true, false)), ~vec3<u32>(28983u, 42079u, u_input.a))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 44394i, 17668i, 2147483647i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x) | vec4<i32>(-1i, -11582i, u_input.b.x, u_input.b.x)) ^ -abs(vec4<i32>(9704i, 1i, 40079i, -27722i)), firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(false, false, true)), vec3<u32>(u_input.a, u_input.a, 62281u)))), ~var_0.x, 357f);
    let var_2 = true;
    let var_3 = Struct_4(!(!(!(!vec2<bool>(var_2, var_2)))), _wgslsmith_div_vec3_i32(func_2(var_1.c.a.zz, var_2, countOneBits(var_1.a.a.zz), u_input.a).b, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x << (21375u % 32u), 1i, max(-16870i, -6414i)), reverseBits(vec3<i32>(var_1.c.a.x, -1i, 1i)))));
    var_0 = _wgslsmith_sub_vec3_u32(~var_1.b.b, _wgslsmith_sub_vec3_u32(reverseBits(max(~vec3<u32>(0u, var_0.x, var_0.x), var_1.c.b)), vec3<u32>(abs(var_0.x), _wgslsmith_sub_u32(90753u, 13037u), func_3(false, vec4<f32>(-542f, -1853f, var_1.e, -1437f), vec2<u32>(var_0.x, 1u), vec3<bool>(var_2, false, false)).x) ^ ~vec3<u32>(66354u, 49558u, 4294967295u)));
    let var_4 = var_1;
    var_0 = ~(_wgslsmith_add_vec3_u32(countOneBits(var_4.b.b), _wgslsmith_clamp_vec3_u32(reverseBits(var_1.b.b), ~vec3<u32>(u_input.a, var_0.x, var_0.x), var_1.b.b)) >> (vec3<u32>(firstTrailingBit(52718u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44741u, 1u, u_input.a, u_input.a), vec4<u32>(50990u, var_0.x, 45971u, 0u)), 18760u, ~u_input.a), var_4.b.b.x << (~u_input.a % 32u)) % vec3<u32>(32u)));
    var_0 = var_1.a.b;
    var_0 = var_1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(1074f + var_4.e)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.e, 1424f)) + _wgslsmith_f_op_f32(max(-183f, var_1.e)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1308f)))))));
}

