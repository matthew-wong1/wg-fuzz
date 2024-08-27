struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(649f, -335f, 1000f, 799f), 45268i, vec3<u32>(1u, 0u, 5930u), vec3<i32>(0i, 48619i, 2147483647i), 820f), Struct_1(vec4<f32>(483f, 247f, 905f, 108f), -4648i, vec3<u32>(11084u, 34064u, 1u), vec3<i32>(-1i, -1i, 38661i), 394f), vec4<bool>(true, true, false, true), vec3<u32>(0u, 0u, 13546u), vec2<f32>(-569f, 2001f));

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~max(1i, global0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global0.a.b, global0.a.d.x, -global0.a.d.x >> (4294967295u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1573f) - global0.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.e - global0.b.e), _wgslsmith_div_f32(global0.b.a.x, -103f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, global0.b.a.x, global0.a.e) * global0.a.a.wzy)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-446f, global0.a.a.x, global0.a.e))), vec3<f32>(2419f, global0.b.a.x, 888f)), global0.a.a.yzw)), _wgslsmith_add_vec2_u32(vec2<u32>(19377u, ~92133u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), global0.a.c.yz >> (global0.a.c.xz % vec2<u32>(32u)))));
}

