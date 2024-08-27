struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true)));
    let var_1 = all(vec4<bool>(var_0.x, !var_0.x, select(var_0.x, !select(var_0.x, var_0.x, true), var_0.x), any(select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, var_0.x, true, false)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, false), false)))));
    var_0 = vec3<bool>((min(u_input.d, firstLeadingBit(u_input.b.x)) & u_input.c.x) <= u_input.b.x, true, true);
    return -985f;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-77266i, u_input.c.x << (~reverseBits(26005u) % 32u), ~u_input.c.x, u_input.b.x), countOneBits(vec4<i32>(u_input.c.x, u_input.b.x, 0i, select(u_input.c.x, -2147483647i, true) >> (0u % 32u))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + var_2.a), _wgslsmith_f_op_f32(func_3(vec4<u32>(min(34928u, _wgslsmith_clamp_u32(83364u, u_input.a, 4294967295u)), _wgslsmith_mod_u32(0u, u_input.a), abs(0u), u_input.a))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(-140f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(368f, -1891f, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_0.a)))));
    let var_1 = countOneBits(0u) < _wgslsmith_mod_u32(0u, arg_0);
    var var_2 = -(i32(-1i) * -18047i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, arg_0, 0u, 0u)))))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~vec4<u32>(4294967295u, 14169u, arg_0, u_input.a))) + var_0.a), 606f));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = vec2<bool>(arg_0.x, !any(select(!arg_0, !vec3<bool>(arg_1, arg_1, arg_0.x), arg_0)));
    let var_1 = select(select(!(!vec4<bool>(false, true, arg_1, var_0.x)), !select(vec4<bool>(arg_0.x, false, arg_0.x, arg_1), !vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(arg_0.x, true, var_0.x, var_0.x)), select(vec4<bool>(true, arg_1, true || arg_0.x, false), select(select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(true, arg_0.x, false, false), true), !vec4<bool>(arg_1, arg_1, arg_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true)), !vec4<bool>(true, false, arg_1, false))), select(select(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(arg_1, true, true, var_0.x), false), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.x), vec4<bool>(false, 0u >= u_input.a, all(arg_0), all(vec2<bool>(arg_1, arg_1))), select(vec4<bool>(var_0.x, false, false, arg_1), vec4<bool>(arg_1, false, false, var_0.x), !vec4<bool>(true, false, arg_0.x, arg_0.x))), vec4<bool>(all(vec4<bool>(var_0.x, true, true, true)), !arg_1, all(!vec3<bool>(false, arg_0.x, false)), u_input.a > (u_input.a & 585u)), any(select(select(vec4<bool>(true, arg_1, false, false), vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, false, true, true)), !vec4<bool>(var_0.x, arg_0.x, var_0.x, true), all(vec4<bool>(true, false, false, true))))), select(select(vec4<bool>(any(vec3<bool>(arg_1, true, false)), u_input.b.x == 6336i, true, true), !(!vec4<bool>(arg_1, arg_1, arg_0.x, true)), false), !(!(!vec4<bool>(var_0.x, arg_0.x, true, true))), select(!select(vec4<bool>(arg_1, arg_0.x, var_0.x, var_0.x), vec4<bool>(arg_1, true, arg_0.x, true), arg_0.x), !vec4<bool>(arg_0.x, false, arg_1, arg_1), vec4<bool>(false, true, any(vec3<bool>(arg_0.x, arg_0.x, arg_1)), true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-230f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-562f)), _wgslsmith_f_op_f32(-919f - 606f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, var_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)), select(vec2<bool>(arg_0.x, arg_0.x), var_0, arg_0.xz))))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a)), -564f));
    var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * var_3.x) + _wgslsmith_div_f32(arg_2.a, arg_2.a)), -1312f), -444f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1035f + _wgslsmith_f_op_f32(var_3.x * 383f)) + var_3.x), _wgslsmith_div_f32(arg_2.a, var_3.x))));
    return ~_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(u_input.c.x) | ~(-2147483647i), -u_input.c.x, ~(~u_input.b.x), -31342i), vec4<i32>(-1i) * -select(vec4<i32>(-1i, 37629i, -2147483647i, u_input.d), vec4<i32>(1i, u_input.b.x, u_input.c.x, u_input.d), vec4<bool>(true, var_0.x, true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, -284f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-486f, -1429f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1239f, -638f) - vec2<f32>(-220f, 1194f)), true)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), -1632f);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -2761f));
    let var_2 = false;
    var var_3 = _wgslsmith_sub_vec4_i32(max(_wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(u_input.c.x, 27280i, 1i, u_input.b.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, u_input.b.x, -5726i, -1i), vec4<i32>(1i, 5700i, u_input.d, -2147483647i))), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.c.x) & ~vec4<i32>(2147483647i, u_input.c.x, 2147483647i, u_input.d), vec4<i32>(_wgslsmith_mult_i32(1i, -47940i), 0i, u_input.b.x, _wgslsmith_clamp_i32(u_input.c.x, -1i, u_input.b.x)))), min(func_5(!vec3<bool>(var_2, true, true), true, func_2(4294967295u)), min(vec4<i32>(u_input.d, 1i, reverseBits(u_input.b.x), -u_input.d), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, -1i, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 10966i, u_input.d, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.c.x))))));
    return func_2(_wgslsmith_add_u32(~min(~4294967295u, u_input.a), 9737u << ((_wgslsmith_sub_u32(u_input.a, u_input.a) >> (u_input.a % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -619f))));
    var var_1 = _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, 44734i, u_input.c.x, u_input.b.x), -vec4<i32>(3196i, u_input.d, 38130i, 2147483647i))), -vec4<i32>(-(-2147483647i & u_input.c.x), ~1i, -1i, u_input.d));
    var var_2 = func_1();
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(393f - _wgslsmith_f_op_f32(max(-674f, var_0.a))), -1000f))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_4(Struct_1(-1085f)))), -706f)) - var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(~4932u, u_input.a);
}

