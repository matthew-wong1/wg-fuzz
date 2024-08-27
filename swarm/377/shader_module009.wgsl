struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: u32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.a, arg_0.c.x)), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, false)))), -1000f))), ~(_wgslsmith_mult_vec3_u32(reverseBits(var_0.wzz), vec3<u32>(var_0.x, u_input.a.x, var_0.x)) & var_0.zwz), !(!arg_1) && (_wgslsmith_f_op_f32(min(-629f, 1f)) < arg_0.a));
    let var_2 = var_1;
    var var_3 = var_2;
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -223f);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(275f * _wgslsmith_f_op_f32(f32(-1f) * -592f))) + _wgslsmith_f_op_f32(f32(-1f) * -331f)));
    var_0 = 353f;
    var var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1115f * 1293f) - _wgslsmith_f_op_f32(func_3(Struct_2(678f, -5304i, vec4<f32>(-1153f, -1000f, -171f, 287f)), true))) + -1513f)));
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~94681u | ~u_input.a.x, firstTrailingBit(~34842u)), var_1.xyx), var_1.x, ~(u_input.a.x & firstLeadingBit(firstTrailingBit(u_input.a.x))), 50752u);
    return reverseBits(-select(-_wgslsmith_add_i32(-574i, 28763i), -_wgslsmith_sub_i32(0i, 0i), false));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = ~_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(38929i, -2264i, 1i, -8513i), vec4<i32>(arg_2.b, arg_3.b, arg_0, 0i)), arg_2.b));
    let var_1 = func_2() & abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, firstLeadingBit(2147483647i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(25492i, var_0.x), vec2<i32>(var_0.x, var_0.x), vec2<i32>(arg_0, 0i))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(898f * -1094f));
    var_2 = _wgslsmith_add_u32(min(51592u, 57570u), 0u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(1274f - 739f)) + 530f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(752f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-458f, 1i, arg_3.c), true)) * _wgslsmith_f_op_f32(abs(1028f)))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(func_2() << (~0u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1921f * arg_0.a)), arg_0, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_mod_i32(arg_0.b, -2147483647i), _wgslsmith_f_op_vec4_f32(sign(arg_0.c))))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(614f))))), vec3<u32>(~u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 98387u), u_input.a) % 32u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~firstTrailingBit(4294967295u)), arg_1));
    var var_1 = vec3<u32>(4294967295u, 4294967295u, u_input.a.x);
    let var_2 = arg_0;
    let var_3 = Struct_1(805f, select(var_0.b, var_0.b, false), var_0.c & all(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(var_0.c, arg_1, var_0.c, var_0.c))));
    var var_4 = Struct_2(-610f, 84419i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-979f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -950f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-883f, var_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1116f)))), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(arg_0.a * -928f)), func_5(var_0.a, var_0).a));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -413f), -70332i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, -1242f, 1330f, 386f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(529f, 356f, -377f, 1029f), vec4<f32>(-322f, 401f, -695f, 2053f), false))))), any(vec2<bool>(true, false)));
    var var_1 = 30630u;
    let var_2 = 26030i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(-994f)), u_input.a.yzx, _wgslsmith_dot_vec3_u32(u_input.a.wyz, ~u_input.a.xyw) < ~(u_input.a.x << (u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(reverseBits(var_3.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.wxz - var_0.c.zyz) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, var_3.a))) + vec3<f32>(var_3.a, var_3.a, var_3.a)), 440f, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_3.b.x, u_input.a.x, var_3.b.x, var_3.b.x)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(1715u, 0u, var_3.b.x, 1u))) ^ u_input.a.x);
}

