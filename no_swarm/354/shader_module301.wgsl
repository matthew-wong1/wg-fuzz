struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 28360u;

var<private> global1: array<bool, 24>;

var<private> global2: array<bool, 12> = array<bool, 12>(false, false, true, true, false, false, true, false, false, true, true, true);

var<private> global3: array<i32, 7> = array<i32, 7>(32290i, 1i, 18921i, 5998i, -76218i, -49229i, i32(-2147483648));

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(499f)), Struct_2(Struct_1(822f)), Struct_2(Struct_1(1000f)), Struct_2(Struct_1(1013f)), Struct_2(Struct_1(-252f)), Struct_2(Struct_1(521f)), Struct_2(Struct_1(1000f)), Struct_2(Struct_1(-1473f)), Struct_2(Struct_1(-189f)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.yxx), ~(-firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(25600u, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)], 27071i, global3[_wgslsmith_index_u32(u_input.a.x, 7u)]))) ^ _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 7u)], global3[_wgslsmith_index_u32(5320u, 7u)], global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global3[_wgslsmith_index_u32(23529u, 7u)]), vec4<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 7u)], 69320i, global3[_wgslsmith_index_u32(58818u, 7u)])), -(vec4<i32>(0i, global3[_wgslsmith_index_u32(10321u, 7u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 7u)]) ^ vec4<i32>(-6899i, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(42425u, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)]))), ~(~firstTrailingBit(u_input.b)));
}

