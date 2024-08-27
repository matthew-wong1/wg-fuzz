struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 43428u), vec2<u32>(43840u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(9843u, 30232u), vec2<u32>(67622u, 8191u), vec2<u32>(0u, 28168u), vec2<u32>(4294967295u, 35687u), vec2<u32>(4294967295u, 89757u), vec2<u32>(40181u, 31045u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 12497u), vec2<u32>(4294967295u, 305u), vec2<u32>(0u, 53898u), vec2<u32>(1u, 18414u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 5601u), vec2<u32>(87438u, 0u), vec2<u32>(9832u, 1u), vec2<u32>(59855u, 34104u), vec2<u32>(32587u, 11532u), vec2<u32>(8150u, 1u), vec2<u32>(1u, 31204u), vec2<u32>(7151u, 1u), vec2<u32>(0u, 96682u), vec2<u32>(28097u, 13538u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 48269u), vec2<u32>(1u, 0u), vec2<u32>(0u, 43408u), vec2<u32>(35394u, 46566u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    return reverseBits(~22387u);
}

fn func_3() -> vec3<bool> {
    return select(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>((global0.x >= 1000f) & true, all(vec2<bool>(true, true)), ~u_input.e.x >= 1i), true));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = vec4<u32>(38366u, arg_0, ~arg_2.c.x << (_wgslsmith_div_u32(24219u, 1u) % 32u), _wgslsmith_clamp_u32(1u, 4294967295u << (arg_2.c.x % 32u), 40968u));
    global1 = array<vec2<u32>, 32>();
    var_0 = reverseBits(vec4<u32>(var_0.x, ~46346u, 4294967295u, (4294967295u | u_input.c.x) | 42909u) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.ywx, vec3<u32>(0u, var_0.x, arg_0)), arg_2.c.x | 96191u), 14867u, arg_0, ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(44733u, 32u)], var_0.zz)) % vec4<u32>(32u)));
    global1 = array<vec2<u32>, 32>();
    return _wgslsmith_f_op_vec2_f32(-global0.xx);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(arg_0.b.a.c.x >> (arg_0.b.a.c.x % 32u), countOneBits(4294967295u))), ~u_input.c), false, Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.b.zz >> (~vec2<u32>(6734u, arg_0.b.a.c.x) % vec2<u32>(32u)), arg_0.b.a.a, -vec2<i32>(u_input.b.x, 48274i) | countOneBits(arg_0.b.a.a)), true, vec2<u32>(_wgslsmith_add_u32(arg_0.b.a.c.x, u_input.c.x), 85553u) | vec2<u32>(firstTrailingBit(arg_0.b.a.c.x), select(arg_0.b.a.c.x, 62856u, arg_0.b.b.x)), select(func_3(), arg_0.b.a.d, !(arg_1 || true)), arg_0.b.a.b)));
    global1 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_div_f32(global0.x, 874f);
    var var_2 = Struct_1(vec2<i32>(~(~1i), ~((1i >> (arg_0.b.a.c.x % 32u)) | reverseBits(0i))), arg_1, ~((vec2<u32>(u_input.c.x, u_input.c.x) | vec2<u32>(arg_0.b.a.c.x, u_input.c.x)) ^ (arg_0.b.a.c >> (_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(1u, 32u)], vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)))), !select(!(!arg_0.b.b.yzy), arg_0.b.a.d, false), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~30604u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(8099u, func_1(arg_0, Struct_1(arg_0.b.a.a, true, vec2<u32>(4294967295u, u_input.c.x), vec3<bool>(true, arg_0.b.b.x, arg_0.c.x), true))), 32u)]) == u_input.c.x);
    let var_3 = Struct_1(var_2.a, (true || !arg_0.d.x) || var_2.b, max(abs(arg_0.b.a.c), _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(78806u, arg_0.b.a.c.x), u_input.c), var_2.c, ~vec2<u32>(u_input.c.x, 14265u) ^ var_2.c)), vec3<bool>(var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1054f)), true, (true | all(arg_0.b.a.d)) && false), true);
    return var_3.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 32>();
    var var_0 = Struct_5(vec4<u32>(u_input.c.x, u_input.c.x, ~u_input.c.x, ~(12101u & func_1(Struct_3(vec4<f32>(global0.x, global0.x, 600f, -1022f), Struct_2(Struct_1(u_input.a.zy, true, vec2<u32>(0u, 0u), vec3<bool>(false, true, false), false), vec4<bool>(true, true, false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(vec2<i32>(4351i, u_input.d.x), true, vec2<u32>(u_input.c.x, u_input.c.x), vec3<bool>(true, false, false), false)))), !(!(all(vec3<bool>(true, false, false)) & true)), 17303u << (u_input.c.x % 32u), vec2<i32>(firstTrailingBit(u_input.e.x), 1i), u_input.c.x);
    var var_1 = !any(select(!func_2(Struct_3(vec4<f32>(-128f, -701f, global0.x, -997f), Struct_2(Struct_1(var_0.d, true, vec2<u32>(u_input.c.x, u_input.c.x), vec3<bool>(var_0.b, var_0.b, false), var_0.b), vec4<bool>(true, var_0.b, var_0.b, false)), vec2<bool>(false, true), vec2<bool>(false, true)), var_0.b), vec2<bool>(true, true), 365f >= global0.x));
    var_0 = Struct_5(_wgslsmith_mod_vec4_u32(var_0.a, ~(vec4<u32>(37453u, u_input.c.x, 0u, 40839u) | ~var_0.a)), all(!vec2<bool>(var_0.b, var_0.b)), 61995u, select(countOneBits(var_0.d) >> (global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, 34411u), var_0.a.yyw), 32u)] % vec2<u32>(32u)), -vec2<i32>(-2147483647i, 0i), true), 0u);
    var var_2 = u_input.d.x;
    var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f - 504f) * -559f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(global0.x, global0.x, false)))))), _wgslsmith_add_u32(var_0.c, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.e, 38673u)), abs(vec2<u32>(55155u, 1u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 510u, u_input.c.x, ~var_0.a.x), _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0.e, var_0.c, 0u, var_0.c) << (vec4<u32>(15288u, 7182u, var_0.c, u_input.c.x) % vec4<u32>(32u))), var_0.a)));
}

