struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(u_input.e.x);
    var_0 = Struct_1(u_input.e.x >> (arg_0.x % 32u));
    return !any(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(arg_1.a, arg_1.a, 0u, u_input.b)) | u_input.a);
    let var_1 = arg_0.x;
    var var_2 = firstTrailingBit(vec2<i32>(-firstTrailingBit(u_input.d), u_input.c) >> (~(~vec2<u32>(1u, var_0.x) | ~var_0.xy) % vec2<u32>(32u)));
    var var_3 = (false && all(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, false))))) || (all(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)) && false);
    let var_4 = arg_1;
    return !(-104778i > ~_wgslsmith_mult_i32(var_2.x, 1i)) || (_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(step(arg_0.x, var_1)));
}

fn func_1(arg_0: bool, arg_1: u32) -> f32 {
    let var_0 = u_input.e.x;
    var var_1 = vec4<bool>(select(!(!arg_0), arg_0, all(!vec4<bool>(true, arg_0, arg_0, true)) | func_2(vec3<u32>(0u, var_0, var_0))), !any(!vec4<bool>(arg_0, true, arg_0, arg_0)), arg_0, all(select(vec2<bool>(!arg_0, !arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, true))), true)));
    var_1 = select(vec4<bool>((u_input.c << (u_input.e.x % 32u)) > 2672i, var_1.x, true, !(var_0 <= ~arg_1)), select(vec4<bool>(var_1.x, 38906u >= arg_1, arg_0, !var_1.x), vec4<bool>(any(select(var_1.zyx, var_1.wxx, var_1.x)), true, true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, -122f, -115f)), Struct_1(u_input.a.x))), vec4<bool>(!(6175i < u_input.d), var_1.x, any(!vec3<bool>(true, false, var_1.x)), arg_0)), vec4<bool>(func_2(vec3<u32>(u_input.e.x, ~0u, ~54407u)), true, true, true));
    var_1 = select(select(select(select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, false, true, arg_0), vec4<bool>(false, false, var_1.x, true)), vec4<bool>(false, true, true, var_1.x), vec4<bool>(true, var_1.x, true, arg_0)), !(!vec4<bool>(arg_0, var_1.x, false, false)), !(!vec4<bool>(false, arg_0, arg_0, false))), select(select(!vec4<bool>(arg_0, true, var_1.x, false), select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(arg_0, false, true, false), vec4<bool>(true, arg_0, arg_0, var_1.x)), vec4<bool>(var_1.x, var_1.x, true, arg_0)), !(!vec4<bool>(arg_0, var_1.x, var_1.x, arg_0)), var_1.x), true), !vec4<bool>(var_1.x, !(arg_0 | arg_0), arg_0, true), !select(select(!vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, var_1.x, arg_0, true), !vec4<bool>(var_1.x, true, var_1.x, var_1.x)), vec4<bool>(all(vec4<bool>(false, false, var_1.x, true)), true, true, any(vec4<bool>(arg_0, false, arg_0, false))), select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, arg_0, var_1.x), true)));
    var_1 = vec4<bool>(true, any(select(vec4<bool>(var_1.x, true, true, var_1.x || false), vec4<bool>(false, true, false, var_1.x), any(select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(var_1.x, false, var_1.x, arg_0))))), !(all(select(vec4<bool>(arg_0, var_1.x, false, arg_0), vec4<bool>(false, var_1.x, true, arg_0), var_1.x)) && true), true);
    return _wgslsmith_f_op_f32(round(-1504f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, -2331f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1248f, -1440f)))))))));
    var var_1 = 243f;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f - var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) + var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -898f), -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(func_1(true, 4294967295u)), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.x)))), var_0.x));
    let var_3 = Struct_2(select(vec2<bool>((u_input.a.x & 131710u) > _wgslsmith_mult_u32(65441u, 766u), all(vec2<bool>(true, false))), !vec2<bool>(false, all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true)));
    var var_4 = vec3<i32>(-10789i, firstLeadingBit(select(~u_input.c, -u_input.d, false)), u_input.c) | _wgslsmith_mod_vec3_i32(firstLeadingBit(abs(vec3<i32>(u_input.d, u_input.c, -38872i) ^ vec3<i32>(u_input.d, u_input.c, u_input.d))), vec3<i32>(-(~1i), min(_wgslsmith_mod_i32(u_input.c, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(-1i, -25034i))), -32248i));
    var var_5 = Struct_1(firstTrailingBit(abs(u_input.b << (_wgslsmith_sub_u32(u_input.e.x, u_input.b) % 32u))));
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_2.x, u_input.a.x >> (3907u % 32u), 1u);
}

