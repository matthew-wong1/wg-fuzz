struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(global0.x - -1000f)) >= 376f, true, any(vec4<bool>(-1252f != global0.x, true, false, u_input.a.x <= u_input.a.x)), true), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(max(~(-select(u_input.a.yx, u_input.a.xw, false)), select(u_input.a.xw, vec2<i32>(countOneBits(29890i), 2147483647i), var_0.zz)), false, all(select(vec3<bool>(104f < global0.x, true, true), select(vec3<bool>(true, true, var_0.x), !vec3<bool>(var_0.x, false, true), true), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, false)))));
    let var_2 = ~max(2147483647i, u_input.a.x);
    let var_3 = var_1;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 397f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, global0.x, 446f) - vec3<f32>(global0.x, global0.x, 1000f)))))) - vec3<f32>(global0.x, global0.x, global0.x));
    return ~firstLeadingBit(_wgslsmith_div_i32(0i, -var_1.a.x));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), (-5310i & u_input.a.x) | 1i), ~_wgslsmith_mult_i32(u_input.a.x, countOneBits(arg_0.a.x))), true == arg_0.b, true);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(926f))), 584f)))), 1407f, -528f);
    var var_2 = -1000f;
    let var_3 = max(0i, ~(func_3() & _wgslsmith_add_i32(2147483647i, var_1.a.x)) | 1i);
    return !vec3<bool>(!var_0.c, select(_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(round(1212f)), var_1.b, true), false);
}

fn func_1() -> bool {
    let var_0 = 1u;
    let var_1 = !vec4<bool>(true && !select(true, true, true), !all(vec2<bool>(false, true)) && !all(vec3<bool>(false, true, false)), true, all(select(func_2(Struct_1(u_input.a.xz, true, false)), vec3<bool>(true, true, false), vec3<bool>(false, false, false))));
    var var_2 = ~vec3<u32>(var_0, var_0, var_0) | vec3<u32>(~(~max(var_0, var_0)), ~_wgslsmith_mult_u32(firstTrailingBit(var_0), _wgslsmith_sub_u32(9890u, 1u)), ~1u & var_0);
    global0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(global0.x - -2002f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 286f, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, global0.x, global0.x)), var_1.x | false))))))));
    var_2 = ~_wgslsmith_clamp_vec3_u32(~(~(vec3<u32>(0u, var_0, 0u) << (vec3<u32>(var_0, 1u, 6747u) % vec3<u32>(32u)))), ~vec3<u32>(min(51211u, var_0), var_2.x, var_0), ((vec3<u32>(var_0, 0u, var_2.x) ^ vec3<u32>(17893u, var_0, var_2.x)) ^ vec3<u32>(28097u, 0u, 1418u)) | vec3<u32>(~4294967295u, 0u, 22264u));
    return all(!select(vec2<bool>(false, var_1.x), select(vec2<bool>(true, true), func_2(Struct_1(u_input.a.wx, var_1.x, false)).zx, vec2<bool>(false, var_1.x)), all(var_1)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = countOneBits(vec2<u32>(1u, 1u));
    global0 = vec3<f32>(-432f, 364f, global0.x);
    let var_1 = vec3<bool>(!(!all(select(vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(false, true, arg_2, arg_2)))), true, 59492u >= ~(~abs(var_0.x)));
    var var_2 = countOneBits(_wgslsmith_sub_u32(0u, 0u) | (~var_0.x << (17880u % 32u)));
    var var_3 = vec4<bool>(arg_0 <= -3293i, true, _wgslsmith_mult_i32(arg_0, _wgslsmith_mult_i32(~arg_0, -6131i)) <= _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, arg_0) ^ u_input.a.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-42670i, u_input.a.x, arg_0, arg_0), vec4<i32>(-2147483647i, -9426i, arg_0, u_input.a.x)), -8053i)), all(func_2(Struct_1(vec2<i32>(u_input.a.x, -1i), true, !var_1.x))));
    return Struct_1(u_input.a.zz, false, all(!select(!vec2<bool>(var_1.x, false), !vec2<bool>(var_1.x, arg_2), !arg_2)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(-(i32(-1i) * -u_input.a.x), 36494i) & arg_0.a.x;
    global0 = vec3<f32>(_wgslsmith_div_f32(1159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), -2257f, true)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - -398f))))), _wgslsmith_f_op_f32(-global0.x), 440f);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -331f, global0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(select(-705f, -1000f, arg_0.b)), 304f)))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-879f)))))));
    var var_1 = -((_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, u_input.a.x, arg_0.a.x), reverseBits(u_input.a.wyz)) & ~vec3<i32>(0i, arg_0.a.x, 0i)) | countOneBits(min(vec3<i32>(16645i, 2200i, 52291i), -u_input.a.xyy)));
    let var_2 = -1i;
    return Struct_1(var_1.xz, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.zx, ~u_input.a.x < select(u_input.a.x, -select(u_input.a.x, 23693i, false), false), !(!all(vec2<bool>(true, true))));
    var var_1 = ~(~4294967295u);
    var var_2 = func_5(func_4(-2147483647i, _wgslsmith_f_op_f32(1247f + -1168f), func_1()), !func_2(func_4(abs(var_0.a.x), _wgslsmith_f_op_f32(min(-490f, 1070f)), all(vec4<bool>(var_0.b, true, var_0.b, true)))).xz, ~countOneBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(-497f * -703f)), vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6723u, 4294967295u), vec3<u32>(15208u, 11299u, 0u)), 38383u, var_2.c), abs(_wgslsmith_mult_u32(5544u, 1u)), ~0u, 1u) | countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), ~u_input.a.x, 4294967295u);
}

