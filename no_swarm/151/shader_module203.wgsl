struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec4<u32>(~u_input.b, abs(4294967295u), ~u_input.b, 1u);
    global0 = !select(select(!vec4<bool>(global0.x, true, false, global0.x), select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, false), true), !(!vec4<bool>(true, global0.x, true, true))), !select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true)), global0.x);
    var var_1 = 1u;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-21097i), u_input.a, -1i) | vec3<i32>(~u_input.a, 41479i >> (var_0.x % 32u), _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i)), abs(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 2147483647i, 1i)) & ~firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 2147483647i))) | ~(-firstTrailingBit(-vec3<i32>(u_input.a, 4642i, -2147483647i)));
    var var_3 = var_0.x;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(~min(max(vec4<i32>(u_input.a, 11810i, 14078i, u_input.a), vec4<i32>(-17013i, var_2.x, var_2.x, u_input.a)), vec4<i32>(2147483647i, -26622i, u_input.a, var_2.x) | vec4<i32>(-35090i, var_2.x, -15006i, var_2.x)), vec4<i32>(min(1i, var_2.x << (1u % 32u)), -_wgslsmith_add_i32(var_2.x, u_input.a), -1i, _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(u_input.a)))), 0i, var_2.x);
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = ~(u_input.a ^ 34215i);
    let var_1 = Struct_3(vec2<i32>(abs(~u_input.a), u_input.a), Struct_1(arg_0.a, var_0, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), -193f, _wgslsmith_f_op_f32(abs(-136f))), ~select(func_3(), -vec3<i32>(-2147483647i, -2147483647i, 1i), global0.x)), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, u_input.a) ^ ~vec2<i32>(u_input.a, 1448i)), vec4<bool>(any(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x))), true, global0.x, all(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, global0.x, false, false), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2286f, -843f, 2064f), vec3<f32>(-499f, 152f, 1112f)))))));
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_u32(reverseBits(~(~vec4<u32>(1u, 30368u, arg_0.a, 0u))), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, u_input.b, u_input.b, 1u) << (vec4<u32>(u_input.b, var_1.b.a, 11u, var_1.b.a) % vec4<u32>(32u)), select(vec4<u32>(0u, u_input.b, 0u, u_input.b), vec4<u32>(arg_0.a, arg_0.a, var_1.b.a, 11376u), true))), ~abs(vec4<u32>(u_input.b, var_1.b.a, 47848u, var_1.b.a))));
    var var_3 = ~(~countOneBits(~4294967295u));
    var var_4 = Struct_2(var_1.c.a, var_1.c.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f - _wgslsmith_f_op_f32(min(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.d.x), _wgslsmith_f_op_f32(-699f - 663f))))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> f32 {
    global0 = vec4<bool>(global0.x, global0.x, true, ~(-6764i << (arg_2 % 32u)) >= ~u_input.a);
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_5(25504u))), 985f));
    global0 = select(vec4<bool>(global0.x, any(vec3<bool>(true, global0.x, true)), global0.x, global0.x), select(vec4<bool>(true, true, all(!vec4<bool>(false, global0.x, global0.x, false)), !global0.x | (global0.x && global0.x)), vec4<bool>(false, ~u_input.b < ~arg_2, true, global0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, global0.x), true), !(!vec4<bool>(true, false, global0.x, true)))), !(!(!(!vec4<bool>(true, true, false, global0.x)))));
    global0 = select(select(select(select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, global0.x, false)), !vec4<bool>(true, false, false, global0.x), select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x)), false)), !vec4<bool>(true, !global0.x, true, true), all(vec3<bool>(!global0.x, global0.x, false))), vec4<bool>(!all(!vec4<bool>(global0.x, global0.x, true, global0.x)), !(!global0.x), (1i < _wgslsmith_sub_i32(2147483647i, u_input.a)) || select(all(global0.yy), false, false), !(var_0 != _wgslsmith_f_op_f32(func_2(Struct_5(1u))))), select(vec4<bool>(all(!vec3<bool>(global0.x, global0.x, global0.x)), all(global0.yx), true, all(global0.xx)), select(select(!vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), global0.x), !vec4<bool>(global0.x, true, global0.x, false), false || global0.x), global0.x));
    let var_1 = select(~(-(-vec2<i32>(-1138i, -1i) << (~arg_1.xy % vec2<u32>(32u)))), ~vec2<i32>(u_input.a, -arg_0) | vec2<i32>(1i, 1i), !global0.x);
    return _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-1012f - var_0));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: vec2<bool>) -> f32 {
    let var_0 = -u_input.a;
    global0 = !vec4<bool>(false, any(select(select(vec4<bool>(false, true, arg_2.x, arg_1.c), vec4<bool>(false, false, false, true), vec4<bool>(global0.x, false, false, arg_1.c)), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_1.c), vec4<bool>(false, arg_2.x, global0.x, arg_2.x), vec4<bool>(false, arg_1.c, arg_2.x, arg_1.c)), any(vec4<bool>(true, true, true, global0.x)))), arg_1.c, 877f != _wgslsmith_f_op_f32(sign(arg_1.a)));
    global0 = vec4<bool>(false, u_input.a > (~abs(var_0) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(56264u, u_input.b, 19158u), ~0u) % 32u)), arg_1.c, !all(vec2<bool>(arg_2.x, any(vec4<bool>(global0.x, arg_1.c, true, arg_1.c)))));
    global0 = vec4<bool>(all(!(!vec3<bool>(arg_1.c, global0.x, true))) || all(select(vec3<bool>(arg_1.c, true, false), vec3<bool>(true, true, arg_1.c), true)), arg_1.c, arg_1.a <= -192f, !(!all(vec2<bool>(arg_1.c, false)) && (_wgslsmith_add_u32(u_input.b, u_input.b) != max(0u, 1u))));
    var var_1 = global0.yw;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1014f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)), _wgslsmith_f_op_f32(-arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-100f, _wgslsmith_f_op_f32(f32(-1f) * -866f))) * -491f));
    var var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a, vec3<u32>(u_input.b, u_input.b, u_input.b), 4064u)) * _wgslsmith_div_f32(456f, -1433f))))), Struct_4(1f, _wgslsmith_div_i32(-u_input.a, 3466i), global0.x), vec2<bool>(false, true)));
    global0 = select(select(select(select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), global0.x), vec4<bool>(true, true, true, true), any(vec2<bool>(global0.x, false))), vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, all(vec4<bool>(global0.x, global0.x, false, global0.x))), true), select(vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, global0.x)), select(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, true, true)), !vec4<bool>(global0.x, global0.x, true, true), all(vec4<bool>(global0.x, false, global0.x, true)))), vec4<bool>(true, true, global0.x == true, global0.x)), !(!(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, false)))), vec4<bool>(true, true, true, true));
    let var_2 = global0.x;
    var_1 = -337f;
    let var_3 = ~(~(~u_input.b | u_input.b)) ^ _wgslsmith_mult_u32(4294967295u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(select(abs(-vec3<i32>(u_input.a, u_input.a, u_input.a)), -abs(vec3<i32>(u_input.a, u_input.a, 64843i)), global0.yzy), vec3<i32>(~u_input.a, -1i, -select(u_input.a, u_input.a, global0.x))), 28434u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1252f, -662f, -940f, -872f))) + vec4<f32>(1299f, -1668f, 427f, 1706f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1335f, -352f, -1000f, 587f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1639f, -602f, -1549f, 770f)))))), !select(vec4<bool>(false, false, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), all(vec2<bool>(global0.x, true))))));
}

