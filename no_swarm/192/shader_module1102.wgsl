struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_3(0i);
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21777u, 87379u, 420u), vec4<u32>(u_input.a, u_input.a, 48380u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 18376u, 0u)), ~1u), abs(u_input.a), 19487u), u_input.a << (~firstTrailingBit(_wgslsmith_mod_u32(43770u, u_input.a)) % 32u));
    let var_2 = Struct_4(Struct_3(-(~countOneBits(var_0.a))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-316f, -574f)) + _wgslsmith_f_op_f32(step(-155f, -316f)))), 1u));
    let var_3 = true;
    var var_4 = var_2.b.a;
    return !select(select(!vec3<bool>(var_3, var_3, false), select(vec3<bool>(true, var_3, true), !vec3<bool>(true, var_3, true), true), vec3<bool>(true, false, var_3)), select(vec3<bool>(false | var_3, true, true | var_3), vec3<bool>(!var_3, true, false), vec3<bool>(true, all(vec4<bool>(var_3, var_3, true, false)), false)), !select(select(vec3<bool>(false, var_3, true), vec3<bool>(var_3, var_3, var_3), var_3), !vec3<bool>(true, var_3, var_3), select(vec3<bool>(false, var_3, true), vec3<bool>(true, true, false), vec3<bool>(var_3, var_3, var_3))));
}

fn func_2() -> vec2<i32> {
    let var_0 = select(vec3<bool>(!select(any(vec4<bool>(false, false, true, true)), true, true), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)), !(any(vec4<bool>(true, false, true, false)) | true)), !func_3(Struct_3(14360i)), true);
    let var_1 = select(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(20423i, -53149i, 25179i, -91373i)) >> (vec4<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(1u, 4294967295u, 4294967295u, 28128u)), _wgslsmith_dot_vec3_u32(vec3<u32>(77883u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 18739u))) % vec4<u32>(32u))), vec4<i32>(select(_wgslsmith_clamp_i32(-46752i, _wgslsmith_mod_i32(-48189i, -1i), 1i), -2147483647i, var_0.x), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, 17534i, 1i), vec3<i32>(2147483647i, -2147483647i, 1i)), abs(vec3<i32>(-61680i, 2147483647i, -1i))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, -19220i, 1998i), -1i) & (~12850i ^ (0i << (u_input.a % 32u))), ~firstTrailingBit(-784i)), !vec4<bool>(true, true, any(func_3(Struct_3(0i)).xx), var_0.x));
    var var_2 = !(!vec3<bool>(var_0.x, -7400i >= var_1.x, false));
    var_2 = !vec3<bool>(all(!func_3(Struct_3(-2147483647i)).zx), false, var_2.x & true);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1058f, -1284f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-796f, -1268f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -1076f))))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1148f, -504f) + -1937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-552f))))), -365f));
    return vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.xzx, var_1.ywy >> (vec3<u32>(~u_input.a, ~u_input.a, 76633u) % vec3<u32>(32u))), countOneBits(select(~1i, var_1.x, true)));
}

fn func_4(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(min(-136f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-368f, 369f)) - 946f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1809f)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-1269f + 1324f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1150f, var_0)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 699f, var_1))))), var_0 >= -487f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1)))), 1f);
    let var_4 = Struct_4(Struct_3(firstTrailingBit(~(-37345i >> (u_input.a % 32u)))), Struct_2(437f, ~(~_wgslsmith_add_u32(u_input.a, 1u))));
    return var_4;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = func_4(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0.a, arg_0.a >> (u_input.a % 32u)), func_2()));
    var var_1 = var_0.b.a;
    var var_2 = func_4(-(~vec2<i32>(~var_0.a.a, func_4(vec2<i32>(var_0.a.a, var_0.a.a)).a.a))).a;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1667f + arg_1.x), _wgslsmith_f_op_f32(select(1000f, 632f, u_input.a != abs(23750u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, arg_1.x, var_0.b.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(328f, -288f, 518f) + vec3<f32>(arg_1.x, 182f, arg_1.x))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), 313f, var_0.b.a))), true);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.b))), true);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, var_4.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.b.x))))), 817f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, 739f, 938f, -1285f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(276f, -1845f), _wgslsmith_f_op_f32(sign(516f)), -383f, _wgslsmith_f_op_f32(f32(-1f) * -1208f))))));
    var var_1 = all(!select(vec2<bool>(true, true), vec2<bool>(var_0.x > 1691f, false), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(Struct_3(_wgslsmith_mult_i32(min(_wgslsmith_add_i32(-6304i, -1i), 2147483647i >> (u_input.a % 32u)), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(-var_0.x)))))));
    var_1 = any(vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), u_input.a >= 75822u, false, all(vec3<bool>(true, false, true)) && false)) & any(vec2<bool>(false, true));
    let var_3 = ~(min(vec3<u32>(1u, select(u_input.a, u_input.a, false), u_input.a), vec3<u32>(4294967295u, 32726u, 91422u) | (vec3<u32>(u_input.a, 74276u, u_input.a) ^ vec3<u32>(24472u, u_input.a, u_input.a))) << (~_wgslsmith_add_vec3_u32(~vec3<u32>(11280u, u_input.a, 31835u), ~vec3<u32>(17922u, 62852u, 1u)) % vec3<u32>(32u)));
    var var_4 = func_4(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(select(max(2147483647i, 1i), i32(-1i) * -1i, true), 71227i), vec2<i32>(1i, 1i))).a;
    var var_5 = Struct_1(var_2.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) - var_0.x)), _wgslsmith_f_op_f32(sign(-1987f)), 1000f), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

