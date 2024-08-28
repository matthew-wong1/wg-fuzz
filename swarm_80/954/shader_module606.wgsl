struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = -_wgslsmith_clamp_i32(-11625i, u_input.c.x, u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-429f)) - -1765f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2284f, _wgslsmith_f_op_f32(1586f * -924f), false))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f + 1295f)), -214f)));
    var var_2 = select(vec2<bool>(!(_wgslsmith_mod_u32(u_input.a, 4294967295u) >= max(u_input.b, u_input.b)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true);
    let var_3 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(u_input.b, 10791u), 0u, u_input.b ^ u_input.b, firstTrailingBit(u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<u32>(4294967295u, 1u, 50490u, 1u), vec4<u32>(4294967295u, 4294967295u, 57984u, 31001u) ^ vec4<u32>(u_input.a, 15229u, u_input.b, u_input.a)), vec4<u32>(u_input.a, u_input.b, 0u, u_input.b), vec4<u32>(37191u, _wgslsmith_add_u32(u_input.a, u_input.a), 13178u, reverseBits(1814u))));
    var var_4 = reverseBits(countOneBits(select(countOneBits(1u), ~abs(0u), !any(vec4<bool>(var_2.x, var_2.x, true, true)))));
    return ~30698u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), _wgslsmith_sub_u32(_wgslsmith_div_u32(44819u, 21758u), u_input.a) & ~_wgslsmith_mult_u32(9102u, u_input.b), u_input.b), ~vec3<u32>(func_3(), ~_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.a));
    global0 = u_input.a;
    var var_1 = ~(~(~(vec3<u32>(34273u, 9048u, u_input.a) & vec3<u32>(1u, 1u, u_input.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(floor(var_0.a))), var_0.b, var_0.c);
    return arg_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, -2167f, _wgslsmith_f_op_f32(exp2(arg_1.a))))));
    var var_1 = func_2(-arg_3.x, arg_3.x, arg_1.c.zxz, arg_1);
    let var_2 = min(u_input.a, abs(u_input.b));
    global0 = ~(~17643u);
    global0 = ~u_input.b;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-964f)) - _wgslsmith_f_op_f32(-arg_1.a)), -1217f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, arg_0.a, 242f, -355f) * vec4<f32>(arg_1.a, 910f, -618f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_1.a) + vec4<f32>(1356f, arg_0.a, arg_0.a, 1151f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -872f, 573f, 240f) - vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, arg_0.a, -854f, arg_0.a)))));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(arg_0.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(arg_1.b, 2147483647i, 2147483647i, -1341i)), -vec4<i32>(arg_0.b, -32117i, 17825i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, -1i, 16303i, u_input.c.x), abs(vec4<i32>(arg_0.b, u_input.c.x, u_input.c.x, 10582i))))), arg_0.b);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + _wgslsmith_f_op_f32(-arg_0.a))), -2378f), 26371i, func_2(i32(-1i) * -19595i, u_input.c.x, arg_1.c.xwy, func_2(_wgslsmith_add_i32(arg_0.b, -597i), 2147483647i, vec3<bool>(func_4(arg_0.c.yz, arg_1, -909f, vec2<i32>(-8295i, -10163i)).c.x, arg_0.c.x, true && arg_0.c.x), func_4(vec2<bool>(true, true), arg_1, _wgslsmith_f_op_f32(-arg_1.a), vec2<i32>(-60498i, u_input.c.x)))).c);
    var var_3 = _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 46744u), firstTrailingBit(vec2<u32>(13849u, 42853u))), arg_2.x, arg_2.x, 1u)), vec4<u32>(_wgslsmith_sub_u32(86904u, 1u), 10682u >> (_wgslsmith_clamp_u32(~arg_2.x, _wgslsmith_div_u32(19979u, arg_2.x), ~96023u) % 32u), 18554u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.a, 28463u, 0u, 51842u), ~vec4<u32>(u_input.b, 0u, 33610u, 4294967295u), !arg_1.c.x), vec4<u32>(~u_input.a, u_input.b << (1u % 32u), 75317u, 82672u))));
    var var_4 = ~var_3.yx;
    return 47560u;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_mod_u32(func_5(func_4(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(u_input.c.x, 2147483647i, vec3<bool>(false, true, false), Struct_1(209f, u_input.c.x, vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1509f)), _wgslsmith_f_op_f32(-230f * -885f))), abs(vec2<i32>(-5600i, -2147483647i))), func_4(select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), func_2(u_input.c.x ^ 2147483647i, -38279i, vec3<bool>(true, true, true), func_4(vec2<bool>(true, true), Struct_1(937f, u_input.c.x, vec4<bool>(true, false, false, false)), 366f, u_input.c)), 1680f, select(u_input.c | u_input.c, ~vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), min(max(vec3<u32>(u_input.b, 65599u, u_input.b), vec3<u32>(u_input.a, 17408u, u_input.a)), vec3<u32>(0u, 1u, 13357u) << (vec3<u32>(u_input.b, 31215u, 1u) % vec3<u32>(32u))) ^ firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(55670u, u_input.b, 4294967295u), vec3<u32>(57020u, 33146u, 41033u)))), u_input.b);
    var var_1 = func_4(func_4(func_2(func_4(vec2<bool>(true, true), Struct_1(-444f, u_input.c.x, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(-600f, -773f)), vec2<i32>(u_input.c.x, 46075i)).b, max(max(2147483647i, u_input.c.x), u_input.c.x), vec3<bool>(all(vec2<bool>(true, false)), true, false), func_4(vec2<bool>(false, false), func_2(11855i, u_input.c.x, vec3<bool>(true, true, false), Struct_1(-1065f, 2147483647i, vec4<bool>(false, true, true, false))), 1774f, u_input.c)).c.zx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-737f - -160f) - -1370f), min(10088i, u_input.c.x), func_2(func_2(-31754i, u_input.c.x, vec3<bool>(true, true, false), Struct_1(213f, u_input.c.x, vec4<bool>(false, false, true, false))).b, 2147483647i, vec3<bool>(false, true, false), Struct_1(896f, 3765i, vec4<bool>(true, true, true, false))).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1195f - _wgslsmith_f_op_f32(f32(-1f) * -364f)) + _wgslsmith_f_op_f32(-1283f + _wgslsmith_f_op_f32(round(878f)))), ~firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.c, u_input.c))).c.wx, Struct_1(_wgslsmith_div_f32(1000f, -642f), u_input.c.x, !vec4<bool>(-19788i != u_input.c.x, false, u_input.c.x != u_input.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -186f), u_input.c);
    var_1 = func_4(var_1.c.zz, func_2(12863i, countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.c.x, var_1.b))), vec3<bool>(var_1.c.x, false, !any(vec3<bool>(var_1.c.x, true, var_1.c.x))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -205f), -(var_1.b << (18739u % 32u)), func_4(func_2(8065i, 48368i, vec3<bool>(true, true, false), Struct_1(-394f, 39846i, var_1.c)).c.xw, Struct_1(-326f, var_1.b, vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(sign(var_1.a)), vec2<i32>(var_1.b, -1i)).c)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a, -2460f)), 1f))), u_input.c);
    var_1 = Struct_1(-1000f, 1i, var_1.c);
    var var_2 = Struct_1(514f, var_1.b, vec4<bool>(!(false || var_1.c.x), true, func_2(-2147483647i, max(-19462i, u_input.c.x), vec3<bool>(!var_1.c.x, u_input.a > 4294967295u, false), Struct_1(_wgslsmith_f_op_f32(-357f - var_1.a), _wgslsmith_sub_i32(var_1.b, u_input.c.x), vec4<bool>(var_1.c.x, true, false, false))).c.x, !all(vec2<bool>(true, true))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -10278i;
    global0 = func_1();
    let var_1 = func_2(2147483647i >> (1u % 32u), reverseBits(~select(var_0, reverseBits(-44018i), true)), select(func_2(_wgslsmith_div_i32(2147483647i, 1i), func_2(~(-36077i), u_input.c.x, vec3<bool>(true, false, true), Struct_1(745f, -2147483647i, vec4<bool>(true, false, false, true))).b, vec3<bool>(true, false, true), func_4(vec2<bool>(true, true), func_4(vec2<bool>(false, false), Struct_1(473f, u_input.c.x, vec4<bool>(true, false, true, true)), 2114f, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -604f), abs(vec2<i32>(-46430i, var_0)))).c.zxw, vec3<bool>(true, false, true), !vec3<bool>(select(false, true, false), true, any(vec3<bool>(true, false, false)))), func_2(u_input.c.x, firstTrailingBit(u_input.c.x | -1i) & ~(-5048i), func_4(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(select(1320f, -1427f, true)), countOneBits(u_input.c.x), vec4<bool>(false, true, false, false)), -2506f, -u_input.c).c.wzy, Struct_1(_wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(604f - 1335f)), ~(var_0 << (775u % 32u)), vec4<bool>(true, true, true, false)))).b;
    let var_2 = func_4(vec2<bool>(~_wgslsmith_add_i32(u_input.c.x, -29821i) != (2147483647i >> (firstTrailingBit(u_input.b) % 32u)), !func_4(vec2<bool>(true, true), Struct_1(247f, 17087i, vec4<bool>(true, false, false, false)), -752f, vec2<i32>(var_0, -32453i)).c.x && (_wgslsmith_mod_i32(u_input.c.x, 0i) != ~2147483647i)), Struct_1(_wgslsmith_f_op_f32(-1f), abs(_wgslsmith_sub_i32(var_1, _wgslsmith_mod_i32(var_0, 1i))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), func_2(0i, -1700i, vec3<bool>(true, true, false), Struct_1(-1235f, -1i, vec4<bool>(true, true, false, false))).c.x), func_2(1i, func_4(vec2<bool>(true, true), Struct_1(-1000f, -1i, vec4<bool>(true, true, false, true)), 157f, vec2<i32>(-2147483647i, u_input.c.x)).b, vec3<bool>(true, true, true), func_4(vec2<bool>(true, true), Struct_1(687f, -1i, vec4<bool>(true, false, true, true)), 1778f, u_input.c)).c, vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2168f)))), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_0), u_input.c)), vec2<i32>(46157i, var_0) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))));
    var var_3 = vec4<bool>(false, func_4(!select(var_2.c.wy, var_2.c.yy, false), func_2(u_input.c.x, -20094i, !var_2.c.xwy, func_2(-1i, 0i, var_2.c.wzw, Struct_1(1377f, 1i, vec4<bool>(var_2.c.x, true, var_2.c.x, var_2.c.x)))), _wgslsmith_f_op_f32(max(-189f, _wgslsmith_f_op_f32(var_2.a - -738f))), abs(u_input.c)).c.x == (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-103f))) != _wgslsmith_div_f32(-1325f, _wgslsmith_div_f32(var_2.a, var_2.a))), !(!any(var_2.c.zx)) | !all(var_2.c), true);
    var_3 = vec4<bool>(any(select(vec4<bool>(true, var_3.x & true, var_3.x, !var_2.c.x), func_2(_wgslsmith_div_i32(-69949i, -16051i), func_4(var_2.c.zw, var_2, var_2.a, vec2<i32>(15518i, 2228i)).b, vec3<bool>(var_3.x, false, false), Struct_1(-1000f, -28778i, vec4<bool>(false, true, var_3.x, var_2.c.x))).c, true)), false, true, true);
    let var_4 = var_2;
    var_3 = vec4<bool>(var_2.a <= -1200f, var_4.c.x, false | any(var_4.c.wz), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a - -1676f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - var_4.a) - _wgslsmith_div_f32(371f, var_2.a)), _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(-1586f + var_4.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(116f, var_4.a, -1516f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_2.a, -988f))))), ~1i, (abs(select(vec4<i32>(var_2.b, var_2.b, -15171i, -1i), vec4<i32>(50073i, var_2.b, -1i, var_1), false)) >> (countOneBits(~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b)) % vec4<u32>(32u))) ^ (~vec4<i32>(5542i, var_0, var_0, 1i) << (~select(vec4<u32>(u_input.a, 41793u, u_input.b, 18587u), vec4<u32>(1u, 15231u, u_input.a, u_input.a), var_4.c) % vec4<u32>(32u))), max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), max(~vec2<u32>(u_input.b, 39269u), vec2<u32>(1u, 1u))), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(24722u, u_input.a)), max(vec2<u32>(u_input.a, u_input.a), firstLeadingBit(vec2<u32>(28223u, 26626u))))));
}

