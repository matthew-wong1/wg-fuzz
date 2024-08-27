struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(44843u, 0u, 4294967295u), vec2<u32>(1u, 80202u), false, vec2<f32>(1391f, -902f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> u32 {
    global0 = array<Struct_1, 30>();
    let var_0 = 33011u;
    global1 = global0[_wgslsmith_index_u32(var_0, 30u)];
    var var_1 = Struct_2(Struct_1(vec4<bool>(false, any(vec2<bool>(true, global1.a.x)), !any(global1.a.xy), 38753u >= u_input.a), abs(~(~vec3<u32>(4294967295u, 23722u, 12746u))), firstLeadingBit(~vec2<u32>(1u, 1u)), true && any(vec4<bool>(true, global1.d, global1.d, global1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.e)) * _wgslsmith_f_op_vec2_f32(global1.e - global1.e)) - vec2<f32>(_wgslsmith_f_op_f32(global1.e.x + -518f), 1f))), vec4<u32>(~abs(global1.b.x), _wgslsmith_mult_u32(1u, 99165u), ~1u, 12079u), max(var_0, _wgslsmith_dot_vec4_u32(select(vec4<u32>(6562u, global1.b.x, 1u, global1.b.x), ~vec4<u32>(8664u, 7627u, 0u, global1.c.x), true), reverseBits(select(vec4<u32>(12043u, 0u, 1u, 115537u), vec4<u32>(u_input.e, 17096u, var_0, u_input.a), vec4<bool>(global1.a.x, true, global1.d, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-914f, 2172f, global1.e.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(269f * global1.e.x))), arg_0.a, global1.e.x)));
    var var_2 = any(!select(vec2<bool>(global1.a.x, global1.a.x), !(!global1.a.wy), false));
    return _wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.e, ~55158u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.c), global1.b.yz)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = global0[_wgslsmith_index_u32(global1.b.x, 30u)];
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(238f * arg_0), all(!global1.a))) - _wgslsmith_f_op_f32(round(global1.e.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(~vec2<u32>(u_input.c, 1u), select(u_input.b, u_input.b, global1.d)), global1.c), u_input.b));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e, u_input.c), _wgslsmith_dot_vec3_u32(~global1.b, ~global1.b) >> (3288u % 32u)), global1.b.x);
    let var_2 = Struct_3(global1.e.x, 32524u);
    global0 = array<Struct_1, 30>();
    return Struct_2(Struct_1(global1.a, vec3<u32>((var_2.b | u_input.b.x) | abs(1u), _wgslsmith_add_u32(0u, abs(var_2.b)), func_3(Struct_5(695f), -vec2<i32>(u_input.d, -3783i))), select(vec2<u32>(26527u, _wgslsmith_add_u32(global1.c.x, 1u)), u_input.b, !(!global1.a.zz)), true, global1.e), vec4<u32>(~(~var_0.b) & global1.c.x, global1.c.x, abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_2.b, u_input.e) | abs(global1.b), global1.b)), _wgslsmith_dot_vec4_u32(abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.x, var_0.b, 21973u, 4294967295u), vec4<u32>(4294967295u, global1.c.x, 48089u, 65137u)))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1.c.x, 0u, var_2.b, 0u) | vec4<u32>(u_input.b.x, 12364u, u_input.a, var_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b, 0u, 10558u, 0u), abs(vec4<u32>(46959u, 89214u, var_2.b, var_2.b))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, var_2.a, 768f))))))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_5 {
    global1 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), -1571f))).a.a, ~global1.b, vec2<u32>(_wgslsmith_sub_u32(~35286u, arg_2.c.x), abs(abs(37373u))), !(all(!arg_0.a.a.yw) || all(vec2<bool>(arg_2.d, false))), arg_0.d.zy);
    let var_0 = Struct_3(global1.e.x, 16369u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.d);
    global0 = array<Struct_1, 30>();
    let var_2 = Struct_4(func_2(func_2(-1055f).d.x).a.a.x);
    return Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -2311f));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(161f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.e.x, -442f))))) * global1.e);
    var var_1 = func_4(func_2(var_0.x), countOneBits(u_input.d >> (~(~global1.b.x) % 32u)), func_2(var_0.x).a);
    global1 = func_2(478f).a;
    let var_2 = ~(-18942i);
    global0 = array<Struct_1, 30>();
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -303f)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global1 = global0[_wgslsmith_index_u32(max(~_wgslsmith_sub_u32(101u, ~global1.c.x), _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x) ^ u_input.c, min(~global1.b.x, ~u_input.a)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 9642u, 15344u, 4294967295u), vec4<u32>(global1.c.x, 0u, 44889u, 1u) | vec4<u32>(global1.b.x, 1u, u_input.b.x, 0u)) % 32u)), 30u)];
    global0 = array<Struct_1, 30>();
    global1 = global0[_wgslsmith_index_u32(~global1.b.x, 30u)];
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.x, global1.e.x) - -960f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d, abs(firstLeadingBit(u_input.d ^ u_input.d)), 13252i));
}

