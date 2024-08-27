struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-761f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(268f)) * _wgslsmith_f_op_f32(-2829f * -1504f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1686f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(864f, -1098f)), 260f)), _wgslsmith_f_op_f32(1000f * 297f)));
    global0 = array<Struct_1, 16>();
    let var_1 = 19263i;
    var var_2 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(0u, 1u), vec2<u32>(60415u, 0u), false), ~vec2<u32>(37244u, 65494u))), 16u)];
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1462f, var_0.x, 466f)) + _wgslsmith_f_op_vec4_f32(-var_2.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, 278f, var_0.x, -145f) + vec4<f32>(-1711f, var_2.b, var_2.b, 545f)))), var_0.x, -u_input.d.wxz ^ vec3<i32>(var_1, -_wgslsmith_mod_i32(-2147483647i, u_input.c), u_input.c & -var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b * var_2.b)))), _wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(1155f * var_2.b))));
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.d), select(vec2<u32>(countOneBits(34724u), max(20537u, _wgslsmith_mod_u32(6689u, 1u))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(u_input.b, u_input.b))), !vec2<bool>(select(false, false, false), 1782f < var_2.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d, 903f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -498f, var_2.d))), var_0), ~vec4<i32>(var_1, _wgslsmith_add_i32(0i, var_1), var_1, u_input.d.x));
}

