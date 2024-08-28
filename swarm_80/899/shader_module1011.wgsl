struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -8705i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, !(!(!any(vec4<bool>(true, false, false, false)))), any(vec3<bool>(select(true, true, true), true, true)), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(select(9553u, global0.a, false), 28185u, global0.a), ~(vec3<u32>(100u, 4294967295u, 13769u) & vec3<u32>(global0.a, global0.a, 7398u))), firstLeadingBit(min(countOneBits(vec3<u32>(global0.a, global0.a, 56434u)), vec3<u32>(1u, 3842u, 1u)))));
}

