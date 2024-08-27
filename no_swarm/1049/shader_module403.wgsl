struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = reverseBits(~(~reverseBits(arg_0.a.b) | firstTrailingBit(_wgslsmith_div_i32(u_input.c, arg_0.a.b))));
    var_0 = (max(34886i, _wgslsmith_dot_vec3_i32(abs(u_input.d), arg_0.a.c)) | arg_0.a.c.x) >> (~0u % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2194f, -1107f), -995f, arg_0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - -1343f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-538f + -1037f), _wgslsmith_f_op_f32(f32(-1f) * -742f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), -412f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -210f)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(trunc(741f))))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(1995f, -1093f)), _wgslsmith_f_op_f32(step(792f, -150f)), _wgslsmith_f_op_f32(step(1000f, 173f)), _wgslsmith_f_op_f32(f32(-1f) * -373f)), vec4<f32>(_wgslsmith_f_op_f32(step(615f, 1422f)), -1559f, _wgslsmith_f_op_f32(f32(-1f) * -311f), -1000f)))))));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), ~u_input.a.wx), ~(~(u_input.a.wz & vec2<u32>(u_input.b, 61115u)))) | vec2<u32>(4294967295u, arg_0.a.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zw + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy * vec2<f32>(var_1.x, var_1.x)) - var_1.wy) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.zx))))));
    return _wgslsmith_dot_vec4_u32(~(u_input.a | u_input.a) ^ ~vec4<u32>(arg_0.a.a, arg_0.a.a, u_input.b, var_2.x), u_input.a) << (var_2.x % 32u);
}

fn func_2(arg_0: i32, arg_1: f32) -> i32 {
    let var_0 = -(~(u_input.c << (func_3(Struct_2(Struct_1(u_input.b, 0i, vec3<i32>(0i, 1i, arg_0), vec3<bool>(false, true, true)))) % 32u)));
    let var_1 = Struct_3(u_input.c, _wgslsmith_mod_vec4_i32(max(~(-vec4<i32>(var_0, -55235i, var_0, arg_0)), select(vec4<i32>(2147483647i, u_input.d.x, -1i, arg_0), vec4<i32>(0i, -2147483647i, u_input.d.x, 15801i), vec4<bool>(false, false, true, true)) << (~u_input.a % vec4<u32>(32u))), vec4<i32>(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(84471i, 1i), vec2<i32>(u_input.d.x, -1i), vec2<i32>(-11101i, arg_0)), u_input.d.xx), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d.x, 10816i, arg_0), 1i), 0i)), vec4<i32>(~_wgslsmith_mod_i32(2147483647i, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-65180i, 15416i), u_input.d.yy), -u_input.d.zz), abs(u_input.d.xx)), -2147483647i, ~_wgslsmith_clamp_i32(arg_0, -1i, 26956i) & var_0), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(arg_1 + arg_1) >= _wgslsmith_f_op_f32(round(203f)), true, _wgslsmith_f_op_f32(step(arg_1, -1578f)) > 332f, all(vec4<bool>(true, true, true, true))), vec4<bool>(true, !any(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)), u_input.a.x >= _wgslsmith_dot_vec3_u32(u_input.a.zzy, vec3<u32>(1u, 9728u, 4294967295u)))), u_input.a.x);
    let var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, 316f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(arg_1, 463f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, 636f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, -1000f), vec2<f32>(arg_1, arg_1))))))));
    var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1684f, var_3.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-140f, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(min(196f, _wgslsmith_f_op_f32(-var_3.x))), arg_1)))));
    return _wgslsmith_add_i32(-_wgslsmith_div_i32(max(~u_input.c, 1i), _wgslsmith_mult_i32(u_input.d.x, -var_0)), ~0i);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_3(~(u_input.d.x & -(2147483647i | u_input.d.x)), vec4<i32>(func_2(u_input.c >> (4294967295u % 32u), 1213f), 0i, u_input.c >> (u_input.e % 32u), max(1i, _wgslsmith_mod_i32(16716i, 2147483647i))) | select(_wgslsmith_div_vec4_i32(~vec4<i32>(-20010i, u_input.d.x, u_input.d.x, 37313i), min(vec4<i32>(-25391i, u_input.d.x, u_input.c, 2147483647i), vec4<i32>(2147483647i, -2147483647i, -47314i, u_input.c))), -vec4<i32>(u_input.c, -1i, u_input.d.x, u_input.c) | max(vec4<i32>(u_input.d.x, u_input.d.x, -53854i, -1i), vec4<i32>(u_input.c, 6193i, u_input.d.x, u_input.c)), true), vec4<i32>(-2147483647i, max(reverseBits(-4019i) | u_input.d.x, ~(-2147483647i)), -2147483647i, ~_wgslsmith_div_i32(-45483i << (u_input.a.x % 32u), abs(1i))), !(!vec4<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)), true, true)), max(_wgslsmith_sub_u32(~u_input.a.x, 474u), ~_wgslsmith_sub_u32(61630u, u_input.e)) | u_input.b);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -624f);
    let var_2 = var_0.d.wx;
    var var_3 = Struct_1(~abs(reverseBits(7670u)) << (0u % 32u), 55850i, _wgslsmith_div_vec3_i32(~u_input.d, vec3<i32>(_wgslsmith_sub_i32(-15286i, var_0.c.x), ~u_input.c, -u_input.c)), select(var_0.d.ywz, var_0.d.zyw, true));
    var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(38496u, var_0.e) << (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.yx)), vec2<u32>(~var_0.e, _wgslsmith_sub_u32(var_3.a, var_3.a))), countOneBits(0i), u_input.d, var_0.d.xxw);
    return Struct_2(Struct_1(~var_3.a, _wgslsmith_dot_vec2_i32(var_0.c.wz, firstLeadingBit(-vec2<i32>(2147483647i, -2147483647i))), select(vec3<i32>(30621i, -1i, -25720i), vec3<i32>(24254i, ~var_3.c.x, u_input.c), var_3.d), select(vec3<bool>(all(vec2<bool>(false, var_2.x)), true, true), !var_3.d, var_3.d)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(arg_0.a.c.x, -1i, -2147483647i)) << (firstTrailingBit(u_input.a.wyz) % vec3<u32>(32u)), vec3<i32>(1i, u_input.d.x, u_input.d.x)));
    var_0 = arg_0.a.c & -abs(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_0.a.b, u_input.d.x), u_input.d), arg_0.a.c | vec3<i32>(15617i, arg_0.a.b, u_input.c), vec3<bool>(false, arg_0.a.d.x, arg_0.a.d.x)));
    var var_1 = Struct_2(func_1().a);
    var_0 = (_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, 1i) | arg_0.a.c, vec3<i32>(~var_1.a.c.x, var_0.x, -76591i >> (u_input.b % 32u))) & arg_0.a.c) | ~arg_0.a.c;
    var var_2 = arg_0;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = Struct_1(func_1().a.a, ~u_input.c, var_0.c >> (u_input.a.www % vec3<u32>(32u)), var_0.d);
    var var_2 = Struct_3(abs(func_2(~(-2147483647i), -674f)), firstTrailingBit(vec4<i32>(1i, _wgslsmith_div_i32(8220i, -17950i) | _wgslsmith_mod_i32(-2147483647i, var_1.b), (1i << (var_1.a % 32u)) & _wgslsmith_sub_i32(1809i, 1i), -12378i)), -vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.d.x, -8963i)), u_input.c, _wgslsmith_sub_i32(i32(-1i) * -37238i, -18072i), -2147483647i), vec4<bool>(any(!(!vec3<bool>(var_1.d.x, var_0.d.x, var_0.d.x))), var_0.d.x, 873i < _wgslsmith_mult_i32(-var_0.c.x, countOneBits(u_input.d.x)), var_0.d.x), u_input.a.x ^ var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, abs(0i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 89i, var_1.b), vec3<i32>(u_input.c, var_2.c.x, -7827i)) >> (var_2.e % 32u), _wgslsmith_div_i32(-1i, i32(-1i) * -9582i))));
}

