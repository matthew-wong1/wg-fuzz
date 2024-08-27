struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(arg_0.e.www, _wgslsmith_div_vec3_u32(min(select(~arg_0.e.xxx, ~vec3<u32>(1u, 0u, 122221u), arg_0.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(28517u, 30407u, u_input.b), vec3<u32>(61052u, u_input.a, 0u) & vec3<u32>(4294967295u, 0u, u_input.a), arg_0.e.zzy & vec3<u32>(0u, arg_0.c, arg_0.c))), arg_0.e.zww));
    let var_1 = ~arg_1.x;
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(53822i, 1i, 18777i) != arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-812f, -1312f) - -382f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1938f, 611f))))));
    var_0 = !all(vec3<bool>(false | any(vec4<bool>(arg_1, false, false, false)), abs(u_input.b) <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, 61694u)), !func_3(Struct_1(arg_2.zx, arg_1, 89808u, arg_2.zy, vec4<u32>(u_input.a, 72216u, u_input.b, 4294967295u)), vec3<i32>(u_input.d.x, arg_0.x, u_input.c))));
    return -30015i;
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_i32(~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 38053i, u_input.d.x, u_input.d.x), vec4<i32>(2147483647i, u_input.d.x, u_input.c, u_input.c))), abs(vec4<i32>(reverseBits(u_input.d.x), func_2(vec3<i32>(u_input.c, -2147483647i, -48007i), true, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), 0i >> (~u_input.b % 32u), func_2(abs(vec3<i32>(13633i, u_input.c, u_input.c)), true, vec3<bool>(true, true, true)))));
    var var_1 = 515f;
    var_1 = -1236f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f), -428f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1865f + -1809f), -121f, true || any(vec2<bool>(true, false)))), 455f)));
    return vec2<i32>(select(u_input.d.x, -firstLeadingBit(~(-2147483647i)), true), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.d, _wgslsmith_sub_vec2_i32(var_0.xw, u_input.d)), var_0.ww));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, arg_2.b), vec2<bool>(arg_2.b, true)), select(select(vec2<bool>(arg_1.b, true), arg_1.d, arg_2.d), arg_2.a, arg_1.d.x), vec2<bool>(arg_1.a.x, true)), arg_1.d.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.c, u_input.b), ~_wgslsmith_clamp_u32(27765u, min(arg_2.c, 4294967295u), ~arg_2.c)), arg_2.d, ~min(abs(arg_1.e), select(vec4<u32>(arg_2.e.x, 51278u, 52865u, arg_1.e.x) << (arg_2.e % vec4<u32>(32u)), ~arg_2.e, !arg_2.b)));
    var var_1 = Struct_1(!arg_1.a, any(vec3<bool>(any(select(vec2<bool>(var_0.d.x, arg_2.b), vec2<bool>(true, arg_1.a.x), vec2<bool>(arg_1.a.x, true))), !(arg_1.b != false), any(select(vec3<bool>(arg_1.d.x, arg_1.a.x, false), vec3<bool>(arg_2.d.x, arg_1.b, true), false)))), ~var_0.e.x, vec2<bool>(true, any(!vec2<bool>(var_0.a.x, arg_1.b))), ~(~arg_1.e));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1637f - _wgslsmith_f_op_f32(-638f + -543f)) * 2058f), 1317f), _wgslsmith_f_op_f32(888f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1641f * -1089f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1764f, -210f)), _wgslsmith_f_op_f32(-1087f + -1430f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2976f, 1000f, arg_1.b)) * 268f)))));
    let var_3 = select(!select(select(vec4<bool>(false, false, true, var_0.b), select(vec4<bool>(arg_2.d.x, false, false, arg_2.a.x), vec4<bool>(arg_2.b, false, false, true), true), any(vec2<bool>(arg_2.d.x, arg_1.a.x))), vec4<bool>(var_0.d.x, !var_1.a.x, all(vec4<bool>(false, arg_2.d.x, var_0.d.x, false)), var_1.a.x), false), !select(vec4<bool>(var_1.a.x, all(vec2<bool>(true, true)), !arg_1.a.x, !var_0.a.x), select(!vec4<bool>(var_0.a.x, true, true, true), !vec4<bool>(var_0.a.x, false, true, var_0.b), select(vec4<bool>(arg_1.a.x, false, false, false), vec4<bool>(arg_1.b, false, true, true), var_0.a.x)), vec4<bool>(var_0.b || true, arg_2.a.x, false, arg_1.a.x == false)), !(!(!vec4<bool>(true, true, var_1.d.x, var_0.b))));
    var var_4 = ~abs(_wgslsmith_add_vec4_u32(select(var_1.e, arg_1.e, any(vec2<bool>(var_3.x, var_0.a.x))), abs(vec4<u32>(arg_1.c, 101682u, 37188u, arg_2.e.x)) ^ firstLeadingBit(var_1.e)));
    return Struct_1(vec2<bool>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.c, 18667u, 0u, var_0.e.x)), ~vec4<u32>(0u, 0u, var_0.c, var_4.x)) == 19510u, true), true, var_1.c, !select(!select(vec2<bool>(var_1.b, var_3.x), vec2<bool>(arg_2.d.x, true), var_0.d), !var_3.wx, select(vec2<bool>(false, true), !vec2<bool>(var_3.x, arg_1.a.x), any(var_3))), max(firstTrailingBit(var_0.e), vec4<u32>(4294967295u, 1u, var_1.e.x, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(func_1()), _wgslsmith_div_vec2_i32(~vec2<i32>(8600i, 1697i), u_input.d)), u_input.c, u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(0i, 23769i), _wgslsmith_dot_vec2_i32(u_input.d, u_input.d)), ~vec3<i32>(u_input.d.x, u_input.d.x, 1i))), Struct_1(vec2<bool>(u_input.b != ~u_input.b, true), true, u_input.b, vec2<bool>(u_input.c != u_input.d.x, true), ~(vec4<u32>(0u, 2599u, 0u, u_input.a) ^ _wgslsmith_add_vec4_u32(vec4<u32>(13496u, u_input.b, u_input.a, 68497u), vec4<u32>(34729u, u_input.a, u_input.b, 82736u)))), Struct_1(vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), false, u_input.b & u_input.a, vec2<bool>(true, true), max(~vec4<u32>(57358u, 1u, u_input.a, u_input.b), vec4<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.b), u_input.a << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(23757u, 0u, 1u)), _wgslsmith_add_u32(54619u, u_input.b)))));
    var var_1 = var_0;
    var_1 = func_4(vec4<i32>(7157i, _wgslsmith_sub_i32(343i, 1099i), 0i, u_input.c), Struct_1(vec2<bool>(var_1.b, _wgslsmith_mult_i32(0i, 28469i) >= countOneBits(u_input.c)), select(false, false, var_0.b) || any(vec3<bool>(true, true, var_1.a.x)), 1u, select(!vec2<bool>(false, var_0.a.x), func_4(vec4<i32>(u_input.c, 0i, u_input.c, -1i) | vec4<i32>(71941i, -63355i, 3464i, -2147483647i), Struct_1(vec2<bool>(var_0.b, false), var_0.b, 0u, var_0.a, var_1.e), Struct_1(vec2<bool>(true, true), var_0.b, var_0.e.x, var_0.a, var_0.e)).d, select(vec2<bool>(false, true), vec2<bool>(var_0.b, true), !var_1.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, 1u, var_0.e.x, var_1.e.x)), var_0.e, _wgslsmith_sub_vec4_u32(var_0.e, vec4<u32>(u_input.b, u_input.a, 1u, 1974u))), ~abs(var_0.e))), Struct_1(select(select(vec2<bool>(false, true), !vec2<bool>(var_1.b, false), !var_0.a.x), !(!vec2<bool>(false, var_1.b)), firstLeadingBit(var_1.e.x) > var_1.c), var_0.d.x, firstTrailingBit(u_input.a), !select(select(var_0.d, var_0.a, var_0.d), select(var_0.d, var_1.d, vec2<bool>(true, var_1.d.x)), all(vec3<bool>(false, var_0.b, var_1.d.x))), ~abs(max(var_1.e, vec4<u32>(1u, var_0.c, 0u, 1u)))));
    let var_2 = Struct_1(select(select(!select(var_1.a, var_0.d, vec2<bool>(var_0.b, false)), var_1.a, func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(-30365i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(63192i, u_input.d.x, u_input.c, 0i), vec4<i32>(29466i, -1i, 2147483647i, u_input.c)), var_0, func_4(vec4<i32>(u_input.c, u_input.c, u_input.c, -11371i), Struct_1(var_0.a, var_0.d.x, 23218u, vec2<bool>(var_0.d.x, true), vec4<u32>(u_input.b, 86286u, var_1.c, u_input.a)), var_0)).a), func_4(-(vec4<i32>(u_input.d.x, u_input.c, u_input.c, u_input.c) ^ vec4<i32>(u_input.d.x, -5519i, u_input.d.x, 32529i)), Struct_1(vec2<bool>(true, true), true, firstTrailingBit(1u), !var_1.a, _wgslsmith_clamp_vec4_u32(var_0.e, vec4<u32>(25542u, 18772u, 43852u, 1u), var_1.e)), Struct_1(vec2<bool>(true, true), !var_0.b, 0u, !var_0.d, vec4<u32>(4294967295u, 41287u, var_1.c, var_0.c))).a, vec2<bool>(all(vec2<bool>(false, var_1.d.x)), var_1.a.x)), var_0.b, var_0.e.x, vec2<bool>(!all(vec3<bool>(false, true, false)) && true, 3445i >= u_input.d.x), ~vec4<u32>(30173u, _wgslsmith_clamp_u32(var_1.c, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(28135u, var_1.c, 1u), var_0.e.zzy)), firstTrailingBit(_wgslsmith_div_u32(1u, 9262u)), u_input.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f));
    let var_4 = var_0;
    let var_5 = var_3 < _wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(351f * -1000f), -518f) + 183f)));
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(278f, 443f, var_3, -1470f), vec4<f32>(-166f, -461f, var_3, -177f))))))));
}

