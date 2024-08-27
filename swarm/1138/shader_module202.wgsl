struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(~abs(1u), u_input.a.x), _wgslsmith_div_u32(13416u, 54140u), u_input.c.x, ~(~_wgslsmith_mult_u32(4294967295u, u_input.a.x))), u_input.b.x);
    var var_1 = ~abs(var_0.a.wwy);
    let var_2 = Struct_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f + _wgslsmith_f_op_f32(2265f - -618f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2027f) + 1013f))), all(vec4<bool>(true, true, true, true)))), 0i);
    var_1 = (_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, var_1.x, var_0.a.x), vec3<u32>(32280u, 24691u, u_input.c.x))), ~var_0.a.xww) << (_wgslsmith_div_vec3_u32(~(u_input.c.wzz >> (var_0.a.zwx % vec3<u32>(32u))), ~vec3<u32>(28232u, 48864u, 4294967295u)) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_u32(~(~u_input.a) & vec3<u32>(4294967295u >> (var_0.a.x % 32u), var_0.a.x << (var_0.a.x % 32u), _wgslsmith_mod_u32(4294967295u, 4740u)), var_0.a.wzy);
    var var_3 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, var_0.a.x, 1u, var_0.a.x), firstTrailingBit(var_0.a)) | vec4<u32>(reverseBits(4294967295u) ^ _wgslsmith_add_u32(var_1.x, 21075u), 0u, ~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, var_0.a.x, var_1.x, var_0.a.x)), 1u)), var_2.c);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1129f, _wgslsmith_f_op_f32(abs(-1803f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(exp2(var_2.b))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1497f))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(func_3(u_input.b.x)), all(arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.x)))) >= -652f, true, !arg_1.x, true);
    var_0 = !(!vec4<bool>(select(var_0.x, var_0.x, true), false, arg_1.x, var_0.x));
    var var_1 = Struct_1(max(u_input.c, u_input.c), u_input.b.x);
    var_0 = vec4<bool>(false, !select(true, -3216i >= ~var_1.b, false), any(!vec4<bool>(false, var_0.x | true, true, true)), true);
    var_1 = Struct_1(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(47482u, 40115u, ~u_input.a.x >> (~var_1.a.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(132563u, 0u), u_input.c.xx), _wgslsmith_clamp_u32(1u, arg_3, var_1.a.x), var_1.a.x))), -_wgslsmith_sub_i32(_wgslsmith_add_i32(abs(u_input.b.x), 0i), 1i));
    return firstTrailingBit(countOneBits(-_wgslsmith_mod_i32(0i, u_input.b.x) << (abs(34933u) % 32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1217f, -2042f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-547f + 1038f), _wgslsmith_f_op_f32(abs(446f)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 221f), 1000f))))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -300f), -458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1103f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1292f - 691f)))))));
    let var_1 = vec3<bool>(true, func_2(~u_input.a, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), 1f, 1f), abs(countOneBits(u_input.a.x))) <= u_input.b.x, all(select(vec3<bool>(true, true, u_input.b.x != 41768i), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))));
    var_0 = -998f;
    let var_2 = var_1.x;
    return Struct_2(true, _wgslsmith_f_op_f32(func_3(func_2(~u_input.a, select(var_1, var_1, vec3<bool>(true, true, true)), vec3<f32>(-957f, -361f, _wgslsmith_div_f32(1000f, 400f)), _wgslsmith_mult_u32(u_input.c.x, 1u)))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    var var_1 = func_1();
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(312f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(var_1.b))), -((_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(-34656i, u_input.b.x)) << ((u_input.c.x ^ u_input.c.x) % 32u)) & var_0));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32((u_input.c << (vec4<u32>(30029u, u_input.a.x, 68194u, 19996u) % vec4<u32>(32u))) ^ select(vec4<u32>(0u, 0u, 52027u, 1u), u_input.c, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), select(~vec4<u32>(13088u, u_input.c.x, 1u, 28005u), u_input.c, all(vec4<bool>(true, var_1.a, var_1.a, var_1.a))))), abs(select(-2147483647i, -1i, var_1.a) ^ ~u_input.b.x));
    var_1 = Struct_2(true, _wgslsmith_f_op_f32(sign(574f)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.a.x, 17500u, reverseBits(46756u), u_input.a.x), abs(select(u_input.c, var_2.a, var_1.a))), 48266u, ~u_input.c.x), firstTrailingBit(~var_2.a.x), vec4<f32>(637f, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-628f))), -302f), _wgslsmith_div_u32(4294967295u, firstLeadingBit(u_input.c.x)));
}

