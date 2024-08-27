struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 8737i, i32(-2147483648), 0i);

var<private> global2: array<i32, 1> = array<i32, 1>(43650i);

var<private> global3: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~abs(-2147483647i), 0i, _wgslsmith_mult_i32(~(-global1.x), 13217i), -_wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), u_input.d)), _wgslsmith_add_vec4_i32(~(~vec4<i32>(global2[_wgslsmith_index_u32(40381u, 1u)], 18931i, global1.x, 3072i)), _wgslsmith_div_vec4_i32(vec4<i32>(abs(global2[_wgslsmith_index_u32(u_input.b, 1u)]), u_input.d, ~u_input.d, -global1.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], u_input.e, global1.x), vec4<i32>(global2[_wgslsmith_index_u32(52671u, 1u)], global2[_wgslsmith_index_u32(46679u, 1u)], 0i, -29635i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f - -174f)))), vec3<u32>(_wgslsmith_mult_u32(u_input.c, ~(~u_input.c)), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(26027u, u_input.b), vec2<u32>(33888u, 1376u))), ~vec2<u32>(u_input.c, u_input.c) | ~vec2<u32>(4294967295u, 4294967295u)), ~u_input.b), vec4<u32>(u_input.c, 0u, 15852u, ~min(28935u >> (u_input.c % 32u), 61146u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1744f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(568f)))))));
}

