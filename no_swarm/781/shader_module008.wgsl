struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 15>;

var<private> global2: array<i32, 24>;

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, false, true, true, false, true, true, false, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-19029i, _wgslsmith_div_i32(-abs(global2[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_dot_vec2_i32(max(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], -16612i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 2147483647i)), vec2<i32>(0i, global2[_wgslsmith_index_u32(30279u, 24u)])))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(391f + -1303f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-750f, 830f)))), u_input.a, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~u_input.b, 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, u_input.b)), 24u)]) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a), !global3[_wgslsmith_index_u32(0u, 11u)]), ~(~vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u))) % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), 33789u));
}

