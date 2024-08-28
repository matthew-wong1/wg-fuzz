struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_1(u_input.b.x, 32906i, 803f);
    let var_1 = -(~firstTrailingBit(vec3<i32>(arg_0.x, -1i, 0i)));
    var var_2 = Struct_1(u_input.d.x >> (_wgslsmith_mod_u32(var_0.a, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) % 32u), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.c)), -1449f) - 666f));
    let var_3 = var_2.a;
    var var_4 = var_0;
    return var_0.a;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.c, arg_1.c, -2653f, -357f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c, -503f, 1529f, arg_1.c))))));
    var var_1 = arg_1.c;
    var_1 = var_0.x;
    let var_2 = vec4<bool>(!arg_0, arg_0, all(select(vec3<bool>(arg_0, !arg_0, select(arg_0, arg_0, false)), !select(vec3<bool>(false, false, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, arg_0)), all(!vec2<bool>(false, arg_0)))), true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1463f, -1358f, _wgslsmith_f_op_f32(arg_1.c - var_0.x), _wgslsmith_f_op_f32(-arg_1.c))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 418f)))), -1875f));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_1.c)) - arg_1.c) * arg_1.c)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_3(true, Struct_1(~_wgslsmith_sub_u32(func_2(vec2<i32>(arg_1, 2147483647i)), _wgslsmith_sub_u32(arg_0.a, 9462u)), -1i, arg_0.c), 0i));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2068f, 556f)), _wgslsmith_f_op_f32(step(arg_0.c, -1141f)))))) + _wgslsmith_f_op_f32(-arg_0.c));
    let var_1 = Struct_1(max(8723u, arg_0.a), arg_1 ^ -49558i, _wgslsmith_f_op_f32(abs(1f)));
    let var_2 = -abs(vec3<i32>(_wgslsmith_mod_i32(-32026i, -36994i), -15107i, 0i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 35375u, 0u), ~vec3<u32>(0u, 24821u, u_input.b.x)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * -753f);
    return ~vec4<i32>(var_1.b, ~(1i & arg_1), ~arg_0.b, ~max(arg_0.b, reverseBits(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.d.x, ~u_input.b.x >> (1u % 32u), u_input.d.x, 1u);
    var_0 = ~firstLeadingBit(u_input.d);
    var_0 = u_input.d;
    var var_1 = (~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-26505i, u_input.a, 25446i, u_input.a)), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, 1i)) ^ min(~vec4<i32>(-20152i, 15834i, u_input.c.x, -4694i), (vec4<i32>(-23646i, u_input.a, -50574i, 7680i) ^ vec4<i32>(23664i, 0i, u_input.c.x, u_input.a)) | func_1(Struct_1(var_0.x, -18346i, -712f), u_input.c.x))) << (firstTrailingBit(u_input.d) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(619f - -2812f), _wgslsmith_f_op_f32(-2532f + 1016f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(822f, 832f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1206f, 139f) * 181f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 562f, -1578f, 1019f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -174f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1418f) - var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2430f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x), -298f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.x + var_3.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)), -849f, var_3.x, var_3.x)));
}

