struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(872f, -1051f, 384f, 364f), vec4<f32>(1108f, 1000f, -3537f, -598f), vec4<f32>(1026f, 1692f, 169f, -457f), vec4<f32>(601f, -1505f, 2336f, 1543f), vec4<f32>(-998f, 103f, 889f, -788f), vec4<f32>(551f, 1101f, 609f, 623f), vec4<f32>(-1080f, -999f, -168f, -1000f), vec4<f32>(2036f, -2346f, -876f, 1182f), vec4<f32>(-1000f, 319f, 880f, 711f), vec4<f32>(589f, 887f, 748f, -975f), vec4<f32>(314f, -1000f, -499f, 1000f), vec4<f32>(-1000f, -723f, 822f, 161f), vec4<f32>(331f, -1000f, 415f, -216f), vec4<f32>(1093f, 1165f, -443f, 210f), vec4<f32>(1319f, -528f, 1865f, 1191f), vec4<f32>(-195f, 374f, 1830f, 2099f), vec4<f32>(1854f, -1000f, 589f, -1968f), vec4<f32>(-1261f, 266f, -1592f, -137f), vec4<f32>(-387f, -1000f, -2213f, -287f), vec4<f32>(-482f, 1215f, 1267f, 912f), vec4<f32>(-1000f, 1516f, -679f, 1220f), vec4<f32>(-1000f, -821f, 1331f, -625f), vec4<f32>(-379f, 262f, 874f, -771f), vec4<f32>(-527f, -222f, 773f, 1222f), vec4<f32>(1012f, 497f, 635f, 727f));

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-613f, -592f))) * 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) + -1051f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1211f)) * _wgslsmith_f_op_f32(-290f * -119f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(377f, 351f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-651f, _wgslsmith_f_op_f32(f32(-1f) * -403f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-108f + 1776f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_1 = Struct_2(abs(-16076i));
    let var_2 = ~vec3<u32>(0u, 10281u, abs(u_input.d));
    var_1 = Struct_2(var_1.a);
    let var_3 = vec3<u32>(~85402u, global0[_wgslsmith_index_u32(min(4294967295u, 8833u), 27u)], 40475u);
    return reverseBits(-var_1.a) & ~(~var_1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_sub_i32(max(u_input.b, arg_2.d), _wgslsmith_mod_i32(16578i, ~(-27705i))));
    global1 = array<vec4<f32>, 25>();
    let var_1 = firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, -1i, u_input.b, -21151i), vec4<i32>(u_input.b, 2147483647i, arg_1.a, arg_1.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, 1i, arg_1.a), vec4<i32>(0i, -1i, 1i, var_0.a))), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_0.a, arg_2.d, -2147483647i), vec4<i32>(-2147483647i, 7464i, var_0.a, 1i)), var_0.a), _wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, u_input.b, 49629i)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.b, arg_1.a)), vec3<i32>(-2147483647i, arg_1.a, arg_1.a) << (u_input.c % vec3<u32>(32u))))));
    global0 = array<u32, 27>();
    var var_2 = arg_1;
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(u_input.c.x, 27715u)), select(arg_2.a, arg_2.a | global0[_wgslsmith_index_u32(23665u, 27u)], !arg_2.c)), min(3794u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(5604u, u_input.a | 0u), 27u)] >> (max(~141228u, ~u_input.a) % 32u))), 25u)];
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    global1 = array<vec4<f32>, 25>();
    let var_0 = all(vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(-749f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, -2011f))))), Struct_2(_wgslsmith_add_i32(-21725i, -1i)), Struct_1(~(~0u), _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(), 9103i, u_input.b >> (u_input.c.x % 32u), firstTrailingBit(1i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(11140i, arg_0.a, u_input.b, 22182i), vec4<i32>(u_input.b, 28749i, -20671i, u_input.b)))), var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1i)), 24928i), vec2<i32>(arg_0.a << (7476u % 32u), arg_0.a))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~(i32(-1i) * -38554i)), select(-(~vec2<i32>(16646i, -12252i)), vec2<i32>(~(-10711i), -u_input.b), !vec2<bool>(var_0, true)))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, u_input.d), 4294967295u) >> (_wgslsmith_add_u32(0u, 1u) % 32u)), 27u)], _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, -2147483647i), vec2<i32>(0i, -2147483647i)), ~(vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(-22668i, -1i))), -8086i), false, _wgslsmith_add_i32(arg_0.a, _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(1i, -1i, -1i, arg_0.a)), firstTrailingBit(countOneBits(vec4<i32>(21924i, u_input.b, arg_0.a, u_input.b))))));
    global2 = array<vec4<bool>, 4>();
    return _wgslsmith_mult_vec3_u32(~(~u_input.c), abs(u_input.c));
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 27>();
    global2 = array<vec4<bool>, 4>();
    let var_0 = select(u_input.d, 53905u | _wgslsmith_dot_vec3_u32(~func_2(Struct_2(-67594i)), min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 27u)], 63974u, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 27u)], global0[_wgslsmith_index_u32(12161u, 27u)], 1u))), true);
    global1 = array<vec4<f32>, 25>();
    global2 = array<vec4<bool>, 4>();
    return Struct_1(~((~u_input.a >> (var_0 % 32u)) ^ (~22373u ^ (global0[_wgslsmith_index_u32(var_0, 27u)] >> (4294967295u % 32u)))), 30090i, !(select(false, true, true) || any(vec2<bool>(true, true))), _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b) & -vec4<i32>(u_input.b, 37752i, u_input.b, -1i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-9942i, 36174i, u_input.b, u_input.b), vec4<i32>(9550i, 2147483647i, u_input.b, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1015f - -826f);
    var var_1 = func_1();
    var var_2 = -_wgslsmith_mult_i32(1i, select(abs(-1i), _wgslsmith_clamp_i32(-1i, var_1.b, -18484i) | -u_input.b, !(!var_1.c)));
    var var_3 = abs(abs(~u_input.b << (~max(31313u, 4294967295u) % 32u)));
    let var_4 = func_1();
    let var_5 = Struct_2(-8818i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a | 1u, _wgslsmith_clamp_vec3_u32(vec3<u32>(~max(0u, 4294967295u), max(global0[_wgslsmith_index_u32(54383u, 27u)], var_1.a) << (12846u % 32u), _wgslsmith_div_u32(1u, ~0u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_1.a, 1u), var_1.a, 1u), vec3<u32>(var_4.a, countOneBits(4294967295u), ~4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 27u)], 27u)], max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 27u)], 27u)], u_input.c.x), _wgslsmith_sub_u32(4294967295u, var_4.a)), _wgslsmith_mod_vec3_u32(~u_input.c, vec3<u32>(4294967295u, 22507u, 22144u)))), -firstTrailingBit(vec4<i32>(var_4.b, ~var_1.b, 2147483647i, var_5.a)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(22324i, u_input.b, var_5.a, var_4.b) | vec4<i32>(-13733i, 2147483647i, var_4.b, 19655i)), firstTrailingBit(vec4<i32>(2147483647i, var_1.d, var_4.d, var_1.b))) ^ ~vec4<i32>(var_5.a ^ var_4.d, u_input.b, firstLeadingBit(var_1.b), _wgslsmith_sub_i32(var_1.b, var_4.b)));
}

