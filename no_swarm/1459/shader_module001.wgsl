struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>((2889u | u_input.c.x) > 28378u, !(!select(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), ~((~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.a.x) | vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x)) | (~vec4<u32>(20362u, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, 1u))));
    var var_1 = Struct_1(var_0.a, 1f, ~_wgslsmith_div_vec4_u32(var_0.c, var_0.c));
    let var_2 = Struct_1(vec2<bool>(!var_1.a.x, !((1i >= u_input.b.x) || var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1238f, 150f, var_0.a.x))))), var_0.c >> (~var_0.c % vec4<u32>(32u)));
    var var_3 = var_2;
    let var_4 = var_3.a.x;
    return ~(~max(_wgslsmith_add_vec4_u32(vec4<u32>(197u, var_0.c.x, var_1.c.x, 101995u), vec4<u32>(u_input.a.x, 24969u, 3180u, 1u)), vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 26356u)) << (min(var_2.c, ~vec4<u32>(var_0.c.x, var_3.c.x, 0u, var_1.c.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = ~u_input.c.x & reverseBits(~0u);
    var var_1 = Struct_1(arg_0, 585f, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(u_input.b.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2552f, -155f), vec2<f32>(-1365f, 1208f)))), (vec4<u32>(u_input.a.x, u_input.a.x, 54732u, 26800u) | vec4<u32>(u_input.c.x, u_input.c.x, 23820u, 20157u)) ^ (vec4<u32>(34331u, u_input.c.x, u_input.c.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x))), vec4<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), u_input.a.x, u_input.a.x)));
    var_1 = Struct_1(select(vec2<bool>(true, var_1.a.x), arg_0, vec2<bool>(arg_0.x, var_1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-517f, -1779f)), _wgslsmith_f_op_f32(var_1.b - 1306f)), var_1.c);
    var var_2 = max(var_1.c.xxz, var_1.c.wxy ^ u_input.c);
    var_0 = ~u_input.a.x;
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = func_2(select(vec2<bool>(select(true, true, false), true), vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(any(vec3<bool>(false, true, false)), !any(vec2<bool>(true, true)))));
    var var_2 = !(!(!any(vec4<bool>(true, true, true, true))));
    var var_3 = vec2<u32>(var_0, 34348u ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 4294967295u, u_input.a.x), vec3<u32>(21926u, u_input.c.x, u_input.c.x)) & 1u, ~(~var_0)));
    var var_4 = false;
    return Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), false), _wgslsmith_f_op_f32(-arg_1.x), ~abs(reverseBits(vec4<u32>(0u, var_0, var_3.x, var_0))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = select(!select(vec4<bool>(true && arg_2.a.x, arg_0.a.x, arg_0.a.x, true), !(!vec4<bool>(true, false, arg_2.a.x, false)), !arg_2.a.x), !select(select(vec4<bool>(false, arg_1.a.x, false, arg_1.a.x), !vec4<bool>(arg_0.a.x, false, arg_1.a.x, true), arg_1.a.x), select(vec4<bool>(arg_2.a.x, true, false, false), select(vec4<bool>(arg_0.a.x, arg_1.a.x, true, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, arg_1.a.x), vec4<bool>(false, false, arg_1.a.x, arg_1.a.x)), true), !select(vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), vec4<bool>(false, arg_1.a.x, arg_0.a.x, arg_0.a.x), true)), select(!(!select(vec4<bool>(false, arg_1.a.x, true, true), vec4<bool>(arg_0.a.x, arg_1.a.x, arg_2.a.x, true), true)), vec4<bool>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) > min(-1i, u_input.b.x), any(arg_1.a), any(!vec3<bool>(arg_1.a.x, false, arg_1.a.x)), arg_0.a.x), select(select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_2.a.x, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), arg_0.a.x), select(vec4<bool>(true, true, true, arg_2.a.x), vec4<bool>(true, true, arg_0.a.x, true), vec4<bool>(true, arg_0.a.x, arg_2.a.x, false)), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_1.a.x, arg_2.a.x)), vec4<bool>(func_1(584f, vec2<f32>(arg_1.b, arg_0.b)).a.x, false, false | arg_0.a.x, any(vec3<bool>(arg_2.a.x, arg_1.a.x, false))), vec4<bool>(30235i == u_input.b.x, arg_1.a.x, u_input.b.x > 39884i, arg_1.a.x && arg_1.a.x))));
    let var_1 = arg_0.a.x;
    var_0 = vec4<bool>(!func_2(!arg_1.a) || select(true, arg_1.a.x, arg_2.a.x), arg_1.a.x, arg_0.a.x & func_1(_wgslsmith_f_op_f32(max(-2233f, _wgslsmith_div_f32(-133f, 797f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1714f, -182f))).a.x, any(var_0.yzx));
    var_0 = select(!select(vec4<bool>(var_1, all(arg_1.a), false, arg_2.a.x | var_0.x), !(!vec4<bool>(arg_0.a.x, true, true, var_1)), vec4<bool>(false, arg_2.b == arg_0.b, true, all(var_0.yzy))), vec4<bool>(true, true, true, true), !(!vec4<bool>(u_input.b.x <= 10242i, false, any(var_0.zxx), arg_1.a.x)));
    var var_2 = vec3<u32>(~abs(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~arg_0.c.x, ~4294967295u), select(arg_2.c.xzx, u_input.c, var_0.xww)), ~arg_1.c.x);
    return arg_2.b;
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(879f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f - 848f) * arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1), !arg_0)) + -443f)))));
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f * _wgslsmith_f_op_f32(f32(-1f) * -1242f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1))))));
    var var_2 = _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(u_input.b.x, -u_input.b.x));
    let var_3 = select(vec3<u32>(u_input.a.x, 1u, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2734f - arg_1) - var_1.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, var_1.b))))).c.x), vec3<u32>(~(~u_input.a.x), abs(69510u), ~98463u), var_1.a.x);
    var var_4 = func_1(arg_1, vec2<f32>(-928f, var_1.b));
    return Struct_1(!vec2<bool>(true, all(select(vec3<bool>(var_4.a.x, true, false), vec3<bool>(var_4.a.x, var_1.a.x, true), false))), _wgslsmith_f_op_f32(f32(-1f) * -1052f), var_1.c);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(arg_0.b >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))), any(select(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), arg_0.a.x)))), -986f, func_5(arg_0.a.x, _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 2761f)), arg_0.a.x))).c);
    let var_1 = Struct_1(func_1(-550f, vec2<f32>(435f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(373f - -128f))))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), var_0.c);
    var var_2 = func_2(vec2<bool>(true, true));
    var var_3 = _wgslsmith_mod_vec4_u32(var_1.c, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(func_3(u_input.b.x, vec2<f32>(var_0.b, var_1.b)).x, u_input.c.x, 4294967295u), u_input.c.x ^ reverseBits(var_1.c.x), 59092u, 71930u), vec4<u32>(func_5(var_1.a.x, 1048f).c.x, var_1.c.x, 460u, _wgslsmith_dot_vec4_u32(arg_0.c, var_0.c))));
    var_2 = any(!arg_0.a);
    return func_5(all(vec3<bool>(func_5(false, var_1.b).a.x, true, !var_0.a.x)), func_1(-1929f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, -1618f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b, arg_0.b), vec2<f32>(-515f, -614f))))))).b);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_f32(min(-1535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1803f * 844f))) + arg_0))), -1000f);
    let var_2 = var_0;
    let var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yy, var_1.yx)))) - var_1.xy)).b;
    let var_4 = abs((vec3<i32>(1i, u_input.b.x ^ u_input.b.x, -13883i) ^ _wgslsmith_mod_vec3_i32(u_input.b, -vec3<i32>(0i, 48372i, u_input.b.x))) | u_input.b);
    return func_6(Struct_1(!(!func_6(Struct_1(var_0.a, 1289f, vec4<u32>(var_2.c.x, u_input.c.x, arg_2.c.x, 15750u))).a), -208f, min(vec4<u32>(arg_1.c.x >> (arg_1.c.x % 32u), 29611u, var_2.c.x, max(u_input.c.x, arg_2.c.x)), var_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f - _wgslsmith_f_op_f32(abs(-1252f))))), func_6(func_5(any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(func_4(func_1(-2600f, vec2<f32>(1446f, -1000f)), Struct_1(vec2<bool>(false, false), 196f, vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x)), func_1(-2140f, vec2<f32>(976f, -718f)))))), Struct_1(vec2<bool>(true, true), -621f, countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x))));
    let var_1 = func_1(var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b, 1421f, false & var_0.a.x)), func_7(_wgslsmith_f_op_f32(-var_0.b), var_0, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), 398f, var_0.c)).b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, _wgslsmith_div_f32(var_0.b, -392f))))).a;
    var var_2 = vec3<bool>(true, all(vec4<bool>(false, min(u_input.b.x, 0i) == firstTrailingBit(0i), func_7(_wgslsmith_f_op_f32(floor(-1000f)), Struct_1(vec2<bool>(var_1.x, var_0.a.x), var_0.b, var_0.c), var_0).a.x, var_1.x)), all(!vec3<bool>(true, var_1.x, func_5(false, -1560f).a.x)));
    var var_3 = vec2<u32>(~1u, countOneBits(select(~0u, 0u, (var_1.x & true) || all(var_0.a))));
    let var_4 = ~(~var_0.c.zw | _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 55035u), vec2<u32>(4294967295u, 50793u) ^ var_0.c.yw), countOneBits(select(u_input.c.xx, vec2<u32>(0u, u_input.c.x), false))));
    let var_5 = _wgslsmith_mod_vec2_u32(vec2<u32>(~abs(u_input.a.x), firstTrailingBit(max(_wgslsmith_mod_u32(var_4.x, 52786u), max(19777u, 1u)))), vec2<u32>(4294967295u << (var_3.x % 32u), reverseBits(11058u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_div_f32(-323f, _wgslsmith_f_op_f32(var_0.b * var_0.b)), 0i << (var_0.c.x % 32u), _wgslsmith_mod_vec2_i32(max(-_wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x)), (vec2<i32>(2147483647i, u_input.b.x) & vec2<i32>(-11082i, u_input.b.x)) ^ abs(vec2<i32>(1i, -38030i))), abs(firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x)) >> (func_5(var_1.x, 827f).c.yx % vec2<u32>(32u)))));
}

