struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 9>();
    let var_0 = ~(~(~u_input.a));
    let var_1 = countOneBits(_wgslsmith_mod_u32(u_input.a & _wgslsmith_div_u32(~1u, 1u), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), _wgslsmith_add_i32(-31976i, max(29983i, 1i)) | ~_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.wxy), u_input.b.wyy), _wgslsmith_f_op_f32(988f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-836f - -811f))))), _wgslsmith_mult_u32(countOneBits(8309u), var_0), 4294967295u);
}

