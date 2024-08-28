struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(3175i, 1i, i32(-2147483648)), vec3<f32>(152f, 276f, -1315f));

var<private> global1: Struct_4 = Struct_4(vec3<i32>(14561i, 0i, 46631i), vec3<f32>(-266f, -429f, 133f), 13864i, vec4<u32>(4294967295u, 23884u, 4294967295u, 12919u));

var<private> global2: array<f32, 23> = array<f32, 23>(460f, -325f, -537f, -177f, 1000f, -216f, -1000f, 292f, 849f, -1418f, -615f, 1000f, 383f, 1000f, 193f, -273f, -879f, -291f, -1580f, -866f, 122f, 257f, -737f);

var<private> global3: array<vec3<i32>, 26>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(53781u, -44852i, ~vec2<u32>(min(0u, 26260u), 1u) << (u_input.e % vec2<u32>(32u)), countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.a.x, u_input.d), -vec2<i32>(u_input.d, u_input.a.x))));
}

