struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(2665i, -10292i)), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(7510i, 1i)), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-37528i, 1i)), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(0i, 0i)), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(7385i, -23784i)), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-32744i, 0i)), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(2147483647i, 2147483647i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f - -148f) * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) * 1f)))))));
    var var_2 = u_input.e;
    var_2 = -select(-41756i >> (~u_input.c % 32u), ~u_input.e, false);
    var_2 = -(~u_input.e);
    let var_3 = global0[_wgslsmith_index_u32(max(~1u, var_0), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, 195f, var_1, var_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, -1866f, var_1, var_1) * vec4<f32>(var_1, var_1, var_1, var_1))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1628f, 298f, var_1, 2278f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, -1326f, -2364f, -953f), vec4<f32>(-614f, 526f, -1000f, var_1))))))), firstTrailingBit(~0i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(-1159f, 625f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1)), 1356f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, var_1))))), var_0);
}

