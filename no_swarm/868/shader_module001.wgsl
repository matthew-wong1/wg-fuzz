struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<bool>(false, false, true, false), Struct_1(-204f, vec4<bool>(false, true, true, true), vec2<i32>(58087i, 44371i), 1i, -1000f)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(-326f, vec4<bool>(false, true, true, false), vec2<i32>(0i, 1i), i32(-2147483648), -2136f)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-212f, vec4<bool>(true, true, false, false), vec2<i32>(i32(-2147483648), 0i), -1i, -1497f)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(-1379f, vec4<bool>(false, false, true, true), vec2<i32>(1i, -57619i), 0i, 465f)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(749f, vec4<bool>(true, true, true, false), vec2<i32>(i32(-2147483648), 3810i), 2147483647i, -401f)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(-1011f, vec4<bool>(true, true, true, true), vec2<i32>(56029i, -20440i), 1i, -359f)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(1378f, vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 12262i), 10292i, 1000f)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(1000f, vec4<bool>(false, false, false, true), vec2<i32>(-1i, -55598i), -1i, -1000f)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(1000f, vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 2147483647i), -19361i, 1908f)));

var<private> global1: array<i32, 15>;

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 9> = array<f32, 9>(-726f, -480f, -443f, -1000f, -309f, -758f, -1000f, 785f, 1728f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    let var_0 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(5851u, 0u, u_input.b.x), u_input.a.wwx), u_input.a.x, max(u_input.a.x, 48193u))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1071f, u_input.e, 1i);
}

