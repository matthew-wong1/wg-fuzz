struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 + arg_0))), -961f), 263f, global0[_wgslsmith_index_u32(4294967295u, 1u)])));
    return 1561f;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = vec3<bool>(!(all(select(vec4<bool>(global0[_wgslsmith_index_u32(29538u, 1u)], false, false, true), vec4<bool>(arg_3, arg_3, arg_3, arg_3), arg_3)) | true), !all(select(vec4<bool>(true, true, false, arg_3), vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-1417f * _wgslsmith_f_op_f32(func_3(-756f))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1037f, -2503f, false)) - _wgslsmith_f_op_f32(sign(-1000f))))));
    var var_1 = vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~61023u, min(0u, 71741u)), ~(~vec2<u32>(61053u, 1u)))), firstLeadingBit(~1u | reverseBits(_wgslsmith_clamp_u32(4294967295u, 1u, 20973u))), 0u);
    let var_2 = Struct_4(Struct_3(false), _wgslsmith_mod_u32(firstLeadingBit(~24079u), _wgslsmith_clamp_u32(1u, var_1.x, min(0u, ~0u))), arg_0, !(!vec4<bool>(false, true, false, any(vec4<bool>(false, arg_3, arg_3, global0[_wgslsmith_index_u32(1u, 1u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), abs(abs(var_1.x)) << (var_1.x % 32u)));
    let var_3 = var_2;
    var var_4 = 764f;
    return _wgslsmith_f_op_f32(sign(-1233f));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec2<u32> {
    global0 = array<bool, 1>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - _wgslsmith_f_op_vec2_f32(vec2<f32>(704f, -406f) + vec2<f32>(arg_1, arg_1))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_1) * vec2<f32>(1200f, -712f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(361f, arg_1) + vec2<f32>(arg_1, -1304f))))))));
    var var_1 = abs(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -20543i, u_input.a.x), ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -880f, 1686f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(329f, var_0.x, arg_1))))))))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(42395u, 24603u), ~vec2<u32>(53430u, 8987u)), vec2<u32>(1u, 6295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var var_3 = var_2.b;
    return vec2<u32>(~1u ^ var_2.b, ~16171u) ^ _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(4294967295u, 1u))), select(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, 4294967295u), ~vec2<u32>(var_2.b, 14120u)), abs(vec2<u32>(4294967295u, 1u)) & (vec2<u32>(var_2.b, var_2.b) ^ vec2<u32>(1u, var_2.b)), global0[_wgslsmith_index_u32(firstTrailingBit(~var_2.b), 1u)]));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = select(select(vec3<bool>(!arg_2 || all(arg_0.yz), !arg_2, true), select(!vec3<bool>(arg_2, false, false), arg_0, !(!arg_2)), all(vec4<bool>(!arg_0.x, true, select(true, arg_0.x, arg_0.x), u_input.a.x < u_input.a.x))), select(vec3<bool>(true, _wgslsmith_div_f32(arg_3.x, arg_3.x) != _wgslsmith_f_op_f32(f32(-1f) * -304f), false), vec3<bool>(all(!arg_0), false, false), arg_0), select(arg_0, arg_0, !(!(false | global0[_wgslsmith_index_u32(1u, 1u)]))));
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    var var_1 = Struct_2(-vec2<i32>(min(-2147483647i, u_input.a.x >> (0u % 32u)), i32(-1i) * -24424i));
    return Struct_3(true | (arg_2 & true));
}

fn func_1() -> Struct_3 {
    var var_0 = max(max(_wgslsmith_div_u32(1u, 4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11027u, 14402u, 51404u), vec4<u32>(1u, 1829u, 0u, 1u)), max(17457u, 18494u)), ~(~1u)) ^ 4294967295u;
    var_0 = 0u;
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a.x, 1i), ~u_input.a);
    let var_2 = func_5(!(!select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(19008u, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(15634u, 1u)], true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], true), false), true)), _wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, ~61604u)) | ~func_4(Struct_3(global0[_wgslsmith_index_u32(7254u, 1u)]), _wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_2(var_1.yz), Struct_2(vec2<i32>(0i, -20107i)), false))), any(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(68924u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(24021u, 1u)], global0[_wgslsmith_index_u32(619u, 1u)], global0[_wgslsmith_index_u32(24878u, 1u)], global0[_wgslsmith_index_u32(10444u, 1u)]), true), select(vec4<bool>(global0[_wgslsmith_index_u32(42112u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], true, global0[_wgslsmith_index_u32(29599u, 1u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], false, true), true), true), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(33117u, 1u)], global0[_wgslsmith_index_u32(32329u, 1u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(26157u, 1u)], global0[_wgslsmith_index_u32(45417u, 1u)], true), global0[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(49708u, 1u)], true, false, true), true), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1086f, -603f, -542f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1725f, -268f, -136f) * vec3<f32>(732f, 906f, 528f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 934f, -596f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, -324f, 145f) * vec3<f32>(-1226f, -683f, -1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2141f, 481f, 1020f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1003f, 867f, -1201f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(317f, 947f, -1040f) - vec3<f32>(723f, -1307f, -171f))))));
    var_1 = select(vec3<i32>(u_input.a.x, -reverseBits(u_input.a.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.a.x, 0i), u_input.a), _wgslsmith_clamp_i32(var_1.x, 1i, max(u_input.a.x, u_input.a.x)))), firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.a >> (vec3<u32>(19113u, 81764u, 10025u) % vec3<u32>(32u)), vec3<i32>(var_1.x, var_1.x, u_input.a.x)) ^ firstTrailingBit(vec3<i32>(1i, u_input.a.x, u_input.a.x))), true);
    return func_5(!(!vec3<bool>(!global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(1u, 1u)])), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(48366u, 4294967295u, 4294967295u), vec3<u32>(21404u, 12565u, 28202u))), firstLeadingBit(28632u)), true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1054f, _wgslsmith_f_op_f32(sign(-225f)), _wgslsmith_f_op_f32(1000f * -858f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a.x, -1i);
    global0 = array<bool, 1>();
    let var_1 = func_1();
    let var_2 = Struct_4(var_1, 40410u, select(-_wgslsmith_add_i32(abs(var_0.x), 1i), var_0.x, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 44494u, 23932u, 1u), ~vec4<u32>(0u, 0u, 23515u, 71591u)), 1u)], func_1().a, true || global0[_wgslsmith_index_u32(506u, 1u)]), vec4<bool>(any(vec3<bool>(true, true, var_1.a)), global0[_wgslsmith_index_u32(~(~215u), 1u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(40606u, 1u)], var_1.a == var_1.a, true, global0[_wgslsmith_index_u32(0u, 1u)])), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(450f, -1000f, 1094f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1278f, -1000f, 814f)))), abs(0u)));
    var var_3 = firstTrailingBit(u_input.a >> (min(countOneBits(vec3<u32>(var_2.e.b, var_2.b, 0u) & vec3<u32>(var_2.b, var_2.b, 58390u)), vec3<u32>(1u, 4294967295u, abs(4294967295u))) % vec3<u32>(32u)));
    var var_4 = Struct_4(Struct_3(func_1().a), var_2.e.b, var_0.x, vec4<bool>(false, func_5(!(!var_2.d.wxy), vec2<u32>(_wgslsmith_div_u32(var_2.b, 4946u), ~656u), var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_2.e.a)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(961f, var_2.e.a.x, var_2.e.a.x))))).a, all(var_2.d.yxy), !(!any(vec4<bool>(true, true, false, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -791f, -1070f) - _wgslsmith_f_op_vec3_f32(-var_2.e.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.a.x, 136f, var_2.e.a.x))), 83041u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(761f, 172f, -848f, 1746f), vec4<f32>(var_4.e.a.x, var_4.e.a.x, 2336f, 358f))))))), reverseBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(11488u, 69444u, 15418u, 8405u), vec4<u32>(var_4.b, 61621u, 4294967295u, var_2.e.b)) & ~vec4<u32>(17919u, 29018u, var_2.e.b, 4294967295u), abs(vec4<u32>(var_4.b, var_4.b, 1u, var_2.b)), all(var_4.d))));
}

