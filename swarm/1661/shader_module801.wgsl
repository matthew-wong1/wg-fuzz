struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(-425f, 218f, 1608f, 559f);

var<private> global3: array<bool, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = ((global1.c ^ 1i) > u_input.c) & false;
    var var_2 = vec2<i32>(_wgslsmith_div_i32(u_input.c & -56113i, 2147483647i >> (~max(20554u, u_input.a) % 32u)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2532i, global1.c)), u_input.d.zz & u_input.d.yz), global1.b)));
}

