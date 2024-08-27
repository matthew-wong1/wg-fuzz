struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 4294967295u), vec4<u32>(u_input.d, 9269u, u_input.d, 0u))), abs(vec4<u32>(u_input.d, ~29122u, ~17643u, min(u_input.d, u_input.d)))));
    var_0 = Struct_1(var_0.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 206f, arg_3) + vec3<f32>(arg_3, arg_2.x, 783f)))))), ~var_0.a.yyz, _wgslsmith_f_op_f32(1000f * -595f));
    var var_2 = Struct_1(vec4<u32>(reverseBits(~var_0.a.x), ~(~(var_1.b.x >> (5096u % 32u))), _wgslsmith_dot_vec2_u32(var_1.b.zx, _wgslsmith_add_vec2_u32(var_0.a.ww, var_1.b.xy)) & _wgslsmith_sub_u32(12667u, 58795u & var_1.b.x), firstTrailingBit(var_1.b.x)));
    var var_3 = var_1;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), 1661f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 - -1488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2284f * _wgslsmith_f_op_f32(abs(-1128f))), _wgslsmith_f_op_f32(f32(-1f) * -453f)), _wgslsmith_f_op_f32(-247f + 1000f)));
    let var_1 = u_input.d;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(777f, arg_1, vec3<f32>(2309f, -747f, -806f), var_0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-883f, -715f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.x, false, vec3<f32>(var_0.x, 1555f, var_0.x), 2457f)) + vec2<f32>(-755f, var_0.x)))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1397f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -522f), var_0.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(349f)), var_0.x))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), 1000f)), ~arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = var_1 >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.d, _wgslsmith_mod_u32(34269u, var_2.b.x), ~1u), var_2.b) % 32u);
    return ~(~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, var_2.b.x, var_1, 4294967295u)), vec4<u32>(1u, ~u_input.d, u_input.d, 22379u >> (1u % 32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = ~abs(_wgslsmith_clamp_i32(u_input.e.x, 1i >> (arg_3.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, 14865i, arg_0.x), vec4<i32>(arg_0.x, 12324i, -1i, arg_0.x)))) <= (u_input.a << (0u % 32u));
    var var_1 = arg_1;
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(-45485i, u_input.c.x, arg_0.x);
    var var_3 = arg_1;
    let var_4 = -2147483647i;
    return !vec4<bool>(true, true, true, var_4 <= 0i);
}

fn func_1() -> f32 {
    var var_0 = vec2<u32>(0u, ~u_input.d);
    let var_1 = func_4(~(-abs(vec3<i32>(-22175i, u_input.e.x, 2147483647i)) & vec3<i32>(1i, _wgslsmith_div_i32(u_input.b, u_input.b), ~u_input.b)), Struct_1(func_2(vec3<u32>(u_input.d, u_input.d, 37333u) >> (vec3<u32>(33421u, 9228u, 4294967295u) % vec3<u32>(32u)), true) & vec4<u32>(34568u ^ var_0.x, u_input.d, var_0.x, ~4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1846f))), -1177f))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 642f, 156f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, -485f, -704f)))))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, u_input.d, var_0.x), vec3<u32>(58835u, var_0.x, var_0.x) >> (vec3<u32>(1u, 97377u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1009f * 863f) - -1111f))));
    var var_2 = Struct_1(firstTrailingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 3768u, 4294967295u), vec3<u32>(27957u, 0u, u_input.d)), ~var_0.x & _wgslsmith_sub_u32(7732u, var_0.x), var_0.x, 16645u)));
    var_0 = var_2.a.yw;
    let var_3 = Struct_2(vec3<f32>(-1626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - -1111f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-301f, 2405f))))), _wgslsmith_mod_vec3_u32((~vec3<u32>(4294967295u, var_2.a.x, u_input.d) | ~var_2.a.zwx) ^ vec3<u32>(1u, 1u, 1u), vec3<u32>(49075u, ~(~var_2.a.x), _wgslsmith_sub_u32(_wgslsmith_sub_u32(30418u, var_0.x), func_2(vec3<u32>(15339u, u_input.d, u_input.d), true).x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_f32(283f, 907f), all(var_1.www), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1879f, 292f, -1157f)), 391f)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) + _wgslsmith_f_op_f32(f32(-1f) * -688f))))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2035f, -274f, true)) + _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1911f - _wgslsmith_f_op_f32(-669f - -2323f)) + _wgslsmith_f_op_f32(645f - -283f))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 57609u, 0u), func_2(vec3<u32>(u_input.d, 4294967295u, u_input.d), true).xyz), u_input.d), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(47299u, 107863u, u_input.d, 19853u), vec4<u32>(u_input.d, 2508u, 0u, u_input.d)), vec4<u32>(u_input.d, 0u, 47374u, 63742u) ^ vec4<u32>(13470u, 82381u, u_input.d, 5938u))), _wgslsmith_div_u32(u_input.d, ~(~u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1f * -284f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2414f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1028f, -156f))))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(5466u), ~15669u, var_0.b.x, ~var_0.b.x), abs(vec4<u32>(u_input.d, var_0.b.x, u_input.d, u_input.d) >> (vec4<u32>(u_input.d, 6750u, 0u, 70526u) % vec4<u32>(32u)))) << (_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 0u, 0u, 47837u), vec4<u32>(var_0.b.x, 9153u, 4294967295u, 0u)), var_0.a.x == -789f), ~select(vec4<u32>(3707u, var_0.b.x, 0u, u_input.d), vec4<u32>(u_input.d, u_input.d, var_0.b.x, 7803u), false)) % vec4<u32>(32u)));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.c, false, var_0.a, var_0.c)).x)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(824f, _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -500f))), ~abs(~abs(var_1.a.wyz)), _wgslsmith_f_op_f32(-var_0.a.x));
    var_1 = Struct_1(reverseBits(var_1.a));
    var var_3 = 891f;
    let var_4 = var_1.a.xx;
    var_3 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3(-343f, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a) * _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_2.a.x, var_0.a.x, 964f)))), -1641f)).x, var_0.a.xx);
}

