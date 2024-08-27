struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(vec3<bool>(true, select(false, false, true), false), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 0u, 69309u, arg_0) & vec4<u32>(u_input.a.x, 0u, arg_0, 1u), vec4<u32>(u_input.a.x, u_input.a.x, arg_0, 27448u) & vec4<u32>(1u, arg_0, arg_0, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.a.x, u_input.a.x, 78101u), vec4<u32>(6140u, arg_0, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_0), vec4<u32>(31894u, 37327u, 4294967295u, 0u)))), Struct_1(-50014i));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-277f, _wgslsmith_f_op_f32(202f - 669f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1189f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-748f))))));
    var var_3 = var_0.c;
    var var_4 = any(select(select(select(select(vec4<bool>(true, var_1.a.x, true, var_0.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), false), select(vec4<bool>(var_1.a.x, true, var_0.a.x, true), vec4<bool>(var_0.a.x, var_1.a.x, false, var_0.a.x), var_0.a.x), var_1.a.x), !select(vec4<bool>(true, var_0.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(var_0.a.x, var_1.a.x, true, false)), !var_1.a.x), vec4<bool>(!var_0.a.x & any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(trunc(var_2)) == _wgslsmith_f_op_f32(1564f + -115f), any(vec4<bool>(false, false, false, var_1.a.x)), !all(vec3<bool>(false, var_0.a.x, true))), var_1.a.x));
    return _wgslsmith_f_op_f32(564f - _wgslsmith_f_op_f32(var_2 - 308f));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = vec4<f32>(-803f, _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_1(~_wgslsmith_mult_i32(u_input.b, u_input.b)))), 1523f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1029f, -1267f)) - -2353f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(693f + 1037f) * 1f)))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + 395f), _wgslsmith_f_op_f32(var_0.x * 501f), 2097f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1008f, var_0.x, _wgslsmith_f_op_f32(251f * 295f), _wgslsmith_f_op_f32(trunc(-1064f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, -220f), vec4<f32>(var_0.x, -659f, var_0.x, 1606f))) - vec4<f32>(var_0.x, 470f, 727f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1579f, 291f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(264f, var_0.x, var_0.x, -1038f) * vec4<f32>(1270f, var_0.x, var_0.x, var_0.x)))))));
    let var_1 = arg_0;
    var var_2 = Struct_1(min(max(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(18421i, u_input.b) | vec2<i32>(u_input.b, u_input.b))), 19185i >> (u_input.a.x % 32u)));
    var var_3 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(-(-1i ^ var_2.a), ~max(var_2.a, -1676i), -_wgslsmith_sub_i32(u_input.b, -2147483647i), -max(2147483647i, -2147483647i)), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2.a, u_input.b, var_2.a, u_input.b)), vec4<i32>(var_2.a, u_input.b, 2147483647i, var_2.a)), reverseBits(countOneBits(1i)), max(0i, ~(-1i)))), vec4<i32>(var_2.a, u_input.b, 1i, -min(_wgslsmith_sub_i32(2147483647i, u_input.b), var_2.a)), select(vec4<bool>(!all(vec3<bool>(true, var_1, var_1)), !(arg_0 | arg_0), arg_0, false), !select(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, var_1, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, var_1, false, true), vec4<bool>(false, true, arg_0, false), vec4<bool>(false, var_1, true, arg_0)), !vec4<bool>(true, true, arg_0, arg_0)), !select(select(vec4<bool>(arg_0, arg_0, var_1, arg_0), vec4<bool>(true, true, false, arg_0), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return Struct_2(vec3<bool>(!(_wgslsmith_f_op_f32(-470f * var_0.x) < _wgslsmith_f_op_f32(782f * 1132f)), any(!vec4<bool>(arg_0, arg_0, var_1, true)), true && (20210i == var_3.x)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(30323u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 51157u, u_input.a.x), abs(max(vec4<u32>(12537u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 14548u, u_input.a.x))))), Struct_1(var_3.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~(abs(firstTrailingBit(-vec4<i32>(-1i, 2147483647i, arg_0.a, arg_0.a))) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1.b.x, 57062u, u_input.a.x), arg_1.b), arg_1.b) % vec4<u32>(32u)));
    let var_1 = -8936i ^ var_0.x;
    let var_2 = func_2(false).c;
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f * 565f)), _wgslsmith_f_op_f32(f32(-1f) * -2280f)))) + -1392f);
    return func_2(arg_1.a.x).c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = vec3<i32>(arg_2.c.a, _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_div_i32(1i, arg_0.a), _wgslsmith_mod_i32(-arg_1.c.a | arg_2.c.a, -8855i)), _wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, arg_3.c.a)), ~vec2<i32>(arg_0.a, 8722i))), -24022i));
    let var_1 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(func_3(~arg_1.b.x, func_2(false).c)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-347f, 1591f))), true, false), ~func_2(!any(arg_2.a.xx)).b, Struct_1(max(arg_3.c.a, 14426i)));
    var var_2 = select(~arg_0.a, -1i, all(!vec3<bool>(arg_2.a.x, true, all(vec3<bool>(true, false, var_1.a.x)))));
    var var_3 = u_input.a.x << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~1u), arg_1.b.x), arg_2.b.x | 34828u) % 32u);
    let var_4 = vec3<u32>(_wgslsmith_mult_u32(18507u, abs(u_input.a.x)) >> (firstTrailingBit(~firstTrailingBit(4294967295u)) % 32u), ~var_1.b.x, ~arg_1.b.x);
    return vec4<u32>(1u, u_input.a.x, ~4294967295u, ~0u);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2031f * 1459f) * _wgslsmith_f_op_f32(round(467f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1743f + -1000f))))));
    var var_1 = Struct_2(vec3<bool>(false, true, true), select(~(vec4<u32>(u_input.a.x, 76248u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(u_input.a.x, 3231u, u_input.a.x, 0u) % vec4<u32>(32u))), func_5(func_4(Struct_1(-1i), func_2(false)), func_2(true), func_2(false), func_2(true)), 1u < _wgslsmith_div_u32(u_input.a.x, countOneBits(u_input.a.x))), func_4(Struct_1(~u_input.b), func_2(true)));
    let var_2 = u_input.a.x;
    var var_3 = vec3<u32>(min(~_wgslsmith_div_u32(35893u, var_2), var_1.b.x), firstLeadingBit(~35817u), ~0u ^ reverseBits(abs(firstTrailingBit(0u))));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(913f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-839f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 867f))))), var_0));
    return func_2(all(!(!vec4<bool>(arg_0.x, false, true, arg_0.x)))).c.a;
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f * -512f) - -255f))), 702f, _wgslsmith_f_op_f32(trunc(-751f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(-1335f - 785f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(895f - -224f) + 1f)))));
    let var_1 = arg_1.a;
    let var_2 = -9672i;
    let var_3 = func_4(func_2(arg_1.a.x).c, Struct_2(!(!vec3<bool>(var_1.x, arg_0, false)), ~_wgslsmith_add_vec4_u32(arg_1.b, _wgslsmith_mod_vec4_u32(arg_1.b, arg_1.b)), func_2(select(arg_0, true, var_1.x)).c));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, 1776f, arg_1.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 341f))), vec2<bool>(arg_1.a.x, arg_1.a.x))) - _wgslsmith_f_op_vec2_f32(-var_0.zx));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(true, Struct_2(vec3<bool>(false, all(vec4<bool>(true, false, false, false)), true), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 69970u, u_input.a.x, u_input.a.x)), ~vec4<u32>(28715u, 31231u, 13904u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(39173u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(67967u, u_input.a.x, u_input.a.x, 56609u))), ~vec4<u32>(3905u, u_input.a.x, 4294967295u, u_input.a.x) >> (reverseBits(vec4<u32>(0u, u_input.a.x, 0u, 4294967295u)) % vec4<u32>(32u)), max(vec4<u32>(36587u, 36034u, 60507u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, 49039u)) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), Struct_1(func_1(vec2<bool>(false, false)) >> ((u_input.a.x & 6644u) % 32u))));
    var_0 = func_2(any(select(func_2(true).a, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), true)) && false).c;
    var_0 = Struct_1(func_4(func_4(func_2(u_input.b >= -24365i).c, Struct_2(vec3<bool>(true, true, true), select(vec4<u32>(0u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), false), Struct_1(51609i))), func_2(false)).a);
    var_0 = func_6(true & (29413u >= ~u_input.a.x), func_2(true));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, u_input.b, u_input.b), vec3<i32>(59466i, 2147483647i, u_input.b)), firstTrailingBit(vec3<i32>(1i, 1i, 13619i)))))), -1277f);
    var_0 = func_4(Struct_1(u_input.b), Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), select(true, -31510i >= u_input.b, true)), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), ~36453u), u_input.a.x, ~(~12758u)), Struct_1(-4968i >> (~u_input.a.x % 32u))));
    let var_2 = _wgslsmith_sub_vec3_u32(~max((vec3<u32>(10795u, u_input.a.x, u_input.a.x) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << ((vec3<u32>(1u, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 29757u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(55461u, u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(~73830u, u_input.a.x << (1u % 32u), ~10669u), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1464u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, 36162u), vec3<bool>(true, true, true))));
    var var_3 = func_2(false);
    var_3 = Struct_2(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x && any(!vec2<bool>(true, var_3.a.x))), var_3.b, func_2(any(func_2(!var_3.a.x).a)).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.yxz, ~(~_wgslsmith_div_i32(u_input.b, var_3.c.a) >> (23337u % 32u)));
}

