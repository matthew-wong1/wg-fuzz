struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 4294967295u, 213u, 1u, 35853u, 69413u, 17744u, 1665u, 1u, 13422u, 4294967295u, 4294967295u, 12920u, 0u, 22202u, 8657u, 20856u, 1270u, 0u, 58699u, 41950u, 16415u, 1u, 0u, 6474u, 4294967295u, 67910u, 2611u);

var<private> global3: Struct_1 = Struct_1(-690f, vec2<i32>(0i, -1i), vec3<u32>(6564u, 0u, 4294967295u), vec3<f32>(-242f, 414f, 1035f), 70791u);

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(348f, global0.xz >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, global1.e), ~global1.c.yz), ~(~u_input.b.yy)) % vec2<u32>(32u)), ~(~(_wgslsmith_mult_vec3_u32(global3.c, global3.c) >> (min(vec3<u32>(76456u, 4294967295u, global1.c.x), global1.c) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.d + vec3<f32>(_wgslsmith_f_op_f32(floor(-906f)), 367f, _wgslsmith_f_op_f32(sign(global1.d.x)))) * global3.d), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(6639u, _wgslsmith_f_op_vec3_f32(-global3.d), ~(abs(select(vec4<u32>(0u, global1.e, global3.e, global2[_wgslsmith_index_u32(1u, 29u)]), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(80277u, 29u)], global3.c.x, 0u), global4.x)) << (vec4<u32>(56609u, ~43651u, abs(global2[_wgslsmith_index_u32(0u, 29u)]), 14819u) % vec4<u32>(32u))), global3.b);
}

