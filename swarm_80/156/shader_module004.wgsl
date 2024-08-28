struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    global0 = array<f32, 21>();
    let var_1 = Struct_1(min(~_wgslsmith_mult_u32(15140u, 1u ^ arg_2.b), ~1u), firstLeadingBit(~15126u), abs(vec3<u32>(~(var_0.b ^ arg_2.b), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 35571u), arg_1.xz) | (u_input.d.x ^ 0u))), any(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(81014u >> (1u % 32u), ~arg_1.x), _wgslsmith_clamp_u32(max(arg_1.x, var_0.c.x), reverseBits(var_0.c.x), ~4198u)), 4u)]));
    let var_2 = Struct_1(~(~45156u), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, ~(~32128u)), var_1.b), u_input.d, false);
    var var_3 = Struct_1(1497u, 35820u, ~countOneBits(_wgslsmith_div_vec3_u32(max(arg_2.c, var_1.c), vec3<u32>(var_1.b, 26915u, 31665u))), false);
    return !vec2<bool>(all(global1[_wgslsmith_index_u32(arg_1.x, 4u)]), 1i == (_wgslsmith_mod_i32(arg_0.x, 2147483647i) >> (88118u % 32u)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = func_3(vec2<i32>(arg_0, 1i) >> (vec2<u32>(u_input.b.x ^ select(u_input.c.x, u_input.a.x, true), u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.c.x, u_input.c.x, 36263u)) & (vec3<u32>(u_input.a.x, u_input.d.x, 4294967295u) & (u_input.b << (u_input.d % vec3<u32>(32u)))), ~_wgslsmith_clamp_vec3_u32(~u_input.d, max(u_input.b, u_input.b), ~vec3<u32>(0u, 83308u, 1u))), Struct_1(~max(min(0u, u_input.d.x), select(0u, 0u, true)), reverseBits(~u_input.b.x) | firstTrailingBit(abs(55143u)), firstLeadingBit(vec3<u32>(~76046u, abs(1u), 4294967295u)), true));
    global1 = array<vec3<bool>, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1945f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 21u)]))));
    var var_2 = arg_0;
    let var_3 = Struct_1(u_input.a.x | 1u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 34857u, 25635u, 1u), vec4<u32>(u_input.a.x, u_input.c.x << (2059u % 32u), ~u_input.b.x, 80729u))), ~select(vec3<u32>(u_input.c.x, u_input.a.x, 30658u), min(~vec3<u32>(20930u, 0u, 51421u), vec3<u32>(0u, u_input.c.x, 24692u)), global1[_wgslsmith_index_u32(~abs(48412u), 4u)]), false);
    return u_input.c.x;
}

fn func_1() -> bool {
    global0 = array<f32, 21>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 4988u, u_input.c.x, 22331u), vec4<u32>(u_input.a.x, 4294967295u, 56680u, 0u) | vec4<u32>(29573u, u_input.a.x, u_input.a.x, u_input.b.x)), vec4<u32>(4294967295u, func_2(0i), select(u_input.a.x, u_input.a.x, func_3(vec2<i32>(-3028i, 0i), u_input.b, Struct_1(39235u, u_input.c.x, vec3<u32>(4294967295u, u_input.b.x, 0u), false)).x), 1u)), min(1u, ~min(u_input.a.x, u_input.c.x)) ^ ~u_input.b.x, countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 19401u, u_input.b.x), vec3<u32>(u_input.a.x, 1u, 10832u))), false);
    var var_1 = -22752i;
    let var_2 = Struct_1(abs(var_0.c.x), u_input.b.x, ~(~u_input.d), select(var_0.d, 849f > _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_0.c.x, 21u)])), false));
    let var_3 = Struct_1(var_0.b, ~42710u, _wgslsmith_mod_vec3_u32(~max(~u_input.d, u_input.b), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(4294967295u, var_0.b, 36820u), var_0.c, global1[_wgslsmith_index_u32(var_0.c.x, 4u)]), var_0.c)), var_2.d);
    return (!select(true, true, 1824u > var_0.b) | true) | any(!(!(!vec4<bool>(var_0.d, var_3.d, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    var var_0 = select(vec2<bool>(true, select(!any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, false)), false)), vec2<bool>(all(vec4<bool>(true, func_1(), all(vec4<bool>(false, false, false, true)), false)), any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), any(global1[_wgslsmith_index_u32(1u, 4u)]))));
    let var_1 = -2199f;
    var var_2 = Struct_1(0u, u_input.d.x, u_input.b, true);
    let var_3 = 38131u;
    let var_4 = any(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_3, 21u)] <= 1626f, !var_2.d, true, false && var_2.d), !select(vec4<bool>(true, false, var_0.x, false), !vec4<bool>(var_2.d, false, false, var_2.d), true), false));
    global1 = array<vec3<bool>, 4>();
    var_2 = Struct_1(firstLeadingBit(96827u) << ((~(~11702u) | u_input.c.x) % 32u), var_3, u_input.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~4422u), ~abs(u_input.c.x), _wgslsmith_add_u32(min(1u, 95847u), u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.c, u_input.d.xz >> (vec2<u32>(1u, 24483u) % vec2<u32>(32u)))) & ~select(~vec4<u32>(u_input.c.x, 6475u, var_3, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c.x, 0u, 3628u), vec4<u32>(u_input.c.x, 20339u, var_3, 1u)), !var_0.x), u_input.b.zy);
}

