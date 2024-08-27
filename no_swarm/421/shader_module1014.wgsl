struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 11>;

var<private> global4: array<Struct_3, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~min(vec4<u32>(34906u, u_input.a.x, 48557u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 14181u, u_input.a.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~95970u & _wgslsmith_sub_u32(u_input.a.x, 9823u), 19576u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 0u), ~vec4<u32>(~30727u, _wgslsmith_mod_u32(5148u, u_input.a.x), u_input.a.x, abs(u_input.a.x))), vec3<u32>(u_input.a.x ^ 0u, u_input.a.x, max(~u_input.a.x, u_input.a.x)), vec3<i32>(_wgslsmith_add_i32(u_input.b, abs(-73835i)), -u_input.b, -2147483647i), -reverseBits(vec4<i32>(u_input.b, -6119i, u_input.b, 1i) | vec4<i32>(u_input.b, 56271i, -18000i, global1.e.x)));
}

