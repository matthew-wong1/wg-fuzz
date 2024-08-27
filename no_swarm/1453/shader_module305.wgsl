struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    var var_0 = 1f;
    var var_1 = 0u;
    let var_2 = true;
    let var_3 = Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a.x, -u_input.a.x, i32(-1i) * -273i), vec3<i32>(~arg_0, u_input.a.x, u_input.a.x)), 1000f, vec4<u32>(abs(reverseBits(u_input.d.x & u_input.c.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(7674u, u_input.b.x), ~56277u, 44554u), 1u | u_input.c.x, 1u));
    return max(vec3<i32>(~u_input.a.x, var_3.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_3.a.x, 0i), -56260i)), vec3<i32>(-(~_wgslsmith_mod_i32(u_input.a.x, var_3.a.x)), ~(var_3.a.x & arg_0) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, 0u, 18523u, var_3.c.x), var_3.c), u_input.b.x) % 32u), -46182i));
}

fn func_2() -> Struct_2 {
    var var_0 = select(1u, ~u_input.b.x, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1170f, -309f))));
    var_0 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, -1000f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, var_1))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, 1025f, _wgslsmith_f_op_f32(floor(-360f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1748f, var_1) + 420f))));
    return Struct_2(Struct_1(_wgslsmith_add_vec3_i32(u_input.a.zwx, vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_3.x), var_3.x)), vec4<u32>(firstTrailingBit(~1u), 26249u, u_input.b.x, ~(~u_input.b.x))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) * _wgslsmith_f_op_f32(-var_1))), Struct_1(func_3(u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), 564f)), select((vec4<u32>(u_input.d.x, u_input.b.x, u_input.c.x, 1u) | vec4<u32>(114332u, u_input.d.x, u_input.c.x, u_input.c.x)) >> ((vec4<u32>(32497u, u_input.c.x, 1u, u_input.b.x) ^ vec4<u32>(0u, u_input.c.x, 0u, u_input.d.x)) % vec4<u32>(32u)), abs(select(vec4<u32>(u_input.d.x, 77851u, u_input.c.x, 1u), vec4<u32>(1u, u_input.d.x, 4294967295u, 1u), true)), true)), _wgslsmith_f_op_f32(-180f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_2.x)), _wgslsmith_f_op_f32(929f - 2326f)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_2(Struct_1(abs(select(vec3<i32>(u_input.a.x, -38683i, -7035i), vec3<i32>(50435i, u_input.a.x, u_input.a.x), true) & (u_input.a.yyw << (vec3<u32>(var_0.c.c.x, u_input.b.x, var_0.a.c.x) % vec3<u32>(32u)))), -1014f, min(_wgslsmith_div_vec4_u32(var_0.a.c, vec4<u32>(u_input.b.x, u_input.b.x, 1996u, 67393u)), vec4<u32>(0u, u_input.d.x, u_input.b.x, 1u)) << ((vec4<u32>(u_input.c.x, 14202u, 24578u, 1u) >> (firstTrailingBit(vec4<u32>(0u, u_input.b.x, var_0.a.c.x, u_input.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2217f) - -946f), func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-692f)) + _wgslsmith_f_op_f32(-var_0.a.b)) * -615f)));
    var_0 = func_2();
    let var_1 = _wgslsmith_div_vec4_i32(max(u_input.a, -u_input.a) | _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.a.x, u_input.a.x, u_input.a.x, var_0.a.a.x), vec4<i32>(40769i, var_0.a.a.x, 6815i, -1i), vec4<i32>(-16384i, -7536i, var_0.c.a.x, 17464i))), (u_input.a & -abs(vec4<i32>(-15674i, u_input.a.x, u_input.a.x, u_input.a.x))) >> (var_0.c.c % vec4<u32>(32u)));
    var_0 = func_2();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1(_wgslsmith_f_op_f32(round(-489f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(571f, -812f)), func_2().a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(982f - -311f))))), Struct_2(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f * -1342f)), Struct_1(func_1(-168f).a, _wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(select(608f, 876f, false))), ~vec4<u32>(u_input.c.x, u_input.d.x, u_input.b.x, 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, u_input.c.x, 57415u, 2578u))), _wgslsmith_f_op_f32(f32(-1f) * -546f)), ~_wgslsmith_clamp_vec2_u32(abs(select(vec2<u32>(u_input.b.x, 29627u), u_input.b, vec2<bool>(true, false))), u_input.b, reverseBits(~vec2<u32>(1u, u_input.d.x))), vec2<bool>(true, true));
    let var_1 = var_0.d;
    var var_2 = Struct_2(func_1(var_0.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a.b), _wgslsmith_f_op_f32(min(var_0.a.c.b, -479f)), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666f - var_0.a.b) - var_0.a.a.b)), -323f), func_2().c, var_0.b.d);
    var var_3 = vec4<u32>(var_2.c.c.x, _wgslsmith_sub_u32(var_2.c.c.x, var_2.c.c.x), _wgslsmith_add_u32(select(u_input.c.x, 1u, true | (var_0.b.c.b > 1370f)), var_2.c.c.x), max(u_input.d.x ^ max(30518u, 16020u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(61068u, var_2.c.c.x) << (vec2<u32>(var_2.a.c.x, var_0.b.a.c.x) % vec2<u32>(32u))), select(vec2<u32>(4294967295u, 4294967295u), ~u_input.b, u_input.a.x <= -2147483647i))));
    let var_4 = Struct_2(func_1(832f), _wgslsmith_f_op_f32(-var_0.b.b), var_0.a.c, func_2().d);
    let var_5 = _wgslsmith_f_op_f32(-var_4.c.b);
    let var_6 = func_2();
    var var_7 = Struct_3(Struct_2(var_6.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_6.b + _wgslsmith_f_op_f32(var_0.a.b - var_4.d)))), var_6.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.b, var_5) * _wgslsmith_f_op_f32(sign(-493f))))), var_0.b, firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(var_4.c.c.wz, _wgslsmith_clamp_vec2_u32(var_6.a.c.wx, var_3.zw, vec2<u32>(65326u, 0u))))), var_0.d);
    var_2 = Struct_2(Struct_1(u_input.a.wxy, 249f, vec4<u32>(var_0.b.c.c.x, ~_wgslsmith_mod_u32(47629u, 1u), select(_wgslsmith_mult_u32(var_6.a.c.x, 0u), var_6.a.c.x, true), ~(var_0.c.x ^ var_4.a.c.x))), 892f, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.c.b * _wgslsmith_f_op_f32(-var_6.d)), 787f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1569f), _wgslsmith_div_f32(-849f, -800f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_2.b)), _wgslsmith_f_op_f32(-1362f * 1593f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~var_3.x, firstLeadingBit(45249u), ~firstLeadingBit(var_0.c.x), ~(~var_4.a.c.x)));
}

