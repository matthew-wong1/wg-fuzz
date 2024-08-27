struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(2147483647i, 0i, 1i, 21952i), vec4<i32>(12094i, 0i, 2147483647i, 1163i), vec4<i32>(-1128i, 14091i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, -1i, 23081i, 2147483647i), vec4<i32>(-1i, 2147483647i, 18453i, 2147483647i), vec4<i32>(i32(-2147483648), -55232i, -27853i, -1i), vec4<i32>(11603i, i32(-2147483648), -1i, 0i), vec4<i32>(-16000i, -9832i, -24896i, -30113i), vec4<i32>(2147483647i, i32(-2147483648), 20388i, 28688i), vec4<i32>(i32(-2147483648), 0i, 0i, -1i), vec4<i32>(1i, -3992i, 1i, -1i), vec4<i32>(694i, -37782i, i32(-2147483648), 0i), vec4<i32>(1i, -30569i, -12815i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(44516i, -11563i, 22928i, 13570i), vec4<i32>(-45227i, -1i, -21397i, 2147483647i), vec4<i32>(36774i, 2147483647i, 9325i, 1i), vec4<i32>(30151i, 1i, 2147483647i, -8390i), vec4<i32>(22777i, i32(-2147483648), i32(-2147483648), 15703i), vec4<i32>(0i, 11594i, 28269i, -3865i), vec4<i32>(11425i, 2147483647i, -1i, 4893i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 21>();
    global1 = array<vec4<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -10286i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i)), _wgslsmith_div_i32(u_input.b.x, 2147483647i))), 4334i);
}

