struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(0u, 20u)];
    global0 = array<Struct_1, 20>();
    return vec2<f32>(-226f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f * 1046f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1176f))))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = all(vec3<bool>(firstTrailingBit(4294967295u) >= arg_0.c, any(vec4<bool>(true, true, true, true)), true));
    global0 = array<Struct_1, 20>();
    var var_1 = !vec2<bool>(true & any(select(vec3<bool>(true, arg_0.e.x, false), vec3<bool>(false, false, var_0), false)), true);
    let var_2 = global0[_wgslsmith_index_u32(~arg_0.c, 20u)];
    var var_3 = arg_0;
    return _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(select(min(vec2<u32>(var_2.c, 0u), vec2<u32>(var_2.c, var_3.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(u_input.a, 0u), vec2<u32>(var_2.c, var_3.c)), arg_0.e), ~select(vec2<u32>(var_2.c, 89874u), vec2<u32>(var_3.c, 3383u), vec2<bool>(false, var_2.e.x))), vec2<u32>(firstLeadingBit(reverseBits(arg_0.c)) >> (countOneBits(countOneBits(var_3.c)) % 32u), var_2.c));
}

fn func_2() -> StorageBuffer {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(~(~u_input.a), countOneBits(u_input.a), ~u_input.a), 7091u);
    return StorageBuffer(vec3<u32>(23003u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(func_3(Struct_1(true, u_input.b.x, 0u, 0i, vec2<bool>(true, false))), reverseBits(vec2<u32>(1u, 24771u))), countOneBits(vec2<u32>(var_0.x, u_input.a)) ^ (vec2<u32>(var_0.x, u_input.a) << (vec2<u32>(u_input.a, 6231u) % vec2<u32>(32u)))), ~var_0.x), 771f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-986f, -107f)), _wgslsmith_f_op_f32(abs(-1170f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-655f, 1069f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, _wgslsmith_f_op_f32(-1108f + -1000f), -1851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -392f, true)) - _wgslsmith_f_op_f32(1054f - 230f)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 1u));
    var_0 = 12355u;
    let var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(4294967295u)));
    let x = u_input.a;
    s_output = func_2();
}

