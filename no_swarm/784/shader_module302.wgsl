struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 4294967295u, 33579u, 0u), vec4<u32>(16122u, 37520u, 38856u, 0u), vec4<u32>(4294967295u, 1u, 1u, 33968u), vec4<u32>(4294967295u, 38420u, 1u, 0u), vec4<u32>(35461u, 1u, 1u, 0u), vec4<u32>(11169u, 1u, 48159u, 0u), vec4<u32>(43764u, 0u, 0u, 1u), vec4<u32>(60076u, 1u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(0u, 28126u, 4294967295u, 0u), vec4<u32>(0u, 23388u, 1u, 1u), vec4<u32>(39153u, 36379u, 0u, 18683u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(1u, 18581u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 0u, 20991u), vec4<u32>(4028u, 47176u, 0u, 4294967295u), vec4<u32>(15655u, 31965u, 1u, 70085u), vec4<u32>(4294967295u, 18520u, 1u, 4294967295u), vec4<u32>(4294967295u, 35752u, 52540u, 4294967295u), vec4<u32>(14883u, 1u, 41640u, 1u), vec4<u32>(0u, 1u, 0u, 8443u), vec4<u32>(55495u, 4294967295u, 1u, 36828u), vec4<u32>(40503u, 46000u, 127u, 4294967295u), vec4<u32>(22566u, 90442u, 13393u, 115206u), vec4<u32>(4294967295u, 9635u, 0u, 0u), vec4<u32>(0u, 24422u, 4294967295u, 0u), vec4<u32>(0u, 24455u, 61987u, 44818u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(select(vec4<bool>(true, false, global1.x, false), vec4<bool>(false, false, global1.x, global1.x), global1.x), select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true), vec4<bool>(false, true, true, false), vec4<bool>(global0.x > 793f, global1.x, true, true)), select(!(!vec4<bool>(true, false, global1.x, true)), !(!vec4<bool>(true, false, true, global1.x)), global1.x), vec4<bool>(global0.x > _wgslsmith_f_op_f32(-global0.x), all(vec3<bool>(true, global1.x, global1.x)), global1.x, all(!vec3<bool>(global1.x, true, false))));
    let var_1 = true || var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global3[_wgslsmith_index_u32(abs(0u), 29u)], _wgslsmith_f_op_f32(global0.x - -1587f));
}

