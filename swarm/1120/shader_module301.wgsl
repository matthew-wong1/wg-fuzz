struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = Struct_2(u_input.b, ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, arg_1.x, 67986u)) & vec4<u32>(4294967295u, ~18982u, _wgslsmith_dot_vec3_u32(arg_1, arg_1), u_input.d)));
    let var_1 = vec3<bool>(all(vec3<bool>(-var_0.a.x > _wgslsmith_sub_i32(var_0.a.x, var_0.a.x), !select(true, false, true), arg_2 > arg_2)), !(!all(vec4<bool>(true, true, true, true))), any(!vec2<bool>(true, all(vec2<bool>(true, true)))));
    var_0 = Struct_2(vec3<i32>(-62373i, 16084i, ~(-(~u_input.c.x))), var_0.b);
    var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, ~var_0.a.x), ~vec3<i32>(-2147483647i, _wgslsmith_mult_i32(var_0.a.x, -2147483647i), u_input.b.x), vec3<i32>(~(-12090i) << (0u % 32u), 2147483647i, 2147483647i)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~var_0.b & ~vec4<u32>(1u, 0u, var_0.b.x, 1u), var_0.b), vec4<u32>(_wgslsmith_mod_u32(max(4294967295u, 1u), var_0.b.x), max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 70655u), var_0.b)), arg_0, 1081u), var_0.b));
    let var_2 = true;
    return true;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = 1652f;
    let var_1 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x >= 102349u, true, all(vec3<bool>(true, true, false)), select(true, false, true)), all(vec3<bool>(true, true, false))), vec4<bool>(u_input.d >= ~72608u, func_3(u_input.d, ~vec3<u32>(u_input.a.x, u_input.d, 1u), _wgslsmith_f_op_f32(ceil(-1698f))), true, true));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1418f + 1102f)))))));
    var var_2 = Struct_4(Struct_1(!var_1.x), Struct_2(-max(vec3<i32>(29471i, arg_0.x, u_input.b.x), arg_0), vec4<u32>(u_input.d, ~u_input.d, u_input.a.x, abs(23841u)) & reverseBits(vec4<u32>(u_input.d, u_input.d, 1u, u_input.a.x))), 2857u);
    var var_3 = select(select(vec4<u32>(_wgslsmith_clamp_u32(var_2.b.b.x, 4294967295u, 1u), _wgslsmith_add_u32(1u, 0u) & ~var_2.c, u_input.a.x, ~_wgslsmith_mult_u32(var_2.c, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(min(u_input.a.x, var_2.c), u_input.a.x), u_input.d, 1u), select(vec4<bool>(var_2.a.a, select(true, var_1.x, var_2.a.a), var_1.x, !var_2.a.a), vec4<bool>(!var_1.x, var_1.x && false, true != var_1.x, all(vec3<bool>(false, true, var_1.x))), var_2.a.a)), reverseBits(select(~var_2.b.b, var_2.b.b << (var_2.b.b % vec4<u32>(32u)), false)) | ~(~_wgslsmith_div_vec4_u32(var_2.b.b, var_2.b.b)), vec4<bool>(func_3((var_2.b.b.x & u_input.a.x) ^ _wgslsmith_dot_vec3_u32(u_input.a, var_2.b.b.xzx), vec3<u32>(~var_2.c, u_input.d ^ u_input.d, ~var_2.c), -671f), false != any(!var_1), _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0.x, u_input.b.x), arg_0.x, ~var_2.b.a.x) > 2147483647i, !((u_input.a.x <= 1u) | true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-153f, -698f)) + _wgslsmith_f_op_f32(1350f - 406f)), !var_1.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_5 {
    var var_0 = Struct_3(any(select(vec3<bool>(true, false, u_input.d < 23568u), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, true, false)), true))));
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_5(vec3<i32>(abs(~_wgslsmith_add_i32(2147483647i, u_input.c.x)), -u_input.c.x, ~_wgslsmith_add_i32(abs(u_input.b.x), 15944i)));
    let var_2 = ~reverseBits(select(u_input.a, select(vec3<u32>(u_input.a.x, 0u, 1u), u_input.a, var_0.a) ^ (u_input.a << (vec3<u32>(4294967295u, u_input.d, 0u) % vec3<u32>(32u))), 1u > ~u_input.a.x));
    var var_3 = _wgslsmith_div_vec2_i32(u_input.c.yy, vec2<i32>(-1i) * -vec2<i32>(~(-2147483647i), max(1i, var_1.a.x)));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<i32>) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(func_2(u_input.b)), _wgslsmith_div_f32(281f, 424f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1551f, -1604f, 760f) * vec3<f32>(-382f, -885f, -839f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1449f, 1317f, 645f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1272f, _wgslsmith_f_op_f32(f32(-1f) * -294f), -1021f), vec3<f32>(-681f, _wgslsmith_f_op_f32(abs(1000f)), -1257f), arg_1.a == any(vec2<bool>(arg_0, arg_1.a)))), select(select(vec3<bool>(false, arg_1.a, arg_0), select(vec3<bool>(arg_1.a, true, false), vec3<bool>(true, arg_0, true), arg_1.a), !vec3<bool>(arg_0, false, true)), select(!vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(true, false, false), vec3<bool>(arg_0, false, arg_0)), arg_1.a), 62477u < arg_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1467f * -383f))));
    var_0 = Struct_5(vec3<i32>(~u_input.c.x, u_input.b.x, -1i));
    var var_1 = false;
    var var_2 = Struct_1(!arg_0);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)), _wgslsmith_f_op_f32(-1643f - -1000f), false)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1181f + -593f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-254f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b.x, func_1(false, Struct_1(true), ~vec2<u32>(42356u, 1u), -(vec4<i32>(24999i, u_input.b.x, 2147483647i, u_input.c.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 4294967295u) % vec4<u32>(32u)))));
}

