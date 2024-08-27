struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    let var_0 = ~arg_1.b;
    let var_1 = arg_1.c.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, 465f, -1155f) * vec3<f32>(arg_1.c.c.x, -835f, arg_1.a.x))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.c.c) - arg_1.c.c)))));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_1.c.d.x, arg_1.c.d.x, u_input.a.x, 58174u), vec4<u32>(u_input.a.x, 17615u, arg_1.c.d.x, arg_1.c.b) & vec4<u32>(arg_1.c.d.x, u_input.a.x, 67161u, arg_1.c.b)), ~_wgslsmith_sub_vec4_u32(arg_1.c.d, u_input.a)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.c.b, u_input.a.x, 3873u, u_input.a.x), min(~vec4<u32>(u_input.a.x, u_input.a.x, 5481u, arg_1.c.d.x), select(vec4<u32>(0u, 4294967295u, 22717u, 17215u), u_input.a, vec4<bool>(true, false, true, false))))), ~71501u, ~firstLeadingBit(u_input.a.x));
    var_3 = ~1u;
    return any(!var_1);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(vec4<bool>(true, false, true, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f), -459f), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(535f, 1419f))))), reverseBits(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), select(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 0i, 0i, 10792i)), vec4<i32>(6475i, -2147483647i, -41259i, 36926i) << (vec4<u32>(19102u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i), true)));
    var_1 = Struct_2(var_1.a);
    var var_2 = ~(~abs(firstTrailingBit(abs(vec4<i32>(var_1.a, 0i, 5075i, 14581i)))));
    var var_3 = var_2.zz;
    return select(var_0.a, select(!(!var_0.a), select(var_0.a, var_0.a, vec4<bool>(true, true, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f) - -222f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + -599f)))), true);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_1(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true))), _wgslsmith_div_u32(7340u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.x, 58089u), ~51860u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1443f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f + 628f), _wgslsmith_f_op_f32(step(486f, -392f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(158f, 1117f) + _wgslsmith_f_op_f32(select(1412f, 1855f, true))))), ~(~min(vec4<u32>(59423u, 18223u, u_input.a.x, 38783u) << (vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(arg_0.x, u_input.a.x, 26066u, 0u)))));
    var var_1 = select(vec3<bool>(var_0.a.x, false, arg_0.x <= arg_0.x), vec3<bool>(var_0.a.x, var_0.a.x && true, func_1(vec3<i32>(~28826i, 44699i, 2147483647i), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1124f)), reverseBits(vec2<i32>(1i, -13295i)), Struct_1(var_0.a, 10008u, var_0.c, vec4<u32>(arg_0.x, var_0.d.x, u_input.a.x, u_input.a.x)), ~(-13062i)))), _wgslsmith_f_op_f32(step(2085f, _wgslsmith_f_op_f32(-var_0.c.x))) < var_0.c.x);
    var_1 = select(!(!(!var_0.a.zwx)), !vec3<bool>(true, var_0.a.x, !any(vec2<bool>(false, var_0.a.x))), select(~_wgslsmith_clamp_u32(1u, 36053u, var_0.b) > 1u, var_1.x, any(!func_3())));
    var_1 = var_0.a.wzx;
    return Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + -587f), _wgslsmith_f_op_f32(min(964f, var_0.c.x)))))), min(-(~vec2<i32>(-18250i, 1i)), vec2<i32>(1i, 1i)), Struct_1(!vec4<bool>(!var_1.x, u_input.a.x < arg_0.x, true, var_0.a.x), select(firstLeadingBit(0u), _wgslsmith_div_u32(19476u, abs(29771u)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * var_0.c), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.c.x, -2691f, var_0.c.x))))), var_0.d), ~1i);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1529f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(148f, arg_0)) * _wgslsmith_f_op_f32(-169f - -522f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(879f, arg_0))), _wgslsmith_f_op_f32(step(arg_0, -966f)))) + arg_0);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-319f, -1313f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1897f * arg_0), arg_1.c.c.x))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(arg_1.c.c.x + arg_1.a.x)), arg_1.c.c.x)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-1535i, 8043i), arg_1.b), abs(vec2<i32>(arg_1.d, -37836i))), select(arg_1.b << (arg_1.c.d.zy % vec2<u32>(32u)), vec2<i32>(arg_1.d, arg_1.b.x), all(vec4<bool>(arg_1.c.a.x, arg_2.x, true, arg_2.x)))), func_2(arg_1.c.d.xww).c, -_wgslsmith_add_i32(27045i, abs(~arg_1.b.x)));
    let var_2 = func_2(~abs(~_wgslsmith_mult_vec3_u32(var_1.c.d.wyy, vec3<u32>(u_input.a.x, arg_1.c.d.x, 1u))));
    let var_3 = arg_2;
    return Struct_2(0i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(func_2(vec3<u32>(arg_0.d.x, countOneBits(arg_0.d.x), ~u_input.a.x) >> (_wgslsmith_mod_vec3_u32(max(u_input.a.yww, arg_2.zwx), arg_0.d.zyw) % vec3<u32>(32u))).c.d.zxx).c;
    return Struct_1(vec4<bool>(arg_0.a.x, (func_2(vec3<u32>(arg_0.d.x, arg_2.x, arg_0.d.x)).d > -2147483647i) & all(!vec3<bool>(arg_0.a.x, true, true)), all(vec3<bool>(false, true, var_0.a.x)), !func_3().x), ~37199u << (u_input.a.x % 32u), vec3<f32>(_wgslsmith_f_op_f32(trunc(-805f)), 699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -1154f))), ~vec4<u32>(min(~7508u, 31940u >> (u_input.a.x % 32u)), select(_wgslsmith_mult_u32(0u, arg_0.b), 1u, var_0.a.x), countOneBits(func_2(vec3<u32>(u_input.a.x, 1u, 71384u)).c.d.x), ~5820u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), 1165f), vec2<f32>(775f, -182f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))));
    var var_1 = func_5(Struct_1(vec4<bool>(func_1(vec3<i32>(-62343i, 2147483647i, -33064i), Struct_3(vec2<f32>(381f, -563f), vec2<i32>(0i, -54549i), Struct_1(vec4<bool>(false, false, false, true), u_input.a.x, vec3<f32>(-150f, -346f, 776f), vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x)), -58351i)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true)), false, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_u32(~(~u_input.a.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, var_0.x, 237f) * vec3<f32>(-1000f, var_0.x, -192f)))), ~abs(u_input.a)), func_4(var_0.x, func_2(~_wgslsmith_mult_vec3_u32(u_input.a.yww, u_input.a.zxw)), select(vec4<bool>(true, var_0.x < var_0.x, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), false)), u_input.a);
    var var_2 = (1i >> (reverseBits(var_1.d.x) % 32u)) >= 0i;
    var var_3 = ~firstLeadingBit(~(-vec4<i32>(-2147483647i, -45746i, -2365i, 1i)));
    let var_4 = 4294967295u & ~abs(select(~62363u, 1u, var_3.x > 3110i));
    var var_5 = var_0.x;
    let var_6 = func_5(Struct_1(select(func_5(Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), u_input.a.x, vec3<f32>(-228f, var_1.c.x, var_0.x), vec4<u32>(var_4, 0u, 1u, 17269u)), Struct_2(3778i), u_input.a).a, !var_1.a, false), ~4294967295u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.c, vec3<f32>(var_1.c.x, -214f, var_0.x), false)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-184f, 1000f, var_1.c.x), vec3<f32>(-384f, 2241f, var_0.x)))))), vec4<u32>(u_input.a.x, u_input.a.x, ~countOneBits(21109u), var_4)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x), Struct_3(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(floor(-889f))), vec2<i32>(reverseBits(var_3.x), -1i), Struct_1(vec4<bool>(var_1.a.x, false, var_1.a.x, true), ~var_4, _wgslsmith_f_op_vec3_f32(round(var_1.c)), countOneBits(var_1.d)), firstTrailingBit(1i)), !var_1.a), vec4<u32>(var_1.d.x, 0u, 24270u ^ func_5(func_5(Struct_1(vec4<bool>(false, false, false, var_1.a.x), 43942u, var_1.c, var_1.d), Struct_2(var_3.x), vec4<u32>(var_4, u_input.a.x, u_input.a.x, 53635u)), func_4(-558f, Struct_3(var_1.c.zz, var_3.wy, Struct_1(vec4<bool>(true, false, var_1.a.x, true), 4294967295u, vec3<f32>(-1281f, 191f, -1204f), u_input.a), var_3.x), var_1.a), var_1.d).b, _wgslsmith_clamp_u32(~firstTrailingBit(var_4), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.d.yyx, vec3<u32>(84739u, 1u, 26006u)), vec3<u32>(var_4, var_4, 4294967295u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))));
    var var_7 = max(abs(select(max(vec3<i32>(var_3.x, -19789i, 8045i), vec3<i32>(var_3.x, -2147483647i, -49938i)), var_3.yww, !var_6.a.wwx) >> (_wgslsmith_mod_vec3_u32(u_input.a.ywx, ~u_input.a.wxy) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-25299i, var_3.x) ^ ~0i), -55411i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yyx, vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(var_6.d.x, ~0u)), min(7551u ^ _wgslsmith_clamp_u32(var_1.d.x, 69497u, var_6.b), 56856u), abs(1u), u_input.a.x), -reverseBits(35841i), _wgslsmith_f_op_f32(max(-1734f, -1409f)));
}

