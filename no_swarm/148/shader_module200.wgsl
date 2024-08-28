struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec2<bool> {
    return select(!select(arg_1.yz, vec2<bool>(true & arg_2.x, u_input.d.x <= u_input.d.x), !arg_2), !select(arg_2, vec2<bool>(true, arg_2.x), !select(arg_1.xy, arg_2, vec2<bool>(arg_2.x, false))), arg_1.xz);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), -981f), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21641u, 4294967295u, u_input.d.x, 7047u), ~u_input.d), vec4<u32>(~31692u, firstLeadingBit(u_input.d.x), arg_3, 7954u)), ~(~firstLeadingBit(vec4<u32>(18523u, arg_3, 35992u, arg_3))), vec4<u32>(arg_3, ~28879u, 86u, u_input.d.x)), u_input.b, _wgslsmith_mult_i32(-(u_input.c.x >> (max(4294967295u, 0u) % 32u)), arg_1));
    var var_1 = !(arg_3 == _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.d.ywy, var_0.b.zzw)), var_0.b.zzy));
    var_1 = !(any(!select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)) | arg_0.x);
    var_1 = arg_0.x;
    let var_2 = arg_0;
    return Struct_2(~firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 2147483647i), vec2<i32>(55907i, 2147483647i))) ^ var_0.c.yz);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(1f));
    let var_1 = arg_0;
    let var_2 = var_1;
    var var_3 = var_0;
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -708f, var_0) * vec3<f32>(var_0, var_0, var_0))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), -1114f, 691f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1043f + -1625f))), 274f, _wgslsmith_f_op_f32(var_0 * 344f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = arg_3 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) - _wgslsmith_f_op_f32(-arg_3));
    let var_1 = u_input.d.x;
    var var_2 = vec4<u32>(u_input.d.x, 4294967295u, 72318u, ~12564u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_3(func_2(Struct_1(-204f, u_input.d, vec3<i32>(1i, 25033i, -1i), 27063i), vec3<bool>(arg_0.x, true, false), vec2<bool>(arg_0.x, true), vec4<f32>(arg_3, -1042f, arg_3, arg_3)), ~arg_2.a.x, _wgslsmith_f_op_f32(arg_3 - 3324f), firstTrailingBit(38314u)), arg_2)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, arg_3, arg_3), vec3<f32>(1026f, 1000f, arg_3))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2403f, arg_3, arg_3), vec3<f32>(arg_3, arg_3, -1164f))))))));
    var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f - -854f) - _wgslsmith_f_op_f32(f32(-1f) * -122f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1316f, var_3.x))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-467f, var_3.x, 168f) - vec3<f32>(1132f, 1000f, -422f)))))));
    return _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f * arg_3) - var_3.x) > 297f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(809f, 432f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), ~u_input.c, Struct_2(vec2<i32>(21875i, -34609i)), 1008f)), _wgslsmith_f_op_f32(f32(-1f) * -964f)), vec2<bool>(true, any(vec2<bool>(true, true)))))));
    var var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

