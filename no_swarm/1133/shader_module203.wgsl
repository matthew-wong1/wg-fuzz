struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec2<f32>(-741f, -118f)), Struct_1(vec2<f32>(1297f, 290f)), Struct_1(vec2<f32>(-541f, -1948f))), Struct_2(Struct_1(vec2<f32>(-127f, 135f)), Struct_1(vec2<f32>(-1495f, 1105f)), Struct_1(vec2<f32>(1387f, -211f))));

var<private> global2: array<i32, 5> = array<i32, 5>(-29003i, -3576i, -26687i, -9494i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 5>();
    global0 = array<u32, 21>();
    global1 = array<Struct_2, 2>();
    let var_0 = -2147483647i;
    let var_1 = i32(-1i) * -global2[_wgslsmith_index_u32(~(~(global0[_wgslsmith_index_u32(53746u, 21u)] | global0[_wgslsmith_index_u32(0u, 21u)])), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(var_0, 2147483647i, -32722i, var_1)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 51428u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], 21u)]), vec4<u32>(u_input.b, 102674u, 1u, 10867u)) % vec4<u32>(32u)), ~u_input.c));
}

