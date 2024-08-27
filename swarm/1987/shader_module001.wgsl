struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mod_i32(0i | u_input.b, -2147483647i) | _wgslsmith_mult_i32(-28545i, u_input.b);
    var var_1 = true;
    var_1 = true;
    var_0 = u_input.c;
    var var_2 = _wgslsmith_add_u32(1u, ~4294967295u);
    return 224f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = 4294967295u;
    var var_1 = vec3<u32>(0u, 68421u, _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(9406u, 4294967295u, 4294967295u, var_0) | u_input.a));
    var var_2 = Struct_1(2147483647i, var_0, ~u_input.a.yyx);
    var var_3 = 1u;
    let var_4 = global0[_wgslsmith_index_u32(~firstLeadingBit(~countOneBits(u_input.a.x)), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-701f * 723f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-332f))) + _wgslsmith_f_op_f32(972f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(-328f - -2248f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-338f, 650f)) * _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f), 1f) - 669f)), u_input.c);
}

