struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var_0 = 1i;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, -48510i), countOneBits(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.c, 0i, u_input.b)), max(vec3<i32>(u_input.c, -36752i, -1043i), vec3<i32>(u_input.b, u_input.c, u_input.c)))) | _wgslsmith_add_vec3_i32(~vec3<i32>(0i, u_input.b, u_input.c) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(u_input.c, 42040i, -8665i) | vec3<i32>(u_input.b, u_input.c, u_input.b)));
    var var_2 = -5101i;
    var_0 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1869f - 110f) + -904f)))), _wgslsmith_dot_vec2_u32(~((vec2<u32>(35807u, 4294967295u) ^ vec2<u32>(global0[_wgslsmith_index_u32(6203u, 26u)], 1u)) | u_input.a.yz), vec2<u32>(1u, ~43562u)), _wgslsmith_mult_i32(select(~(~1i), 15461i, true), 17480i));
}

