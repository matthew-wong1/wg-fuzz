struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = countOneBits(arg_0.x);
    let var_1 = any(vec3<bool>(true, any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, true))));
    var_0 = u_input.a.x;
    let var_2 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(-7641i, -9791i));
    let var_3 = false;
    return countOneBits(_wgslsmith_dot_vec2_i32((-var_2 | select(arg_0.xz, vec2<i32>(0i, 23365i), false)) | vec2<i32>(~arg_1.x, abs(2147483647i)), ~(-u_input.a.xy)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = -u_input.a.x;
    var var_1 = Struct_1(vec4<i32>(-func_3(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(588i, u_input.a.x, u_input.a.x, var_0)), vec2<i32>(u_input.a.x, var_0)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, u_input.a.x), -u_input.a.x), var_0), var_0, max(u_input.a.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-873f, 1000f, 1682f, -293f), vec4<f32>(1577f, -408f, -885f, 278f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-408f * -1038f), 238f, _wgslsmith_div_f32(-700f, 1259f), -2354f)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), arg_0.x > 21558u), false))));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = -21676i;
    let var_4 = _wgslsmith_sub_u32(arg_0.x << (0u % 32u), _wgslsmith_dot_vec4_u32(reverseBits(~(~vec4<u32>(4294967295u, arg_0.x, arg_0.x, 0u))), ~(~vec4<u32>(arg_0.x, 7015u, arg_0.x, arg_0.x) << (vec4<u32>(35428u, 1u, 32855u, 0u) % vec4<u32>(32u)))));
    return var_2;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(-1i | arg_0.a.x, -5511i & (u_input.a.x ^ (arg_0.a.x << (2438u % 32u)))), ~u_input.a.x);
    let var_1 = !(!(!(arg_0.a.x != arg_0.a.x))) & all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), false), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_2(vec2<u32>(0u, 90291u)))));
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -1205i, var_0.x, arg_0.a.x)), arg_0.a & vec4<i32>(var_0.x, u_input.a.x, var_0.x, arg_0.a.x))), var_0.x, -(~(-1i))), (1i << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5234u, 1u), vec2<u32>(3599u, 33840u)), 1u) % 32u)) >> (~4294967295u % 32u));
    var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~(-firstLeadingBit(-1i)), ~(-1i)), u_input.a.zz);
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.b.xxy);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1281f), _wgslsmith_div_f32(var_2.x, var_2.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -612f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(u_input.a.x, 43i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -30844i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(484f, 1067f, 1403f, 244f) - vec4<f32>(-1098f, 1155f, 1301f, -1941f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(611f, -1000f, -1000f, 110f)))))))));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(0u, 38026u, 4294967295u))), firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), 1u, 1u)), vec3<u32>(~abs(3434u), ~1u, ~_wgslsmith_add_u32(77647u, 0u)));
    var var_2 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(countOneBits(33923u), _wgslsmith_clamp_u32(4294967295u, 39014u, 36701u), ~var_1.x, abs(var_1.x))), vec4<u32>(var_1.x, ~var_1.x, 0u, ~(~57488u) & _wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(51822u, 0u), vec2<u32>(57806u, var_1.x)))));
    var var_3 = !vec4<bool>(false, true, !all(func_2(var_1.xz).xy), false);
    var var_4 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(~9583i, firstLeadingBit(u_input.a.x) | ~1i, 1i, u_input.a.x)), vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xw, -_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, 2147483647i))), select(~_wgslsmith_div_i32(u_input.a.x, -21713i), _wgslsmith_mod_i32(-85138i, func_3(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), false), 37313i), vec4<i32>(-86558i, reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.ww))), firstTrailingBit(_wgslsmith_sub_i32(-5568i, -33797i)) << (var_2.x % 32u), u_input.a.x));
    var var_5 = Struct_1(vec4<i32>(var_4.x, u_input.a.x, _wgslsmith_dot_vec2_i32(~(-u_input.a.yz), firstTrailingBit(vec2<i32>(u_input.a.x, var_4.x)) << ((var_2.wx ^ vec2<u32>(19620u, 1467u)) % vec2<u32>(32u))), i32(-1i) * -8857i), vec4<f32>(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(floor(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1461f - -519f), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(var_5.b.x, -434f, false & var_3.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(254f)))))), var_2.x, _wgslsmith_mod_u32(var_2.x << (~(~var_2.x) % 32u), 0u), _wgslsmith_f_op_f32(var_5.b.x * _wgslsmith_f_op_f32(exp2(var_0))), -1647f);
}

