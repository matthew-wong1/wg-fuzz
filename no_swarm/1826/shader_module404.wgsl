struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_1(true, 13857i, !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true), all(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(1u < u_input.a.x, any(vec4<bool>(false, true, true, true)), arg_1 > arg_1, false)), 1i, vec2<bool>(false, true || select(true, all(vec2<bool>(true, true)), false)));
    var var_1 = arg_2.x;
    let var_2 = var_0.c.zxz;
    var var_3 = Struct_1(any(vec3<bool>(!var_2.x, var_2.x && var_0.e.x, true)) | false, ~max(var_0.d, -_wgslsmith_mod_i32(29190i, -10835i)), var_0.c, select(_wgslsmith_add_i32(-26581i, abs(~var_0.d)), _wgslsmith_mod_i32(reverseBits(abs(0i)), var_0.b), select(true, !var_2.x, var_0.c.x)), select(vec2<bool>(false, var_0.a), var_2.zx, !select(select(var_0.c.xw, vec2<bool>(true, false), var_2.x), select(vec2<bool>(var_2.x, var_0.c.x), vec2<bool>(var_2.x, false), var_0.c.x), true)));
    return abs(~(-select(-2147483647i, 1i, all(vec2<bool>(var_0.c.x, var_3.c.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = arg_0;
    let var_1 = abs(max(max(u_input.a, ~u_input.c.yx), _wgslsmith_sub_vec2_u32(vec2<u32>(27954u, 57940u), vec2<u32>(0u, u_input.a.x))) ^ select(~(~vec2<u32>(u_input.c.x, u_input.a.x)), vec2<u32>(u_input.c.x ^ u_input.a.x, u_input.a.x), select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), var_0.e)));
    let var_2 = Struct_1(!var_0.a, min(arg_0.d, -arg_0.b), arg_0.c, u_input.b, select(var_0.e, select(!vec2<bool>(var_0.a, var_0.a), select(!vec2<bool>(arg_0.e.x, var_0.c.x), select(arg_0.e, vec2<bool>(arg_0.c.x, false), arg_0.c.x), any(var_0.c)), var_0.e), select(vec2<bool>(true, var_0.e.x), !vec2<bool>(true, arg_0.e.x), var_0.c.ww)));
    var var_3 = reverseBits(select(countOneBits(~vec2<i32>(var_0.d, 17736i)) >> (~(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(1i, -10058i), arg_0.c.yz));
    var var_4 = vec3<u32>(min(var_1.x, 1u), _wgslsmith_mult_u32(~(var_1.x & 0u), abs(~4294967295u)), ~u_input.c.x) >> (vec3<u32>(u_input.c.x, 10852u, u_input.a.x) % vec3<u32>(32u));
    return var_0.a;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = !vec4<bool>(func_4(Struct_1(true, func_3(vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x), 187f, vec2<u32>(u_input.a.x, 0u)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 11136i, u_input.b), vec3<i32>(u_input.b, 7980i, 77240i)), vec2<bool>(true, true)), -1076f), min(~u_input.a.x, 1u) != firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, u_input.a.x)), all(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true)), !(!(0u <= u_input.c.x)));
    var_0 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.a)), 0u ^ ~u_input.c.x) > 1u, !(9240u != _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.c.zy), 10787u)), !var_0.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) > _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))));
    let var_1 = Struct_1(!any(var_0.xy), -u_input.b, !select(vec4<bool>(any(var_0.xxx), false & var_0.x, true, true), vec4<bool>(false, select(false, var_0.x, false), true, all(var_0.yzz)), any(!var_0.yz)), abs(i32(-1i) * -2147483647i), var_0.zx);
    var var_2 = Struct_1(all(var_1.c.zy), ~u_input.b, !select(select(var_1.c, var_1.c, var_1.c), var_1.c, select(func_4(var_1, -1000f), var_0.x, true)), -reverseBits(var_1.d), !vec2<bool>(false | !var_1.c.x, var_1.e.x));
    var_0 = select(var_1.c, var_2.c, !select(var_1.c, select(select(vec4<bool>(var_2.c.x, false, var_1.a, true), var_2.c, var_1.c), var_1.c, !var_2.c), !select(vec4<bool>(false, true, true, false), var_1.c, var_2.c)));
    return var_2.c;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(!all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), true)), u_input.b, !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, u_input.b != u_input.b, any(vec4<bool>(false, true, false, false))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1795f, 1414f, -1494f)))), u_input.b, !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = var_0;
    var var_2 = true;
    var var_3 = vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32((_wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, 45972u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(16475u, u_input.a.x, 1u), u_input.c, vec3<u32>(u_input.a.x, 7424u, 0u))) << (u_input.c % vec3<u32>(32u)), u_input.c));
    let var_4 = Struct_1(false, 39098i, select(var_1.c, var_0.c, select(vec4<bool>(var_1.e.x, true, true, func_4(Struct_1(var_1.e.x, var_1.b, var_1.c, 21792i, vec2<bool>(true, true)), -715f)), vec4<bool>(true, true, !var_0.a, false), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1175f, 719f, -136f) - vec3<f32>(-1571f, -108f, 210f))).x)), ~min(var_1.b, ~var_0.d), select(!vec2<bool>(var_1.e.x, var_0.c.x), select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), func_2(vec3<f32>(1854f, 482f, -1000f)).zw), true));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-729f)), 1f, _wgslsmith_f_op_f32(ceil(-189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2093f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, var_1.x, 714f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(-1000f, -1299f)))) - vec4<f32>(-1761f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1162f, 1370f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)), var_1.x, 679f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, 1558f, var_1.x, var_1.x) + vec4<f32>(-778f, var_1.x, 280f, -640f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1557f, var_1.x, 194f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-215f, var_1.x, var_1.x, var_1.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f + var_1.x) - _wgslsmith_f_op_f32(var_1.x * -367f)), var_1.x, false)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(427f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -251f) + -1000f))));
    let var_2 = var_0;
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2115f)), (countOneBits(func_1().b) | max(-var_2.b, -28638i)) << ((u_input.a.x ^ ~(~u_input.c.x)) % 32u), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(118f * var_1.x))) * _wgslsmith_f_op_f32(130f - var_1.x)), -270f, _wgslsmith_f_op_f32(abs(-797f))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, ~u_input.b, -u_input.b), vec4<i32>(-var_0.b, u_input.b, ~1i, 34516i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, -3430i) >> (vec4<u32>(59397u, 4294967295u, 4294967295u, 42968u) % vec4<u32>(32u)), ~vec4<i32>(var_0.d, var_2.d, 1i, var_0.b))));
}

