struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-229f, 359f), _wgslsmith_div_vec2_f32(vec2<f32>(588f, 433f), vec2<f32>(-2660f, -1000f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, 626f)) * vec2<f32>(-244f, -1403f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1007f, -1319f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(186f)), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_2 = Struct_2(false, ~(-2147483647i));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(706f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1202f, -288f)))));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec3<f32> {
    let var_0 = 0u;
    let var_1 = Struct_2(true, 0i);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_sub_u32(abs((~arg_0.b | 1u) & 0u), 4294967295u);
    var var_4 = _wgslsmith_f_op_f32(-var_2.e);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.e * 889f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e), 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e)))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(~0u, (~u_input.e.x ^ ~26890u) ^ ~(~17412u), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), func_3(u_input.a, u_input.b)), u_input.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2113f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1216f - 786f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-512f, -224f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(-1412f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-613f, 2031f, 691f))))));
    let var_1 = true;
    var var_2 = (~(reverseBits(vec3<u32>(4294967295u, 1u, u_input.e.x)) & (vec3<u32>(u_input.e.x, 69487u, 21787u) << (u_input.e.xzx % vec3<u32>(32u)))) | ~(vec3<u32>(u_input.d.x, u_input.d.x, u_input.e.x) & u_input.e.wxy)) >> (reverseBits(~abs(u_input.e.xwx)) % vec3<u32>(32u));
    var_2 = ~u_input.e.zwy;
    var_2 = ~(u_input.e.xww >> (vec3<u32>(39u, var_2.x << (19457u % 32u), min(reverseBits(4294967295u), ~u_input.e.x)) % vec3<u32>(32u)));
    return select(select(!select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1)), !vec2<bool>(true, var_1), u_input.b.x < u_input.b.x), !vec2<bool>(false, var_1 | false), false), !select(vec2<bool>(true, all(vec4<bool>(var_1, false, var_1, var_1))), select(select(vec2<bool>(var_1, false), vec2<bool>(true, false), vec2<bool>(false, var_1)), vec2<bool>(true, true), vec2<bool>(var_1, var_1)), vec2<bool>(false, !var_1)), !any(!vec4<bool>(var_1, var_1, var_1, var_1)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = false;
    var var_2 = var_0;
    var var_3 = vec3<bool>(var_0.x, u_input.e.x != _wgslsmith_div_u32(~firstTrailingBit(arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, arg_1), firstTrailingBit(u_input.e.wzw))), true);
    var var_4 = 4294967295u;
    return Struct_2(var_2.x, _wgslsmith_add_i32(u_input.b.x, 6668i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    var var_0 = vec4<bool>(true, any(vec2<bool>(true, !(u_input.b.x < arg_1.b))), -915f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) + _wgslsmith_div_f32(639f, 916f)))), !(-arg_1.b < _wgslsmith_mult_i32(select(-2147483647i, arg_1.b, arg_3.a), 1912i)));
    let var_1 = var_0.www;
    var var_2 = arg_1;
    var var_3 = select(~firstLeadingBit(vec3<i32>(30417i, 1363i, _wgslsmith_add_i32(arg_1.b, arg_3.b))), -vec3<i32>(var_2.b, firstLeadingBit(arg_3.b), ~abs(-2147483647i)), vec3<bool>(func_2().x, any(arg_2), (false || any(vec3<bool>(false, var_1.x, arg_1.a))) || false));
    var_3 = ~(-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.b.x, -5042i), vec3<i32>(2147483647i, -47242i, arg_3.b)) ^ vec3<i32>(var_2.b, arg_0.b, var_3.x)));
    return var_2.a | ((arg_1.b < _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -63506i), firstTrailingBit(arg_0.b))) & arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(false, false, any(vec3<bool>(true, true, true)))) & (func_5(Struct_2(true, u_input.b.x), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, -558f, -283f, -2470f) * vec4<f32>(922f, 1002f, 1141f, -1062f)), ~36571u, -1263f), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), Struct_2(true, select(u_input.b.x, u_input.b.x, true))) || func_3(59791u, -vec2<i32>(-2147483647i, u_input.b.x)));
    var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(245f, -139f), vec2<f32>(-106f, 681f))))))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))), true));
    var var_2 = vec4<i32>(-1i, -(~(u_input.b.x << (u_input.a % 32u))) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(62368u, u_input.e.x), firstLeadingBit(_wgslsmith_mod_u32(u_input.a, 63208u))) % 32u), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(select(u_input.b.x, u_input.b.x, true), 63576i), i32(-1i) * -33869i) << (15548u % 32u), abs(u_input.b.x | func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, -2106f, -580f))), u_input.d.x, _wgslsmith_f_op_f32(sign(var_1.x))).b));
    var_0 = true;
    var_0 = true;
    let var_3 = ~_wgslsmith_mult_u32(~1u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-3384i, _wgslsmith_f_op_f32(floor(var_1.x)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(trunc(1184f))))), var_1.x));
}

