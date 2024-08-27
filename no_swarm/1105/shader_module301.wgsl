struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = true;
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1236f), -317f)))));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = vec3<bool>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, ~0u), u_input.a.x) <= abs(abs(u_input.a.x)), true, true);
    var var_1 = _wgslsmith_div_vec2_i32(abs(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i) * -vec2<i32>(1i, u_input.b))), ~_wgslsmith_add_vec2_i32(firstTrailingBit(select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(26667i, u_input.b), arg_1)), vec2<i32>(u_input.b | u_input.b, -19722i)));
    let var_2 = Struct_1(4294967295u ^ ~(~firstTrailingBit(u_input.c)));
    var var_3 = -27017i;
    var var_4 = vec4<f32>(435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1276f, _wgslsmith_f_op_f32(func_2(Struct_1(0u), u_input.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(480f + 158f)))), 3506f);
    return reverseBits(var_2.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f + 530f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1203f - 1102f) * -856f)))));
    var var_3 = ~vec4<u32>(~(~arg_3.a), ~17693u, 9992u, _wgslsmith_clamp_u32(~countOneBits(4294967295u), 14016u, ~arg_0.x));
    var_1 = arg_3;
    return abs(~(i32(-1i) * -44690i));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(func_2(Struct_1(reverseBits(var_1.a | _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), countOneBits(arg_1)));
    var var_3 = var_1;
    let var_4 = arg_0;
    return var_1.a & ~reverseBits(reverseBits(reverseBits(var_1.a)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = arg_0;
    let var_1 = true | (any(vec3<bool>(true, true, true)) | (_wgslsmith_f_op_f32(func_2(arg_0, 55364i)) == -1470f));
    var var_2 = _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, 4294967295u), ~arg_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(30446u, var_0.a, u_input.a.x), vec3<u32>(~firstTrailingBit(var_0.a), 80195u, u_input.c)));
    var_2 = ~(select(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(42513u, 3340u)), ~u_input.a), ~var_0.a, var_1) | ~8704u);
    var_2 = func_5(Struct_1(6771u), func_4(abs(vec2<u32>(arg_0.a, 4294967295u)) ^ _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(arg_1, arg_1)), Struct_1(func_3(var_1, false)), u_input.a, arg_0)) | 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(142f + -1522f))) + _wgslsmith_f_op_f32(-701f + _wgslsmith_f_op_f32(max(-429f, 552f)))) * _wgslsmith_f_op_f32(trunc(883f))) * _wgslsmith_f_op_f32(-173f * -1364f));
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = Struct_1(u_input.c);
    let var_1 = 1137f;
    let var_2 = var_0;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_add_u32(4294967295u, func_6(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c), u_input.a.x)), true, _wgslsmith_f_op_f32(-423f * 426f))), u_input.d);
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.a), min(u_input.a, vec2<u32>(u_input.c, 14981u))), vec2<u32>(var_0, 1u) << (abs(u_input.a) % vec2<u32>(32u))) & u_input.c);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_mod_u32(~(~_wgslsmith_clamp_u32(0u, var_1.a, var_1.a)), ~_wgslsmith_div_u32(~var_2.a, 38082u | var_1.a)));
    var_3 = var_1;
    let var_4 = _wgslsmith_div_u32(~(~_wgslsmith_add_u32(6625u, var_3.a)), var_3.a) & ~var_0;
    var_2 = Struct_1(_wgslsmith_add_u32(29076u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 936f), vec2<f32>(-337f, -1000f))))))), _wgslsmith_f_op_f32(func_1(Struct_1(25699u), var_1.a)), firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-858f + -122f))))), vec3<u32>(~1u, 34866u, ~reverseBits(var_2.a | u_input.d)));
}

