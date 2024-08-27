struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec2<i32>;

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, !any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global2.a, 922u, global2.a)), _wgslsmith_div_vec3_u32(vec3<u32>(11560u, 4294967295u, global2.a), vec3<u32>(global2.a, global2.a, 30115u)))));
}

