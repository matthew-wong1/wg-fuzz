struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(370f), Struct_2(1908f), Struct_2(869f), Struct_2(539f), Struct_2(-956f), Struct_2(-1228f), Struct_2(1707f), Struct_2(-433f), Struct_2(1677f), Struct_2(-441f), Struct_2(-182f), Struct_2(221f), Struct_2(-561f), Struct_2(941f), Struct_2(-512f), Struct_2(-777f));

var<private> global1: Struct_4;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<bool>, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> f32 {
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), arg_0, 18220u);
    var var_0 = global1.b;
    global4 = array<vec3<bool>, 16>();
    let var_1 = !(!global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~4294967295u, global3.b.x), _wgslsmith_div_u32(global3.b.x >> (global3.b.x % 32u), ~4294967295u)), 16u)]);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(16767u, 18853u)), 51637u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e.x, 52231u), reverseBits(arg_2.b.xz))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global3.b.x) | arg_2.b.yz, vec2<u32>(17193u, 4294967295u) ^ vec2<u32>(u_input.e.x, 32750u)), 20494u, ~(~arg_2.b.x))), ~0u), 16u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(select(-1669f, global3.a.x, var_1.x)))), arg_2.a.x))) - _wgslsmith_f_op_f32(step(var_2.a, global1.a)));
}

fn func_2() -> f32 {
    var var_0 = global3.a.x;
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) + -482f) + global1.a) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.x * -669f)))))), global1.b, global3.b.x);
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2083f + -289f) * _wgslsmith_f_op_f32(func_3(Struct_3(-16747i), 211f, Struct_1(global3.a, vec4<u32>(23335u, 26352u, 0u, 1u), vec3<bool>(false, true, global3.c.x), vec2<i32>(57890i, u_input.a))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-918f, 1714f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(920f - global1.a))))), global1.a), vec4<u32>(4294967295u << (global3.b.x % 32u), u_input.b, 4294967295u, 4294967295u), select(!(!select(vec3<bool>(global2.x, true, false), global4[_wgslsmith_index_u32(29276u, 16u)], global3.c)), global4[_wgslsmith_index_u32(select(~(~global1.c), select(_wgslsmith_add_u32(global1.c, global3.b.x), 55165u, !global3.c.x), global3.c.x), 16u)], false), vec2<i32>(global3.d.x, reverseBits(global1.b.a)));
    global3 = Struct_1(vec3<f32>(-1000f, -713f, global1.a), ~min(global3.b, _wgslsmith_mod_vec4_u32(~global3.b, global3.b)), !global3.c, ~(-global3.d));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-877f, global3.a.x, global3.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + -1965f) * global3.a.x), global1.a)), _wgslsmith_f_op_f32(-global3.a.x), -1849f)));
    return global3.a.x;
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(594f, -706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(760f, global3.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(900f, _wgslsmith_f_op_f32(min(global3.a.x, global1.a)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1822f, _wgslsmith_f_op_f32(-global1.a))) + 859f), global3.a.x, global3.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(668f, 199f), global2.x))))));
    var var_1 = vec4<bool>(any(select(vec4<bool>(true, true, global1.b.a > u_input.a, global3.c.x), vec4<bool>(true, true, true, true), true)), !global2.x, !global2.x, true);
    let var_2 = global1.b;
    let var_3 = ~abs(~countOneBits(u_input.c));
    global0 = array<Struct_2, 16>();
    return Struct_3(max(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(36249i, 62953i, 30353i), vec3<i32>(0i, -1i, 0i))), global1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-303f, _wgslsmith_f_op_f32(min(global3.a.x, global3.a.x)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f), -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(241f, global3.a.x, global3.c.x)))) - _wgslsmith_f_op_f32(-global1.a))), func_1(vec4<u32>(45476u, global1.c, _wgslsmith_dot_vec3_u32(global3.b.xzx, _wgslsmith_sub_vec3_u32(vec3<u32>(global1.c, 0u, 4294967295u), vec3<u32>(global3.b.x, 1u, u_input.b))), 28386u)), max(_wgslsmith_sub_u32(global3.b.x, 1u << (u_input.b % 32u)), u_input.d));
    global0 = array<Struct_2, 16>();
    global2 = !(!vec2<bool>(global3.c.x || (global2.x == global3.c.x), global2.x == all(global3.c)));
    global1 = Struct_4(_wgslsmith_f_op_f32(-386f - global3.a.x), Struct_3(global3.d.x), 44757u);
    var var_0 = -19851i;
    let x = u_input.a;
    s_output = StorageBuffer(0u >> (u_input.d % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1683f, 1000f, _wgslsmith_div_f32(global3.a.x, global3.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.x - global1.a)))) * vec4<f32>(1000f, -455f, global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-593f, -695f)), 1f))));
}

