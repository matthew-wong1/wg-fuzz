struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-550f - 248f) - _wgslsmith_f_op_f32(max(677f, -500f)))), 1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2246f, 215f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -293f), 595f, _wgslsmith_f_op_f32(-1445f - -1074f), 933f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(550f, -395f, 181f, -991f)))))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 839f, var_0.x, -1292f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), 689f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1967f)), -1769f, -1163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1116f + _wgslsmith_f_op_f32(f32(-1f) * -325f)) * 112f)));
    let var_1 = abs(~(~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.b), arg_0)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(1f)), 1000f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 778f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 113f, var_0.x, 418f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -768f, 444f)))), select(vec4<bool>(true, select(true, true, any(vec4<bool>(false, false, false, false))), all(vec4<bool>(true, true, true, true)), false), vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 41833u, 115898u), vec3<u32>(13067u, 1u, 1u)) >= _wgslsmith_add_u32(0u, 0u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_3 = _wgslsmith_div_i32(abs(arg_0), arg_0);
    return select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), all(vec4<bool>(false, true, true, true))), true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), false)), (_wgslsmith_f_op_f32(1004f - -173f) > _wgslsmith_f_op_f32(var_0.x + var_0.x)) | true), select(select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), (var_0.x <= -937f) && all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), vec2<bool>(true, select(false, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), true));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = -(~u_input.b & firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, 27208i)));
    var var_1 = arg_2.b;
    var var_2 = -1142f;
    let var_3 = arg_2;
    var var_4 = ~70226u;
    return vec3<u32>(1u, 17597u, 1u);
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(func_4(Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec2<bool>(false, true), select(true, true, false), ~(22157i & u_input.b), u_input.b), _wgslsmith_f_op_f32(-1f), Struct_1(true, select(vec2<bool>(true, true), func_3(22684i), any(vec2<bool>(true, true))), true, (u_input.a & 0i) >> (~0u % 32u), u_input.a)), vec3<u32>(abs(_wgslsmith_mult_u32(max(4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(288u, 0u), vec2<u32>(35961u, 71059u)))), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 72547u, 0u)), _wgslsmith_div_u32(4294967295u, 4294967295u), true), max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), firstLeadingBit(vec2<u32>(34116u, 0u))), 43158u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2082f + -1000f), -887f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(-220f, 150f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(361f - 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f + -771f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1835f + 1942f), _wgslsmith_f_op_f32(f32(-1f) * -1051f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1051f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 461f) * 228f))));
    var_1 = vec4<f32>(524f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(797f, -128f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(abs(-1361f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(642f - -881f) * _wgslsmith_f_op_f32(-330f - 713f))) * 1659f), var_1.x);
    var var_2 = true;
    var_2 = !any(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true));
    return vec2<u32>(~(~func_4(Struct_1(true, vec2<bool>(false, false), false, 0i, u_input.a), 1408f, Struct_1(false, vec2<bool>(true, true), false, -1i, u_input.a)).x & 22679u), 83246u);
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_2() >> (_wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(reverseBits(max(20671u, 0u)), func_2().x)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(789f, 609f, false)) + 491f))), -561f);
    var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = Struct_1(!(all(vec3<bool>(true, true, true)) != select(any(vec2<bool>(true, true)), true, true)), select(func_3(select(i32(-1i) * -49070i, _wgslsmith_clamp_i32(-1i, u_input.a, -4878i), true)), func_3(u_input.b), !func_3(_wgslsmith_add_i32(-55968i, u_input.a)).x), !(!(true || all(vec4<bool>(true, false, false, false)))), 2147483647i, -2147483647i);
    var var_3 = countOneBits(1u);
    return Struct_1(all(!select(!vec3<bool>(false, var_2.b.x, var_2.b.x), vec3<bool>(true, true, true), vec3<bool>(var_2.a, var_2.b.x, true))), vec2<bool>(!select(var_2.b.x, false, var_2.a) | any(!vec2<bool>(true, var_2.a)), true), false, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, 76757i) | ~vec2<i32>(u_input.a, 1i)), vec2<i32>(countOneBits(u_input.a), -_wgslsmith_add_i32(u_input.a, var_2.e))), -_wgslsmith_mult_i32(u_input.a, -1i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    let var_0 = arg_2;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1135f, -1405f))))))), -1084f, _wgslsmith_f_op_f32(sign(-1202f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(375f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + -716f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(-868f + -1000f), !arg_1.x)), 1176f)));
    let var_2 = func_1();
    return 2147483647i;
}

fn func_6(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = -1538f;
    var var_1 = any(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, false)), vec3<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(true, false, true))), false));
    var var_2 = all(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x) | vec2<i32>(arg_0.x, -42436i), vec2<i32>(u_input.b, arg_1)) >= 35733i, true, func_1().b.x));
    let var_3 = Struct_1(true, !select(vec2<bool>(true, true), func_1().b, false), !((i32(-1i) * -62081i) <= arg_1), -countOneBits(~0i), arg_0.x);
    let var_4 = arg_0.yxw;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec2<bool>(true, !all(vec4<bool>(true, true, true, true))), all(vec2<bool>(true, true)), ~29947i, u_input.a);
    var var_1 = func_6(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a, abs(u_input.b), _wgslsmith_mult_i32(u_input.a, 10194i), i32(-1i) * -1i), (vec4<i32>(var_0.e, var_0.e, u_input.a, -2147483647i) | vec4<i32>(u_input.b, var_0.e, 11858i, 53378i)) | -vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a ^ 39730i, -13415i, ~20235i, var_0.e)), vec4<i32>(u_input.a, func_5(func_1(), !vec2<bool>(var_0.b.x, true), _wgslsmith_div_u32(47256u, 7072u)), u_input.a, u_input.a)), _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_0.d), vec2<i32>(26138i, -2147483647i)), -vec2<i32>(u_input.a, 2147483647i))));
    var var_2 = -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, var_0.e, -65067i) | firstTrailingBit(~vec3<i32>(u_input.a, 17786i, 46339i)), countOneBits(-vec3<i32>(u_input.a, 1i, var_0.e)));
    var_2 = -_wgslsmith_clamp_i32(abs(-2147483647i), -countOneBits(-1i) << (1u % 32u), 1i);
    var_2 = var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, -630f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(669f, -577f) + -359f), 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1135f, 168f, 570f, -279f) - vec4<f32>(242f, 142f, 1000f, 1708f)) - vec4<f32>(2769f, 168f, -1000f, 123f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-585f, 396f, -1369f, 534f) - _wgslsmith_div_vec4_f32(vec4<f32>(-409f, -1356f, 709f, -1643f), vec4<f32>(-799f, -1000f, 157f, -464f))))), select(u_input.a, 0i, !(true | !var_0.b.x)), var_0.d);
}

