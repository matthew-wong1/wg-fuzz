struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    var var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true)), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(212f, 832f, 1061f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1677f, 696f, 130f), vec3<f32>(-1018f, -543f, 737f))) - vec3<f32>(108f, _wgslsmith_f_op_f32(-468f - 1505f), -1668f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-522f + -1015f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-918f)), _wgslsmith_f_op_f32(-1000f * -396f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-552f, 706f)), _wgslsmith_f_op_f32(min(-1000f, 289f)), _wgslsmith_div_f32(854f, -2270f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-140f, -454f, -858f) + vec3<f32>(1501f, 151f, 792f)))))));
    let var_2 = u_input.b.x;
    var_0 = true || all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = true;
    return -(~max(_wgslsmith_add_vec2_i32(vec2<i32>(-24412i, 0i), vec2<i32>(0i, -25656i)), reverseBits(vec2<i32>(21795i, 23499i)))) ^ (min(-firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i)), -vec2<i32>(-1i, 2147483647i)) | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, ~(-15639i)), select(vec2<i32>(-9309i, -53843i), -vec2<i32>(18105i, 15i), true)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.c, countOneBits(-func_3()));
    let var_1 = Struct_3(Struct_1(-1i, min(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_0.a, -28780i, 1i)), arg_0.b), arg_0.b | abs(vec3<i32>(27634i, arg_0.b.x, 0i))), _wgslsmith_f_op_vec3_f32(-var_0.a), !all(vec3<bool>(true, true, arg_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-722f * _wgslsmith_f_op_f32(max(1000f, -418f))))), var_0.a.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(var_0.a.x - -169f))))), select(select(arg_0.b.zy, var_1.a.b.yz, select(select(vec2<bool>(var_1.a.d, true), vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(arg_1, false), vec2<bool>(arg_0.d, arg_0.d))), var_0.b | var_0.b, select(select(select(vec2<bool>(var_1.a.d, true), vec2<bool>(false, arg_0.d), vec2<bool>(false, arg_0.d)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(any(vec2<bool>(arg_0.d, true)), var_1.a.d), arg_0.d || any(vec3<bool>(false, arg_0.d, true)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), arg_0.c.x))), ~vec2<i32>(func_3().x, arg_0.b.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) * _wgslsmith_f_op_vec3_f32(select(var_1.a.c, arg_0.c, vec3<bool>(arg_0.d, false, false)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-882f, var_0.a.x, 645f))) + _wgslsmith_f_op_vec3_f32(trunc(var_0.a)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(var_1.a.a, abs(-47530i))), vec2<i32>(arg_0.a, var_1.a.a)));
    return !(!vec4<bool>(false, arg_0.d, arg_1, true));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.b.x, arg_1.b.x, 26129i)) << (select(vec3<u32>(arg_2.x, u_input.b.x, 31204u), vec3<u32>(16404u, arg_2.x, 1u), var_0) % vec3<u32>(32u)), vec3<i32>(~arg_1.b.x, arg_1.b.x, _wgslsmith_clamp_i32(78405i, 553i, -16353i))), _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(arg_1.b.x, -2147483647i, arg_1.b.x)), abs(vec3<i32>(~(-27260i), arg_1.b.x >> (4633u % 32u), -14271i))), vec3<f32>(_wgslsmith_f_op_f32(sign(-439f)), 252f, arg_1.a.x), false);
    let var_2 = ~u_input.b.x;
    var var_3 = select(select(countOneBits(select(vec4<i32>(arg_1.b.x, var_1.b.x, var_1.a, arg_1.b.x), ~vec4<i32>(var_1.b.x, 0i, var_1.a, arg_1.b.x), select(vec4<bool>(arg_0.x, var_0, var_0, var_1.d), vec4<bool>(true, arg_0.x, false, var_0), var_1.d))), vec4<i32>(firstTrailingBit(var_1.a) | var_1.a, _wgslsmith_add_i32(reverseBits(var_1.a), abs(arg_1.b.x)), var_1.a, -var_1.a), var_0), countOneBits(vec4<i32>(-arg_1.b.x, 1i, var_1.b.x, -15995i)), !select(!func_2(Struct_1(16396i, vec3<i32>(var_1.a, 0i, arg_1.b.x), arg_1.a, arg_0.x), var_1.d), !(!vec4<bool>(var_1.d, true, var_0, true)), select(!vec4<bool>(var_1.d, false, arg_0.x, false), select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(false, var_1.d, var_1.d, false), var_0), !vec4<bool>(false, false, false, arg_0.x))));
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(var_1.c - var_1.c));
    return ~select(vec4<i32>(-1i) * -(~vec4<i32>(-66877i, arg_1.b.x, 1i, var_3.x)), -max(vec4<i32>(-2147483647i, 1i, -17796i, 61830i), abs(vec4<i32>(1i, 16955i, arg_1.b.x, -1i))), !(!(!vec4<bool>(var_1.d, var_0, true, var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(firstTrailingBit(u_input.b));
    let var_1 = ~(-_wgslsmith_mult_vec4_i32(-vec4<i32>(-50297i, 28033i, -2147483647i, -2147483647i), func_1(vec2<bool>(true, false), Struct_2(vec3<f32>(-955f, -312f, 859f), vec2<i32>(-2147483647i, 12342i)), vec3<u32>(var_0.x, 31837u, 13263u))) >> (vec4<u32>(~u_input.a, _wgslsmith_mult_u32(abs(1u), ~9085u), var_0.x, abs(var_0.x)) % vec4<u32>(32u)));
    var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, var_0.x), ~u_input.b);
    var var_2 = true;
    var_0 = vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, var_0.x)), 1u >> (u_input.b.x % 32u)) >> (min(_wgslsmith_div_u32(u_input.b.x, 1u), ~u_input.a) % 32u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), 4294967295u, 52161u, 49874u), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.a, u_input.a), ~var_0.x, _wgslsmith_add_u32(0u, 16486u))), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, abs(var_0.x), max(4294967295u, 58034u), 0u), ~abs(vec4<u32>(1u, u_input.a, var_0.x, 23441u)))));
    var_2 = (true | (true & all(func_2(Struct_1(30637i, var_1.ywy, vec3<f32>(-680f, 758f, -2075f), true), true).zz))) & false;
    var var_3 = ~reverseBits(_wgslsmith_sub_u32(u_input.a, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-375f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f), 806f) + -1152f) - -566f), var_1);
}

