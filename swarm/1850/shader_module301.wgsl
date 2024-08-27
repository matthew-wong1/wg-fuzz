struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<f32, 27> = array<f32, 27>(329f, -1285f, 1000f, 217f, -1741f, 1776f, 1000f, 1035f, -411f, -833f, -511f, 830f, 313f, 555f, 885f, -1427f, -672f, -1324f, -214f, -311f, -489f, 580f, -622f, 1092f, 230f, 1000f, -2068f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)] < -279f, !any(vec3<bool>(false, false, false)), false, true), vec4<bool>(true, true, true, true), false);
    global0 = array<Struct_1, 30>();
    var var_1 = !var_0.x;
    var_1 = true;
    let var_2 = true;
    return ~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(34072u, 27079u), ~vec2<u32>(45903u, 62961u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, u_input.b))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = vec4<bool>(!(true | arg_1.x), !any(!vec2<bool>(true, arg_2.x)), any(vec3<bool>(false || arg_1.x, true, any(vec3<bool>(arg_1.x, arg_1.x, true)))), 1u > (min(14597u, 30222u) ^ (arg_0.x | _wgslsmith_mod_u32(u_input.b, 0u))));
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~func_3().x, 27u)], -118f)))));
    var var_3 = _wgslsmith_clamp_u32(firstTrailingBit(~(~arg_0.x)) & _wgslsmith_dot_vec3_u32(select(vec3<u32>(66939u, 0u, arg_0.x) >> (vec3<u32>(1u, arg_0.x, 38517u) % vec3<u32>(32u)), vec3<u32>(u_input.b, 4294967295u, u_input.b), any(vec3<bool>(var_0.x, arg_1.x, arg_2.x))), abs(~vec3<u32>(u_input.b, 1u, 4294967295u))), 11396u, _wgslsmith_dot_vec3_u32(select(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4937u, arg_0.x), vec3<u32>(4294967295u, 0u, 1u)), abs(vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(arg_1.x, arg_2.x, var_0.x)), vec3<u32>(arg_0.x, min(u_input.b, 92021u), abs(35512u)), select(!arg_2, !var_0.wxz, true)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(34563u, u_input.b), ~arg_0), 55356u)));
    return ~reverseBits(~arg_0);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(1u, 27u)], 0u);
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_mod_vec2_u32(func_4(~vec2<u32>(0u, arg_0) & func_3(), vec4<bool>(true, all(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec4<i32>(1957i, u_input.a, u_input.d, _wgslsmith_sub_i32(-71490i, u_input.a))) ^ _wgslsmith_mult_vec2_u32((vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, arg_0)) << (vec2<u32>(12202u, 22382u) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.b)), func_3());
    global1 = array<f32, 27>();
    let var_3 = ~(~(~(-_wgslsmith_div_i32(-1i, u_input.d))));
    return Struct_2(var_3, global0[_wgslsmith_index_u32(~(~func_4(var_2, vec4<bool>(false, true, false, false), vec3<bool>(true, true, true), countOneBits(vec4<i32>(13638i, var_3, 0i, var_3))).x), 30u)], 4294967295u, Struct_1(1000f, var_0.b));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = vec2<bool>(!(!all(vec4<bool>(true, arg_1, false, false))), arg_1);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1431f * _wgslsmith_f_op_f32(sign(2574f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f - _wgslsmith_f_op_f32(trunc(arg_0))) * arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1716f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 27u)] + -927f)) * _wgslsmith_f_op_f32(f32(-1f) * -525f)), 1251f)), _wgslsmith_f_op_f32(f32(-1f) * -1510f));
    global1 = array<f32, 27>();
    var var_2 = func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(43664u, u_input.b, u_input.b, 55950u), vec4<u32>(42044u, u_input.b, u_input.b, u_input.b)), max(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(0u, 63262u, 50848u, u_input.b)) ^ (vec4<u32>(41837u, u_input.b, u_input.b, u_input.b) | vec4<u32>(1u, 26109u, 21354u, 0u))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_div_u32(0u, 32878u), _wgslsmith_mult_u32(u_input.b, u_input.b), ~62099u)));
    let var_3 = vec4<bool>(!(!(true && !arg_1)), var_0.x, any(select(select(select(vec2<bool>(false, arg_1), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false)), select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), vec2<bool>(false, var_0.x)), !var_0.x), vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), false))), true);
    return Struct_2(_wgslsmith_mod_i32(~(~(-1i)), (~46150i >> (select(var_2.b.b, u_input.b, arg_1) % 32u)) << (~46901u % 32u)), func_2(func_3().x).d, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 1u)), _wgslsmith_clamp_u32(countOneBits(1u << (u_input.b % 32u)), u_input.b, _wgslsmith_mult_u32(var_2.d.b, u_input.b))), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    global1 = array<f32, 27>();
    global0 = array<Struct_1, 30>();
    let var_0 = select(select(vec3<bool>(!any(vec3<bool>(false, true, true)), !all(vec2<bool>(false, true)), true), vec3<bool>(true, true, any(vec3<bool>(true, false, true)) == select(true, true, false)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), true, true));
    var var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -864f), !any(vec3<bool>(true, true, var_0.x)));
    let var_2 = func_2(var_1.b.b);
    return vec3<bool>(true & select(var_0.x, true, false), false, !((_wgslsmith_f_op_f32(ceil(arg_0.d.a)) < arg_0.b.a) || !(var_0.x && var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1012f)), _wgslsmith_f_op_f32(sign(125f)), global1[_wgslsmith_index_u32(reverseBits(abs(~u_input.b)), 27u)]));
    var var_1 = select(vec3<bool>(true, true, any(vec2<bool>(true, true))), select(vec3<bool>(~u_input.b < 34836u, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true), select(vec3<bool>(global1[_wgslsmith_index_u32(2594u, 27u)] <= var_0.x, true, true), vec3<bool>(true, true, true), func_5(func_1(-1978f, false), ~6617u)), select(_wgslsmith_clamp_u32(u_input.b, u_input.b, 7003u) <= ~6401u, true, u_input.b <= ~u_input.b)), select(vec3<bool>(true, !any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true))), !(!func_5(Struct_2(u_input.c, Struct_1(global1[_wgslsmith_index_u32(1u, 27u)], u_input.b), 34211u, Struct_1(115f, 1u)), 1u)), all(select(func_5(Struct_2(u_input.c, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 27u)], u_input.b), 0u, global0[_wgslsmith_index_u32(1u, 30u)]), u_input.b).xz, vec2<bool>(false, true), vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(45155u, 27u)], 1798f, -128f)))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(16212u, u_input.b | u_input.b), 30u)];
    global1 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 1f)), select(vec3<u32>(select(26647u, var_3.b, false), ~(u_input.b & 19568u), (30596u ^ u_input.b) & var_3.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_3.b, var_3.b, 18883u), vec4<u32>(2212u, u_input.b, 37050u, var_3.b) << (vec4<u32>(39322u, u_input.b, 80897u, var_3.b) % vec4<u32>(32u))), abs(41438u) << (u_input.b % 32u), 1u), var_1.x), 0i, -603f, _wgslsmith_mult_i32((select(u_input.a, u_input.c, var_1.x) >> (select(28716u, u_input.b, false) % 32u)) >> ((39585u ^ u_input.b) % 32u), u_input.a));
}

