struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<u32> {
    return u_input.a.xx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = u_input.a.xx;
    var_0 = abs(_wgslsmith_div_vec2_u32(u_input.b.xz, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, u_input.a.x), u_input.b.xz, vec2<bool>(true, true)), ~u_input.b.xz ^ vec2<u32>(101883u, u_input.a.x), ~_wgslsmith_mod_vec2_u32(u_input.a.yz, u_input.b.yz))));
    var_0 = u_input.b.xy;
    var_0 = max(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1124f, -1195f), vec2<f32>(853f, 543f), true))), arg_0, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c, arg_2.c, 1366f, 607f)))) << (~(u_input.a.xz & u_input.b.xy) % vec2<u32>(32u)), u_input.b.zx);
    let var_1 = arg_0;
    return vec4<bool>(!all(arg_2.b), all(select(select(var_1.b.xww, select(arg_0.b.zyx, vec3<bool>(true, arg_1.b.x, false), vec3<bool>(true, true, false)), !arg_1.b.x), vec3<bool>(!arg_2.b.x, select(true, true, arg_0.b.x), var_1.b.x), select(select(vec3<bool>(arg_2.b.x, false, false), vec3<bool>(true, arg_2.b.x, arg_1.b.x), vec3<bool>(false, arg_2.b.x, var_1.b.x)), vec3<bool>(arg_2.b.x, true, arg_2.b.x), !arg_2.b.yxw))), u_input.a.x < var_0.x, arg_2.b.x);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = all(vec3<bool>(false, !any(func_2(Struct_1(-1048f, vec4<bool>(false, false, false, true), 501f), Struct_1(986f, vec4<bool>(false, true, true, true), 576f), Struct_1(-1226f, vec4<bool>(false, false, false, true), 881f))), select(all(vec3<bool>(false, true, false)), select(true, true, true), true) && true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-685f, !vec4<bool>(!func_1(-1i), false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-272f)))));
    let var_1 = firstLeadingBit(vec2<i32>(~reverseBits(14049i), _wgslsmith_add_i32(18064i, -(0i >> (u_input.a.x % 32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.b, -113f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(select(456f, _wgslsmith_f_op_f32(-var_0.c), true)), var_0.a));
    let var_3 = Struct_1(var_2.x, !(!vec4<bool>(true, !var_0.b.x, !var_0.b.x, var_0.b.x || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.b.x, 19414u, !(!var_0.b.x)), _wgslsmith_dot_vec4_i32((firstLeadingBit(vec4<i32>(-28894i, var_1.x, var_1.x, 1i)) | ~vec4<i32>(-34233i, var_1.x, var_1.x, -23798i)) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_clamp_i32(-2147483647i, var_1.x, var_1.x), _wgslsmith_mod_i32(var_1.x, var_1.x), -firstTrailingBit(-1i), 28676i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zy)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a.x & u_input.a.x, u_input.a.x), u_input.a & (vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 0u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 44147u) % vec4<u32>(32u)))), firstTrailingBit(u_input.a)));
}

