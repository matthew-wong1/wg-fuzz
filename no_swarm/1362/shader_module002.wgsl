struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec2<i32>(abs(~(-max(-1i, -2147483647i))), -6656i);
    var var_1 = !vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    var_1 = !select(!vec2<bool>(true, var_1.x), !(!(!vec2<bool>(var_1.x, true))), any(vec4<bool>(true, all(vec4<bool>(true, var_1.x, var_1.x, false)), var_1.x, any(vec3<bool>(false, var_1.x, false)))));
    var_1 = !select(select(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), select(!vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false)), vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(u_input.a, u_input.b) <= 1u), !select(!vec2<bool>(var_1.x, true), !vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(false, var_1.x))), !(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1774f)));
    return vec4<u32>(countOneBits(u_input.c), ~14276u, u_input.c, _wgslsmith_mult_u32(~(~21162u), firstTrailingBit(u_input.c)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = func_3();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -423f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1312f, 148f)), -536f))), -1i, vec4<i32>(2147483647i, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(49237i, 2147483647i), vec2<i32>(-55874i, 39255i)), -1i), _wgslsmith_sub_i32(68461i, 8882i) << (u_input.c % 32u)) << (_wgslsmith_mult_vec4_u32(arg_1, arg_1) % vec4<u32>(32u)), Struct_2(913f, Struct_1(vec4<bool>(arg_0.x != false, !arg_0.x, select(arg_0.x, arg_0.x, arg_0.x), arg_0.x && true), _wgslsmith_mult_i32(_wgslsmith_add_i32(3014i, 1i), 43489i), select(!vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(false, arg_0.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, _wgslsmith_f_op_f32(-1098f * 1048f), _wgslsmith_f_op_f32(-990f * 802f), _wgslsmith_f_op_f32(1091f + -597f))), Struct_1(vec4<bool>(true, !arg_0.x, arg_0.x, true), 29905i, !(!arg_0)), Struct_1(vec4<bool>(false, any(vec4<bool>(true, true, arg_0.x, arg_0.x)), arg_2.x <= u_input.a.x, true), abs(1i), arg_0)));
    var_0 = vec4<u32>(u_input.a.x, u_input.b.x, func_3().x, _wgslsmith_add_u32(countOneBits(arg_2.x | _wgslsmith_mod_u32(u_input.a.x, 0u)), func_3().x));
    var_0 = vec4<u32>(1u, _wgslsmith_mod_u32(arg_1.x, _wgslsmith_add_u32(firstTrailingBit(~56908u), u_input.b.x)), var_0.x, 10220u);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(740f, var_1.a.x)), var_1.d.c.yx))), ~(-2147483647i), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(~countOneBits(var_1.c.xz), abs(abs(var_1.c.zw))), var_1.b, abs(71012i)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(765f + _wgslsmith_f_op_f32(var_1.d.c.x * var_1.d.a)))), Struct_1(vec4<bool>(arg_0.x, !var_1.d.b.c.x, false, any(var_1.d.d.a)), -3640i, arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d.c), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -454f), -156f, var_1.d.a, 340f)), var_1.d.b, var_1.d.b));
    return _wgslsmith_f_op_f32(-var_1.d.c.x);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), abs(vec4<u32>(arg_0.x, 0u, 0u, u_input.a.x)), vec2<u32>(0u, 8664u))), -993f))), Struct_1(vec4<bool>(true, true, true, true), ~(-1i), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true)), vec4<f32>(-957f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-964f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 31871u, arg_0.x), vec4<u32>(u_input.b.x, 68132u, arg_0.x, arg_0.x)), arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(434f)) + _wgslsmith_f_op_f32(1233f - -684f))), _wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(max(-1061f, 1f)))), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(all(vec2<bool>(false, true)), true, true)), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-1i, 0i, 1i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2324i, 0i, 11761i), ~vec3<i32>(0i, -1i, 0i), select(vec3<i32>(-22818i, -16592i, 1i), vec3<i32>(-19766i, 0i, 20061i), false))), !vec2<bool>(true, all(vec4<bool>(true, true, false, false)))), Struct_1(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, all(vec4<bool>(true, false, true, false))), true), min(-1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 30264i, -581i, -27595i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 20217i, 1i), vec4<i32>(2147483647i, -29998i, 1i, -52512i)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, true))));
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 0i, var_0.d.b), max(vec3<i32>(var_0.b.b, -2147483647i, 25797i), vec3<i32>(var_0.b.b, -1i, var_0.b.b))), abs(2147483647i), abs(-2147483647i)) << (vec3<u32>(~(max(u_input.b.x, 4294967295u) & 48919u), func_3().x, arg_0.x) % vec3<u32>(32u));
    let var_2 = vec2<bool>(all(vec2<bool>(var_0.b.a.x, var_0.e.a.x)), !var_0.b.c.x && true);
    var var_3 = 1200u;
    var var_4 = Struct_3(var_0.c.zx, abs(var_1.x), -(~vec4<i32>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 2147483647i, -55561i, -1i), vec4<i32>(var_0.b.b, 0i, -1i, var_1.x)), _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_1.x, var_0.b.b, 2147483647i)), -var_1.x)), var_0);
    return Struct_1(vec4<bool>(true, true, all(vec4<bool>(var_4.d.e.a.x, any(vec2<bool>(var_4.d.d.c.x, true)), any(vec3<bool>(var_2.x, true, var_4.d.b.a.x)), false)), true | (var_4.d.b.c.x || all(vec3<bool>(var_4.d.d.a.x, false, false)))), _wgslsmith_mult_i32(~abs(-26292i), var_4.d.e.b), !vec2<bool>(var_2.x, ~49674i != _wgslsmith_dot_vec4_i32(var_4.c, var_4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(~(~1u), 65861u));
    var var_1 = vec3<i32>(-func_1(firstTrailingBit(u_input.a.xx)).b, firstTrailingBit(var_0.b << ((10561u | u_input.c) % 32u)), ~select(var_0.b, ~2147483647i, all(vec3<bool>(var_0.c.x, var_0.c.x, false)))) | firstLeadingBit(vec3<i32>(1i, -select(13297i, var_0.b, true), var_0.b));
    var_1 = countOneBits(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.b, 39029i), vec2<i32>(9232i, 30095i)), var_1.x, 0i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1124f, -164f)), _wgslsmith_f_op_f32(-396f * 1781f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2127f * 2194f) + _wgslsmith_f_op_f32(1211f - -1945f))))));
    let var_3 = -_wgslsmith_mod_i32(var_0.b, _wgslsmith_div_i32(-_wgslsmith_div_i32(30118i, 1i), var_1.x));
    var var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), func_3(), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.x, -13850i, var_3), vec3<i32>(countOneBits(var_0.b), firstLeadingBit(var_1.x), -2147483647i)), ~0u, -386f);
}

