struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    var var_0 = ~vec3<i32>(reverseBits(~(-1i)), max(u_input.b.x, ~5485i), 1i);
    var var_1 = firstTrailingBit(-min((vec3<i32>(var_0.x, u_input.d.x, u_input.b.x) & u_input.d) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, var_0.x, -2147483647i), u_input.d), reverseBits(_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 37831i, u_input.d.x)))));
    var_0 = vec3<i32>(countOneBits(firstLeadingBit(min(min(u_input.b.x, u_input.b.x), var_1.x ^ u_input.d.x))), 1i, _wgslsmith_div_i32(var_1.x << (77646u % 32u), _wgslsmith_add_i32(-var_1.x, var_1.x)));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(46717u >> (0u % 32u)), firstTrailingBit(arg_1), firstTrailingBit(~u_input.a), _wgslsmith_mult_u32(min(~29027u, 0u), 0u)), ~reverseBits(firstLeadingBit(abs(vec4<u32>(62864u, u_input.a, 0u, arg_1)))));
    var var_3 = countOneBits(max(u_input.b.x, i32(-1i) * -37127i) | 1i) << (_wgslsmith_clamp_u32(u_input.c, 0u, ~u_input.c) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f * _wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(abs(379f))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    let var_0 = 2104f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(207f)), var_0);
    let var_2 = arg_0.c.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2077f, var_0), var_2))) - _wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false, false), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f))), true)));
    let var_4 = Struct_5(~vec4<u32>(1u, u_input.a, u_input.a << (firstTrailingBit(u_input.c) % 32u), arg_0.b ^ _wgslsmith_mod_u32(arg_0.b, arg_0.b)), u_input.a, Struct_1(_wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return select(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_1.x, -50002i), -(~(~u_input.b))), arg_1.x, all(!vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(false, true, true, true)))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = select(60886u, 1u, all(vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, true)), false, all(vec2<bool>(false, true))))) | u_input.c;
    var var_1 = Struct_4(vec4<bool>(func_2(Struct_5(vec4<u32>(30979u, 4294967295u, u_input.a, u_input.a), 4294967295u, Struct_1(368f)), reverseBits(vec2<i32>(18110i, u_input.b.x))) <= -u_input.d.x, select(u_input.b.x != _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -1819i), !all(vec2<bool>(true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), select(select(false, true, false) | true, all(vec3<bool>(true, true, true)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, -2236f, -299f, arg_0), vec4<f32>(607f, 828f, arg_0, arg_0)))))))));
    var_1 = Struct_4(var_1.a);
    var var_3 = Struct_5(vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c), min(_wgslsmith_div_u32(u_input.a, min(countOneBits(u_input.c), u_input.a)), u_input.c), Struct_1(var_2.x));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1017f + -1000f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.c.a - var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -958f) * var_3.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(178f)), _wgslsmith_f_op_f32(f32(-1f) * -986f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1305f, _wgslsmith_div_f32(-1202f, 963f), true)) * _wgslsmith_f_op_f32(f32(-1f) * -971f)), _wgslsmith_f_op_f32(abs(-1993f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-102f)) * _wgslsmith_f_op_f32(-1070f * 581f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_5(vec4<u32>(1u, 1u, 1u, 1u) & firstLeadingBit((vec4<u32>(3168u, 53037u, 32729u, u_input.c) >> (vec4<u32>(u_input.a, u_input.a, u_input.c, 0u) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(0u, u_input.c, 0u, u_input.c))), ~reverseBits(firstLeadingBit(~u_input.a)), Struct_1(-384f));
    var var_2 = var_1.c;
    var var_3 = u_input.d.x;
    var_2 = var_1.c;
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.c.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(floor(-606f)), var_1.c.a), var_1.a.x << (~(~var_1.b) % 32u), -1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, var_1.c.a, var_1.c.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-223f, -1582f, var_0.x), vec3<f32>(-1237f, -1324f, var_0.x), false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1504f, var_1.c.a, var_2.a) + vec3<f32>(var_1.c.a, -1590f, var_2.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_2.a, 518f) - vec3<f32>(var_1.c.a, -493f, var_1.c.a)))), vec3<f32>(_wgslsmith_f_op_f32(118f * 1429f), _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(278f - -444f)), _wgslsmith_f_op_f32(-1000f * var_1.c.a)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))))));
}

