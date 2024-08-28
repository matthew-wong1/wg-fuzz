struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x) + arg_1.b.a.x) - _wgslsmith_f_op_f32(-arg_2.a.x))), arg_0);
    var var_1 = firstLeadingBit(vec3<i32>(~_wgslsmith_mult_i32(1i, min(5273i, 1i)), -2147483647i, 1i));
    let var_2 = abs(~(~firstTrailingBit(select(vec4<u32>(57917u, 70703u, u_input.a.x, 0u), vec4<u32>(0u, 4294967295u, 41416u, 18052u), vec4<bool>(true, true, arg_1.b.c, false)))));
    let var_3 = _wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), firstTrailingBit(-6153i))), var_1.x ^ -2147483647i);
    var var_4 = var_0;
    return arg_2.b.xz;
}

fn func_2() -> bool {
    let var_0 = ~((~(u_input.b & 1u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, 7501u, u_input.a.x), vec4<u32>(u_input.b, 74489u, u_input.b, u_input.a.x)) % 32u)) << (u_input.b % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1038f, 163f, -1572f, 1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-346f)), _wgslsmith_f_op_f32(-614f + -735f), _wgslsmith_f_op_f32(f32(-1f) * -877f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, 1006f, 854f, 118f) + vec4<f32>(-713f, 983f, 178f, -810f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2859f, 107f, -950f, 476f) + vec4<f32>(874f, 766f, -845f, -362f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(273f, -857f, -693f, 158f), vec4<f32>(1073f, -576f, 843f, -366f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(194f, -186f, -985f, 213f) * vec4<f32>(-899f, 1000f, -486f, 764f)), all(vec4<bool>(false, true, true, true)))), true))), select(vec3<bool>(all(vec2<bool>(true, true)), all(func_3(-435f, Struct_2(vec4<f32>(-951f, 845f, -1559f, -1152f), Struct_1(vec4<f32>(1707f, 2433f, -348f, -664f), vec3<bool>(false, true, true), false)), Struct_1(vec4<f32>(457f, 1834f, -1000f, 596f), vec3<bool>(true, false, true), true))), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), true), u_input.a.x > _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, var_0, 0u)), vec3<u32>(0u, u_input.b, 4294967295u))), false);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-610f * -1144f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))));
    return !(!(min(var_0, u_input.b) <= _wgslsmith_add_u32(~1u, ~u_input.a.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = func_2() | !(!((266f >= arg_2) || true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 325f), arg_1.x, _wgslsmith_f_op_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 513f, arg_0.x, 1978f)))))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), func_2()), true);
    var_0 = any(select(vec4<bool>(!all(vec3<bool>(var_1.b.x, false, var_1.b.x)), (u_input.a.x == 1u) && false, var_1.c, false), !(!(!vec4<bool>(true, var_1.c, var_1.b.x, var_1.b.x))), !select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.c, var_1.c), vec4<bool>(false, var_1.c, true, false), !vec4<bool>(var_1.c, var_1.c, true, var_1.c))));
    var var_2 = _wgslsmith_clamp_u32(~(~(u_input.b << (_wgslsmith_sub_u32(u_input.a.x, u_input.b) % 32u))), max(u_input.a.x, select(_wgslsmith_mod_u32(u_input.b, 0u) | 4294967295u, reverseBits(0u), var_1.c)), 4294967295u);
    let var_3 = var_1;
    return Struct_2(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(round(-346f)), -1576f, arg_0.x), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = arg_1.a.x;
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1032f, -1134f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, var_0))))) * _wgslsmith_f_op_vec2_f32(select(arg_1.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.ww)), vec2<bool>(!arg_0.b.b.x, !arg_0.b.b.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, -997f, var_0, -1862f))))))), var_0);
    var_1 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(var_0 - -1228f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.b.a.wz), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a.x, -2064f)))))), vec2<f32>(var_1.b.a.x, 448f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.a))) + arg_1.b.a) * vec4<f32>(_wgslsmith_f_op_f32(abs(-1011f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_0), _wgslsmith_f_op_f32(ceil(func_1(vec2<f32>(867f, 1195f), vec4<f32>(-672f, 478f, -121f, arg_0.a.x), -677f).b.a.x)), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1014f, arg_1.a.x, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1098f - 1571f), _wgslsmith_f_op_f32(-var_1.a.x))));
    let var_2 = func_1(vec2<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(floor(arg_1.b.a.x))), arg_1.a, arg_1.a.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(228f, -144f, func_1(var_2.b.a.wz, arg_0.a, var_1.b.a.x).b.a.x, -330f))) - var_1.a), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_0.b.a.x, -2395f, var_0) - var_1.b.a), vec4<f32>(arg_1.a.x, var_0, 1942f, -936f))))), select(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1069f, var_2.b.a.x)), _wgslsmith_f_op_vec4_f32(-arg_1.a), -1000f).b.b, select(vec3<bool>(false, true, true), arg_1.b.b, var_1.b.b), vec3<bool>(var_0 > 131f, true | arg_0.b.b.x, true)), arg_1.b.b.x));
    return arg_0.a.wwx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = countOneBits(_wgslsmith_div_u32(24564u, u_input.b));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(vec2<f32>(-1075f, -2571f), vec4<f32>(-308f, 342f, -1000f, 1712f), -1140f), func_1(vec2<f32>(1398f, -285f), vec4<f32>(-360f, -178f, 524f, -244f), -472f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(442f, _wgslsmith_f_op_f32(-1078f - -166f), _wgslsmith_f_op_f32(ceil(-718f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, _wgslsmith_f_op_f32(-672f * 232f), -101f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-385f, var_1.x, var_1.x, 1033f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(122f, 1086f, 313f, 674f)))), vec4<f32>(848f, 1517f, _wgslsmith_f_op_f32(1497f + var_1.x), var_1.x))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-906f, -317f, -512f, -1253f)), _wgslsmith_div_vec4_f32(vec4<f32>(-416f, var_1.x, var_1.x, -2260f), vec4<f32>(var_1.x, var_1.x, 619f, -890f)))), vec4<f32>(236f, var_1.x, var_1.x, var_1.x), true)), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), func_2()), all(vec3<bool>(true, true, true))));
    var var_3 = 60254i;
    var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2.a)) - var_2.a)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_2.b.a.x - _wgslsmith_f_op_f32(step(1065f, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_vec4_f32(-var_2.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x)))), -618f), var_2.a.yzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-819f * var_1.x)) * var_1.x));
}

