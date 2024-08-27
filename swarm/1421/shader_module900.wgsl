struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = Struct_2(~(~vec3<i32>(abs(global0.a.x), -arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, -630f, global0.b.x, global0.b.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.e, arg_0.e, global0.b.x, 119f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.b * global0.b)))))));
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~(~vec2<u32>(1u, arg_0.d))), abs(vec2<u32>(arg_0.d, min(0u, arg_0.d)))), select(firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.d), vec2<u32>(35623u, arg_0.d))), _wgslsmith_mult_vec2_u32(vec2<u32>(70928u, firstLeadingBit(arg_0.d)), ~(~vec2<u32>(0u, arg_0.d))), !(!vec2<bool>(var_0, false))));
    var_1 = ~(firstTrailingBit(arg_0.d) | ~arg_0.d);
    let var_2 = select(vec4<bool>(select(any(vec4<bool>(arg_0.c, false, false, var_0)), !var_0, arg_0.c) && any(select(vec2<bool>(true, var_0), vec2<bool>(var_0, arg_0.c), false)), arg_0.d >= 4294967295u, !all(vec3<bool>(true, false, var_0)) | var_0, !any(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(true, false, true, false), vec4<bool>(arg_0.c, var_0, arg_0.c, arg_0.c)))), select(select(vec4<bool>(false, var_0, !arg_0.c, !arg_0.c), vec4<bool>(any(vec3<bool>(true, false, var_0)), any(vec2<bool>(arg_0.c, var_0)), select(var_0, var_0, arg_0.c), arg_0.d < arg_0.d), all(!vec4<bool>(arg_0.c, var_0, true, arg_0.c))), select(select(select(vec4<bool>(false, true, arg_0.c, false), vec4<bool>(false, true, arg_0.c, arg_0.c), true), vec4<bool>(var_0, var_0, arg_0.c, true), var_0 & var_0), !(!vec4<bool>(var_0, arg_0.c, true, false)), ~arg_0.d == 67849u), any(!vec4<bool>(arg_0.c, arg_0.c, false, var_0))), all(select(!select(vec4<bool>(true, arg_0.c, arg_0.c, true), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, false, var_0, true)), vec4<bool>(!arg_0.c, select(true, var_0, var_0), 0u < arg_0.d, arg_0.c), true)));
    return ~abs((vec2<u32>(arg_0.d, arg_0.d) ^ vec2<u32>(1u, arg_0.d)) ^ ~vec2<u32>(arg_0.d, 5062u)) | (vec2<u32>(~arg_0.d, select(arg_0.d, _wgslsmith_sub_u32(arg_0.d, arg_0.d), true)) | vec2<u32>(1u, 2526u));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(abs(u_input.a), global0.a.x, true, max(~(~(~1u)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 8827u, 1u, 4294967295u), vec4<u32>(55271u, 13882u, 4294967295u, 15358u), vec4<bool>(true, true, false, true)), ~vec4<u32>(4294967295u, 20749u, 35556u, 63158u))), _wgslsmith_f_op_f32(ceil(-362f)));
    let var_1 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(func_3(Struct_1(u_input.a, 15762i, var_0.c, 0u, var_0.e)), max(min(vec2<u32>(var_0.d, 1u), vec2<u32>(var_0.d, 12421u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.d, 0u), vec2<u32>(1u, 1u))))), _wgslsmith_mult_u32(var_0.d, abs(~var_0.d)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(countOneBits(vec3<u32>(var_0.d, 81996u, var_0.d)), max(vec3<u32>(var_0.d, var_0.d, 4294967295u), vec3<u32>(1u, 31696u, var_0.d))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, 4294967295u, 1u), vec3<u32>(4294967295u, 10048u, 4294967295u))), ~firstLeadingBit(var_0.d)), 0u);
    var var_2 = var_0.d;
    let var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(func_3(Struct_1(var_0.a, 0i, false, var_0.d, 1955f)).x, _wgslsmith_mod_u32(var_1.x, 4294967295u), _wgslsmith_mod_u32(4294967295u, var_0.d) | _wgslsmith_clamp_u32(84846u, 4294967295u, var_0.d), ~41122u), var_1), firstTrailingBit(var_1));
    var var_4 = u_input.a;
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(0i, countOneBits(19527i)), countOneBits(abs(var_0.b)), global0.a.x), global0.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    global0 = func_2();
    global0 = func_2();
    return Struct_2(u_input.a.wxw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.b.x, global0.b.x, arg_1.b.x, global0.b.x)), true))) - global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_div_vec3_f32(global0.b.zzx, vec3<f32>(_wgslsmith_f_op_f32(floor(-409f)), global0.b.x, global0.b.x)), Struct_2(countOneBits(abs(u_input.a.yzy)) & _wgslsmith_mod_vec3_i32(u_input.a.zxx, min(vec3<i32>(global0.a.x, -1i, global0.a.x), global0.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.b)))), global0.a);
    var var_0 = !vec2<bool>(false, _wgslsmith_f_op_f32(exp2(global0.b.x)) <= -1203f);
    let x = u_input.a;
    s_output = StorageBuffer(-(~global0.a.x), 0i, (vec2<u32>(~1u, func_3(Struct_1(vec4<i32>(global0.a.x, u_input.a.x, 2147483647i, -1i), 47192i, var_0.x, 34043u, global0.b.x)).x) << (select(firstTrailingBit(vec2<u32>(45924u, 1u)), vec2<u32>(108000u, 17096u), select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.x)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_clamp_u32(1u, firstTrailingBit(9334u), ~0u), 1u) % vec2<u32>(32u)), global0.b);
}

