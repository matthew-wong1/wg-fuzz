struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(min(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.b, 2916i, u_input.b)) ^ ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.b, -5368i, 1i, -30416i), true), -u_input.a)), vec4<i32>(abs(~(-2424i)), -u_input.a.x & -1i, 10833i, min(1i, u_input.a.x))), ~(~u_input.a.x ^ ~(-44203i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1940f, 697f, -814f), vec3<f32>(-680f, -1645f, -1059f)))) * vec3<f32>(-292f, -1590f, _wgslsmith_f_op_f32(select(-220f, 500f, false))))));
    var var_1 = select(vec3<bool>(select(!any(vec3<bool>(false, true, true)), ~12574i != (var_0.a.x << (51698u % 32u)), true), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true & ((var_0.b < u_input.b) & true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true));
    var_0 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, -35865i, select(u_input.a.x ^ u_input.b, var_0.b, u_input.b != u_input.b), 1i), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(36437i, -4701i, -8417i, var_0.a.x) & vec4<i32>(2168i, u_input.b, 1i, var_0.a.x), var_0.a), _wgslsmith_mult_vec4_i32(-var_0.a, select(vec4<i32>(-1i, 26241i, var_0.b, 2147483647i), vec4<i32>(var_0.a.x, 66687i, var_0.a.x, var_0.b), false)))), 2147483647i, _wgslsmith_f_op_vec3_f32(round(var_0.c)));
    var var_2 = Struct_2(-_wgslsmith_sub_vec4_i32(u_input.a, -vec4<i32>(2147483647i, u_input.a.x, 8899i, -30776i)), ~select(-23823i, ~(-var_0.a.x), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(992f, -2650f, 1176f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-335f, var_0.c.x, var_0.c.x) - vec3<f32>(var_0.c.x, -880f, -235f)))))));
    var_0 = Struct_2(select(var_0.a, ~_wgslsmith_sub_vec4_i32(var_0.a, var_0.a), select(select(!vec4<bool>(false, false, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), select(vec4<bool>(true, false, var_1.x, false), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_1.x), true), var_0.c.x >= -672f), vec4<bool>(var_1.x || var_1.x, true, !var_1.x, all(vec3<bool>(var_1.x, var_1.x, false))))), ~abs(u_input.b & (u_input.b | -4926i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1084f - var_0.c.x))), var_2.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, -1103f, -385f), vec3<f32>(1079f, var_0.c.x, var_0.c.x))) * var_2.c))));
    return _wgslsmith_sub_u32(~4294967295u, (~1u ^ ~firstTrailingBit(11509u)) ^ ~(~_wgslsmith_sub_u32(55240u, 47809u)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-8300i), 22257i, u_input.a.x, i32(-1i) * -104113i) << (_wgslsmith_div_vec4_u32(vec4<u32>(19039u, 21400u, arg_0, 46455u), _wgslsmith_mult_vec4_u32(vec4<u32>(56373u, arg_0, arg_0, 37521u), vec4<u32>(1u, arg_0, 43276u, 28956u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-(~u_input.a), reverseBits(vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b))), reverseBits(max(u_input.a, vec4<i32>(0i, u_input.a.x, 0i, 4340i)) ^ u_input.a)) << (~vec4<u32>(_wgslsmith_div_u32(arg_0, 1u), func_3(), ~_wgslsmith_dot_vec2_u32(vec2<u32>(90269u, arg_0), vec2<u32>(4294967295u, 86151u)), ~23511u) % vec4<u32>(32u));
    return Struct_3(Struct_2(vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, -firstLeadingBit(u_input.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.a.wy)), abs(2147483647i), vec3<f32>(arg_1.x, 651f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), -286f);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = true;
    return func_2(reverseBits(abs(1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -704f, -848f, -983f) + vec4<f32>(2233f, -116f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -585f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, -1343f, 768f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 895f, 1000f, arg_0.x))))), true);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f), -246f) * arg_0.a.c.x);
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(u_input.a, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, 450f, arg_0.a.c.x), vec3<f32>(171f, arg_0.a.c.x, -923f))))).a.a), -select(-_wgslsmith_dot_vec3_i32(u_input.a.www, vec3<i32>(u_input.b, arg_0.a.a.x, arg_0.a.b)), _wgslsmith_mod_i32(2147483647i, 1i), true), vec3<f32>(arg_0.b, 545f, _wgslsmith_f_op_f32(-arg_0.a.c.x)));
    var var_2 = 1045f;
    let var_3 = -490f;
    var_0 = _wgslsmith_f_op_f32(exp2(func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 63117u), vec2<u32>(1u, 49343u)), ~vec2<u32>(0u, 4294967295u)), abs(23770u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, var_3, arg_0.b, -1069f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-555f, 416f, arg_0.a.c.x, arg_0.a.c.x))))), select(true, !all(vec4<bool>(false, false, false, true)), true)).a.c.x));
    return func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 2357f))), var_3, -344f)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1i);
    var var_1 = func_4(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, -1612f, -445f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, 1653f, -1146f) * vec3<f32>(657f, 621f, -2054f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-272f, -937f, -235f), vec3<f32>(757f, -1600f, 1000f))), vec3<bool>(select(true, true, true), false, true)))));
    let var_2 = Struct_3(func_2(~35528u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, var_1.c.x, 2151f, var_1.c.x), vec4<f32>(-1000f, var_1.c.x, -1213f, -288f), vec4<bool>(false, false, true, true)))))), true).a, _wgslsmith_div_f32(-338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) + _wgslsmith_f_op_f32(1176f * var_1.c.x)), _wgslsmith_f_op_f32(sign(-924f))), _wgslsmith_f_op_vec2_f32(var_2.a.c.yz * vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(max(-582f, 869f)))))) - var_2.a.c.yz);
    var_3 = var_1.c.zx;
    let var_4 = _wgslsmith_f_op_f32(round(1224f));
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 525f, var_2.b, 1206f))) + vec4<f32>(_wgslsmith_f_op_f32(var_3.x - 1000f), -537f, _wgslsmith_f_op_f32(sign(var_3.x)), func_1(vec3<f32>(-1160f, var_4, var_2.b)).b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, 243f, -504f, var_1.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(271f, var_4, 332f, 763f) * vec4<f32>(var_3.x, 1876f, var_1.c.x, -779f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, var_2.a.c.x, 1132f, var_2.a.c.x), vec4<f32>(-1575f, 759f, 287f, var_3.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-3026f, var_3.x, var_3.x, var_3.x)))))), (select(~3151i, u_input.b & -2147483647i, true) & abs(1i)) << (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(55879u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u)), firstTrailingBit(1u), false) % 32u), vec3<bool>(true, false, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), _wgslsmith_sub_vec3_u32(vec3<u32>(~1763u, 1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20349u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 71193u, 15005u, 19104u)))), vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 1u), vec2<u32>(18926u, 0u)), ~vec2<u32>(2075u, 1u)), min(_wgslsmith_add_u32(1u, 0u), 56146u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_4)))), -1376f)) * 865f));
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(30937i, vec4<u32>(var_5.d.x, func_3(), func_3(), ~var_5.d.x), var_5.a.wxw, _wgslsmith_div_i32(var_5.b, -select(var_1.a.x, var_6.a.b, var_5.c.x)) << (4294967295u % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_4, -1000f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-502f, var_3.x)), -522f, true)), 868f)))));
}

