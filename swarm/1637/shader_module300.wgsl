struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), -672f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-659f * 523f))), _wgslsmith_f_op_f32(993f + _wgslsmith_div_f32(-2397f, 1140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) - -1000f)))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, 1f)))), -219f, arg_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f - var_0.a.x) * _wgslsmith_f_op_f32(-2403f + var_0.b)), -168f, _wgslsmith_f_op_f32(abs(var_1)))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -1441f), 320f, 1545f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-535f, var_1, -1292f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1344f, 1219f, 354f) + vec3<f32>(1107f, -1359f, var_1)), vec3<bool>(true, true, false)))))));
    var var_3 = -2147483647i < u_input.a;
    let var_4 = 27462u;
    return !vec2<bool>(!arg_0, any(select(vec4<bool>(true, arg_0, false, arg_0), !vec4<bool>(true, true, true, arg_0), !vec4<bool>(true, false, true, arg_0))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-71660i, min(u_input.a, _wgslsmith_mult_i32(u_input.a, ~u_input.a))), u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f - _wgslsmith_f_op_f32(trunc(100f))))));
    var var_2 = func_3(any(vec4<bool>(false, any(vec4<bool>(false, true, true, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true)), true)));
    var var_3 = u_input.c.xx;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.a), 31724i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1289f, arg_0.x))))), 1097f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(i32(-1i) * -35917i), ~(~u_input.a), _wgslsmith_clamp_i32(min(2147483647i, 0i), -arg_2.x, 62634i), firstTrailingBit(-arg_2.x)), vec4<i32>(u_input.a, arg_2.x, 9755i, u_input.a ^ arg_2.x) & (abs(vec4<i32>(u_input.a, -38710i, arg_2.x, -1i)) ^ (vec4<i32>(-1i, arg_2.x, 2147483647i, 2147483647i) >> (vec4<u32>(4294967295u, 1u, u_input.b, 0u) % vec4<u32>(32u))))), -_wgslsmith_add_vec4_i32(vec4<i32>(abs(0i), arg_2.x >> (u_input.b % 32u), ~2147483647i, -2147483647i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, arg_2.x, 0i, 22043i), max(vec4<i32>(61267i, u_input.a, u_input.a, -2147483647i), vec4<i32>(-75962i, u_input.a, u_input.a, arg_2.x)), select(vec4<i32>(u_input.a, arg_2.x, u_input.a, u_input.a), vec4<i32>(arg_2.x, 16178i, 2147483647i, 31020i), false))));
    let var_1 = !vec4<bool>(true, func_3(true).x, func_3(true).x != true, true);
    var var_2 = arg_0;
    var_0 = arg_2.x;
    let var_3 = i32(-1i) * -((1i >> (0u % 32u)) << (0u % 32u));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = !func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, -348f, 1613f, -1017f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, -280f, -363f, 486f) + vec4<f32>(-1000f, -835f, -217f, 405f)), _wgslsmith_div_vec4_f32(vec4<f32>(420f, -737f, -501f, -691f), vec4<f32>(642f, -375f, -1075f, 1773f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(707f, -588f) + -910f)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(421f, -321f, 1427f, 1297f) + vec4<f32>(-172f, 245f, -2069f, 2080f))), vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), 284f, -686f, _wgslsmith_f_op_f32(638f - -603f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-141f, -855f)))), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.a, u_input.a)), ~(-vec3<i32>(u_input.a, -3488i, 1i))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-918f)), 1189f);
    var_0 = true;
    var_0 = true;
    var var_2 = !arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1389f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, true, true)), ~(~0u) < u_input.c.x, !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) * _wgslsmith_f_op_f32(func_1(~vec2<u32>(u_input.c.x, 52073u), vec4<u32>(6255u, u_input.b, u_input.c.x, u_input.c.x), true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-636f, -1921f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1771f) + _wgslsmith_f_op_f32(f32(-1f) * -120f))), _wgslsmith_div_f32(-764f, -354f)), 2217f);
    var var_2 = u_input.c;
    let var_3 = -(~abs(~(~vec2<i32>(u_input.a, u_input.a))));
    var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

