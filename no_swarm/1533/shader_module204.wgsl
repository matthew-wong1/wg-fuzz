struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_1() -> i32 {
    let var_0 = Struct_2(~0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-139f + 1000f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1167f, 573f, -777f), vec3<f32>(1056f, -1151f, -749f))))))), Struct_1(u_input.d, 188f, -1i), 4294967295u);
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~(~(~vec3<i32>(-1i, u_input.e, 2147483647i))));
    let var_1 = !vec4<bool>(_wgslsmith_f_op_f32(round(411f)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(452f, 1002f) + _wgslsmith_div_f32(981f, 1323f)), false, !(61059u >= u_input.d.x), true);
    var_0 = countOneBits(~(~vec3<i32>(-u_input.e, _wgslsmith_mod_i32(-12865i, 52358i), func_1())));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, -524f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(928f)), 410f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-277f, 1034f)))))));
    var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(18969i, -17690i, ~(-var_0.x)), -(~(vec3<i32>(-1i, 13304i, -38615i) | vec3<i32>(17513i, -21837i, var_0.x)))), vec3<i32>(var_0.x, ~8734i, u_input.e) & max(-(~vec3<i32>(var_0.x, var_0.x, 55053i)), firstTrailingBit(vec3<i32>(0i, u_input.e, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 1037f))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 268f, var_2.x) * vec3<f32>(-814f, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(835f, -369f, -857f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-541f, 770f, -477f)) + vec3<f32>(263f, var_2.x, 1000f)))), ~_wgslsmith_mult_u32(u_input.b.x, ~(~u_input.a)));
}

