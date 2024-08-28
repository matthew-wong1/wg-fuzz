struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_2 {
    var var_0 = true;
    var_0 = true;
    var_0 = true;
    var var_1 = vec3<u32>(19551u, abs(~_wgslsmith_div_u32(20731u >> (0u % 32u), _wgslsmith_mult_u32(31332u, 51715u))), min(31714u, 4294967295u));
    return Struct_2(~(vec2<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), var_1.x) & var_1.xz));
}

fn func_3() -> bool {
    let var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 64293u), reverseBits(vec2<u32>(1u, 35111u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(72539u, 576u), vec2<u32>(36271u, 35916u), vec2<u32>(11080u, 28533u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_div_f32(-680f, 1757f), -319f))), vec2<f32>(-1000f, -699f))), !vec3<bool>(true, !any(vec4<bool>(true, false, true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), abs(~(-vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x))));
    var var_1 = func_2();
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~37099u), var_0.a.x), countOneBits(select(vec2<u32>(4294967295u, 48959u), ~vec2<u32>(var_1.a.x, 67185u), select(vec2<bool>(false, false), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_0.c.x, var_0.c.x))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(967f, _wgslsmith_f_op_f32(round(var_0.b.x)))) + -1304f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.b.x)))))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3, var_3))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, var_0.b.x), var_0.b, var_0.c.x)), vec2<f32>(var_0.b.x, -919f), select(var_0.c.yy, vec2<bool>(true, true), var_0.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, var_0.b.x), var_0.b) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - var_3))) - vec2<f32>(-3067f, _wgslsmith_div_f32(var_3, -1000f)))));
    return !(var_0.c.x | true);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = var_0.a.x;
    var var_2 = Struct_1(arg_0.xy, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-184f, _wgslsmith_f_op_f32(2752f - -893f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(940f, 1205f) - vec2<f32>(-1055f, 1459f)))))), !select(vec3<bool>(true, var_0.a.x != arg_0.x, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false & (var_0.a.x <= arg_0.x)), select(~firstTrailingBit(vec3<i32>(u_input.a.x, arg_1, 1i) << (vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u) % vec3<u32>(32u))), ~vec3<i32>(-37070i, _wgslsmith_mult_i32(1i, arg_1), -u_input.a.x), func_3()));
    let var_3 = Struct_1(vec2<u32>(~1u, 50408u), vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.b.x)), var_2.b.x), var_2.c, -abs(-vec3<i32>(37809i, u_input.b.x, u_input.b.x)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), var_3.b.x);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(~18406u, arg_0.x), ~firstTrailingBit(func_2().a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 23541u < _wgslsmith_dot_vec2_u32(func_1(~firstLeadingBit(vec4<u32>(24380u, 1u, 4294967295u, 1u)), countOneBits(i32(-1i) * -2147483647i)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), func_2().a));
    let var_1 = Struct_1(~abs(~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1030f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, 905f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1282f, 2136f) * vec2<f32>(-275f, 1000f))))), vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), var_0, select(false, true, !var_0) || var_0), -(~firstTrailingBit(vec3<i32>(u_input.b.x, -7337i, -2147483647i))));
    var var_2 = var_1.a.x;
    let var_3 = func_2();
    var var_4 = func_2();
    let var_5 = Struct_1(var_3.a, var_1.b, vec3<bool>(var_4.a.x > 0u, func_3(), any(select(select(var_1.c, vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_1.c.x, var_1.c.x)), select(var_1.c, var_1.c, var_1.c), all(vec4<bool>(true, true, var_1.c.x, false))))), firstTrailingBit(var_1.d));
    var var_6 = vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(441f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_6 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1815f, var_5.b.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_5.b + vec2<f32>(-1544f, 890f))))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(var_1.b.x, -1069f), var_6.x), vec2<f32>(_wgslsmith_div_f32(var_6.x, -352f), 1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_5.b)))))))));
    var var_7 = _wgslsmith_f_op_f32(-var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(19515i, var_5.d.x), 2147483647i), u_input.b ^ reverseBits(vec2<i32>(u_input.b.x, 19689i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_5.b.x))), -1i, ~firstLeadingBit(1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_5.b.x)), _wgslsmith_f_op_vec2_f32(-var_5.b))) * vec2<f32>(2022f, _wgslsmith_f_op_f32(1835f * var_1.b.x))));
}

