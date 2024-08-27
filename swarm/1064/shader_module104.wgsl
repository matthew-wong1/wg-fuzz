struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: bool;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global3: vec3<bool>;

var<private> global4: u32 = 96246u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = all(vec2<bool>(!(global2.x >= 1217u), any(vec2<bool>(true, global3.x))));
    let var_1 = vec3<i32>(-(i32(-1i) * -max(-2257i, 0i)), _wgslsmith_div_i32(32327i, i32(-1i) * -1i), u_input.e);
    var_0 = global3.x;
    let var_2 = 1u | (reverseBits(~select(4294967295u, 0u, false)) & u_input.b);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(11037u, ~var_2, var_2)), _wgslsmith_dot_vec3_u32(abs(u_input.c), vec3<u32>(u_input.c.x, global2.x, 1u)) & var_2), 0u);
    return vec4<u32>(25844u, _wgslsmith_add_u32(~(var_2 | ~global2.x), 27488u), _wgslsmith_mod_u32(max(1u, ~_wgslsmith_add_u32(16450u, var_2)), firstLeadingBit(~(~23507u))), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_2, _wgslsmith_sub_u32(1u & var_2, global2.x)), ~(~vec2<u32>(var_2, 39616u))));
}

fn func_2() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1921f, global0[_wgslsmith_index_u32(u_input.b, 22u)])) + 1416f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)])))));
    var var_1 = min(~vec3<u32>(u_input.b, 1u, u_input.c.x), vec3<u32>(~(u_input.c.x >> (u_input.b % 32u)), global2.x, _wgslsmith_clamp_u32(9635u, 0u, 21066u) ^ global2.x)) >> (~(~max(u_input.c, vec3<u32>(global2.x, global2.x, 0u))) % vec3<u32>(32u));
    global2 = ~var_1.yx;
    var var_2 = Struct_3(0i);
    global0 = array<f32, 22>();
    return StorageBuffer(u_input.a & _wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(-1i, 32718i, -1i, -30879i)), firstLeadingBit(vec4<i32>(30048i, -1i, var_2.a, u_input.a.x)) >> (~vec4<u32>(8318u, u_input.b, u_input.c.x, u_input.c.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !vec3<bool>(global3.x, !(~u_input.d.x != ~24585i), global3.x);
    var var_0 = !all(select(vec4<bool>(false, !global3.x, any(vec3<bool>(global3.x, true, global3.x)), global3.x), select(vec4<bool>(false, true, true, false), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, global3.x, global3.x, global3.x)), true));
    let var_1 = vec4<bool>(false, all(select(!global3.xz, select(vec2<bool>(true, global3.x), vec2<bool>(true, global3.x), global3.x), true)), global3.x, global3.x);
    global3 = !var_1.zwy;
    let var_2 = var_1.x;
    let var_3 = ~func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)), _wgslsmith_f_op_f32(802f * global0[_wgslsmith_index_u32(u_input.b, 22u)]))));
    var var_4 = firstLeadingBit(~u_input.b);
    let x = u_input.a;
    s_output = func_2();
}

