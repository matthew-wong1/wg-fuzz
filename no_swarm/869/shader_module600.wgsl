struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global2: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(1432f, 708f, 429f), vec3<f32>(-2094f, -210f, -1817f), vec3<f32>(708f, 1050f, -456f), vec3<f32>(-2588f, -835f, 792f), vec3<f32>(-128f, -524f, 1076f), vec3<f32>(-1005f, 938f, -1000f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~u_input.b, vec2<i32>(1i, ~(-23060i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-16057i, 0i), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_0.b.x, 1i)), var_0.b)) << (select(abs(u_input.a.zy), reverseBits(vec2<u32>(var_0.a, 9614u)), true) % vec2<u32>(32u)), -(abs(var_0.b.x) & _wgslsmith_add_i32(1i, -1i)) >> (874u % 32u), 0u, -31235i);
}

