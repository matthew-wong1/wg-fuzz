struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), 1i, -2502i, 0i, 0i, 47718i, -19194i, -7263i, 2147483647i, -26900i, 9448i, 1i, 18319i, 0i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -2147483647i, global0[_wgslsmith_index_u32(0u, 14u)]), vec3<i32>(-48120i, -5231i, u_input.b))), (vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 16802i, 1i) >> (vec3<u32>(1u, u_input.c, u_input.c) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(vec3<i32>(40766i, 0i, global0[_wgslsmith_index_u32(u_input.c, 14u)]), vec3<i32>(1i, 1i, 1i) & vec3<i32>(u_input.b, -2147483647i, u_input.b))), 8264u);
}

