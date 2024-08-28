struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(167f * _wgslsmith_f_op_f32(floor(589f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)))), _wgslsmith_f_op_f32(sign(-252f)));
    return _wgslsmith_f_op_f32(883f - var_0);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x) << (u_input.d.x % 32u), _wgslsmith_mult_u32(~1u, u_input.d.x), 26062u), u_input.d.ywz));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(580f, arg_0.x, arg_0.x, -1246f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, -598f, arg_0.x, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(995f)), _wgslsmith_f_op_f32(arg_0.x - -1107f), _wgslsmith_f_op_f32(floor(arg_0.x)), -358f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-473f - arg_0.x) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(_wgslsmith_f_op_f32(837f * arg_0.x), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(2245f))))));
    let var_2 = Struct_1(vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(4294967295u, u_input.d.x), firstLeadingBit(49084u)));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2887f * arg_0.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1189f * -503f), var_1.x) + -1067f), arg_0.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * _wgslsmith_f_op_f32(f32(-1f) * -676f)))));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(945f)), _wgslsmith_div_f32(-499f, -590f)), _wgslsmith_f_op_f32(max(-614f, -1571f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-460f)), 247f)), 1510f));
    var_0 = Struct_1(~arg_2.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-853f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-985f)) - _wgslsmith_f_op_f32(max(645f, -605f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1099f, -631f)) - _wgslsmith_f_op_f32(func_3()))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(190f, -1278f, 1000f), vec3<f32>(518f, 578f, -706f))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-135f)), -657f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-162f)))), _wgslsmith_f_op_f32(step(779f, -829f)))));
    var_0 = arg_2;
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, 27399u, ~119028u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), var_0.a | vec3<u32>(0u, arg_2.a.x, 4294967295u))), var_0.a));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = ~(~_wgslsmith_mod_vec3_u32(func_2(vec3<f32>(-2669f, -204f, 442f)).a, arg_0.a));
    var var_1 = 100f;
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1745f, 302f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(127f, _wgslsmith_f_op_f32(abs(-687f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-883f)) * -306f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1308f, -924f, -331f, -1227f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1208f, 1407f, -1077f, 1658f)))));
    var_2 = Struct_1(~abs(~vec3<u32>(var_0.x, 18614u, u_input.b.x)));
    return firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.b.x, 11546u), arg_2.a.xy), vec2<u32>(arg_2.a.x, 0u) << (arg_0.a.xz % vec2<u32>(32u))), vec2<u32>(arg_1.a.x, ~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(11211u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.a), _wgslsmith_sub_vec2_u32(func_4(func_1(28162i, 27284i, Struct_1(vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), u_input.e), func_1(u_input.c.x, u_input.e.x, Struct_1(u_input.d.yzw), u_input.e), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), reverseBits(u_input.c.yz)), vec2<u32>(u_input.a.x, countOneBits(u_input.b.x)))), u_input.b.x);
    let var_1 = firstTrailingBit(reverseBits(~35643u));
    var var_2 = u_input.d.xyw;
    var_2 = reverseBits(u_input.d.zxw);
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~var_0.x)) | ~var_3.x, _wgslsmith_div_vec3_u32(~max(vec3<u32>(41873u, var_3.x, 43020u), ~var_3.xxx), vec3<u32>(~abs(13002u), var_3.x, ~_wgslsmith_mod_u32(98974u, 29535u))), vec4<u32>(0u, var_0.x, ~(firstLeadingBit(var_0.x) & 1u), max(4294967295u, _wgslsmith_add_u32(var_2.x, var_3.x)) << (~(9175u << (var_0.x % 32u)) % 32u)), var_0.xy);
}

