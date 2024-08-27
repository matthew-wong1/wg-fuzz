struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 13802i), true, vec2<u32>(3326u, 30319u), i32(-2147483648), vec2<u32>(39838u, 4294967295u));

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(547f, -988f, -560f), vec3<f32>(-1059f, -903f, -1153f), vec3<f32>(675f, -156f, 1440f), vec3<f32>(109f, -1009f, -849f), vec3<f32>(328f, -622f, 246f), vec3<f32>(936f, -770f, 1673f), vec3<f32>(981f, 789f, -176f), vec3<f32>(-210f, 1718f, -1000f), vec3<f32>(135f, -1450f, 260f), vec3<f32>(2025f, -943f, -288f), vec3<f32>(-1806f, -1705f, 2095f), vec3<f32>(-1237f, 715f, 867f), vec3<f32>(-438f, -238f, -1879f), vec3<f32>(-710f, 474f, 840f), vec3<f32>(620f, 539f, -1184f), vec3<f32>(691f, 687f, -212f), vec3<f32>(691f, -572f, -458f), vec3<f32>(425f, -207f, -153f), vec3<f32>(325f, 445f, 1000f), vec3<f32>(-771f, -504f, 1273f), vec3<f32>(-793f, 1071f, -848f), vec3<f32>(-942f, 1000f, -195f), vec3<f32>(-183f, 728f, 150f), vec3<f32>(770f, -102f, -135f), vec3<f32>(1000f, -223f, -1000f), vec3<f32>(-1081f, 925f, -480f), vec3<f32>(-220f, 1178f, -632f), vec3<f32>(-841f, -587f, 1018f), vec3<f32>(331f, -102f, 921f), vec3<f32>(-1148f, 1917f, -344f), vec3<f32>(-112f, 767f, -1200f));

var<private> global3: f32 = -771f;

var<private> global4: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1713f, 1000f, -1913f), vec3<f32>(-1000f, 335f, 797f), vec3<f32>(-1224f, -631f, -405f), vec3<f32>(519f, 908f, 1396f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = 43014i;
    var var_1 = Struct_1(firstLeadingBit(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(2931i, global1.a.x), ~global1.a, vec2<i32>(2147483647i, global1.a.x)))), global1.b, vec2<u32>(~((u_input.b & u_input.a) | u_input.a), _wgslsmith_sub_u32(global1.e.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.b), countOneBits(global1.e.x)))), -global1.a.x, ~vec2<u32>(global1.e.x, u_input.a & _wgslsmith_mod_u32(0u, global1.e.x)));
    var var_2 = var_1.d;
    let var_3 = vec4<i32>(global1.d, 2147483647i, _wgslsmith_div_i32(17751i, -var_1.a.x), global1.d >> (~firstTrailingBit(30646u) % 32u));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1570f)))));
    return Struct_1(vec2<i32>(-var_1.a.x, 19582i), !var_1.b, ~(~(~global1.e)), ~(-(_wgslsmith_mult_i32(global1.a.x, 1i) & abs(9838i))), _wgslsmith_sub_vec2_u32(var_1.c, ~vec2<u32>(global1.e.x, _wgslsmith_sub_u32(global1.c.x, global1.c.x))));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_1(countOneBits(vec2<i32>(global1.d, 30766i)), false, global1.e, firstTrailingBit(global1.d), vec2<u32>(global1.e.x, ~_wgslsmith_clamp_u32(global1.e.x, 8327u, 4294967295u)) ^ vec2<u32>(0u, global1.e.x));
    global0 = vec2<bool>(!(!global1.b), all(vec3<bool>(select(0u < var_0.e.x, global1.b, true), all(select(vec3<bool>(global1.b, var_0.b, false), vec3<bool>(global0.x, global0.x, var_0.b), var_0.b)), !(!var_0.b))));
    var var_1 = Struct_1(vec2<i32>(-1i, 14556i), false, ~vec2<u32>(~global1.e.x, ~(var_0.e.x & 66859u)), global1.a.x, firstTrailingBit(var_0.c));
    let var_2 = -(vec4<i32>(var_1.d, -21945i, var_1.d, abs(global1.d << (17277u % 32u))) & vec4<i32>(var_0.d, ~1i, 0i, -2203i));
    let var_3 = -max(var_2.wwz, select(_wgslsmith_div_vec3_i32(var_2.wxx, var_2.wxy), var_2.yxz, true));
    return !select(vec2<bool>(false, select(true, !global0.x, !global0.x)), vec2<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(608f, arg_0)))).b), !select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.b), vec2<bool>(var_0.b, global1.b), vec2<bool>(true, var_0.b)), vec2<bool>(true, true)));
}

fn func_1() -> vec2<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_1 = Struct_1(global1.a, var_0.b, _wgslsmith_add_vec2_u32(reverseBits(global1.e), countOneBits(~global1.c)), var_0.d, _wgslsmith_mult_vec2_u32(vec2<u32>(5968u, ~0u), vec2<u32>(global1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 20129u), _wgslsmith_sub_vec2_u32(var_0.c, vec2<u32>(144886u, 135344u))))));
    var var_2 = vec3<u32>(75030u, ~(~_wgslsmith_clamp_u32(53123u, global1.e.x, 27615u)), 12166u ^ var_1.e.x);
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f) * _wgslsmith_f_op_f32(1155f - -410f)), -692f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(299f, -1000f))), _wgslsmith_f_op_f32(min(-1320f, 1f))))));
    let var_4 = vec4<bool>(var_3.b, all(!vec2<bool>(!var_0.b, true)), func_2(vec2<f32>(1f, 1f)).b, !any(!func_3(160f)));
    return ~var_1.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global4 = array<vec3<f32>, 4>();
    global2 = array<vec3<f32>, 31>();
    let var_0 = arg_0;
    var var_1 = arg_0;
    global4 = array<vec3<f32>, 4>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-35948i ^ global1.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, global1.d), vec2<i32>(-40789i, 32458i))), -firstLeadingBit(global1.a), func_1()), global1.b, vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(18066u, u_input.b), vec2<u32>(13793u, u_input.b)), abs(1u)), 1i, _wgslsmith_mod_vec2_u32(vec2<u32>(global1.c.x, global1.c.x), vec2<u32>(~4294967295u, ~4294967295u))));
    global1 = Struct_1(func_4(func_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))))).a, !global1.b == (any(select(vec4<bool>(global1.b, global1.b, global1.b, global0.x), vec4<bool>(false, global1.b, false, global0.x), vec4<bool>(global0.x, false, var_0.b, true))) && true), vec2<u32>(22387u, 46804u), 56650i, vec2<u32>(u_input.b, func_4(var_0).c.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1617f));
    var var_2 = vec4<bool>(!(!func_4(Struct_1(vec2<i32>(13337i, global1.d), global1.b, var_0.e, -1i, vec2<u32>(507u, 1u))).b), true, !(all(vec2<bool>(true, true)) && global1.b), global0.x && all(vec3<bool>(true, false, true)));
    let var_3 = !select(var_2.xzw, var_2.zxz, _wgslsmith_f_op_f32(abs(-1000f)) != var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, firstLeadingBit(vec3<i32>(i32(-1i) * -1i, global1.d << (var_0.c.x % 32u), -2147483647i)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, var_0.e.x), vec3<u32>(global1.c.x, 0u, 26265u)) & vec3<u32>(u_input.a, global1.c.x, u_input.b), (vec3<u32>(4294967295u, u_input.a, 30094u) ^ vec3<u32>(var_0.c.x, global1.c.x, var_0.e.x)) << (~vec3<u32>(922u, var_0.e.x, var_0.e.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

