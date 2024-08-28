struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: bool;

var<private> global2: array<f32, 9>;

var<private> global3: array<vec2<u32>, 32>;

var<private> global4: array<Struct_1, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~1u), 9u)];
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(~firstLeadingBit(vec4<u32>(48995u, 41970u, 79657u, 8414u)))), ~(~(~(~vec4<u32>(1u, 0u, 10168u, 23532u)))));
    global1 = 1i >= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) >> ((~vec2<u32>(38618u, 30054u) & abs(global3[_wgslsmith_index_u32(6249u, 32u)])) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(~69433u, ~53962u)), global2[_wgslsmith_index_u32(56975u, 9u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 9u)]), ~4294967295u);
}

