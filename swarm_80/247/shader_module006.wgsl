struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 24> = array<i32, 24>(-30130i, i32(-2147483648), -939i, -33897i, -48852i, 0i, 0i, -1i, 1i, 0i, i32(-2147483648), -113072i, i32(-2147483648), i32(-2147483648), -27820i, 4936i, -19226i, -1734i, 11772i, i32(-2147483648), 68714i, 1i, i32(-2147483648), 1i);

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> u32 {
    global2 = arg_1;
    let var_0 = Struct_1(u_input.c.xyw, max(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.xzy & u_input.d.yzy, ~u_input.a.yzw), min(u_input.d.x, ~46246u)), vec2<u32>(max(u_input.d.x << (0u % 32u), 1u), u_input.a.x)), _wgslsmith_mod_vec3_u32(select(u_input.a.wxx, countOneBits(~vec3<u32>(u_input.d.x, u_input.a.x, u_input.d.x)), true), max(~(~u_input.a.zzx), ~vec3<u32>(u_input.d.x, u_input.d.x, 0u))));
    global0 = true;
    global1 = array<i32, 24>();
    global0 = true;
    return 50566u;
}

fn func_1() -> f32 {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -730f);
    var var_2 = -2147483647i << (max(func_2(u_input.c.zzx, 779f), ~(~u_input.a.x)) % 32u);
    let var_3 = true;
    return _wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~func_2(_wgslsmith_div_vec3_i32(u_input.b.xxw, u_input.c.zxy), _wgslsmith_f_op_f32(round(-731f))) <= abs(2971u & u_input.a.x)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> f32 {
    global1 = array<i32, 24>();
    global0 = arg_1.x;
    global1 = array<i32, 24>();
    let var_0 = arg_1.yx;
    global0 = var_0.x;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1698f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2070f * 1075f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 24>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1311f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f * _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1528f * _wgslsmith_f_op_f32(ceil(-320f)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1723f))));
    global0 = !all(vec2<bool>(true, true));
    let var_1 = vec3<u32>(4294967295u ^ (_wgslsmith_sub_u32(u_input.a.x, ~0u) << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(30114u, u_input.a.x)), vec2<u32>(57571u, 4294967295u)) % 32u)), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.d.x, 1u, 56797u, u_input.d.x) >> (u_input.d % vec4<u32>(32u))), u_input.d ^ ~vec4<u32>(u_input.d.x, u_input.d.x, 18950u, 1u))), 48926u);
    var var_2 = Struct_1(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, abs(vec4<i32>(u_input.e.x, 27290i, u_input.e.x, -28751i)), vec4<i32>(-16568i, 47181i, global1[_wgslsmith_index_u32(1u, 24u)], 2949i)), u_input.c), -7956i), vec2<u32>(_wgslsmith_add_u32(5838u | var_1.x, _wgslsmith_clamp_u32(var_1.x | 23176u, var_1.x, u_input.d.x)), 0u), vec3<u32>(~(_wgslsmith_mult_u32(4294967295u, u_input.d.x) << (17988u % 32u)), var_1.x, ~73123u));
    global0 = -231f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, vec3<bool>(true, false, false), var_2.b, var_1.zx)))) + var_0.x);
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, min(var_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], 0i), -vec2<i32>(-19847i, u_input.e.x))) & u_input.e.x);
}

