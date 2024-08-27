struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_3(2147483647i, arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, u_input.c, 0u, 8856u) | vec4<u32>(arg_2.x, arg_1.b.x, arg_2.x, 5389u), ~vec4<u32>(u_input.c, 30312u, u_input.c, arg_0) | vec4<u32>(arg_1.b.x, 1u, 97897u, 25178u)), _wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(-arg_1.c, -89001i)), arg_1.d), _wgslsmith_f_op_f32(max(-450f, -827f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.b.a.ywy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - var_0.b.a.x)), arg_1.a.x, -701f)), _wgslsmith_f_op_vec3_f32(-var_0.c.a.wzw)));
    let var_2 = ~abs(u_input.b);
    return -2200f;
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_2(all(arg_0.b.d.xz));
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(max(33661u, ~1u), 0u), 22308u);
    var var_2 = reverseBits(~arg_0.b.b.x);
    let var_3 = _wgslsmith_div_f32(-1733f, -1173f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(select(arg_0.b.a.x, arg_0.d, true))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-783f, 1244f, arg_0.d, arg_0.d), vec4<f32>(347f, arg_0.b.a.x, -418f, arg_0.d)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.c.a.x, arg_0.b.a.x, -454f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, -1499f, 988f)))), arg_0.c.a))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.x, -123f)));
}

fn func_2() -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(-5968i, Struct_1(vec4<f32>(-440f, 1966f, 117f, -565f), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), u_input.b.x, vec4<bool>(false, false, true, true)), Struct_1(vec4<f32>(-195f, 137f, -349f, 1000f), vec4<u32>(115716u, 39730u, u_input.d.x, u_input.d.x), -45668i, vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(func_3(6977u, Struct_1(vec4<f32>(368f, -588f, 2056f, -1016f), vec4<u32>(u_input.c, u_input.c, 17325u, 26991u), u_input.b.x, vec4<bool>(false, true, false, true)), vec3<u32>(u_input.d.x, 11180u, u_input.d.x)))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(u_input.d.x | 109483u, Struct_1(vec4<f32>(-119f, -1237f, 1000f, -1747f), vec4<u32>(u_input.c, u_input.d.x, 1u, 12955u), 1i, vec4<bool>(false, true, true, false)), ~vec3<u32>(u_input.c, 0u, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(884f, 399f))), select(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-717f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -809f)))), -510f), 178f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(348f, -1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-517f, 1560f, var_0.x, 1354f)))), vec4<f32>(1028f, var_0.x, 1277f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1471f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(563f - var_0.x))));
    let var_1 = -14697i;
    let var_2 = Struct_2(all(select(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false))));
    var var_3 = abs(firstTrailingBit(~vec4<u32>(countOneBits(u_input.c), ~u_input.d.x, _wgslsmith_div_u32(u_input.c, 1u), 35128u)));
    return 761f;
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1382f, 733f, arg_0, 506f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 142f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_2()), 527f, _wgslsmith_f_op_f32(-arg_0), -1000f)), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), false))), vec4<u32>(_wgslsmith_mult_u32(u_input.c, _wgslsmith_add_u32(u_input.c, 1u)), ~(~(~u_input.c)), 39799u, _wgslsmith_div_u32(u_input.d.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, 66924u)), 6782u >> (u_input.d.x % 32u)))), ~_wgslsmith_div_i32(u_input.b.x & -1i, _wgslsmith_mod_i32(~u_input.b.x, u_input.e.x)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, -650f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f * arg_0)), !(!all(vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(823f, arg_0), 2063f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, -1322f, arg_0)))))));
    var_0 = Struct_1(var_0.a, vec4<u32>(0u, 397u | u_input.c, firstLeadingBit(min(_wgslsmith_mult_u32(u_input.c, 0u), u_input.c)), var_0.b.x), ~_wgslsmith_mod_i32(-11096i, var_0.c), var_0.d);
    var var_2 = Struct_2(var_0.d.x);
    let var_3 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~min(vec2<u32>(u_input.c, var_0.b.x), vec2<u32>(0u, var_0.b.x)), u_input.d), ~(countOneBits(var_0.b.x) | u_input.c), select(~_wgslsmith_mult_u32(var_0.b.x, ~4294967295u), _wgslsmith_dot_vec2_u32(u_input.d >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), ~var_0.b.wx) ^ ~4294967295u, !any(vec2<bool>(true, var_0.d.x))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0.a)), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(29027u, 40385u, var_3.x, 1u), vec4<u32>(49288u, 0u, var_3.x, u_input.c), var_0.b), vec4<u32>(32156u, var_0.b.x, u_input.c, 11870u)), vec4<u32>(~1u, 0u, var_0.b.x << (1u % 32u), var_3.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(var_0.c ^ -2147483647i), -u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.e.x, u_input.b.x), 4021i), _wgslsmith_sub_i32(u_input.a, -2147483647i) & ~u_input.a), max(abs(vec4<i32>(1i, var_0.c, 47118i, var_0.c) << (var_3 % vec4<u32>(32u))), ~(vec4<i32>(var_0.c, var_0.c, 2147483647i, -12969i) | vec4<i32>(u_input.e.x, -59657i, var_0.c, 17875i)))), !vec4<bool>(var_0.d.x, var_2.a, select(false, var_0.d.x, select(true, var_2.a, var_2.a)), !(u_input.c == u_input.d.x)));
}

fn func_1() -> bool {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_2()));
    var var_1 = !var_0.d;
    var_1 = select(select(func_5(-1412f).d, !vec4<bool>(true, var_0.b.x > var_0.b.x, var_1.x && true, true), select(select(vec4<bool>(false, var_1.x, var_0.d.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, false, var_0.d.x), var_0.d, true)), !select(vec4<bool>(var_0.d.x, false, true, true), var_0.d, var_0.d), vec4<bool>(!var_1.x, !var_1.x, var_1.x, var_0.c == 43132i))), select(vec4<bool>(false, !(!var_0.d.x), var_1.x & (u_input.d.x <= var_0.b.x), func_5(_wgslsmith_f_op_f32(func_4(Struct_3(var_0.c, Struct_1(vec4<f32>(1352f, var_0.a.x, var_0.a.x, 257f), var_0.b, -2147483647i, vec4<bool>(false, true, true, true)), var_0, 236f)))).d.x), !(!func_5(-1283f).d), true), vec4<bool>(true, any(select(var_0.d.wx, func_5(var_0.a.x).d.xx, vec2<bool>(false, true))), false, var_1.x));
    let var_2 = ((_wgslsmith_div_vec4_i32(u_input.b, abs(vec4<i32>(0i, 1i, u_input.a, -3360i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 15568i, var_0.c, var_0.c), u_input.b | u_input.b)) << (vec4<u32>(max(10723u, 445u << (0u % 32u)), firstTrailingBit(~u_input.c), 34522u, var_0.b.x) % vec4<u32>(32u))) & vec4<i32>(27958i, 36149i, u_input.b.x, 0i);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(~u_input.b.yx, ~vec2<i32>(var_2.x, -16076i))), _wgslsmith_add_vec2_i32(~(-vec2<i32>(1i, u_input.e.x)), ~(~u_input.e))), var_0.c, -1i, var_0.c);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(true, func_1()), vec2<bool>(true, reverseBits(-15591i) == _wgslsmith_mult_i32(u_input.a, u_input.b.x)), false);
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(28716i, Struct_1(vec4<f32>(1552f, -491f, -794f, 478f), vec4<u32>(1u, 36795u, u_input.c, 1u), u_input.e.x, vec4<bool>(false, var_0.x, var_0.x, false)), func_5(507f), _wgslsmith_f_op_f32(floor(-617f))))) + -1000f)));
    let var_3 = ~vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(-u_input.a), -4750i), 6915i ^ ((0i >> (u_input.c % 32u)) ^ abs(-13867i)), abs(u_input.e.x & 2147483647i), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_sub_i32(u_input.a, -1651i)), func_5(var_2).c, abs(firstLeadingBit(u_input.a))));
    var var_4 = select(!(!(!func_5(var_2).d)), select(select(vec4<bool>(var_2 != var_2, func_5(var_2).d.x, all(vec2<bool>(var_0.x, var_0.x)), var_0.x || var_0.x), func_5(var_2).d, !(!vec4<bool>(true, false, var_0.x, false))), select(select(func_5(743f).d, !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false && var_0.x, var_2 < -472f, false, all(vec4<bool>(false, true, var_0.x, true))), var_0.x), !var_0.x), var_0.x);
    var_4 = !select(select(vec4<bool>(4294967295u <= u_input.c, true, true, false), !(!vec4<bool>(true, false, var_0.x, true)), true), vec4<bool>(~u_input.b.x < (u_input.e.x << (124554u % 32u)), all(vec4<bool>(var_4.x, false, var_4.x, true)), var_4.x, any(var_4.xzz)), vec4<bool>(var_4.x & var_4.x, false, func_1(), any(!var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 22994i, -1i, -15482i), -vec4<i32>(u_input.e.x, 0i, -2147483647i, var_3.x))) | _wgslsmith_mod_vec4_i32(max(~u_input.b, u_input.b), reverseBits(_wgslsmith_mod_vec4_i32(var_3, var_3))));
}

