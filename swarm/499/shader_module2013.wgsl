struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec4<u32>(0u, 1u, 14542u, 68027u), vec3<u32>(4294967295u, 4294967295u, 10324u)), Struct_3(vec4<u32>(38638u, 38000u, 0u, 1u), vec3<u32>(44681u, 1u, 0u)), Struct_3(vec4<u32>(7568u, 1u, 4294967295u, 4294967295u), vec3<u32>(20706u, 0u, 4294967295u)), Struct_3(vec4<u32>(29964u, 125956u, 1u, 1u), vec3<u32>(1u, 0u, 10730u)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 19158u), vec3<u32>(1u, 53493u, 68397u)), Struct_3(vec4<u32>(1u, 0u, 1u, 11390u), vec3<u32>(0u, 4294967295u, 11298u)), Struct_3(vec4<u32>(39147u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(29940u, 64159u, 4294967295u)), Struct_3(vec4<u32>(9171u, 4294967295u, 4294967295u, 0u), vec3<u32>(28696u, 40901u, 0u)), Struct_3(vec4<u32>(4294967295u, 27028u, 8176u, 4294967295u), vec3<u32>(0u, 39074u, 1u)), Struct_3(vec4<u32>(0u, 0u, 60642u, 4294967295u), vec3<u32>(0u, 1u, 1u)), Struct_3(vec4<u32>(1u, 1u, 0u, 33123u), vec3<u32>(71341u, 1u, 37442u)), Struct_3(vec4<u32>(4294967295u, 11150u, 10249u, 18860u), vec3<u32>(4294967295u, 0u, 13807u)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec3<u32>(0u, 0u, 24497u)));

var<private> global1: vec4<f32> = vec4<f32>(191f, 978f, 646f, 527f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = u_input.b.x;
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(~u_input.a, u_input.a))), vec2<u32>(109285u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(43459u, 1u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 72095u), vec2<bool>(false, false))))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -1964f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1046f, global1.x, 407f, global1.x), vec4<f32>(global1.x, 1690f, -183f, global1.x), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1458f, -779f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, 532f, global1.x, global1.x)))))));
    global0 = array<Struct_3, 13>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global1.x) * global1.x))), -273f));
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_0 = Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(32248u, 39474u, 49081u, u_input.a), ~vec4<u32>(49315u, 45759u, 0u, arg_1), vec4<u32>(4294967295u, arg_0, arg_0, arg_1)), vec4<u32>(arg_0, u_input.a, _wgslsmith_mod_u32(arg_1, arg_0), ~arg_0)), ~vec4<u32>(arg_1, arg_0, _wgslsmith_mod_u32(arg_1, u_input.a), 0u)), ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_1, u_input.a), ~vec3<u32>(70822u, 1u, u_input.a))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(global1.x + 860f), -756f, global1.x);
    return any(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = !all(select(select(vec3<bool>(arg_1.a, true, false), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(false, true, false)), arg_1.a), select(select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, false), arg_1.a), vec3<bool>(false, false, false), true), !(!vec3<bool>(arg_1.a, false, arg_1.a))));
    let var_1 = Struct_2(false, u_input.e);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1721f + _wgslsmith_f_op_f32(max(global1.x, 815f))), 383f, 270f, global1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(956f, global1.x, global1.x, -1446f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -327f, global1.x, -378f) * vec4<f32>(-908f, 420f, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1323f, -767f, global1.x, -185f), vec4<f32>(158f, 873f, global1.x, global1.x), arg_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) + _wgslsmith_f_op_f32(-1000f * global1.x))), global1.x, global1.x, global1.x));
    var var_2 = max(min(abs(~(vec3<u32>(arg_0, 0u, u_input.a) << (vec3<u32>(4294967295u, u_input.a, arg_0) % vec3<u32>(32u)))), vec3<u32>(u_input.a, 0u, ~1u)), (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(8471u, 0u, 22434u), vec3<u32>(4294967295u, 71256u, u_input.a), vec3<u32>(13931u, 34737u, arg_0))) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(23543u, 63991u, u_input.a), vec3<u32>(u_input.a, arg_0, u_input.a)) % vec3<u32>(32u))) >> (~vec3<u32>(arg_0, ~41221u, 0u) % vec3<u32>(32u)));
    var var_3 = any(vec4<bool>(var_1.a, _wgslsmith_mod_u32(var_2.x >> (u_input.a % 32u), ~var_2.x) > 4294967295u, arg_1.a, any(vec2<bool>(var_1.a, arg_1.a))));
    return false;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.e & u_input.e;
    var var_1 = 16758i;
    return Struct_1(func_4(59088u | ~(~arg_1), Struct_1(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(4294967295u, u_input.a)), max(0u, 21355u)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, arg_1.x, -749f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1359f, arg_1.x)), _wgslsmith_f_op_f32(-global1.x))), -266f, !arg_0.a))) + vec4<f32>(-2030f, _wgslsmith_div_f32(global1.x, 1780f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, 210f), _wgslsmith_div_f32(arg_1.x, arg_1.x)), true)), 309f));
    var var_0 = arg_3;
    global1 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) * _wgslsmith_f_op_f32(select(-1172f, _wgslsmith_f_op_f32(max(-882f, arg_1.x)), !arg_2.a))), any(select(vec3<bool>(true, arg_0.a, arg_2.a), vec3<bool>(arg_2.a, arg_0.a, arg_2.a), arg_2.a)))), global1.x);
    let var_1 = ~(-abs(u_input.d));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1746f, -2598f, 475f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(global1.x - 1429f), 1059f, arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, arg_1.x, -1404f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, arg_1.x, -750f, 1273f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, global1.x, global1.x, arg_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 904f, global1.x, arg_1.x)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(u_input.b.x, u_input.a, vec4<f32>(global1.x, global1.x, global1.x, -163f)), global1.xz, Struct_2(false, u_input.e), vec3<u32>(47693u, 4294967295u, 4294967295u)))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(true), global1.zw, Struct_2(false, vec4<i32>(u_input.b.x, 5425i, u_input.d, 1i)), vec3<u32>(24728u, u_input.a, 1u))))));
    let var_0 = vec4<bool>(true, true, !any(vec2<bool>(u_input.e.x > u_input.c.x, false)), any(!vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, true, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(371f, 109f, global1.x, -1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1356f, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2023f, global1.x, 914f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1832f, global1.x, global1.x) + vec4<f32>(global1.x, -1237f, global1.x, global1.x))))));
    var var_2 = Struct_2(var_0.x, vec4<i32>(-(u_input.c.x ^ -27284i), u_input.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(18106i, 269i)), _wgslsmith_add_i32(_wgslsmith_div_i32(-15996i, -5080i), ~2147483647i)), abs((-1i | u_input.c.x) << (_wgslsmith_mod_u32(0u, u_input.a) % 32u))));
    let var_3 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 145106u, 72750u), vec4<u32>(40511u, u_input.a, u_input.a, 4294967295u), var_0.x), vec4<u32>(54289u, 55766u, 288u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u))) ^ reverseBits(vec4<u32>(u_input.a, 1u, 0u, u_input.a) | vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), select(vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(18526u, u_input.a, 4028u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)), 1u, ~0u), vec4<u32>(~u_input.a, ~14543u, firstTrailingBit(u_input.a), ~u_input.a), select(vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(true, var_0.x, false, var_0.x), !var_0.x)), firstLeadingBit(~(vec4<u32>(33345u, 64117u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(1i, u_input.e.x), -1i, 1i, min(_wgslsmith_clamp_i32(-46151i, ~2147483647i, 1i), countOneBits(-var_2.b.x))), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), max(vec4<u32>(var_3.x, 4294967295u, var_3.x, 4294967295u), min(vec4<u32>(12924u, var_3.x, u_input.a, u_input.a), var_3)))));
}

