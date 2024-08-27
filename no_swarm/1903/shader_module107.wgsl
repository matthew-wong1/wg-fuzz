struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, false, false, false, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false);

var<private> global1: array<f32, 18> = array<f32, 18>(-1000f, -197f, 1117f, 1220f, -408f, -768f, -1040f, 649f, -748f, -1235f, -463f, -1530f, -853f, -275f, -1064f, 182f, -1753f, -268f);

var<private> global2: array<vec2<f32>, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec2<u32>(u_input.a, ~(~(~13400u)));
    let var_1 = u_input.d;
    var var_2 = 4294967295u;
    global1 = array<f32, 18>();
    var var_3 = firstLeadingBit(var_0.x << (11744u % 32u));
    return StorageBuffer(~select(max(~vec4<u32>(u_input.d.x, 28988u, var_1.x, u_input.b), ~vec4<u32>(u_input.d.x, var_1.x, var_0.x, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 16279u, var_0.x, u_input.d.x), ~vec4<u32>(var_1.x, u_input.b, var_1.x, 0u)), false), reverseBits(~vec3<i32>(u_input.c.x >> (u_input.a % 32u), u_input.c.x, i32(-1i) * -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(937f)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(min(u_input.a, 1u), 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f) - _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a, 18u)]))))), 30247i);
    let x = u_input.a;
    s_output = func_1();
}

