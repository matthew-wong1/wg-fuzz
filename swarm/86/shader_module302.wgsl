struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(8295u, 0u), vec2<u32>(6066u, 6723u), vec2<u32>(1u, 52674u), vec2<u32>(16769u, 439u), vec2<u32>(67110u, 55295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4762u, 60855u), vec2<u32>(4294967295u, 43154u), vec2<u32>(18919u, 45714u), vec2<u32>(4294967295u, 107470u), vec2<u32>(0u, 60806u), vec2<u32>(66374u, 1u), vec2<u32>(39800u, 1u), vec2<u32>(53342u, 18199u), vec2<u32>(0u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = i32(-1i) * -firstLeadingBit(arg_1.a);
    var var_1 = true;
    global1 = array<vec2<u32>, 15>();
    let var_2 = -3644i;
    var var_3 = !vec4<bool>(false, select(true || select(true, true, false), true, false), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<u32>, 15>();
    var var_0 = func_3(arg_0, arg_0, arg_0);
    let var_1 = select(arg_0.b, reverseBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b, 4294967295u), reverseBits(4294967295u))), any(vec2<bool>(true, true))) ^ _wgslsmith_sub_u32(arg_0.b, 52113u);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, 786f, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, 136f, -276f, 660f) + vec4<f32>(arg_1, arg_1, 1000f, arg_1)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-866f, arg_1, arg_1, -117f))), vec4<bool>(true, true, true, true)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-2116f * 1000f), arg_1)));
    global1 = array<vec2<u32>, 15>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    global1 = array<vec2<u32>, 15>();
    let var_0 = !vec3<bool>(true, (1u < _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) & select(true, true, false), _wgslsmith_div_f32(-1317f, _wgslsmith_div_f32(-522f, 883f)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-170f)), -343f)));
    global1 = array<vec2<u32>, 15>();
    var var_1 = abs(vec3<u32>(arg_0.b, arg_0.b, 10152u)) << (~(~(~(~vec3<u32>(17163u, 25755u, 0u)))) % vec3<u32>(32u));
    let var_2 = arg_0;
    return ~max(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(13628u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), select(abs(vec2<u32>(4294967295u, u_input.b)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), min(var_1.x, var_1.x)), var_0.yx));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_0.x), firstLeadingBit(arg_0.zw)) ^ func_4(func_2(Struct_1(arg_2, 37141u, arg_2), -1015f), 1i)), arg_0.xx, vec2<u32>(min(max(~arg_0.x, _wgslsmith_mod_u32(u_input.b, 0u)), ~_wgslsmith_add_u32(u_input.b, arg_0.x)), _wgslsmith_dot_vec4_u32(~max(arg_0, vec4<u32>(arg_0.x, 4294967295u, 31901u, 0u)), arg_0)));
    global1 = array<vec2<u32>, 15>();
    global0 = func_2(Struct_1(_wgslsmith_div_i32(~_wgslsmith_add_i32(2147483647i, arg_2), firstLeadingBit(arg_2 ^ -10248i)), max(func_2(func_2(Struct_1(u_input.a, 83842u, arg_2), -1011f), _wgslsmith_f_op_f32(step(1146f, -421f))).b, arg_0.x), 13586i), -141f).a;
    var var_1 = func_2(Struct_1(2147483647i, arg_0.x, -11396i >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-292f, 1000f))));
    global1 = array<vec2<u32>, 15>();
    return func_2(Struct_1(-(i32(-1i) * -1i), var_0.x >> (4294967295u % 32u), min(-u_input.a, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1295f))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(-u_input.a, -1i, -arg_0.a, u_input.a), -firstTrailingBit(~vec4<i32>(17156i, 0i, -61667i, 47007i))));
    let var_1 = func_1(~firstTrailingBit(~vec4<u32>(arg_1.b, 66792u, arg_1.b, 49007u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, arg_0.b, 64928u), vec4<u32>(58827u, arg_0.b, arg_1.b, arg_1.b))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), any(vec4<bool>(false, true, false, true))), select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), i32(-1i) * -abs(-39544i));
    global0 = arg_1.a;
    var var_2 = u_input.a;
    var var_3 = Struct_1(-57826i >> (_wgslsmith_div_u32(~1u, abs(4294967295u)) % 32u), reverseBits(func_2(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -872f)).b & ~countOneBits(1u)), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(25146i, 33112i), select(2147483647i, -10507i, true))) | ~min(abs(var_1.c), ~var_0.x));
    return all(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), arg_1.b <= 4294967295u), vec4<bool>(true, any(vec3<bool>(true, true, true)), false, true), vec4<bool>(true, false, false, true)));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = -76737i;
    global0 = func_1(vec4<u32>(~arg_2.b, u_input.b, countOneBits(firstTrailingBit(63616u)), ~u_input.b), vec2<bool>(!(2724f == _wgslsmith_f_op_f32(-arg_0)), true), u_input.a).a;
    global1 = array<vec2<u32>, 15>();
    let var_0 = !select(select(vec3<bool>(arg_1, arg_1, !arg_1), !select(vec3<bool>(false, true, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), true), vec3<bool>(true, any(select(vec4<bool>(true, false, false, arg_1), vec4<bool>(true, true, true, false), vec4<bool>(false, arg_1, true, true))), func_5(arg_2, Struct_1(-2147483647i, 4294967295u, arg_2.c))), arg_1);
    var var_1 = vec3<i32>(u_input.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(4870i, 0i, 77152i) ^ vec3<i32>(-2147483647i, arg_2.c, -46723i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(-21587i, u_input.a, arg_2.a)) & vec3<i32>(arg_2.c, u_input.a, 1i))), func_2(func_2(Struct_1(_wgslsmith_mult_i32(arg_2.c, -2147483647i), 0u, 22732i), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(arg_0))))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), any(var_0)))).a);
    return Struct_1(-reverseBits(~var_1.x | -13719i), ~func_1(reverseBits(vec4<u32>(833u, 1u, u_input.b, u_input.b) & vec4<u32>(u_input.b, 4294967295u, 4294967295u, 64485u)), vec2<bool>(all(var_0.xz), var_0.x), countOneBits(firstTrailingBit(u_input.a))).b, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(949f, 697f) * _wgslsmith_f_op_f32(round(1000f))))) + 1255f), func_5(Struct_1(max(reverseBits(u_input.a), u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 52026u, 21105u, 15719u) >> (vec4<u32>(u_input.b, 4294967295u, 30819u, 70475u) % vec4<u32>(32u))), ~(~2147483647i)), func_1(vec4<u32>(42727u, ~17765u, abs(u_input.b), ~u_input.b), vec2<bool>(true, true), u_input.a)), func_2(func_1(~(~vec4<u32>(35539u, u_input.b, u_input.b, u_input.b)), vec2<bool>(true, true), 22382i), 1523f));
    let var_1 = ~_wgslsmith_div_vec4_u32(~(~reverseBits(vec4<u32>(u_input.b, 6379u, var_0.b, 20159u))), ~(~vec4<u32>(934u, 0u, var_0.b, 0u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-502f, -894f), vec2<f32>(-617f, 623f), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1245f, -110f), vec2<f32>(-1433f, -421f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(179f, 1019f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 217f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-232f, -958f), vec2<f32>(-291f, -331f)))));
    var var_3 = Struct_1(u_input.a, firstLeadingBit(~(~var_1.x)), ~u_input.a);
    global0 = -32741i;
    let var_4 = _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(27372u, 15u)], ~global1[_wgslsmith_index_u32(reverseBits(~16590u), 15u)]);
    var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * -314f), false | (func_4(func_2(Struct_1(-1i, var_0.b, 57943i), var_2.x), var_0.c >> (var_3.b % 32u)).x == _wgslsmith_add_u32(101266u, _wgslsmith_clamp_u32(29699u, var_1.x, var_3.b))), func_1(abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(47997u, 53796u, 0u, var_0.b), var_1, vec4<bool>(false, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 55924u), var_1))), vec2<bool>(select(true, false, func_3(Struct_1(u_input.a, 0u, 76186i), Struct_1(-27495i, var_3.b, var_0.a), Struct_1(var_3.c, var_0.b, 1i))), true), ~(~firstTrailingBit(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~abs(vec2<i32>(-4708i, abs(-3051i))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_3.a, _wgslsmith_sub_i32(0i, 2147483647i)), i32(-1i) * -u_input.a, -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, var_0.c), firstTrailingBit(var_3.a), ~16607i)), vec4<i32>(i32(-1i) * -u_input.a, -2147483647i, -8528i, -1i << (_wgslsmith_mod_u32(var_3.b, var_3.b) % 32u))));
}

