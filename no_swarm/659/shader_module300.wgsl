struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, ~u_input.b), vec4<u32>(firstTrailingBit(4294967295u), 1u, _wgslsmith_add_u32(u_input.c, 16934u), ~1u)), u_input.b));
    var var_1 = reverseBits(2608u);
    let var_2 = -firstLeadingBit(~min(vec4<i32>(-7595i, -3393i, u_input.a, u_input.a), vec4<i32>(15902i, u_input.a, u_input.a, 41511i)) << ((select(vec4<u32>(arg_0.a, 0u, 4294967295u, arg_0.a), vec4<u32>(11447u, 17050u, 72893u, 9033u), vec4<bool>(true, false, true, false)) >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_1 = 9242u;
    var_0 = 0u ^ _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a, u_input.c), min(vec2<u32>(2008u, 0u), vec2<u32>(u_input.b.x, arg_0.a))) & arg_0.a, min(0u, ~1u));
    return Struct_1(~(~(~(~43950u))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> bool {
    var var_0 = func_2(func_2(arg_1));
    var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = any(vec3<bool>(false, true, true)) || false;
    var var_3 = -max(select(min(-vec3<i32>(arg_3.x, 0i, 56331i), vec3<i32>(arg_2, 58256i, arg_3.x)), ~firstTrailingBit(vec3<i32>(25385i, u_input.a, -2147483647i)), true), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.x, 21581i, -21857i), ~vec3<i32>(arg_2, -2147483647i, arg_2))));
    return !(!((false == all(vec3<bool>(false, false, true))) != (419u >= max(arg_0.x, 9653u))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = u_input.a;
    var var_1 = func_2(Struct_1(~u_input.b.x));
    let var_2 = !(!func_3(vec4<u32>(u_input.b.x, ~2333u, var_1.a, arg_0.a), arg_0, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, 34804i), -39127i), _wgslsmith_sub_vec2_i32(-vec2<i32>(-16013i, 1i), vec2<i32>(u_input.a, u_input.a))));
    var var_3 = !vec2<bool>(!any(select(vec4<bool>(false, var_2, var_2, false), vec4<bool>(false, false, true, var_2), var_2)), !(!(!var_2)));
    var var_4 = func_2(arg_0);
    return max(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0) & vec2<i32>(u_input.a, 30078i), ~vec2<i32>(u_input.a, var_0))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(41073i, var_0) << (_wgslsmith_add_u32(var_1.a, arg_0.a) % 32u), -u_input.a)) | u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x);
    var var_1 = _wgslsmith_clamp_i32(func_1(Struct_1(~u_input.b.x)) & ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(44367i, 2147483647i, 61409i, u_input.a))), func_1(func_2(func_2(func_2(Struct_1(1u))))), -2147483647i);
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-335f, 1136f), _wgslsmith_div_vec2_f32(vec2<f32>(1028f, -333f), vec2<f32>(1890f, -1859f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1933f, -998f), vec2<f32>(-986f, -1849f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, 2154f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1669f, -494f) - vec2<f32>(1000f, -809f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(135f, 909f) - vec2<f32>(-306f, -310f))))));
    let var_3 = _wgslsmith_div_f32(-201f, var_2.x);
    var_0 = func_2(func_2(Struct_1(~var_0.a)));
    let var_4 = Struct_1(~(~_wgslsmith_dot_vec3_u32(u_input.b.xyy, u_input.b.zzx)) ^ 0u);
    var var_5 = !any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -u_input.a, 32914i);
}

