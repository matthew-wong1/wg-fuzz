struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_mod_i32(u_input.d, ~_wgslsmith_add_i32(u_input.d, u_input.d | _wgslsmith_mod_i32(u_input.d, u_input.d)));
    let var_1 = ~(-1i);
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(!(u_input.a.x != 1u), true, !(u_input.a.x != u_input.c.x))), vec3<bool>(select(true, true, all(vec2<bool>(true, true))), false, true), true);
    let var_3 = -12372i;
    var var_4 = Struct_4(Struct_3(Struct_1(-1i), vec2<f32>(_wgslsmith_f_op_f32(-1083f - _wgslsmith_f_op_f32(abs(165f))), -297f), Struct_1(var_0), Struct_1(-select(77945i, var_1, true)), Struct_2(i32(-1i) * -67035i, Struct_1(var_0))), 4294967295u);
    return Struct_4(var_4.a, var_4.b | _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(var_4.b, u_input.b.x)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4) -> i32 {
    let var_0 = true;
    var var_1 = firstLeadingBit(-32299i);
    var_1 = -2147483647i;
    var var_2 = vec2<bool>(any(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, var_0), any(vec3<bool>(var_0, true, false)))), true);
    let var_3 = arg_2.a;
    return 2147483647i;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 849f) - vec2<f32>(-1751f, 1965f))))))));
    var var_1 = func_2();
    var var_2 = -_wgslsmith_sub_i32(func_3(var_1.a.d, Struct_5(min(vec2<u32>(var_1.b, 4294967295u), u_input.b.xz), ~u_input.c.x, func_2().a.e), func_2()), 2147483647i);
    var var_3 = vec4<bool>(false || any(vec4<bool>(all(vec4<bool>(arg_1.x, true, true, true)), select(arg_1.x, arg_1.x, arg_1.x), !arg_1.x, arg_1.x)), arg_1.x | ((all(vec2<bool>(arg_1.x, false)) || !arg_1.x) | arg_1.x), false, select(!arg_1.x, -_wgslsmith_mult_i32(u_input.d, -17605i) >= var_1.a.d.a, true));
    let var_4 = ~(select(max(u_input.b, ~u_input.a.wxz), vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 158u, u_input.b.x >> (var_1.b % 32u)), vec3<bool>(var_1.a.b.x <= -321f, arg_1.x, arg_1.x)) >> (_wgslsmith_clamp_vec3_u32(~(~u_input.b), ~vec3<u32>(var_1.b, u_input.b.x, u_input.a.x) << (_wgslsmith_sub_vec3_u32(u_input.b, u_input.c.xyw) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4345u, u_input.a.x, 396u), u_input.c.zwz))) % vec3<u32>(32u)));
    return firstTrailingBit(vec2<i32>(max(~min(var_1.a.d.a, -16862i), var_1.a.c.a), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1229f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(530f * -985f)))), _wgslsmith_f_op_f32(min(632f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-290f + -446f) * -562f)))));
    let var_1 = 0u;
    let var_2 = -1883f;
    var var_3 = func_1(_wgslsmith_f_op_f32(round(var_0.x)), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(3616i, 0i, 15641i), abs(vec3<i32>(49344i, 17937i, -15553i)) & vec3<i32>(60954i, var_3.x, u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)) | (-(~vec3<i32>(-2147483647i, var_3.x, 0i)) & ((vec3<i32>(-2147483647i, var_3.x, u_input.d) | vec3<i32>(42360i, var_3.x, var_3.x)) | -vec3<i32>(2147483647i, u_input.d, u_input.d))), reverseBits(vec4<i32>(u_input.d, -var_3.x, u_input.d, -var_3.x)) >> (vec4<u32>(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 57970u, 1u, 58274u), u_input.a & u_input.a), ~var_1, firstLeadingBit(firstLeadingBit(var_1))) % vec4<u32>(32u)), select(_wgslsmith_dot_vec3_u32((u_input.c.wzx >> (u_input.a.ywz % vec3<u32>(32u))) ^ u_input.a.wzy, vec3<u32>(47276u, max(var_1, 52735u), u_input.b.x)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1), u_input.c.xz)) | ~var_1, -1581f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-409f * -1447f)))));
}

