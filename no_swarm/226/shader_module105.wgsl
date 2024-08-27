struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(1u, 17282u, 31878u, 1u), vec4<u32>(0u, 4294967295u, 29416u, 12129u), vec4<u32>(4294967295u, 51960u, 20931u, 1u), vec4<u32>(4294967295u, 0u, 1u, 2701u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 34207u, 0u, 94988u), vec4<u32>(1u, 19396u, 49465u, 0u), vec4<u32>(2623u, 1u, 1u, 4294967295u), vec4<u32>(2765u, 1u, 49656u, 6734u), vec4<u32>(12194u, 7420u, 48966u, 42756u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 4294967295u, 7605u, 15753u), vec4<u32>(4294967295u, 48418u, 0u, 15604u), vec4<u32>(4294967295u, 41750u, 58850u, 4294967295u), vec4<u32>(37120u, 0u, 4294967295u, 4294967295u), vec4<u32>(42700u, 1u, 4294967295u, 25450u), vec4<u32>(33481u, 11985u, 0u, 50930u), vec4<u32>(7664u, 28472u, 3939u, 4294967295u), vec4<u32>(7520u, 1u, 0u, 4294967295u), vec4<u32>(31811u, 8973u, 27102u, 75120u), vec4<u32>(83829u, 3181u, 4294967295u, 1u), vec4<u32>(18357u, 4294967295u, 77675u, 0u), vec4<u32>(35740u, 0u, 4294967295u, 4294967295u), vec4<u32>(3141u, 20377u, 1606u, 34202u));

var<private> global1: array<Struct_2, 11>;

var<private> global2: f32 = 144f;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

var<private> global4: array<Struct_3, 19>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a));
}

