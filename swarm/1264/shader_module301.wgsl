struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~0i;
    var var_0 = 106780u;
    global0 = array<Struct_1, 12>();
    var var_1 = u_input.b;
    var_1 = ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, ~var_1.x, 0u, firstLeadingBit(u_input.c.x)), select(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_1.x, var_1.x, 4294967295u, 4916u)), u_input.b, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, ~0u, var_1.x)));
    var var_2 = abs(countOneBits(vec2<i32>(u_input.d.x, countOneBits(2147483647i))));
    var var_3 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, var_2.x), ~(-u_input.d.x)), -13573i, countOneBits(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-28842i);
}

