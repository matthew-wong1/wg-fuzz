struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~58638u;
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-303f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_f32(round(1f))));
    let var_2 = vec2<i32>(-(u_input.a & ~(u_input.a ^ 47457i)), u_input.a);
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_3 = global0[_wgslsmith_index_u32(~(~23695u), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1393f + -1351f), _wgslsmith_f_op_f32(min(var_3.a.x, 1999f)), _wgslsmith_div_f32(-1285f, _wgslsmith_f_op_f32(-var_3.a.x)), var_1.a.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, 1318f, var_3.a.x, var_1.a.x), var_3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, -1422f, -2370f, var_3.a.x) * vec4<f32>(var_3.a.x, -401f, var_1.a.x, 141f))))), countOneBits(abs(max(-vec2<i32>(-4899i, -2147483647i), ~var_2))), firstTrailingBit(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(1i, var_2.x, u_input.a, var_2.x)), ~abs(vec4<i32>(u_input.a, -36598i, -41531i, u_input.a)))), u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-184f)))))));
}

