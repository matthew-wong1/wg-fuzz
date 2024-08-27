struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 29> = array<bool, 29>(false, false, false, true, true, true, true, true, true, false, false, true, true, false, true, false, true, false, false, false, true, true, false, true, false, true, false, true, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = abs(min(~0u, arg_0));
    let var_1 = Struct_1(firstLeadingBit(0i), vec2<f32>(323f, 367f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, -1016f, _wgslsmith_f_op_f32(645f + -1098f), _wgslsmith_f_op_f32(766f - 1910f))))), vec4<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, true, global1[_wgslsmith_index_u32(arg_0, 29u)])), global1[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(48939u, u_input.a, 7030u, 18563u), vec4<u32>(arg_0, 0u, 14080u, 29816u)), 4294967295u & ~u_input.a), 29u)], (select(true, global1[_wgslsmith_index_u32(4294967295u, 29u)], false) || true) != global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(arg_0, 29u)]));
    var_0 = arg_0;
    let var_2 = Struct_3(var_1.d.yy);
    var var_3 = var_1.b.x;
    return false;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_3(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a, 29u)], true || all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 29u)], true, global1[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true, true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 29u)], false)))));
    global1 = array<bool, 29>();
    return vec4<i32>(min(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 39587i, 1i), select(vec3<i32>(17429i, u_input.b, u_input.c.x), vec3<i32>(u_input.b, u_input.c.x, 5766i), true)), 1i), -32795i), -36313i, u_input.c.x, -54386i | ((u_input.c.x << (~77651u % 32u)) << (~min(107619u, u_input.a) % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_1(-(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -35128i, 1i, arg_0.a), vec4<i32>(arg_1.x, u_input.b, 0i, -84679i))) >> (u_input.a % 32u)), vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(floor(arg_0.b.x))), arg_0.c, arg_0.d);
    return _wgslsmith_add_vec2_u32(vec2<u32>(88991u, u_input.a) >> ((firstTrailingBit(vec2<u32>(u_input.a, 69656u) << (vec2<u32>(32438u, u_input.a) % vec2<u32>(32u))) | abs(firstLeadingBit(vec2<u32>(2770u, u_input.a)))) % vec2<u32>(32u)), reverseBits(vec2<u32>(abs(u_input.a), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = 4384u;
    let var_1 = Struct_3(select(vec2<bool>(true, true), select(!(!vec2<bool>(global1[_wgslsmith_index_u32(131932u, 29u)], true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(51103u, 29u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(17598u, 29u)])), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 29u)])), func_1(53344u)), false));
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    var_0 = u_input.a;
    var var_2 = func_2();
    let var_3 = -(~(~var_2.zzw));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zxz, u_input.a, ~(~(~func_3(Struct_1(var_3.x, vec2<f32>(1681f, 1000f), vec4<f32>(-226f, 139f, -418f, -540f), vec4<bool>(false, true, var_1.a.x, true)), var_2.zzx))), _wgslsmith_f_op_f32(step(-272f, -264f)));
}

