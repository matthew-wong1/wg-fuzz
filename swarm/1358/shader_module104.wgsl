struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_2(vec3<u32>(0u, 4294967295u, 16597u)), vec3<u32>(0u, 0u, 572u), true, Struct_2(vec3<u32>(0u, 5738u, 24483u))), Struct_5(Struct_2(vec3<u32>(1u, 23949u, 1u)), vec3<u32>(43021u, 4294967295u, 47575u), false, Struct_2(vec3<u32>(7619u, 0u, 51625u))), Struct_5(Struct_2(vec3<u32>(4240u, 1u, 7694u)), vec3<u32>(70595u, 1u, 1279u), true, Struct_2(vec3<u32>(4294967295u, 60816u, 25075u))), Struct_5(Struct_2(vec3<u32>(4294967295u, 15338u, 1u)), vec3<u32>(1u, 52703u, 16823u), true, Struct_2(vec3<u32>(36532u, 15084u, 76196u))), Struct_5(Struct_2(vec3<u32>(9749u, 0u, 19139u)), vec3<u32>(0u, 1u, 0u), false, Struct_2(vec3<u32>(4294967295u, 86137u, 9195u))), Struct_5(Struct_2(vec3<u32>(10304u, 35722u, 22180u)), vec3<u32>(1u, 1u, 72548u), false, Struct_2(vec3<u32>(5871u, 4130u, 2135u))), Struct_5(Struct_2(vec3<u32>(0u, 1u, 48626u)), vec3<u32>(51175u, 56148u, 4294967295u), false, Struct_2(vec3<u32>(1u, 8737u, 11016u))), Struct_5(Struct_2(vec3<u32>(0u, 0u, 55932u)), vec3<u32>(63795u, 0u, 4294967295u), false, Struct_2(vec3<u32>(1u, 1u, 4294967295u))), Struct_5(Struct_2(vec3<u32>(1u, 19314u, 44185u)), vec3<u32>(55393u, 1u, 23257u), false, Struct_2(vec3<u32>(0u, 3942u, 1137u))), Struct_5(Struct_2(vec3<u32>(0u, 4294967295u, 10745u)), vec3<u32>(0u, 0u, 4294967295u), false, Struct_2(vec3<u32>(1u, 60413u, 7127u))), Struct_5(Struct_2(vec3<u32>(4294967295u, 1u, 68348u)), vec3<u32>(1u, 0u, 11113u), false, Struct_2(vec3<u32>(1u, 4294967295u, 0u))), Struct_5(Struct_2(vec3<u32>(4294967295u, 46200u, 34394u)), vec3<u32>(4294967295u, 4294967295u, 4294967295u), true, Struct_2(vec3<u32>(0u, 0u, 52259u))), Struct_5(Struct_2(vec3<u32>(28064u, 10888u, 21695u)), vec3<u32>(0u, 12892u, 4294967295u), true, Struct_2(vec3<u32>(1u, 94335u, 4294967295u))), Struct_5(Struct_2(vec3<u32>(4294967295u, 22255u, 24010u)), vec3<u32>(14988u, 1u, 3258u), true, Struct_2(vec3<u32>(4294967295u, 1u, 25781u))), Struct_5(Struct_2(vec3<u32>(34623u, 48299u, 1u)), vec3<u32>(34250u, 79126u, 4294967295u), false, Struct_2(vec3<u32>(13007u, 1u, 0u))), Struct_5(Struct_2(vec3<u32>(0u, 45128u, 10806u)), vec3<u32>(4294967295u, 4294967295u, 56362u), true, Struct_2(vec3<u32>(1798u, 0u, 4200u))), Struct_5(Struct_2(vec3<u32>(46869u, 603u, 86935u)), vec3<u32>(26767u, 4294967295u, 22170u), true, Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_5(Struct_2(vec3<u32>(31260u, 0u, 1u)), vec3<u32>(35675u, 52546u, 0u), false, Struct_2(vec3<u32>(0u, 26448u, 38588u))), Struct_5(Struct_2(vec3<u32>(21700u, 0u, 117763u)), vec3<u32>(1u, 0u, 0u), true, Struct_2(vec3<u32>(5068u, 4294967295u, 2721u))), Struct_5(Struct_2(vec3<u32>(16835u, 27830u, 1u)), vec3<u32>(4294967295u, 4294967295u, 3917u), true, Struct_2(vec3<u32>(29772u, 35u, 0u))), Struct_5(Struct_2(vec3<u32>(0u, 4294967295u, 24818u)), vec3<u32>(43012u, 1u, 11229u), true, Struct_2(vec3<u32>(4294967295u, 4294967295u, 52065u))), Struct_5(Struct_2(vec3<u32>(132532u, 0u, 1u)), vec3<u32>(41254u, 0u, 83861u), false, Struct_2(vec3<u32>(32853u, 4294967295u, 14624u))));

var<private> global2: Struct_3 = Struct_3(0i);

var<private> global3: array<vec3<bool>, 14>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(arg_0.a.a, select(min(~arg_0.a.a, _wgslsmith_mod_vec3_u32(arg_0.d.a, arg_0.b)), vec3<u32>(arg_0.a.a.x, u_input.b.x, 4294967295u >> (1u % 32u)), global3[_wgslsmith_index_u32(44860u, 14u)])));
    global2 = Struct_3(global2.a);
    global2 = Struct_3(2147483647i);
    global2 = Struct_3(-(-535i & global2.a));
    let var_1 = arg_0;
    return _wgslsmith_mult_u32(~23959u, 0u);
}

fn func_2() -> vec4<i32> {
    global1 = array<Struct_5, 22>();
    var var_0 = vec4<u32>(firstLeadingBit(func_3(Struct_5(Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(34628u, 32u)], 31829u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(40706u, 4294967295u, 0u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(24516u, 32u)], 16858u)), any(vec4<bool>(false, false, false, false)), Struct_2(vec3<u32>(4294967295u, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(29127u, u_input.b.x, 4294967295u), vec3<u32>(853u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(119758u, 32u)] & global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 115009u, 1u)) ^ ~vec3<u32>(global0[_wgslsmith_index_u32(82484u, 32u)], 71999u, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<u32>(64452u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 2649u), u_input.b), global0[_wgslsmith_index_u32(func_3(Struct_5(Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11675u, 32u)], 32u)], 32u)])), vec3<u32>(u_input.b.x, 45231u, 0u), false, Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u))), vec4<bool>(true, true, false, true)), 32u)]), vec3<u32>(abs(10313u), ~global0[_wgslsmith_index_u32(0u, 32u)], u_input.b.x))), ~(~abs(0u)), abs(abs(0u >> ((0u | u_input.b.x) % 32u))));
    var var_1 = ~4294967295u;
    let var_2 = !vec4<bool>(select(true, true, select(false, select(true, true, true), true)), true, !any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), true);
    var_1 = max(1u ^ min(global0[_wgslsmith_index_u32(u_input.b.x, 32u)] << (59450u % 32u), ~u_input.b.x), 1u) << (global0[_wgslsmith_index_u32(27169u, 32u)] % 32u);
    return ~vec4<i32>(max(~(-global2.a), u_input.e), 56377i, global2.a, global2.a);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_add_u32(reverseBits(67902u), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(countOneBits(u_input.b.x), 1u))), _wgslsmith_f_op_f32(-903f * _wgslsmith_f_op_f32(-1f)), -arg_0 << (68449u % 32u), abs(func_2()), u_input.b);
    let var_1 = Struct_3(func_2().x);
    global1 = array<Struct_5, 22>();
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~21321u), 32u)], reverseBits(~u_input.b.x), 42890u), 1u, ~firstLeadingBit(~7156u), select(~32271u, abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.a, 32u)], 4294967295u)), arg_0 == global2.a)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.a, 96136u, var_0.e.x, var_0.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.e.x, u_input.b.x, 0u, ~6796u), vec4<u32>(var_0.e.x, 12561u, 0u, global0[_wgslsmith_index_u32(37504u, 32u)]), ~vec4<u32>(4294967295u, var_0.a, 25608u, 4294967295u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1000f, var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-913f, var_0.b, -1473f, -304f) - vec4<f32>(var_0.b, -1707f, var_0.b, var_0.b)) + vec4<f32>(739f, var_0.b, 1000f, -946f)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false)))) * vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), var_0.b, var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(117f, _wgslsmith_div_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -295f), _wgslsmith_f_op_f32(f32(-1f) * -1006f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(572f, -1668f, var_0.b, -1316f)))) - vec4<f32>(var_0.b, var_0.b, 803f, -117f)));
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(-1123i) | _wgslsmith_dot_vec3_i32(u_input.a.wwz, abs(select(u_input.c, u_input.a.xwz, global3[_wgslsmith_index_u32(1u, 14u)]))));
    var_0 = Struct_1(_wgslsmith_mult_i32(-13551i, _wgslsmith_dot_vec3_i32(u_input.a.xzx, vec3<i32>(-1i, global2.a, u_input.d) >> (vec3<u32>(u_input.b.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)]) % vec3<u32>(32u)))) < func_2().x);
    var var_1 = true;
    global1 = array<Struct_5, 22>();
    global1 = array<Struct_5, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1272f, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f + 2060f) * -274f))));
}

