struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(578f, -1315f, -377f, -1887f, 1000f, 1121f, -2390f, 1262f, 211f, -1378f, -401f, 256f, 1127f, -859f, -755f, -836f, -771f, 686f, 440f, -491f, -528f, -640f, 410f, 420f, -315f, -1215f, -698f, -899f, -563f, 371f);

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(0u, 31535u, 1u), Struct_1(24922u, 23230u, 0u), Struct_1(11962u, 5817u, 62120u), Struct_1(4040u, 4294967295u, 1u), Struct_1(1u, 16762u, 0u), Struct_1(75370u, 22176u, 4294967295u), Struct_1(34919u, 4294967295u, 31276u), Struct_1(14822u, 41546u, 4294967295u), Struct_1(0u, 32122u, 22807u), Struct_1(1u, 18683u, 0u), Struct_1(54663u, 27717u, 1u), Struct_1(41774u, 47543u, 55669u), Struct_1(1u, 1095u, 18631u), Struct_1(36321u, 35276u, 1u), Struct_1(0u, 1u, 1u), Struct_1(48670u, 103482u, 24304u), Struct_1(4294967295u, 4294967295u, 68832u), Struct_1(45879u, 27913u, 0u), Struct_1(39428u, 4294967295u, 4294967295u), Struct_1(60066u, 1u, 53267u), Struct_1(4294967295u, 14795u, 0u), Struct_1(0u, 0u, 4294967295u), Struct_1(1u, 1u, 4294967295u), Struct_1(1u, 44476u, 4294967295u), Struct_1(78040u, 0u, 15701u), Struct_1(36072u, 1u, 34303u), Struct_1(2976u, 1u, 0u));

var<private> global3: array<Struct_4, 19>;

var<private> global4: array<vec4<bool>, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11036u, 20u)], 20u)], 54077u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]), vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(13699u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)]) ^ vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54311u, 20u)], 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)] > 4294967295u), ~(~vec4<u32>(6548u, 9386u, 6894u, global1[_wgslsmith_index_u32(31197u, 20u)]))), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(25725u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)] % 32u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)]), 20u)], 20u)]);
    var var_1 = abs(countOneBits(vec3<i32>(~1i, countOneBits(u_input.a), -26040i)));
    global2 = array<Struct_1, 27>();
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_3(Struct_2(true), 1i, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1507f, -2931f) - vec2<f32>(1707f, global0[_wgslsmith_index_u32(4294967295u, 30u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1239f, global0[_wgslsmith_index_u32(15927u, 30u)]))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-660f)), _wgslsmith_f_op_f32(-579f + global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51140u, 20u)], 20u)], 20u)], 30u)])))));
    return 8301u;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~79854u), 30u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1921f + -605f)))));
    global4 = array<vec4<bool>, 32>();
    var var_1 = Struct_1(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(45405u, 20u)], 31147u, ~global1[_wgslsmith_index_u32(1u & global1[_wgslsmith_index_u32(func_3(vec2<bool>(true, true)), 20u)], 20u)]), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(56381u, 20u)]), 20u)] << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)] % 32u), 20u)], 20u)] >> (~(~4294967295u) % 32u)) << (global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~0u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), ~4294967295u), 20u)] % 32u), abs(firstLeadingBit(~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 2055u))));
    let var_2 = ~abs(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(abs(u_input.a), 1i, _wgslsmith_mult_i32(u_input.a, u_input.a))));
    global1 = array<u32, 20>();
    return _wgslsmith_clamp_u32(abs(var_1.c | ~var_1.b), 4294967295u, 1u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(69074u, 24493u), _wgslsmith_mod_u32(8664u, arg_1.x)), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x & arg_0.x, _wgslsmith_div_u32(arg_0.x, global1[_wgslsmith_index_u32(arg_0.x, 20u)])), 30u)])));
    global2 = array<Struct_1, 27>();
    global4 = array<vec4<bool>, 32>();
    global0 = array<f32, 30>();
    global3 = array<Struct_4, 19>();
    return _wgslsmith_div_u32(0u, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)] >> (70180u % 32u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(95813u, 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(35708u, 20u)]), 30286u, 1279u), ~select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61133u, 20u)], 20u)], 1u, 38497u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 0u, 37127u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)]) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(34425u, 20u)], global1[_wgslsmith_index_u32(63179u, 20u)], 1u, 0u), vec4<u32>(global1[_wgslsmith_index_u32(9626u, 20u)], 1u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 20u)])), !global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60453u, 20u)], 32u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(~0u, 4294967295u), select(select(vec2<u32>(17159u, 7819u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(100068u, 20u)], 20u)], 4294967295u), true), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66722u, 20u)], 20u)], 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(111917u, 20u)], 20u)])), vec2<bool>(true, true))), vec2<u32>(select(10518u, global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(0u, 20u)]), 20u)], true), ~4294967295u << (global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] % 32u))), 20u)], ~1u);
    var var_1 = vec3<i32>(~(-u_input.a << (func_1(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59186u, 20u)], 20u)], 45291u) << (vec3<u32>(global1[_wgslsmith_index_u32(var_0.a, 20u)], 4294967295u, 27248u) % vec3<u32>(32u)), vec2<u32>(58704u, var_0.c)) % 32u)), -23412i, select(37538i, 47759i, !(true | any(vec3<bool>(false, true, true)))));
    let var_2 = vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 1u, ~var_0.b, 114777u << (var_0.c % 32u));
    var var_3 = vec3<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(min(global1[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u)), 20u)], ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(66197u, 20u)], var_0.a), select(var_2.x, func_2(), false));
    let var_4 = global3[_wgslsmith_index_u32(16713u, 19u)];
    var var_5 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 20u)], 19u)];
    var var_6 = !(!vec3<bool>(true | (global0[_wgslsmith_index_u32(var_3.x, 30u)] >= global0[_wgslsmith_index_u32(15460u, 30u)]), true, true));
    let var_7 = ~(~(~var_0.c));
    var var_8 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), firstTrailingBit(var_5.a.a)), 30u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_7, 30u)] + -1943f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_3.x, var_5.a.a), vec3<u32>(var_0.b, var_7, 0u)), var_2.yx ^ (vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(var_3.x, var_4.a.c) % vec2<u32>(32u)))));
}

