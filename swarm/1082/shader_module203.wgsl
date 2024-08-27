struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_4,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -884f;

var<private> global1: array<f32, 22>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: f32 = -1254f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = u_input.d;
    var var_1 = arg_0;
    var var_2 = Struct_4(vec2<i32>(-abs(u_input.b), 1i), ~abs(u_input.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(85743u, 42271u), u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c), u_input.c), vec4<u32>(u_input.c ^ 11208u, _wgslsmith_mod_u32(29559u, u_input.c), u_input.c, ~4294967295u)));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -595f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(min(var_2.c.yxw, vec3<u32>(u_input.c, u_input.c, 4294967295u))), _wgslsmith_mult_vec3_u32(var_2.c.zzy, vec3<u32>(u_input.c, 54694u, var_2.c.x)) << (~vec3<u32>(1u, 10332u, u_input.c) % vec3<u32>(32u))), vec3<u32>(38213u, abs(var_2.c.x), countOneBits(67054u)) << (~(~var_2.c.zzy) % vec3<u32>(32u))), 22u)]));
    var var_3 = ~vec2<u32>(1u, var_2.c.x) << ((~var_2.c.xx >> (_wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, var_2.c.x))), firstLeadingBit(var_2.c.xw)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return vec4<f32>(_wgslsmith_f_op_f32(1422f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, -977f, global2.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(2473f, 1151f)), global1[_wgslsmith_index_u32(4294967295u, 22u)], 2459f < arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0)))))) * 1094f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(38141u, 22u)], arg_0))))));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec2<u32>) -> vec2<f32> {
    var var_0 = 1i;
    var var_1 = Struct_3(arg_1.a, arg_1.b.b, (_wgslsmith_sub_u32(arg_1.b.c, arg_0) | (arg_1.a.a & 1u)) ^ 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(arg_1.a.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.b.x, -329f, 281f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, global1[_wgslsmith_index_u32(66175u, 22u)], global1[_wgslsmith_index_u32(arg_2.x, 22u)], -650f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(733f, var_1.a.b.x, arg_1.a.b.x, arg_1.b.a.b.x), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], -1199f, arg_1.b.a.b.x, arg_1.b.a.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, _wgslsmith_f_op_f32(-598f - global1[_wgslsmith_index_u32(77298u, 22u)]), -606f, 1533f)))));
    var_0 = -max(1i, arg_1.d.x);
    var_0 = 6690i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1678f), _wgslsmith_f_op_f32(ceil(-174f))) + _wgslsmith_f_op_vec2_f32(exp2(var_2.xz))), var_2.xz));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    return ~(~21743u);
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = ~firstLeadingBit(~(~_wgslsmith_add_vec2_u32(vec2<u32>(26082u, u_input.c), vec2<u32>(0u, u_input.c))));
    let var_1 = ~_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(arg_1, arg_1, 57140u, u_input.c))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, 39197u) | (vec4<u32>(1u, u_input.c, var_0.x, 30493u) >> (vec4<u32>(var_0.x, arg_1, 1u, arg_1) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(arg_1, var_0.x, 48286u, var_0.x)), ~vec4<u32>(31573u, u_input.c, arg_1, arg_1))));
    global1 = array<f32, 22>();
    let var_2 = vec2<u32>(~(var_0.x & func_4(_wgslsmith_f_op_vec2_f32(func_2(var_0.x, Struct_5(Struct_1(4294967295u, vec3<f32>(arg_0, -110f, -1190f), global2.x), Struct_3(Struct_1(var_0.x, vec3<f32>(511f, 1321f, -1122f), global2.x), Struct_2(4294967295u), 34401u), Struct_4(vec2<i32>(-1i, u_input.b), u_input.d, vec4<u32>(var_1.x, arg_1, 70601u, 11551u)), vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.d), vec2<bool>(global2.x, global2.x)), var_1.zz)), 32434u, Struct_1(u_input.c, vec3<f32>(global1[_wgslsmith_index_u32(arg_1, 22u)], 1093f, 939f), global2.x), Struct_4(vec2<i32>(1i, 1i), 26542i, vec4<u32>(u_input.c, arg_1, 1u, var_1.x)))), 83321u);
    let var_3 = !any(!select(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, false)), vec4<bool>(true, global2.x, global2.x, global2.x), any(global2.wwy)));
    return Struct_1(~var_1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2185f, 2342f, global1[_wgslsmith_index_u32(0u, 22u)]), vec3<f32>(568f, -2285f, global1[_wgslsmith_index_u32(var_0.x, 22u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-949f, arg_0, global1[_wgslsmith_index_u32(var_2.x, 22u)]) * vec3<f32>(1495f, -663f, arg_0))))), all(!(!global2.zyy)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 22>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 22u)]));
    let var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-793f, global1[_wgslsmith_index_u32(4294967295u ^ u_input.c, 22u)]))))), ~(~countOneBits(u_input.c)));
    let var_1 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(15605u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 29971u), vec2<u32>(u_input.c, 4294967295u)))), 22u)], ~(~(~var_0.a)) << (4294967295u % 32u));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(max(~(~4294967295u), _wgslsmith_div_u32(~var_0.a, firstLeadingBit(u_input.c))), 22u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(round(672f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(-583f)).x)), 361f));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2433f)) + _wgslsmith_f_op_f32(f32(-1f) * -742f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-195f - global1[_wgslsmith_index_u32(var_1.a, 22u)]), 1u).b.x - var_0.b.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + func_1(_wgslsmith_f_op_f32(step(-1062f, _wgslsmith_div_f32(-553f, var_1.b.x))), ~var_0.a).b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -663f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]), var_0.b.x)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(0u, 4294967295u)), abs(~vec2<u32>(4294967295u, var_0.a))), 22u)]) * _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1969f - var_0.b.x))), false))));
    var var_2 = !select(!(!(!global2.yz)), !select(select(vec2<bool>(global2.x, var_1.c), vec2<bool>(false, global2.x), true), global2.zw, !var_1.c), all(select(vec2<bool>(var_1.c, global2.x), select(global2.yz, vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.c)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~(-u_input.e), u_input.b), _wgslsmith_div_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c), _wgslsmith_div_u32(1u, u_input.c)));
}

