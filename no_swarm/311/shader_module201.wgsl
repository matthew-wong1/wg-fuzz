struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32> = vec4<u32>(0u, 9235u, 61443u, 0u);

var<private> global2: array<f32, 24> = array<f32, 24>(645f, 785f, 1204f, -1065f, -493f, -1993f, -1949f, 1000f, 452f, 746f, 1000f, 2621f, 250f, 1343f, 475f, 1552f, 675f, -1131f, 404f, -1179f, 1506f, -238f, 135f, -285f);

var<private> global3: Struct_2 = Struct_2(Struct_1(4294967295u), Struct_1(1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.e;
    var_0 = ~(~vec4<u32>(4294967295u, var_0.x, global1.x >> (global1.x % 32u), 4294967295u) >> (u_input.e % vec4<u32>(32u)));
    let var_1 = Struct_2(Struct_1(6555u), Struct_1(54284u));
    global1 = vec4<u32>(var_1.b.a, 32333u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~global3.a.a, 51126u), select(~(~0u), reverseBits(~0u), true)), 4294967295u);
    let var_2 = vec4<u32>(~reverseBits(var_1.a.a), 23402u, 49634u >> (global1.x % 32u), var_0.x);
    var var_3 = 0u;
    global2 = array<f32, 24>();
    global2 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(929f))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 136393u, var_1.b.a), u_input.e.wzw), 24u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_1.a.a, 24u)], global2[_wgslsmith_index_u32(var_1.a.a, 24u)])))));
}

