struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(1403f, -595f, -495f, -620f), Struct_1(vec3<f32>(-2273f, -1705f, 681f), vec4<u32>(40046u, 55697u, 4294967295u, 1u), 53240i, 2139f, vec2<i32>(18618i, 0i)), vec4<u32>(1u, 41538u, 52682u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = ~(-1i);
    let var_1 = select(global0.c.x, abs(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1378f)) + _wgslsmith_f_op_f32(-153f - -1853f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f)));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.d, 1041f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(abs(global0.a.wyx))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b.a + global0.a.xxw), global0.a.zyw, any(vec4<bool>(true, true, true, false)))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 19857u, var_1, global0.b.b.x), abs(global0.c)), vec4<u32>(4294967295u, ~var_1, var_1, u_input.a)), -40494i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -583f))), -(~(~global0.b.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), 240f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1226f, 714f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -1092f))));
    var var_3 = global0.b;
    let var_4 = Struct_4(global0.b, var_2.a.a.yx);
    return select(select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(31378i <= _wgslsmith_clamp_i32(arg_0, -1i, 1i), all(vec4<bool>(true, true, true, true)), false, !select(true, true, false)), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), true & (1965f <= global0.a.x), !any(vec2<bool>(false, false)))), vec4<bool>(true, true, true, var_3.b.x > var_4.a.b.x), select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(select(false, false, true), true, true, any(vec2<bool>(true, true))), global0.b.e.x > (var_2.a.c & abs(var_2.a.e.x))));
}

fn func_4(arg_0: vec4<bool>) -> vec2<i32> {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a.x, global0.a.x, global0.a.x, global0.b.a.x) - global0.a)) + vec4<f32>(_wgslsmith_f_op_f32(min(-134f, _wgslsmith_f_op_f32(-145f - global0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f - global0.b.d) - _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), 1274f, global0.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2171f, 968f, -600f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a.x)), 1f, -632f)), vec4<u32>(global0.c.x, _wgslsmith_add_u32(1u, global0.c.x), _wgslsmith_mod_u32(u_input.a, global0.c.x), _wgslsmith_div_u32(16437u, ~13194u)), _wgslsmith_sub_i32(global0.b.c, global0.b.e.x | ~2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.a.x))))), global0.b.e >> ((vec2<u32>(17925u, 71572u) >> (vec2<u32>(global0.b.b.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))), global0.b.b);
    global0 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, _wgslsmith_f_op_f32(max(global0.b.d, -863f)), global0.b.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, 1932f, -1773f), global0.a.zwz, arg_0.x)) * global0.b.a)), select(global0.b.b, global0.b.b, !func_3(4813i)), (global0.b.e.x >> (4294967295u % 32u)) << (u_input.a % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_div_vec2_i32(countOneBits(-vec2<i32>(global0.b.e.x, -62912i)), ~(global0.b.e | vec2<i32>(global0.b.c, global0.b.e.x)))), global0.b.b);
    global0 = Struct_3(vec4<f32>(-625f, -1092f, -204f, global0.a.x), global0.b, vec4<u32>(78083u, 1u, 38664u >> (u_input.a % 32u), ~(~88656u)));
    var var_0 = ~min(~global0.b.b.zw << (firstTrailingBit(vec2<u32>(5307u, global0.c.x)) % vec2<u32>(32u)), global0.c.yx);
    let var_1 = min(global0.b.e, vec2<i32>(_wgslsmith_div_i32(-1i, global0.b.c), -1i));
    return global0.b.e;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = Struct_2(select(vec3<bool>(all(vec4<bool>(arg_1, arg_1, true, true)), true, false), !(!(!vec3<bool>(arg_1, false, false))), !select(vec3<bool>(arg_1, true, false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, false), arg_1), global0.b.d > 933f)), 1u, vec3<i32>(global0.b.c ^ max(~arg_0, 1i), 29409i, -global0.b.c), ~global0.b.b.yz, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(722f, 1000f, global0.a.x) + global0.a.zzy))), vec4<u32>(62681u, global0.b.b.x, _wgslsmith_dot_vec3_u32(~global0.c.yyz, global0.c.wyx << (vec3<u32>(global0.b.b.x, global0.c.x, 42805u) % vec3<u32>(32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(119238u, global0.b.b.x, 27963u), vec3<u32>(4294967295u, 0u, u_input.a))), _wgslsmith_div_i32(-global0.b.c, (global0.b.c << (global0.c.x % 32u)) & -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1439f - global0.b.a.x)))), func_4(func_3(global0.b.c))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(var_0.e.a, global0.b.b, abs(_wgslsmith_sub_i32(18692i, abs(-1i))), _wgslsmith_f_op_f32(sign(1531f)), vec2<i32>(_wgslsmith_add_i32(min(var_0.e.c, arg_0), 0i), global0.b.e.x)), vec4<u32>(select(max(39272u, _wgslsmith_add_u32(var_0.b, global0.b.b.x)), global0.b.b.x << (global0.b.b.x % 32u), global0.b.a.x == -150f), 1u, ~32089u, u_input.a));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, var_0.e.a.x, global0.a.x, global0.b.d), _wgslsmith_f_op_vec4_f32(-global0.a)))))), global0.b, ~(select(vec4<u32>(17710u, global0.b.b.x, 23442u, 4294967295u), _wgslsmith_mult_vec4_u32(var_0.e.b, vec4<u32>(u_input.a, var_0.d.x, 54949u, u_input.a)), 33664i <= var_0.e.e.x) << (~global0.c % vec4<u32>(32u))));
    return global0.a;
}

fn func_1() -> Struct_1 {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1583f, global0.b.d, global0.b.d, 185f))), global0.a, false)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(global0.b.c, false))))), global0.a)), Struct_1(_wgslsmith_div_vec3_f32(global0.b.a, global0.b.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 29894u, global0.b.b.x, 1u) >> (~vec4<u32>(u_input.a, 31637u, global0.c.x, global0.b.b.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a, 25u, abs(1u))), firstTrailingBit(firstLeadingBit(global0.b.c)), _wgslsmith_f_op_f32(floor(-155f)), global0.b.e), global0.c);
    let var_0 = true;
    global0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(sign(326f)), _wgslsmith_f_op_f32(floor(396f)), -935f, _wgslsmith_f_op_f32(-750f + -1514f)), global0.b, ~vec4<u32>(_wgslsmith_div_u32(1u, ~1u), global0.c.x, _wgslsmith_sub_u32(u_input.a, ~63715u), 4294967295u));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(-1f), 492f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1683f + global0.b.a.x), _wgslsmith_f_op_f32(818f * global0.b.a.x))))), Struct_1(global0.b.a, _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, 23714u, u_input.a), ~vec4<u32>(4294967295u, 16273u, 36999u, 0u)) ^ (vec4<u32>(0u, u_input.a, 4294967295u, global0.b.b.x) | vec4<u32>(global0.c.x, global0.b.b.x, global0.c.x, u_input.a)), _wgslsmith_div_i32(global0.b.c, global0.b.c), 1f, ~(-global0.b.e)), _wgslsmith_add_vec4_u32(select(~(~global0.b.b), _wgslsmith_sub_vec4_u32(firstLeadingBit(global0.b.b), max(vec4<u32>(4294967295u, 25192u, u_input.a, u_input.a), global0.c)), vec4<bool>(2147483647i == global0.b.c, true, true, false)), global0.c));
    let var_1 = firstTrailingBit(7314u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_2(global0.b.e.x, var_0)).wyw, select(_wgslsmith_div_vec4_u32(global0.b.b, global0.b.b), select(~global0.c, _wgslsmith_add_vec4_u32(vec4<u32>(11473u, var_1, u_input.a, global0.b.b.x), vec4<u32>(global0.b.b.x, u_input.a, global0.b.b.x, var_1) >> (global0.c % vec4<u32>(32u))), select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0, true, var_0), vec4<bool>(false, var_0, false, false)), vec4<bool>(var_0, true, false, var_0))), vec4<bool>(true, any(vec4<bool>(true, var_0, true, var_0)), var_0 && var_0, true)), -2147483647i, global0.a.x, _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.e.x, global0.b.e.x), select(_wgslsmith_mod_vec2_i32(reverseBits(global0.b.e), vec2<i32>(-1i, global0.b.e.x) << (vec2<u32>(u_input.a, var_1) % vec2<u32>(32u))), vec2<i32>(global0.b.c, _wgslsmith_mod_i32(global0.b.c, 1i)), !vec2<bool>(var_0, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), 36338u, vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(select(var_0.c, global0.b.e.x, false), select(-1i, -39938i, true), firstLeadingBit(-2147483647i))), ~(-var_0.c) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(25502i, 11305i, -50735i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.c, 7762i, -1i, global0.b.e.x), vec4<i32>(global0.b.c, -8749i, var_0.c, 0i))), ~0i), global0.b.b.zx, global0.b);
    var var_2 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.b.x, var_0.b.x, 1u), vec3<u32>(1u, 1u, 4294967295u), global0.c.wzx), ~var_1.e.b.yxy), countOneBits(~select(var_1.e.b.www, global0.b.b.xyz, vec3<bool>(false, var_1.a.x, false))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d, -183f, 467f, -947f), vec4<f32>(1143f, global0.b.a.x, var_1.e.a.x, 409f))))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-843f, -441f, global0.b.d) * vec3<f32>(global0.a.x, var_1.e.d, 252f))), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, global0.c.x, 7660u, var_0.b.x), ~max(var_1.e.b, vec4<u32>(var_1.b, var_0.b.x, u_input.a, 8379u))), -var_0.e.x, global0.a.x, var_0.e), ~var_1.e.b);
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(var_0.b.x, var_0.b.x) & 4138u, ~4294967295u >> (_wgslsmith_div_u32(1u, 1u) % 32u), _wgslsmith_add_u32(~_wgslsmith_sub_u32(19718u, 1u), var_0.b.x), global0.c.x));
}

