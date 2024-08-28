struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
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

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1204f, false), Struct_1(342f, false), Struct_1(-192f, false), Struct_1(983f, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = 1u;
    let var_1 = global0[_wgslsmith_index_u32(1u, 4u)];
    var_0 = _wgslsmith_dot_vec2_u32(max(u_input.b, _wgslsmith_mult_vec2_u32(~u_input.a.xz, u_input.b)), vec2<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), reverseBits(u_input.a.x)), _wgslsmith_sub_u32(~(61417u << (1u % 32u)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(323f, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(exp2(var_1.a)))), 1673f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -150f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = Struct_1(-608f, false);
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f * -255f)), var_0.b))) - 228f);
    let var_2 = global0[_wgslsmith_index_u32(~(u_input.b.x & 32709u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(select(-3814i, 2147483647i, var_2.b) << ((36394u << (u_input.b.x % 32u)) % 32u))));
}

