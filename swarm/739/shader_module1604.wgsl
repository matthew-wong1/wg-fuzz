struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(34852u, 0u, 96960u, 1u, 2235u, 21253u, 58463u, 1u, 24888u, 78669u, 4294967295u, 1u, 0u, 44226u, 1u, 1u, 65191u, 5834u, 4294967295u, 0u, 0u, 0u, 1u, 113304u);

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, _wgslsmith_div_vec4_i32(abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-20149i, 2147483647i, global2.a, -16904i), vec4<i32>(-1i, global2.a, global2.a, global2.a)))), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.b, global2.a, 0i, -1i)), ~vec4<i32>(1i, -25688i, u_input.b, global2.a))));
}

