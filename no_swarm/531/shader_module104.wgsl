struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    let var_0 = any(!vec2<bool>(arg_1.a, false | arg_0.a));
    var var_1 = !(!all(vec2<bool>(true, !arg_1.a)));
    var var_2 = select(!vec4<bool>(select(arg_3 == 713f, arg_0.b > arg_0.b, false), any(select(vec3<bool>(var_0, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, var_0), false)), arg_1.a, arg_1.a), vec4<bool>(any(vec3<bool>(var_0, false, any(vec4<bool>(false, false, arg_0.a, true)))), true, true, arg_1.a || true), !(!(!all(vec2<bool>(arg_1.a, arg_1.a)))));
    var_2 = select(vec4<bool>(any(var_2.wyz), false || any(vec3<bool>(var_2.x, arg_0.a, true)), var_0, all(var_2.yy)), !vec4<bool>(any(!vec4<bool>(false, false, arg_0.a, false)), !arg_0.a, false, !(u_input.c > u_input.a.x)), !var_2.x);
    var var_3 = !vec4<bool>(!var_0, any(var_2.zy), true && var_0, true);
    return reverseBits(_wgslsmith_sub_vec4_u32(u_input.b, min(vec4<u32>(u_input.b.x, arg_0.b, arg_1.b, 1u), arg_2.a.c)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1000f));
    let var_1 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(4294967295u, abs(u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, 1u) << (firstTrailingBit(u_input.b.x) % 32u), u_input.b.x, u_input.b.x), 4294967295u, vec4<u32>(abs(u_input.b.x), 1802u, 105601u, 1u) & func_3(Struct_3(true, 0u, var_0.x), Struct_3(true, u_input.b.x, var_0.x), Struct_2(Struct_1(u_input.b, u_input.b.x, vec4<u32>(59296u, 4294967295u, 15156u, u_input.b.x))), _wgslsmith_f_op_f32(exp2(var_0.x)))));
    var var_2 = var_1;
    let var_3 = u_input.a.x;
    return Struct_3(false, var_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-240f)) - -1000f));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_2(countOneBits(countOneBits(~u_input.c)) > firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -7917i, 26116i), vec3<i32>(34644i, u_input.c, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1179f, 660f, var_0.c, var_0.c) - vec4<f32>(var_0.c, -251f, var_0.c, var_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -382f, var_0.c, var_0.c))) - vec4<f32>(_wgslsmith_f_op_f32(abs(2551f)), -517f, _wgslsmith_f_op_f32(f32(-1f) * -1449f), var_0.c))) - vec4<f32>(func_2(var_0.a).c, -129f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-801f, var_0.c))));
    var_0 = Struct_3(false, countOneBits(_wgslsmith_sub_u32(~func_2(var_0.a).b, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) - 1f));
    let var_2 = 6310u;
    let var_3 = Struct_2(Struct_1(vec4<u32>(1u, arg_0, ~var_2 ^ _wgslsmith_div_u32(u_input.b.x, u_input.b.x), 70581u), ~(~107244u), u_input.b >> (~u_input.b % vec4<u32>(32u))));
    return Struct_2(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstLeadingBit(vec4<u32>(max(abs(u_input.b.x), u_input.b.x), u_input.b.x << (~u_input.b.x % 32u), u_input.b.x << (1u % 32u), u_input.b.x)));
    var var_1 = 2147483647i > firstLeadingBit(u_input.c);
    var var_2 = func_1(u_input.b.x);
    var var_3 = func_1(_wgslsmith_dot_vec3_u32(abs(u_input.b.xzw), var_0.xyw));
    let var_4 = u_input.a.x;
    let var_5 = func_2(false).c;
    var var_6 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_f32(floor(-601f)) != var_5));
    let var_7 = true;
    var var_8 = vec4<i32>(~firstLeadingBit(u_input.c), countOneBits(firstTrailingBit(~21745i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_4, var_4, -2147483647i), vec3<i32>(var_4, u_input.c, u_input.c)))), reverseBits(29648i), -45754i << (_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_3.a.b, 87677u, 1u, u_input.b.x)), ~u_input.b << (~var_3.a.a % vec4<u32>(32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, u_input.b.x, 8306u, ~func_1(var_3.a.b).a.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, 405f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-201f)))))), ~1u, _wgslsmith_sub_i32(u_input.c, -(i32(-1i) * -1i)));
}

