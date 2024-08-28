struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(45069i, vec3<u32>(12675u, 57263u, 0u), 0u), Struct_1(vec3<f32>(-443f, 1548f, 995f)), 52811u), Struct_3(Struct_2(-4315i, vec3<u32>(86747u, 0u, 2180u), 4294967295u), Struct_1(vec3<f32>(648f, 1525f, 423f)), 12374u), Struct_3(Struct_2(-1i, vec3<u32>(70340u, 4294967295u, 0u), 4294967295u), Struct_1(vec3<f32>(-157f, 1994f, -1700f)), 0u), Struct_3(Struct_2(-28458i, vec3<u32>(26088u, 1u, 35462u), 0u), Struct_1(vec3<f32>(-233f, 368f, -1096f)), 2313u), Struct_3(Struct_2(-68546i, vec3<u32>(386u, 59888u, 0u), 7231u), Struct_1(vec3<f32>(1553f, 1434f, -485f)), 1u), Struct_3(Struct_2(-25939i, vec3<u32>(1u, 0u, 597u), 31845u), Struct_1(vec3<f32>(263f, 197f, 1117f)), 1u), Struct_3(Struct_2(35775i, vec3<u32>(11802u, 4294967295u, 53390u), 0u), Struct_1(vec3<f32>(-2004f, -366f, 856f)), 31720u), Struct_3(Struct_2(-1i, vec3<u32>(0u, 12669u, 16435u), 25708u), Struct_1(vec3<f32>(-267f, 724f, -343f)), 30307u), Struct_3(Struct_2(13301i, vec3<u32>(41288u, 0u, 8426u), 1u), Struct_1(vec3<f32>(372f, 1811f, 1204f)), 39240u));

var<private> global3: array<Struct_1, 31>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    let var_0 = ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.c), 8u)];
    global2 = array<Struct_3, 9>();
    global3 = array<Struct_1, 31>();
    global2 = array<Struct_3, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.yy, _wgslsmith_f_op_vec2_f32(-global4.a.yz), _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * 1386f)))), global4.a.x, global4.a.x));
}

