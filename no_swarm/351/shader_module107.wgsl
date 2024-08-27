struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(-min(arg_0, -45441i), arg_1.b, _wgslsmith_add_vec3_i32(select(arg_2.e.c, vec3<i32>(arg_0, arg_2.e.c.x, 81889i), false) << ((vec3<u32>(arg_2.d, arg_2.d, 4294967295u) | u_input.a) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(arg_2.b, -1i, arg_1.c.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 76894u, arg_2.d), vec3<u32>(arg_2.d, 1u, 11915u), vec3<u32>(1u, 0u, 1u)) % vec3<u32>(32u))) << (select(u_input.a, min(u_input.a, u_input.a), true) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_2.e.d));
    return vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, abs(arg_2.b)), 1i), ~(~13793i), var_0.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_1(0i ^ select(u_input.c.x, arg_1.b, true), arg_3, func_3(-u_input.c.x, Struct_1(select(-24435i, u_input.c.x, arg_3), false, vec3<i32>(-1i, -7492i, u_input.c.x) & vec3<i32>(arg_1.b, 1i, arg_1.b), _wgslsmith_f_op_vec3_f32(-arg_2)), Struct_2(arg_1.a, abs(-2147483647i), true, ~u_input.b, arg_1.e)) >> ((u_input.a & ~select(vec3<u32>(arg_1.d, arg_1.d, u_input.a.x), u_input.a, arg_1.a.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -448f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-362f))))));
    var var_1 = _wgslsmith_mod_i32(var_0.c.x, arg_1.b);
    var var_2 = -_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(32745i, var_0.c.x, u_input.c.x, arg_1.b), vec4<i32>(1i, var_0.c.x, -37434i, -1i) << (vec4<u32>(arg_0.x, u_input.a.x, 0u, 85985u) % vec4<u32>(32u)), vec4<i32>(arg_1.e.a, var_0.a, var_0.c.x, var_0.c.x) >> (vec4<u32>(arg_0.x, 0u, 1u, 7516u) % vec4<u32>(32u))), min(~select(vec4<i32>(var_0.a, -32432i, -4687i, 1i), vec4<i32>(var_0.c.x, 2584i, 46716i, 36018i), true), select(~vec4<i32>(arg_1.b, u_input.c.x, -42726i, -3522i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.a, u_input.c.x), vec4<i32>(var_0.c.x, var_0.a, var_0.c.x, arg_1.b)), vec4<bool>(arg_3, var_0.b, var_0.b, arg_1.e.b))));
    let var_3 = ~vec2<i32>(2147483647i, 10071i);
    var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(43116i, -85371i, -min(u_input.c.x, -42473i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_0.c.x, arg_1.e.a, arg_1.e.a) >> (vec4<u32>(96194u, arg_1.d, arg_0.x, u_input.b) % vec4<u32>(32u)), -vec4<i32>(5135i, 5428i, -58923i, var_3.x))) ^ -(~vec4<i32>(var_0.c.x, var_3.x, -1i, -42141i)), select(-(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, -2099i, u_input.c.x, -1i), vec4<i32>(var_0.a, var_0.c.x, var_2.x, var_3.x)) << (arg_0 % vec4<u32>(32u))), -_wgslsmith_add_vec4_i32(vec4<i32>(29409i, -54431i, 2147483647i, u_input.c.x), vec4<i32>(var_3.x, 1i, var_2.x, arg_1.e.a)) ^ vec4<i32>(1i ^ var_0.a, var_0.c.x, 1i, _wgslsmith_clamp_i32(-8561i, var_3.x, var_2.x)), !select(select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_3), vec4<bool>(false, var_0.b, true, true), false), select(vec4<bool>(var_0.b, true, arg_3, true), vec4<bool>(arg_1.e.b, arg_1.a.x, true, true), vec4<bool>(arg_3, false, var_0.b, true)), vec4<bool>(true, true, true, true))));
    return select(!select(!vec4<bool>(true, var_0.b, true, true), !(!vec4<bool>(true, false, false, arg_3)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, arg_3, false, true))), vec4<bool>(true, !(firstLeadingBit(var_0.c.x) >= 0i), arg_3, !(var_0.b == all(vec4<bool>(var_0.b, false, true, false)))), false);
}

fn func_1() -> bool {
    let var_0 = Struct_2(vec3<bool>(any(vec3<bool>(false, false, true)) && true, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(vec4<u32>(0u, u_input.a.x, 0u, 4294967295u), Struct_2(vec3<bool>(false, true, false), u_input.c.x, false, 87767u, Struct_1(-1i, false, u_input.c, vec3<f32>(571f, 437f, 1000f))), vec3<f32>(1901f, 869f, -264f), false)))), select(firstTrailingBit(i32(-1i) * -u_input.c.x), (~2147483647i & abs(u_input.c.x)) ^ -24675i, select(all(vec2<bool>(false, true)), all(func_2(vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b), Struct_2(vec3<bool>(true, false, false), 2147483647i, true, u_input.b, Struct_1(u_input.c.x, true, u_input.c, vec3<f32>(2456f, 1000f, 484f))), vec3<f32>(963f, 214f, -1840f), true).zyy), true)), !(!((19882u << (1u % 32u)) < ~u_input.a.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(5131u, countOneBits(u_input.b)), abs(u_input.b), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, 42738u, u_input.a.x)), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a.x))), 4294967295u), Struct_1(2147483647i, true, vec3<i32>(~u_input.c.x, u_input.c.x, -func_3(u_input.c.x, Struct_1(-41773i, true, vec3<i32>(u_input.c.x, u_input.c.x, 4994i), vec3<f32>(1000f, 521f, -1311f)), Struct_2(vec3<bool>(false, true, false), 1i, false, 0u, Struct_1(u_input.c.x, false, vec3<i32>(u_input.c.x, 28501i, u_input.c.x), vec3<f32>(1239f, -705f, -338f)))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, -406f, 1010f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, -259f, -1000f))))));
    var var_1 = true;
    let var_2 = Struct_2(vec3<bool>(false, true, false), u_input.c.x, false, ~4294967295u, var_0.e);
    let var_3 = !(var_0.a.x | all(vec2<bool>(true, 4294967295u >= var_2.d)));
    var_1 = true;
    return func_2(select(select(reverseBits(abs(vec4<u32>(1u, 4294967295u, var_2.d, 37626u))), ~vec4<u32>(32322u, var_2.d, var_2.d, 4294967295u), select(select(vec4<bool>(var_3, var_2.e.b, var_3, false), vec4<bool>(var_0.c, var_2.e.b, true, var_2.e.b), vec4<bool>(var_3, var_3, var_2.e.b, var_3)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, var_2.c), vec4<bool>(var_0.c, true, true, var_3)), any(vec4<bool>(true, false, var_3, var_2.a.x)))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(82695u, 4294967295u, var_2.d, 17929u), vec4<u32>(var_0.d, u_input.b, u_input.a.x, 0u)) | vec4<u32>(14034u, var_2.d, 1u, var_0.d), ~vec4<u32>(var_0.d, 0u, 26044u, 4294967295u)), !var_0.a.x), Struct_2(!func_2(countOneBits(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 7422u)), var_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, -463f, 813f)), true).yxy, 33539i, var_2.c, _wgslsmith_add_u32(1u, reverseBits(countOneBits(53872u))), var_2.e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, var_0.e.d.x, 914f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.e.d, vec3<f32>(var_2.e.d.x, var_0.e.d.x, var_0.e.d.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-173f, -163f, var_0.e.d.x))))))), !var_3 && false).x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32) -> Struct_1 {
    return Struct_1(u_input.c.x, 1i > u_input.c.x, func_3(u_input.c.x, Struct_1(abs(-52982i), false, max(~u_input.c, ~vec3<i32>(u_input.c.x, 46075i, u_input.c.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1156f, 429f, 721f), vec3<f32>(217f, -1031f, 617f)))))), Struct_2(vec3<bool>(true && arg_0, false, true), arg_2, true, u_input.a.x, Struct_1(17816i, true, vec3<i32>(2147483647i, -2147483647i, arg_2), vec3<f32>(-1962f, 792f, -106f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(419f - -508f) * _wgslsmith_f_op_f32(-1095f - 1633f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-651f, _wgslsmith_f_op_f32(trunc(1079f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + _wgslsmith_f_op_f32(trunc(1917f))), -569f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))));
    let var_1 = u_input.a;
    let var_2 = select(any(select(select(!vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, false), vec2<bool>(arg_0.b, arg_0.b))), vec2<bool>(arg_0.b, true), !arg_0.b)), func_1(), false);
    let var_3 = arg_0;
    let var_4 = firstTrailingBit(~(~vec4<u32>(arg_2.x, 1u, var_1.x, var_1.x) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 0u, arg_2.x), vec4<u32>(26881u, u_input.b, 84297u, var_1.x)) ^ vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))));
    return select(countOneBits(vec2<u32>(~arg_2.x, ~26528u) & vec2<u32>(arg_2.x, _wgslsmith_mod_u32(0u, 26873u))), _wgslsmith_sub_vec2_u32(var_4.zw, vec2<u32>(_wgslsmith_sub_u32(var_1.x << (1409u % 32u), 4294967295u), ~_wgslsmith_mult_u32(39331u, arg_2.x))), vec2<bool>(all(vec4<bool>(!var_2, var_2, var_3.b, var_3.b)), all(select(vec4<bool>(true, false, arg_0.b, var_3.b), !vec4<bool>(arg_0.b, var_2, var_2, true), !vec4<bool>(var_3.b, false, false, arg_0.b)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(~u_input.c.x, _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(arg_2.c, arg_2.c), arg_2.c.x, 17975i) <= _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, -2147483647i, arg_2.c.x), vec3<i32>(-39649i & u_input.c.x, -arg_3, min(arg_3, arg_2.c.x))), ~abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, -30168i, u_input.c.x), arg_2.c << (u_input.a % vec3<u32>(32u)))), arg_2.d);
    var var_1 = select(vec4<bool>(false, arg_2.b, var_0.b, arg_2.b), select(vec4<bool>(var_0.b, !arg_2.b, true, func_4(4294967295u == u_input.a.x, _wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_div_i32(0i, arg_3)).b), select(!vec4<bool>(false, var_0.b, arg_2.b, arg_2.b), vec4<bool>(false, false, !arg_2.b, !arg_2.b), vec4<bool>(any(vec2<bool>(arg_2.b, arg_2.b)), true, !var_0.b, var_0.b)), !vec4<bool>(arg_2.b, !arg_2.b, true, var_0.b)), true);
    var var_2 = u_input.a;
    let var_3 = false;
    var_2 = u_input.a;
    return Struct_1(arg_2.a, true, var_0.c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1050f, _wgslsmith_f_op_f32(round(764f)), 580f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(777f, -2224f, false)), _wgslsmith_f_op_f32(select(-840f, -1000f, false)), true)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(919f, -2056f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-769f)))))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) - _wgslsmith_div_f32(1000f, 449f)) * _wgslsmith_f_op_f32(192f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_div_f32(var_0.x, var_0.x)))), 119f, -622f);
    let var_1 = ~vec2<u32>(firstTrailingBit(_wgslsmith_add_u32(u_input.b, 0u)), u_input.a.x);
    let var_2 = func_6(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -1994f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), func_5(func_4(func_1(), ~var_1.x, abs(u_input.c.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zz, var_0.xz)))), u_input.a.yx, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(-1195f, 1929f)))), Struct_1(select(_wgslsmith_mod_i32(~u_input.c.x, -6111i), ~u_input.c.x, true), any(func_2(~vec4<u32>(var_1.x, u_input.b, 4294967295u, 83674u), Struct_2(vec3<bool>(true, true, false), u_input.c.x, false, 4294967295u, Struct_1(u_input.c.x, false, vec3<i32>(62230i, -1i, 2147483647i), vec3<f32>(-632f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-var_0.xzx), all(vec4<bool>(true, false, true, true)))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 7804i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 2147483647i)), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), -15892i), var_0.wwz), _wgslsmith_mult_i32(i32(-1i) * -1i, 0i));
    let var_3 = all(select(!select(vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(true, true, true), select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(var_2.b, true, false))), func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(1u, var_1.x, 1056u, u_input.b) >> (vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), Struct_2(func_2(vec4<u32>(4294967295u, var_1.x, u_input.a.x, 1647u), Struct_2(vec3<bool>(var_2.b, false, var_2.b), var_2.c.x, true, u_input.a.x, var_2), var_0.xzz, var_2.b).ywx, ~u_input.c.x, var_2.b, _wgslsmith_dot_vec2_u32(var_1, var_1), var_2), vec3<f32>(2495f, _wgslsmith_f_op_f32(-174f * -1104f), _wgslsmith_f_op_f32(-var_2.d.x)), true).ywy, any(vec2<bool>(any(vec2<bool>(var_2.b, var_2.b)), all(vec2<bool>(var_2.b, var_2.b))))));
    var var_4 = 1u;
    let var_5 = Struct_2(vec3<bool>(!(!var_2.b | any(vec3<bool>(true, true, var_2.b))), var_2.b, var_3), _wgslsmith_mult_i32(_wgslsmith_mod_i32(max(45426i, var_2.c.x), var_2.c.x ^ var_2.a), 21071i ^ u_input.c.x) & _wgslsmith_dot_vec3_i32(~(-u_input.c), vec3<i32>(873i, 2147483647i, -u_input.c.x)), true, ~(~(~1u)), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.x, var_0.x, var_0.x, var_2.d.x), vec4<f32>(1033f, -531f, var_2.d.x, 209f))) + vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(ceil(var_2.d.x)))), max(_wgslsmith_mod_vec2_u32(firstLeadingBit(var_1), _wgslsmith_div_vec2_u32(var_1, vec2<u32>(var_1.x, u_input.b))), ~u_input.a.yx), Struct_1(_wgslsmith_mult_i32(u_input.c.x, func_3(var_2.a, var_2, Struct_2(vec3<bool>(var_3, false, var_2.b), var_2.c.x, var_3, u_input.b, Struct_1(22092i, var_2.b, var_2.c, var_2.d))).x), select(func_2(vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.a.x), Struct_2(vec3<bool>(var_2.b, var_3, true), 6065i, var_2.b, 0u, var_2), vec3<f32>(334f, var_2.d.x, 943f), false).x, false, var_2.b != var_3), var_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yzx + var_0.ywx) - func_6(vec4<f32>(653f, var_2.d.x, var_0.x, var_2.d.x), vec2<u32>(1u, 27233u), Struct_1(var_2.c.x, var_3, vec3<i32>(0i, 0i, 2147483647i), vec3<f32>(var_2.d.x, -1139f, var_2.d.x)), 2147483647i).d)), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(~u_input.c, _wgslsmith_div_vec3_i32(u_input.c, var_2.c)))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 935f), var_2.d.x), _wgslsmith_f_op_f32(round(-1022f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(243f, _wgslsmith_f_op_f32(round(var_2.d.x))))), 309f)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

