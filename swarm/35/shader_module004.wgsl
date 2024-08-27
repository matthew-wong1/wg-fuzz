struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec2<bool>(true, false), vec2<i32>(2147483647i, -46213i), true));

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

var<private> global3: array<vec2<i32>, 12>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, vec2<bool>(false, false), vec2<i32>(0i, 2147483647i), true), Struct_1(true, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 13601i), false), Struct_1(false, vec2<bool>(false, true), vec2<i32>(0i, 2147483647i), false), Struct_1(true, vec2<bool>(true, true), vec2<i32>(1i, 0i), false), Struct_1(true, vec2<bool>(false, true), vec2<i32>(0i, 1i), false), Struct_1(false, vec2<bool>(true, false), vec2<i32>(1i, 0i), false), Struct_1(false, vec2<bool>(false, true), vec2<i32>(0i, -6782i), true), Struct_1(true, vec2<bool>(true, false), vec2<i32>(-17579i, 0i), false), Struct_1(false, vec2<bool>(true, true), vec2<i32>(0i, 83463i), true), Struct_1(false, vec2<bool>(false, true), vec2<i32>(-1i, -3384i), true), Struct_1(true, vec2<bool>(false, false), vec2<i32>(2147483647i, 14959i), true), Struct_1(false, vec2<bool>(false, false), vec2<i32>(-29258i, 25814i), false), Struct_1(true, vec2<bool>(true, false), vec2<i32>(-1i, -34498i), true), Struct_1(true, vec2<bool>(false, true), vec2<i32>(-5396i, -4311i), true), Struct_1(false, vec2<bool>(true, false), vec2<i32>(-44167i, i32(-2147483648)), false), Struct_1(true, vec2<bool>(false, true), vec2<i32>(22394i, 0i), false), Struct_1(true, vec2<bool>(false, false), vec2<i32>(2147483647i, 2147483647i), true), Struct_1(true, vec2<bool>(true, true), vec2<i32>(39583i, -49330i), false), Struct_1(false, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 0i), true), Struct_1(true, vec2<bool>(true, false), vec2<i32>(-21827i, 19040i), false), Struct_1(true, vec2<bool>(false, true), vec2<i32>(1i, 0i), false), Struct_1(false, vec2<bool>(true, true), vec2<i32>(1i, -32944i), false), Struct_1(true, vec2<bool>(false, false), vec2<i32>(38128i, -53075i), false), Struct_1(false, vec2<bool>(false, false), vec2<i32>(2147483647i, -5402i), true), Struct_1(true, vec2<bool>(false, true), vec2<i32>(-1i, -1i), true), Struct_1(false, vec2<bool>(false, true), vec2<i32>(-42119i, 38333i), false), Struct_1(true, vec2<bool>(true, true), vec2<i32>(-1i, i32(-2147483648)), true), Struct_1(true, vec2<bool>(true, true), vec2<i32>(-26164i, 0i), false), Struct_1(true, vec2<bool>(false, false), vec2<i32>(-1i, -12938i), false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 1788u), max(vec4<u32>(0u, u_input.a.x, 20862u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.a.x))), 2u)] || true, !global1.a.b, global3[_wgslsmith_index_u32(u_input.b.x, 12u)] >> (reverseBits(u_input.a.wx) % vec2<u32>(32u)), (any(global0[_wgslsmith_index_u32(u_input.b.x, 1u)]) | global2[_wgslsmith_index_u32(1u, 2u)]) && global2[_wgslsmith_index_u32(u_input.a.x | _wgslsmith_clamp_u32(37042u, u_input.a.x, u_input.a.x), 2u)]));
    var var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15730u, u_input.b.x, u_input.a.x), vec3<u32>(49628u, u_input.a.x, 0u)), _wgslsmith_mod_vec3_u32(u_input.a.zwz, vec3<u32>(u_input.a.x, 64925u, 4294967295u))), ~vec3<u32>(61342u, 8873u, u_input.b.x)), u_input.b);
    let var_2 = -1414f;
    var_1 = u_input.a.x;
    var_1 = 10315u;
    return any(vec3<bool>(true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(31348u, u_input.a.x), u_input.b.yz) < 4294967295u, any(!select(vec3<bool>(false, true, var_0.a.a), global0[_wgslsmith_index_u32(u_input.b.x, 1u)], vec3<bool>(global1.a.d, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true)))));
}

fn func_2() -> f32 {
    global1 = Struct_2(Struct_1(true, select(global1.a.b, vec2<bool>(!global2[_wgslsmith_index_u32(0u, 2u)], !global1.a.a), select(global1.a.b, vec2<bool>(false, false), true)), reverseBits(u_input.c.xx), global2[_wgslsmith_index_u32(~u_input.a.x >> (u_input.a.x % 32u), 2u)]));
    var var_0 = 2147483647i;
    var var_1 = ~4294967295u;
    let var_2 = Struct_2(Struct_1(true, !vec2<bool>(func_3(vec2<f32>(-337f, 233f), u_input.c.x, 1268f), global2[_wgslsmith_index_u32(abs(u_input.a.x), 2u)]), max(vec2<i32>(u_input.c.x, global1.a.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(36953i, -42795i) ^ vec2<i32>(u_input.c.x, -8892i), -vec2<i32>(1i, -1i))), false));
    var_0 = global1.a.c.x;
    return 198f;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    return Struct_2(Struct_1(!global1.a.b.x, vec2<bool>(global1.a.a, true), min(_wgslsmith_add_vec2_i32(global1.a.c, vec2<i32>(2147483647i, u_input.c.x)), ~vec2<i32>(2147483647i, u_input.c.x)), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), 2u)]));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_div_u32(~(4294967295u ^ u_input.b.x), abs(select(u_input.b.x, 6601u, global1.a.a))));
    global4 = array<Struct_1, 29>();
    global1 = Struct_2(global1.a);
    return func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1164f, -774f, -1000f)))), vec3<f32>(1740f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1431f, 141f)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global1.a.c.x;
    var var_1 = Struct_2(global1.a);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(768f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1021f + -1803f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-891f)) - _wgslsmith_f_op_f32(f32(-1f) * -165f))))));
    let var_3 = all(!(!select(var_1.a.b, global1.a.b, select(vec2<bool>(false, false), global1.a.b, global1.a.b))));
    var var_4 = func_1(select(!vec4<bool>(!global1.a.d, !global1.a.d, global1.a.b.x, true), vec4<bool>(any(!vec4<bool>(true, global1.a.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global1.a.a)), true, true, true), !(0i >= u_input.c.x) | select(true, any(var_1.a.b), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.x, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c.x, 0i, var_0), vec3<i32>(var_1.a.c.x, 1i, var_4.a.c.x)) >> (_wgslsmith_sub_u32(27599u, u_input.b.x) % 32u), global1.a.c.x), var_1.a.c.x, ~global1.a.c.x), ~vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), u_input.b.x), ~(~4294967295u), u_input.a.x));
}

