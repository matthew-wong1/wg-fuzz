struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(2267f, 88639u, 70404u, false)), Struct_3(Struct_1(741f, 35176u, 60072u, false)), Struct_3(Struct_1(105f, 20887u, 0u, false)), Struct_3(Struct_1(209f, 0u, 1u, false)), Struct_3(Struct_1(-1110f, 0u, 950u, false)), Struct_3(Struct_1(-1109f, 0u, 1u, true)), Struct_3(Struct_1(-1076f, 4294967295u, 95264u, false)), Struct_3(Struct_1(-1019f, 65931u, 1u, false)), Struct_3(Struct_1(473f, 22078u, 4294967295u, false)), Struct_3(Struct_1(-1750f, 4294967295u, 0u, true)), Struct_3(Struct_1(1605f, 3979u, 56927u, false)), Struct_3(Struct_1(-1633f, 1u, 0u, false)), Struct_3(Struct_1(-515f, 11586u, 4294967295u, false)), Struct_3(Struct_1(286f, 0u, 0u, true)), Struct_3(Struct_1(322f, 63828u, 25271u, false)), Struct_3(Struct_1(1877f, 0u, 0u, true)), Struct_3(Struct_1(-102f, 37141u, 27593u, true)), Struct_3(Struct_1(-391f, 4294967295u, 1u, false)), Struct_3(Struct_1(-966f, 1u, 4294967295u, true)), Struct_3(Struct_1(-474f, 0u, 27779u, true)), Struct_3(Struct_1(-1456f, 35858u, 20005u, false)));

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), -20934i);

var<private> global3: array<f32, 2> = array<f32, 2>(1000f, 1890f);

var<private> global4: Struct_2 = Struct_2(Struct_1(-1000f, 57614u, 10047u, true), vec2<i32>(-1i, 10235i), vec3<bool>(true, true, false), vec2<u32>(760u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(31312u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.a.a, global4.a.a))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a, -1835f)));
    var var_1 = ~(-(~global2.x) & ~11415i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(global4.a.b, global4.d.x, ~u_input.b.x >> (~1u % 32u)));
}

