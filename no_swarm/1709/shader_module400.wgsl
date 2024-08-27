struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 58299u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = vec3<u32>(arg_0.a.x, min(select(1u, _wgslsmith_mod_u32(58577u, global0.a.x), 391f <= arg_1.a.x) ^ 40457u, select(~(~global0.a.x), ~(~u_input.a), true)), 1u);
    let var_1 = Struct_1(global0.a >> (_wgslsmith_div_vec3_u32(var_0 & min(var_0, var_0), ~global0.a) % vec3<u32>(32u)));
    global0 = Struct_1(firstLeadingBit(~var_1.a));
    let var_2 = ~(~abs(~263u)) << (arg_0.a.x % 32u);
    global0 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_1.a.x)) * -648f);
}

fn func_2() -> vec3<i32> {
    global0 = Struct_1(~reverseBits(~(~global0.a)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, 2417u, u_input.a)), vec3<u32>(u_input.a, 3911u, global0.a.x) >> (global0.a % vec3<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, -339f, -140f) - vec3<f32>(360f, -695f, -1000f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(351f, -615f, 906f))))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a), Struct_3(vec3<f32>(-929f, 806f, 920f)), true)) + 929f))) + _wgslsmith_f_op_f32(1f * 2158f)), -844f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1682f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-787f * -1559f))))));
    global0 = Struct_1(global0.a);
    let var_1 = vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(all(vec3<bool>(false, false, true)), true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), select(true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))) != true, ~(~(~119677u)) == (_wgslsmith_mod_u32(abs(0u), _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(1u, 4294967295u, 22704u))) | 1u), false);
    global0 = Struct_1(~(~(global0.a << (vec3<u32>(global0.a.x, 20947u, 69886u) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a, 4294967295u, u_input.a)));
    return abs(firstTrailingBit(~vec3<i32>(u_input.b, -25415i, u_input.b)) << (vec3<u32>(1u | u_input.a, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, 118969u, global0.a.x)), countOneBits(vec4<u32>(u_input.a, global0.a.x, global0.a.x, global0.a.x))), 30067u) % vec3<u32>(32u)));
}

fn func_1() -> vec4<f32> {
    var var_0 = vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(func_2(), -(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, -6042i))));
    let var_1 = ~u_input.a;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-930f, 1186f, -2209f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 785f, -158f) * vec3<f32>(-997f, 2283f, 119f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(168f, -1690f, -1446f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-701f, -515f, -369f))))))));
    var var_3 = Struct_2(Struct_1(global0.a), Struct_1(max(global0.a, vec3<u32>(37277u, var_1, u_input.a))));
    global0 = Struct_1(~vec3<u32>(_wgslsmith_div_u32(22585u, global0.a.x), ~u_input.a, var_1) & vec3<u32>(_wgslsmith_mult_u32(reverseBits(var_3.a.a.x), 55208u), global0.a.x, ~(~var_1)));
    return vec4<f32>(_wgslsmith_div_f32(1106f, 2126f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * 1469f) - -1000f), 490f, _wgslsmith_div_f32(-1062f, 213f));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0.a.x, 1u, 61230u)), abs(global0.a)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.a.x, 77577u, 12769u, 4294967295u) & vec4<u32>(u_input.a, 97622u, global0.a.x, global0.a.x)), vec4<u32>(max(u_input.a, u_input.a), ~0u, min(u_input.a, 0u), u_input.a >> (4294967295u % 32u))), abs(global0.a.x)));
    let var_0 = arg_1.zxy;
    global0 = Struct_1(global0.a);
    let var_1 = Struct_3(arg_1.yyz);
    let var_2 = 17123i;
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(max(countOneBits(global0.a.x), u_input.a & 5444u), 0u, 5796u), ~vec3<u32>(global0.a.x, u_input.a, 19555u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(reverseBits(-29790i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1916f, 2417f, 1885f, 133f), vec4<f32>(1000f, -880f, 236f, -569f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_div_vec4_f32(vec4<f32>(1864f, -1005f, -1848f, 449f), vec4<f32>(-1341f, 977f, -235f, 1166f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(496f, 608f, 1116f, -1208f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1329f, 1355f, -1000f, -1601f))), u_input.a > global0.a.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1070f, -1404f, 554f, 493f)))))), false);
    global0 = func_4(reverseBits(_wgslsmith_add_i32(-(i32(-1i) * -3242i), max(24070i, _wgslsmith_div_i32(u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1189f, -727f, -1080f, _wgslsmith_f_op_f32(abs(247f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-295f, -1207f, 1807f, 1219f)) + _wgslsmith_div_vec4_f32(vec4<f32>(832f, -518f, -860f, -1000f), vec4<f32>(-998f, 1408f, 833f, -926f)))))), true);
    global0 = func_4(u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(-1423f - _wgslsmith_f_op_vec4_f32(func_1()).x), 114f, -276f)), true);
    var var_0 = global0.a.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, _wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(ceil(168f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2347f, 240f, -975f) + vec3<f32>(-789f, 706f, -942f)) * _wgslsmith_div_vec3_f32(vec3<f32>(374f, 794f, 516f), vec3<f32>(529f, 871f, 1005f)))) + vec3<f32>(_wgslsmith_div_f32(-1373f, -468f), _wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(-1181f + -479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)))), _wgslsmith_sub_i32(~u_input.b, -1i));
}

