struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(74970u, vec2<u32>(1u, 19087u), vec2<u32>(37014u, 55512u));

var<private> global1: Struct_1 = Struct_1(28992u, vec2<u32>(29809u, 1u), vec2<u32>(17184u, 0u));

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 7>();
    var var_0 = (_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global0.a, global0.a), 0u), ~(~vec2<u32>(u_input.d, 4294967295u))) >> (vec2<u32>(global1.c.x, 4294967295u) % vec2<u32>(32u))) << (global0.c % vec2<u32>(32u));
    var_0 = vec2<u32>(global1.c.x, ~_wgslsmith_mod_u32(0u, 8599u ^ abs(global0.a)));
    var_0 = vec2<u32>(global0.c.x, 2341u);
    global2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, 236f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))), global2.x))));
    let var_1 = Struct_1(0u, ~global1.b, vec2<u32>(max(u_input.d, firstLeadingBit(0u)), ~(~4294967295u)));
    var_0 = ~vec2<u32>(~60070u, 0u);
    var var_2 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.x, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.x, 4294967295u, 29148u), vec4<u32>(var_0.x, var_0.x, 11526u, 31375u)), min(~vec4<u32>(9326u, 33827u, global1.a, global1.b.x), ~vec4<u32>(32791u, global0.b.x, 61254u, 4294967295u))), vec4<u32>(0u, global0.a, global0.b.x, abs(19150u))));
}

