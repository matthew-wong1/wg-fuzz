struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(518f, 1517f, -1768f);

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(54958i, -31765i, 8154i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-75735i, i32(-2147483648), 34509i), vec3<i32>(0i, 1i, 0i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 28311i, 17730i), vec3<i32>(0i, -25498i, -1i), vec3<i32>(27346i, -47373i, -12635i), vec3<i32>(43968i, -1i, 13374i), vec3<i32>(-11567i, i32(-2147483648), 2147483647i), vec3<i32>(2147483647i, -1i, 11769i), vec3<i32>(-9472i, 1i, -48152i), vec3<i32>(2147483647i, 31953i, -22326i), vec3<i32>(0i, 1i, 0i), vec3<i32>(2147483647i, 0i, 7529i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-37241i, i32(-2147483648), 0i), vec3<i32>(-1i, 38739i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 23535i), vec3<i32>(26662i, i32(-2147483648), -15729i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(i32(-2147483648), 11352i, 24844i), vec3<i32>(50102i, -1i, 20892i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 27924i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(0i, -1i, 0i), vec3<i32>(30718i, -3490i, 43237i), vec3<i32>(-29997i, 11391i, -4429i), vec3<i32>(2147483647i, 2147483647i, -39424i), vec3<i32>(i32(-2147483648), -13642i, -13657i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec3<f32> {
    global1 = array<vec3<i32>, 32>();
    let var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, arg_0.x, arg_0.x, 2441i), vec4<i32>(u_input.b, -46053i, arg_0.x, u_input.b)), ~vec4<i32>(u_input.b, u_input.d.x, 1i, arg_0.x)) & -(vec4<i32>(u_input.d.x, arg_0.x, u_input.d.x, u_input.b) | vec4<i32>(-25996i, u_input.d.x, arg_0.x, 5467i)), _wgslsmith_sub_vec4_i32((vec4<i32>(-1i, -2147483647i, 20116i, -2147483647i) >> (vec4<u32>(arg_1.x, 1u, arg_1.x, 42773u) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 21397i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, -1i, arg_0.x, u_input.b)), vec4<i32>(~arg_0.x, abs(-1i), ~arg_0.x, min(2147483647i, arg_0.x))));
    let var_1 = arg_0.x;
    var var_2 = select(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true)), vec2<bool>(true, true), true), vec2<bool>(true, !(!select(true, false, true))), all(select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(-1290f >= global0.x, arg_1.x == arg_1.x))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1338f, -771f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -568f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -1541f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1566f, 1089f))))));
    return vec3<f32>(-1138f, 358f, 722f);
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x * 154f), _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(global0.x - arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * 1287f))), arg_0.d) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, global0.x, 171f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, global0.x, global0.x), arg_0.d))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.d))))), arg_0.d));
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d)) + _wgslsmith_f_op_vec3_f32(func_3(~global1[_wgslsmith_index_u32(u_input.c, 32u)], ~vec3<u32>(u_input.c, 7266u, u_input.c))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1f, _wgslsmith_f_op_f32(-global0.x))));
    global1 = array<vec3<i32>, 32>();
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.d.x))))), arg_0.d));
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0.x * 1355f), _wgslsmith_f_op_f32(ceil(arg_0.x)), global0.x)))));
    global1 = array<vec3<i32>, 32>();
    let var_0 = Struct_1(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, !any(vec3<bool>(true, false, true)), !(1u == u_input.c)), false), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(arg_0.xy)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.yz, arg_0.yx)))))), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<bool>(true, true, true), global0.xy, _wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<bool>(true, true, false), vec2<f32>(arg_0.x, -159f), vec2<f32>(arg_0.x, global0.x), vec3<f32>(1006f, global0.x, global0.x), false))).zx, _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(arg_0 + arg_0)), true))).xx, arg_0, 1u >= ~(0u & ~u_input.c));
    let var_1 = vec2<bool>(var_0.e, var_0.a.x);
    let var_2 = var_0.a.x;
    return ~4294967295u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = arg_0.d;
    let var_0 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 67926u, u_input.c))));
    var var_1 = vec3<bool>(any(arg_0.a), false, true);
    var var_2 = _wgslsmith_mod_i32(-(~0i), -abs(firstLeadingBit(1i << (var_0.x % 32u))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mult_u32(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(arg_0))))), var_0.x), 0u);
    return _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(557f * -902f), 1658f))))));
}

fn func_5(arg_0: f32) -> Struct_1 {
    global1 = array<vec3<i32>, 32>();
    let var_0 = -1i;
    let var_1 = Struct_1(vec3<bool>(any(vec3<bool>(false, select(true, true, false), false)), any(vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, all(vec4<bool>(false, false, true, false)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), _wgslsmith_f_op_vec2_f32(-global0.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(279f, global0.x), vec2<f32>(727f, -2702f), vec2<bool>(true, false)))), global0.xz) - global0.xy), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(135f, arg_0, global0.x) * vec3<f32>(arg_0, arg_0, arg_0)), all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1619f, arg_0) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-438f, 1000f, -126f), vec3<f32>(911f, -1000f, arg_0)))), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(765f, 1051f, 536f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1364f, arg_0) * vec3<f32>(-265f, arg_0, -848f))), vec3<bool>(true, true, true))))), all(vec2<bool>(true, true)));
    global1 = array<vec3<i32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    return Struct_1(select(select(!select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(var_1.e, var_1.e, var_1.a.x), var_1.e), !var_1.a, true), !select(vec3<bool>(var_1.a.x, false, var_1.a.x), !var_1.a, var_1.a), var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.c)))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 2934i, u_input.d.x), vec3<i32>(u_input.a.x, 21552i, -66245i), global1[_wgslsmith_index_u32(u_input.c, 32u)]), _wgslsmith_mod_vec3_i32(u_input.a, global1[_wgslsmith_index_u32(1u, 32u)]), true && var_1.e), ~abs(vec3<u32>(u_input.c, 1u, 1u)))).x, _wgslsmith_f_op_vec3_f32(func_3(-(~u_input.a), ~select(vec3<u32>(u_input.c, 18616u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c), true))).x), vec3<f32>(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(f32(-1f) * -265f), true)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1039f + 290f), _wgslsmith_f_op_f32(var_1.d.x * var_2))), global0.x))), any(!(!select(vec4<bool>(var_1.e, true, false, var_1.a.x), vec4<bool>(false, false, false, true), vec4<bool>(var_1.a.x, var_1.a.x, true, true)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    global1 = array<vec3<i32>, 32>();
    let var_0 = arg_0;
    let var_1 = Struct_1(select(!(!var_0.a), vec3<bool>(false, !any(vec4<bool>(arg_1.a.x, arg_0.e, arg_1.e, arg_0.a.x)), all(vec3<bool>(false, arg_1.e, true))), all(vec4<bool>(true, u_input.c < u_input.c, u_input.c >= 0u, false))), vec2<f32>(_wgslsmith_f_op_f32(1000f * global0.x), var_0.d.x), _wgslsmith_f_op_vec2_f32(arg_1.d.zy - _wgslsmith_f_op_vec2_f32(-arg_0.b)), var_0.d, arg_0.e);
    global1 = array<vec3<i32>, 32>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, arg_1.c.x, arg_1.c.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 2185f, global0.x) + arg_0.d), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, 1884f, global0.x), vec3<f32>(386f, 640f, global0.x), var_0.e)))), true)))) + var_1.d);
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 32>();
    var var_0 = Struct_1(vec3<bool>(true, global0.x <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1000f)), false), global0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_5(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, false), global0.xy, global0.yx, vec3<f32>(1360f, global0.x, 450f), false)))), func_5(324f), _wgslsmith_clamp_i32(-21233i, 50738i, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 203f, 999f)))), true);
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)) + func_5(_wgslsmith_f_op_f32(-var_0.b.x)).b.x));
    var var_2 = func_5(_wgslsmith_f_op_f32(-var_1.c.x));
    var var_3 = Struct_1(!vec3<bool>(!(-12973i != u_input.a.x), (var_0.e || true) | false, !all(vec3<bool>(var_0.e, var_1.e, var_2.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 286f)))), var_2.d.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -289f), var_2.b.x))), !all(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(385f, _wgslsmith_f_op_f32(select(var_1.d.x, -193f, -880f == var_0.c.x)))), global0.x, var_1.d.x) * var_1.d);
    var var_4 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.c), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(~29973u, _wgslsmith_add_u32(u_input.c, 1u) | u_input.c), _wgslsmith_div_u32(1u, u_input.c), abs(u_input.c), ~38477u), 25500u, var_3.c, firstTrailingBit(0i));
}

