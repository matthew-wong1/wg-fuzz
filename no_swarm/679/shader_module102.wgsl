struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3) -> i32 {
    var var_0 = -1i;
    var_0 = max(~u_input.a, _wgslsmith_clamp_i32(-abs(countOneBits(-2147483647i)), 1i, ~_wgslsmith_dot_vec2_i32(abs(arg_2.e.a), abs(vec2<i32>(39996i, 2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(165f, 1043f)), _wgslsmith_div_f32(arg_2.e.b, arg_2.e.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(157f, -1296f), vec2<f32>(arg_0, -1272f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(138f, 350f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.b, _wgslsmith_f_op_f32(-arg_2.e.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.e.b, _wgslsmith_f_op_f32(max(-650f, arg_0))))));
    var_0 = -2147483647i;
    let var_2 = vec4<bool>(all(!vec4<bool>(false, true, u_input.a < arg_1, true)), !select(all(vec3<bool>(true, true, true)), false, true), false, false);
    return -1i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = max(_wgslsmith_sub_i32(u_input.a, arg_3.a.x) & _wgslsmith_mult_i32(-func_3(arg_0.e.b, -1i, Struct_3(arg_3.a.x, vec4<u32>(0u, 58457u, arg_0.e.c, 7819u), 0i, vec4<i32>(arg_0.c, arg_3.a.x, -1i, -39827i), Struct_2(arg_3.a, arg_1.x, arg_0.e.c))), ~u_input.a), 15312i);
    var var_1 = vec3<u32>(~(~(~(~4294967295u))), _wgslsmith_dot_vec2_u32(abs(countOneBits(arg_0.b.zy)), vec2<u32>(firstTrailingBit(~arg_3.c), arg_0.e.c)), arg_0.e.c);
    var_1 = vec3<u32>(abs(~arg_0.b.x), ~countOneBits(0u) ^ firstTrailingBit(arg_0.e.c >> (~var_1.x % 32u)), ~(~(~arg_3.c)) | _wgslsmith_div_u32(countOneBits(0u >> (u_input.b % 32u)), arg_3.c & countOneBits(arg_3.c)));
    var var_2 = Struct_4(countOneBits(arg_0.b.x << (arg_3.c % 32u)), select(abs(vec4<i32>(2147483647i, var_0, -1i, arg_3.a.x)), vec4<i32>(19173i >> (u_input.b % 32u), -1i, -var_0, u_input.a), arg_2) >> (~(~arg_0.b) % vec4<u32>(32u)), Struct_1(-3769i, 1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.e.b, arg_3.b, arg_0.e.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_0.e.b, arg_1.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.zzw, arg_1.ywx)) - _wgslsmith_f_op_vec3_f32(-arg_1.yxz)), arg_1.yzz))), arg_3, Struct_2(vec2<i32>(~(-2147483647i), 2147483647i), _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(step(-223f, _wgslsmith_f_op_f32(arg_1.x * 1312f)))), firstLeadingBit(4294967295u)));
    var var_3 = vec3<bool>(any(!select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, true)), !vec2<bool>(arg_2, true), vec2<bool>(false, arg_2))), true, false);
    return -2147483647i;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1677f, 1289f, arg_2.x) - vec4<f32>(arg_2.x, -184f, arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1318f, -593f, 2255f, 873f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 390f, 551f, arg_2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, 526f, arg_2.x, 1095f), vec4<f32>(235f, arg_2.x, arg_2.x, -432f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-876f, 760f, -1774f, arg_2.x)))))))));
    var var_1 = 23704u;
    let var_2 = Struct_4(~4294967295u, vec4<i32>(countOneBits(_wgslsmith_mult_i32(func_2(Struct_3(arg_0, vec4<u32>(54937u, u_input.c, u_input.b, u_input.b), 10357i, vec4<i32>(42568i, arg_0, 1i, arg_1), Struct_2(vec2<i32>(u_input.a, arg_1), -521f, 32236u)), vec4<f32>(-264f, -2403f, -360f, arg_2.x), false, Struct_2(vec2<i32>(arg_1, 0i), var_0.x, u_input.b)), arg_1 & 1i)), -(~2147483647i), select(arg_0, select(arg_0, _wgslsmith_mult_i32(arg_0, -15358i), any(vec2<bool>(true, true))), true), ~1i), Struct_1(i32(-1i) * -2147483647i, 29336i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-663f, -744f, var_0.x) + var_0.xxw) - _wgslsmith_f_op_vec3_f32(-var_0.yzy)) - var_0.yww), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, var_0.x, -153f))))), Struct_2(abs(-vec2<i32>(-33015i, -63071i)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x - var_0.x), 712f), 1407f, true)), select(~(u_input.b & u_input.b), _wgslsmith_mod_u32(4294967295u ^ u_input.c, u_input.c), true)), Struct_2(vec2<i32>(0i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f)), ~abs(_wgslsmith_add_u32(0u, u_input.c))));
    var_1 = ~4294967295u;
    var var_3 = Struct_4(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_2.e.c, var_2.a) | _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_2.a), vec2<u32>(42245u, u_input.b))), vec2<u32>(countOneBits(firstLeadingBit(var_2.e.c)), ~(~u_input.b))), (var_2.b ^ vec4<i32>(-10983i, 25175i | var_2.b.x, var_2.b.x, 2147483647i)) | min(var_2.b, vec4<i32>(-4817i, 13442i, -var_2.c.a, -18468i)), var_2.c, var_2.d, Struct_2(vec2<i32>(-1i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1), vec2<i32>(u_input.a, 6252i)), 0i, true)), _wgslsmith_f_op_f32(trunc(var_0.x)), select(u_input.c, _wgslsmith_mult_u32(31316u, u_input.c), any(vec3<bool>(false, false, true))) | u_input.b));
    return ~4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_u32(~(4294967295u >> (countOneBits(u_input.c | 0u) % 32u)), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(1u, arg_2.x)) >> (_wgslsmith_div_u32(u_input.b, ~1u) % 32u), abs(~(~0u))));
    var var_1 = Struct_2(~_wgslsmith_div_vec2_i32((vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(arg_2.x, 60003u) % vec2<u32>(32u))) | arg_3, vec2<i32>(_wgslsmith_add_i32(arg_3.x, arg_0.x), min(-2147483647i, u_input.a))), -346f, arg_2.x);
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1906f) <= _wgslsmith_f_op_f32(-var_1.b), false | !arg_1, all(!(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, false)))));
    var var_3 = ~countOneBits(arg_2.x) & ~8457u;
    let var_4 = Struct_4(~(~u_input.c), vec4<i32>(1335i, i32(-1i) * -1i, ~(-11360i), arg_0.x), Struct_1(u_input.a, ~21086i, vec3<f32>(457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))), var_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1056f * var_1.b), _wgslsmith_f_op_f32(round(-1697f)), var_1.b))), Struct_2(vec2<i32>(u_input.a, -2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))), ~var_1.c), Struct_2(-(~arg_3), var_1.b, arg_2.x));
    return Struct_3(-9127i, vec4<u32>(arg_2.x, ~(arg_2.x | _wgslsmith_mod_u32(var_1.c, 0u)), 4294967295u, u_input.b), 0i, var_4.b, Struct_2(countOneBits(arg_0), -331f, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -933f;
    let var_1 = func_4((-(~vec2<i32>(2147483647i, 0i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-2147483647i, -2147483647i))) >> ((vec2<u32>(u_input.c, u_input.b & 53000u) ^ (vec2<u32>(53202u, 10986u) << (~vec2<u32>(102867u, u_input.b) % vec2<u32>(32u)))) % vec2<u32>(32u)), all(vec2<bool>(true, false)), ~vec2<u32>(u_input.b, firstTrailingBit(_wgslsmith_mod_u32(u_input.b, u_input.c))), vec2<i32>(_wgslsmith_mod_i32(~8360i, -92102i), u_input.a << (func_1(u_input.a | 9539i, -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0))) % 32u)));
    let var_2 = Struct_3(-2147483647i, var_1.b, i32(-1i) * -2147483647i, _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mod_vec4_i32(var_1.d, var_1.d)), ~(-var_1.d)) << ((_wgslsmith_sub_vec4_u32(~var_1.b, select(vec4<u32>(0u, u_input.c, 0u, var_1.e.c), vec4<u32>(var_1.b.x, var_1.b.x, 71518u, 60747u), vec4<bool>(true, true, true, false))) >> (((var_1.b | vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c)) ^ ~vec4<u32>(53399u, u_input.b, 0u, 90059u)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_1.e);
    var var_3 = vec2<bool>(false, true);
    var_3 = vec2<bool>(false, true);
    var var_4 = var_2.e.a;
    let var_5 = Struct_1(u_input.a, min(_wgslsmith_sub_i32(-38534i, abs(var_4.x)), var_4.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_1.e.b, var_2.e.b), vec3<f32>(var_1.e.b, 1794f, -847f), vec3<bool>(true, var_3.x, false)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.b, var_2.e.b, -369f) + vec3<f32>(var_1.e.b, 970f, -1553f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, _wgslsmith_f_op_f32(var_1.e.b * var_0), _wgslsmith_f_op_f32(-var_2.e.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e.b, 1000f, var_1.e.b), vec3<f32>(var_2.e.b, -1824f, -1583f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.b, 366f, var_1.e.b) * vec3<f32>(var_0, var_1.e.b, var_0)))), var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(5408u & _wgslsmith_sub_u32(1u, 14464u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.b.x), vec2<u32>(var_1.b.x, var_2.e.c))), var_1.e.b, ~abs(var_2.b));
}

