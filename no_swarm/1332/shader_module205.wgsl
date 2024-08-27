struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0u, 23959u), Struct_1(55306u, 35540u), Struct_1(4294967295u, 1u), Struct_1(1u, 0u), Struct_1(0u, 1u), Struct_1(77094u, 0u), Struct_1(1u, 5097u), Struct_1(18400u, 1u), Struct_1(63855u, 4294967295u), Struct_1(3155u, 12441u), Struct_1(4294967295u, 8889u), Struct_1(78625u, 3712u), Struct_1(4294967295u, 56483u), Struct_1(70207u, 28940u));

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(37256u, 0u), Struct_1(14330u, 4294967295u), Struct_1(1u, 4294967295u));

var<private> global3: f32 = 849f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a, select(-countOneBits(firstLeadingBit(vec4<i32>(0i, 1i, -18623i, 0i))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-4523i, u_input.a, 37623i, -1i), vec4<i32>(1i, 67231i, u_input.a, -34733i) >> (vec4<u32>(0u, 20305u, 1u, 1u) % vec4<u32>(32u))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(1u, 17u)], u_input.a, u_input.a), vec4<i32>(60919i, u_input.a, -13329i, global0[_wgslsmith_index_u32(18617u, 17u)]))), false));
}

