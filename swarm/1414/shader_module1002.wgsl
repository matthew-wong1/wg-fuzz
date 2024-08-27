struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(1150f, 257f, 847f, -682f, 1806f, -482f, 2465f);

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: array<vec2<u32>, 16>;

var<private> global3: array<Struct_5, 7>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    global2 = array<vec2<u32>, 16>();
    var var_0 = ~(~countOneBits(~max(vec3<u32>(0u, u_input.b.x, 4830u), vec3<u32>(1u, 69972u, u_input.b.x))));
    global2 = array<vec2<u32>, 16>();
    var var_1 = 34661i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 7u)]), global0[_wgslsmith_index_u32(42530u, 7u)])), _wgslsmith_f_op_f32(-1205f + -299f), 255f), ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(14000u, var_0.x, u_input.b.x), vec3<u32>(0u, 4294967295u, var_0.x)))), vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -u_input.a.x));
}

