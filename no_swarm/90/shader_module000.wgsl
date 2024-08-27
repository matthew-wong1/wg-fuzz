struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: vec3<f32> = vec3<f32>(501f, -1441f, -1486f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 13>();
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, ~(4294967295u ^ u_input.b))), 13u)];
    var var_1 = any(select(!vec3<bool>(false, global0.x & global0.x, var_0.b.x), select(select(vec3<bool>(global0.x, true, global0.x), global0.xzz, global0.wxy), vec3<bool>(!global0.x, false, var_0.b.x), var_0.b.x), global0.wxy));
    var var_2 = -1i & _wgslsmith_mod_i32((~global1.x ^ -113235i) >> (~(4294967295u << (u_input.b % 32u)) % 32u), 3202i);
    var var_3 = var_0.a.x;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), 901f))), !vec3<bool>(all(select(var_0.b.xy, vec2<bool>(var_0.b.x, global0.x), vec2<bool>(false, var_0.b.x))), true, false));
    var var_5 = vec3<u32>(u_input.b, u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(abs(0i) << (~4294967295u % 32u), ~_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(72049i, u_input.a.x, u_input.a.x, -12133i)), -global1.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(u_input.c, vec4<i32>(-2147483647i, 0i, -1i, -30707i), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), vec4<i32>(global1.x, 1i, 0i, global1.x)), 1i, _wgslsmith_mod_i32(-global1.x, 11304i)), u_input.c.www), u_input.c.wwz);
}

