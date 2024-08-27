struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(71843u, 1u, 31007u), Struct_1(vec4<f32>(213f, -520f, 1349f, -2236f), vec3<u32>(4294967295u, 1u, 27757u)), vec3<i32>(-3515i, 0i, 8778i), vec3<u32>(24689u, 1u, 4294967295u));

var<private> global1: array<i32, 3> = array<i32, 3>(-6200i, 33408i, 1i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global0.b.a.x, -202f, -1796f), _wgslsmith_clamp_vec3_i32(global0.c, global0.c & reverseBits(~global0.c), -_wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -31409i, -6603i), vec3<i32>(0i, -10664i, global1[_wgslsmith_index_u32(u_input.b, 3u)])))));
}

