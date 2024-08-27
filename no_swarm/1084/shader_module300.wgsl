struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(true, vec3<bool>(false, true, true), vec2<u32>(16899u, 0u), 237f, vec2<u32>(56083u, 1u));

var<private> global2: array<Struct_1, 31>;

var<private> global3: f32 = -496f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 31u)];
    var var_1 = true;
    global1 = global2[_wgslsmith_index_u32(14772u, 31u)];
    global3 = 1000f;
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.x, 29459u, ~(~abs(u_input.a.x)), 0u), vec4<u32>(u_input.a.x | ~(~global1.e.x), var_0.e.x, 24118u, ~u_input.a.x), ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, global1.e.x, u_input.a.x), vec3<u32>(var_0.e.x, u_input.a.x, global1.c.x)), 32503u, ~global1.e.x, ~34328u)));
    return all(global1.b.xy);
}

fn func_2() -> Struct_1 {
    var var_0 = !vec4<bool>(!(global1.a || false) | (true || global1.a), global1.a, func_3(global1.d), global1.d <= -395f);
    let var_1 = ~(~_wgslsmith_add_u32(0u, u_input.a.x));
    let var_2 = global2[_wgslsmith_index_u32(~40286u, 31u)];
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.d)) - _wgslsmith_f_op_f32(-global1.d));
    let var_3 = global2[_wgslsmith_index_u32(~var_1, 31u)];
    return Struct_1(var_0.x, !var_3.b, global1.e, var_2.d, vec2<u32>(_wgslsmith_add_u32(firstTrailingBit(~4294967295u), 69270u << (_wgslsmith_mod_u32(var_1, u_input.a.x) % 32u)), 3788u));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(47136u, ~79208u), u_input.a, select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), global1.e), u_input.a, !select(global1.b.xy, vec2<bool>(global1.b.x, false), vec2<bool>(global1.a, true))) & _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(global1.e.x, global1.c.x)), select(~global1.e, min(u_input.a, u_input.a), global1.a)));
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let var_1 = u_input.a.x;
    var var_2 = func_2();
    var var_3 = !func_2().b.xz;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(25274u, u_input.a.x, countOneBits(abs(4294967295u)), 1u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_1, var_1, var_1, var_1)) | ~(~vec4<u32>(global1.c.x, var_2.c.x, var_1, u_input.a.x)), vec4<u32>(~var_0.x | global1.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 13428u), global1.e) | 4294967295u, ~_wgslsmith_sub_u32(1u, 0u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(global1.b), !(!vec3<bool>(true, global1.b.x, true)), vec2<u32>(1u, _wgslsmith_div_u32(~max(u_input.a.x, u_input.a.x), ~reverseBits(u_input.a.x))), 203f, u_input.a & vec2<u32>(func_1(), _wgslsmith_mult_u32(global1.c.x, _wgslsmith_sub_u32(4294967295u, 5622u))));
    var var_1 = vec4<f32>(232f, _wgslsmith_f_op_f32(round(-451f)), func_2().d, var_0.d);
    global2 = array<Struct_1, 31>();
    global3 = _wgslsmith_f_op_f32(sign(-800f));
    global2 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(634f)), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - var_0.d)));
}

