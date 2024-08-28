struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(803f, 538f, -391f, 906f) * vec4<f32>(-170f, 547f, -562f, 909f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(761f, -169f, 1018f, 215f) - vec4<f32>(477f, -1276f, 269f, 134f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - 209f), -236f, -328f, _wgslsmith_f_op_f32(1680f * 1007f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-628f, _wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-431f, -879f))), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2074f, -192f, 721f, 452f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, -819f, -2088f, -693f)))), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.yxy));
    var var_2 = Struct_3(u_input.a, Struct_1(abs(max(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 1u)), false));
    var var_3 = !(!vec4<bool>(true, true, select(var_2.b.b, all(vec4<bool>(true, var_2.b.b, var_2.b.b, var_2.b.b)), true), var_2.b.b));
    var var_4 = Struct_3(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), var_2.b);
    return var_3.wyw;
}

fn func_2() -> u32 {
    global0 = select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(5918u, u_input.a.x, u_input.a.x, u_input.a.x) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 27131u, 1u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u))), vec4<u32>(max(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xx), u_input.a.x), ~(u_input.a.x << (u_input.a.x % 32u)), min(_wgslsmith_dot_vec3_u32(vec3<u32>(7201u, u_input.a.x, u_input.a.x), u_input.a), ~4294967295u), 1u)), _wgslsmith_clamp_u32(~u_input.a.x, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 32876u, _wgslsmith_dot_vec3_u32(vec3<u32>(54589u, u_input.a.x, 1u), u_input.a), u_input.a.x), firstLeadingBit(vec4<u32>(u_input.a.x, 41524u, u_input.a.x, 6907u)))), true);
    var var_0 = func_3();
    let var_1 = Struct_4(var_0.zz);
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.a, ~_wgslsmith_div_vec3_u32(select(~u_input.a, vec3<u32>(1u, u_input.a.x, 1u), false), ~countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 30469u))));
    var_0 = vec3<bool>(false, var_0.x, true);
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = arg_1;
    global0 = 4294967295u >> (~(_wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(10597u, var_0), u_input.a.xy)) & ~reverseBits(u_input.a.x)) % 32u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-111f, -1000f, -292f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))));
    var var_3 = select(_wgslsmith_div_i32(~3435i & select(-2147483647i, 2147483647i, 559f <= var_2.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(35424i, -2147483647i), select(vec2<i32>(1i, 16587i), vec2<i32>(30952i, 43630i), arg_0.b), vec2<i32>(20013i, 41125i)), vec2<i32>(1i, 1i))), 58450i, var_1.a.x > _wgslsmith_f_op_f32(-var_1.a.x));
    return _wgslsmith_add_u32(u_input.a.x, var_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec3<u32> {
    global0 = firstLeadingBit(u_input.a.x & arg_1.a.x);
    let var_0 = _wgslsmith_mult_u32(~func_4(arg_1.b, func_2()), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39006u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(arg_1.a.x, 45627u, arg_1.b.a, 42514u)), vec4<u32>(0u, 0u, 0u, 37837u)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 61618u, 4294967295u), vec4<u32>(1u, 42676u, arg_1.b.a, 1u)) >> (~0u % 32u)) % 32u)) << (countOneBits(arg_1.b.a) % 32u);
    var var_1 = vec3<bool>(true, arg_1.b.b, func_3().x);
    var var_2 = Struct_4(!var_1.xx);
    let var_3 = ~vec3<u32>(reverseBits(u_input.a.x), _wgslsmith_div_u32(arg_1.a.x, ~reverseBits(40508u)), 4294967295u);
    return select(var_3, vec3<u32>(firstTrailingBit(min(u_input.a.x, arg_1.b.a)), reverseBits(4294967295u), var_3.x) | vec3<u32>(59065u | _wgslsmith_mod_u32(4294967295u, var_3.x), u_input.a.x, ~25904u), arg_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~_wgslsmith_dot_vec3_u32(~func_1(vec3<i32>(-98019i, 2059i, 2147483647i), Struct_3(vec3<u32>(0u, u_input.a.x, u_input.a.x), Struct_1(u_input.a.x, true)), -2147483647i, -2155f), reverseBits(max(u_input.a, u_input.a))));
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    global0 = u_input.a.x;
    var var_0 = Struct_3(countOneBits(u_input.a), Struct_1(min(~_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xy), _wgslsmith_dot_vec4_u32(vec4<u32>(42324u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), !(!all(vec4<bool>(false, true, true, true)))));
    var_0 = Struct_3(~var_0.a, Struct_1(u_input.a.x, false));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4294967295u << (countOneBits(u_input.a.x) % 32u)), var_0.a.x), vec2<u32>(~(~(~0u)), var_0.a.x));
    var_0 = Struct_3(_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.a, var_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.a, var_0.a.x, 0u), vec3<u32>(0u, var_0.a.x, 27965u)), vec3<u32>(_wgslsmith_sub_u32(1u, 0u), ~var_0.b.a, var_0.b.a)) ^ ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.a.x, u_input.a.x), vec3<u32>(4294967295u, 7115u, 0u), vec3<u32>(u_input.a.x, 0u, 4294967295u))), Struct_1(u_input.a.x, var_0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, reverseBits(abs(-86518i)) ^ (0i ^ select(-8081i, -2147483647i, false)), _wgslsmith_clamp_i32(-(~1i), ~(-3565i), 1i), -19453i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1830f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -864f)))), ~_wgslsmith_clamp_u32(countOneBits(1u), func_4(Struct_1(1u, false), _wgslsmith_mult_u32(28579u, var_0.a.x)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 6037u, ~((~u_input.a.x << (_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x) % 32u)) >> (_wgslsmith_clamp_u32(u_input.a.x, 0u, reverseBits(27899u)) % 32u)));
}

