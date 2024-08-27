struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 12094i;

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 53151u, 10969u, 0u), vec4<u32>(66718u, 9740u, 0u, 53637u), vec4<u32>(86124u, 1u, 1u, 10626u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(32032u, 106521u, 1u, 0u), vec4<u32>(4294967295u, 1u, 60133u, 1u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(33609u, 48736u, 7769u, 23794u), vec4<u32>(75809u, 4294967295u, 0u, 10851u), vec4<u32>(6209u, 0u, 0u, 78760u), vec4<u32>(52923u, 29075u, 0u, 0u), vec4<u32>(0u, 0u, 4294967295u, 95946u), vec4<u32>(0u, 43477u, 0u, 16930u), vec4<u32>(135778u, 0u, 46487u, 72556u), vec4<u32>(1u, 0u, 49563u, 38693u), vec4<u32>(9951u, 0u, 52256u, 68520u), vec4<u32>(48114u, 1u, 1u, 1u), vec4<u32>(27854u, 1u, 4294967295u, 5175u), vec4<u32>(14166u, 58331u, 1u, 1u), vec4<u32>(65590u, 32154u, 0u, 0u), vec4<u32>(4294967295u, 134646u, 22499u, 46685u), vec4<u32>(39328u, 1u, 33481u, 4294967295u), vec4<u32>(71882u, 0u, 4294967295u, 1u), vec4<u32>(91236u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 6430u), vec4<u32>(1u, 3780u, 0u, 1u), vec4<u32>(64485u, 52297u, 70633u, 25241u), vec4<u32>(34099u, 42931u, 4294967295u, 7560u), vec4<u32>(0u, 42060u, 4294967295u, 1u), vec4<u32>(58177u, 45442u, 3072u, 0u));

var<private> global3: Struct_3 = Struct_3(vec4<u32>(29972u, 1u, 30091u, 41211u), Struct_2(987f), -818f, vec3<bool>(true, false, true));

var<private> global4: f32 = 817f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    let var_0 = 1u;
    var var_1 = global3.d.zy;
    var var_2 = vec2<u32>(firstTrailingBit(abs(0u)) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(1u, global3.a.x)), global3.a.x), 4294967295u | (global3.a.x << (31879u % 32u))) % 32u), global3.a.x);
    global3 = Struct_3(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0, 450u) & u_input.a, _wgslsmith_mod_u32(var_0, 0u) >> (~25050u % 32u)), ~select(17995u, reverseBits(var_2.x), !global3.d.x), 1u, global3.a.x), Struct_2(-916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a)))) * global3.b.a), !(!vec3<bool>(true, select(var_1.x, false, true), !global3.d.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2248f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.a, _wgslsmith_f_op_f32(-global3.c))))));
    return max(vec2<u32>(1u, abs(66396u)) ^ select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.a, global3.a.x), vec2<bool>(true, false)), ~(~vec2<u32>(9480u, var_0))) | vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, u_input.a), global3.a.wz)), 4294967295u ^ _wgslsmith_sub_u32(~u_input.a, var_2.x));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_3 {
    global1 = array<vec2<i32>, 26>();
    global4 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)), -1670f)))));
    global2 = array<vec4<u32>, 31>();
    let var_0 = ~countOneBits(_wgslsmith_mod_vec2_u32(global3.a.wy, func_3()));
    var var_1 = global3.b;
    return Struct_3(countOneBits(global3.a), global3.b, 894f, select(select(vec3<bool>(all(global3.d), false, true), !select(global3.d, global3.d, vec3<bool>(false, true, global3.d.x)), global3.d.x), select(vec3<bool>(true, !global3.d.x, select(false, global3.d.x, global3.d.x)), global3.d, !global3.d), select(vec3<bool>(false, true, false), vec3<bool>(true, false, global3.d.x), vec3<bool>(global3.d.x, true & global3.d.x, true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_0.d;
    var var_1 = vec3<f32>(global3.b.a, _wgslsmith_f_op_f32(f32(-1f) * -222f), -850f);
    global3 = Struct_3(vec4<u32>(func_3().x, ~global3.a.x ^ global3.a.x, _wgslsmith_mod_u32(u_input.a << (1u % 32u), u_input.a), u_input.a), func_2(29428u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, arg_1.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_1.a) - vec2<f32>(-1272f, var_1.x)))))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) - 1718f))), func_2(arg_0.a.x, arg_2).d);
    var var_2 = Struct_2(1000f);
    var var_3 = ~abs(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-18805i, -2147483647i), global1[_wgslsmith_index_u32(global3.a.x, 26u)]), select(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(arg_0.a.x, 26u)], vec2<bool>(false, true))));
    return arg_0.a.x;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = global3.b.a;
    var var_1 = Struct_3(~abs(global2[_wgslsmith_index_u32(func_4(func_2(u_input.a, vec2<f32>(904f, global3.b.a)), global3.b, vec2<f32>(1033f, global3.c)), 31u)]), Struct_2(_wgslsmith_f_op_f32(global3.c + _wgslsmith_f_op_f32(-global3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c - -1481f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.c * 498f))), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global3.c)))) * -1815f)), func_2(7881u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(944f - -319f), _wgslsmith_f_op_f32(ceil(global3.b.a))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1340f, global3.c), vec2<f32>(global3.b.a, 1883f)))))).d);
    let var_2 = min(~(~vec4<i32>(-2147483647i, -1i, -44054i, -24570i)) ^ vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -2147483647i, arg_1.x), ~vec3<i32>(-12942i, 2147483647i, 9222i)), -abs(arg_0), select(arg_0 << (9061u % 32u), abs(-2147483647i), any(vec4<bool>(true, global3.d.x, false, true)))), -(~vec4<i32>(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(41461u, 26u)], vec2<i32>(283i, arg_1.x)), 57659i, -23396i, ~11926i)));
    var var_3 = select(global3.d.xy, vec2<bool>(true, true), var_1.d.x & any(vec3<bool>(any(vec2<bool>(var_1.d.x, true)), func_2(4294967295u, vec2<f32>(var_1.b.a, global3.c)).d.x, true)));
    var var_4 = Struct_3(select(~countOneBits(vec4<u32>(25483u, 77803u, global3.a.x, u_input.a)) << (~(global3.a >> (vec4<u32>(4294967295u, global3.a.x, 1u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(~vec4<u32>(1u, var_1.a.x, u_input.a, 56836u)), func_2(abs(44314u | var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, -1000f)))).d.x), global3.b, _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(791f, _wgslsmith_f_op_f32(-var_1.c))))), vec3<bool>(true, false, false));
    return Struct_4(!select(vec4<bool>(var_3.x, var_4.a.x >= 0u, true, !var_4.d.x), vec4<bool>(var_4.d.x, var_1.d.x, var_3.x, global3.b.a < global3.c), vec4<bool>(select(var_4.d.x, false, global3.d.x), !global3.d.x, var_4.d.x, global3.d.x)), global3.a.zx, !var_1.d.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-_wgslsmith_add_i32(0i, 1i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.a.x, ~min(select(global3.a.x, u_input.a, global3.d.x), max(0u, u_input.a))), 26u)]);
    var var_1 = vec3<u32>(global3.a.x, ~30404u, firstLeadingBit(50065u));
    global4 = _wgslsmith_f_op_f32(max(global3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(select(33210u, 4294967295u, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.a, global3.b.a))).c) + -1024f)));
    global1 = array<vec2<i32>, 26>();
    var var_2 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-97040i, -1i), vec2<i32>(0i, -1i)), -_wgslsmith_mod_i32(2147483647i, -2147483647i), abs(_wgslsmith_add_i32(2147483647i, -31594i)), 0i ^ (37652i >> (global3.a.x % 32u))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31599i, 2147483647i, 1i), vec3<i32>(1i, 1i, 1i)), countOneBits(5484i), 1i, _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(26529i)))));
    global2 = array<vec4<u32>, 31>();
    let var_3 = -vec4<i32>(select(-31610i, _wgslsmith_add_i32(var_2.x, var_2.x), var_2.x >= var_2.x), reverseBits(-1i), ~1i, var_2.x << (global3.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_2.zwx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(924f, -1459f, global3.b.a, 843f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1748f, global3.b.a, 945f, global3.c))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1251f, -1139f, global3.c, -1169f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-477f - -771f), 265f, global3.c, -430f) + vec4<f32>(773f, _wgslsmith_f_op_f32(ceil(global3.c)), _wgslsmith_f_op_f32(-864f + -894f), _wgslsmith_f_op_f32(global3.c * global3.b.a)))));
}

