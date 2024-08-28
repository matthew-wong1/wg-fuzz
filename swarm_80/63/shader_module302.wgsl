struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 4>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -4652i, 26206i), 72605i), vec2<i32>(35151i, 0i), 156f);

var<private> global3: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-vec4<i32>(-8257i, global2.a.b, u_input.a, 24863i) >> (vec4<u32>(33869u, ~4294967295u, 1u, reverseBits(0u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(countOneBits(max(vec4<i32>(0i, u_input.a, -37723i, 0i), vec4<i32>(global3.a.a.x, u_input.a, 2147483647i, u_input.a))), select(max(vec4<i32>(-43347i, 0i, global3.b.x, 42638i), vec4<i32>(u_input.a, global3.b.x, 43579i, u_input.a)), firstTrailingBit(vec4<i32>(global2.b.x, -1i, u_input.a, global3.b.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))))), -2147483647i, select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(true, true, true, true)) | vec4<u32>(1u, 1u, 1u, 1u));
}

