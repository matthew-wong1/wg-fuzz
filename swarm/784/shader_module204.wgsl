struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(-max(u_input.b, -49153i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_0)) - arg_0) == arg_0;
    var var_2 = Struct_1(u_input.b);
    let var_3 = Struct_1(0i << (countOneBits(~(~u_input.a)) % 32u));
    return Struct_1(var_3.a);
}

fn func_3(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = abs(u_input.d.ywx) ^ firstTrailingBit(u_input.d.xzy);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-2147483647i), var_0.x), vec2<i32>(-4499i, u_input.d.x)));
    var_0 = ~((reverseBits(select(vec3<i32>(var_0.x, 2147483647i, var_1.a), vec3<i32>(u_input.d.x, var_1.a, 2444i), false)) ^ _wgslsmith_clamp_vec3_i32(~u_input.d.xzw, u_input.d.zzz, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, var_0.x, 0i), u_input.d.xzw))) | -vec3<i32>(_wgslsmith_mod_i32(u_input.b, 2147483647i), _wgslsmith_mod_i32(u_input.b, -21251i), ~2147483647i));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.d.wzw, vec3<i32>(var_1.a << (105921u % 32u), 1i, -u_input.d.x)) & vec3<i32>(_wgslsmith_sub_i32(var_1.a ^ var_0.x, ~var_1.a), -2310i, var_0.x));
    var_1 = Struct_1(-(~20582i));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<f32>(-393f, -1559f, -1993f, -963f);
    return func_2(var_0.x);
}

fn func_1() -> f32 {
    let var_0 = func_4(1u, Struct_1(-1i), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1573f)))), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), func_3(vec3<bool>(false, true, false)))));
    var var_1 = func_4(u_input.a, var_0, Struct_1(3449i), select(all(vec4<bool>(true, true, true, true)) && (1i < u_input.d.x), func_3(vec3<bool>(true, true, true)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-470f, 1266f)) - _wgslsmith_f_op_f32(step(249f, 1155f))) == _wgslsmith_f_op_f32(sign(-1292f))));
    var var_2 = var_0;
    var_1 = Struct_1(-14075i);
    var var_3 = vec4<bool>(true, true, true, !all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(898f, -710f) + _wgslsmith_f_op_f32(-497f + -183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-143f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1790f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1186f, 131f) - _wgslsmith_f_op_f32(min(-1165f, 775f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(step(802f, -751f))))))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1162f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1652f)))))));
    let var_1 = false;
    var_0 = 377f;
    var_0 = 630f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(u_input.c.x), ~firstTrailingBit(~u_input.c.x), u_input.a, u_input.a), vec2<u32>(~u_input.a, abs(_wgslsmith_add_u32(1u, u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-955f))) * -206f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1064f * 1109f), _wgslsmith_f_op_f32(f32(-1f) * -1055f))))), -1256f, abs(min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.a, u_input.c.x, u_input.a), vec4<u32>(u_input.a, 4294967295u, 23982u, u_input.a), true), ~vec4<u32>(23223u, 29204u, 2638u, 0u)), firstLeadingBit(vec4<u32>(u_input.a, 0u, 20360u, u_input.c.x)) ^ vec4<u32>(u_input.a, 1u, 2599u, u_input.a))));
}

