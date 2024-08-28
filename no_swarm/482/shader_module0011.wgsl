struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: array<f32, 28> = array<f32, 28>(306f, 1795f, -199f, 638f, -1156f, 808f, 736f, 1886f, -219f, 1000f, 1000f, 602f, -561f, -1717f, -325f, -925f, 581f, 492f, -1180f, 203f, -140f, 785f, -560f, -554f, -348f, -370f, -319f, 658f);

var<private> global2: array<u32, 8>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(-u_input.b), countOneBits(reverseBits(-2147483647i))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-82129i, 38410i, u_input.b, 19755i), vec4<i32>(u_input.b, 0i, 2147483647i, -27211i)), u_input.b), _wgslsmith_mod_i32(~u_input.b, 1i)), u_input.b));
}

