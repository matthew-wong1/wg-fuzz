struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    var var_0 = arg_0.x;
    var_0 = 44850u;
    let var_1 = Struct_1(-vec3<i32>(u_input.a, ~1i, 0i), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-641f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-889f - 847f), _wgslsmith_f_op_f32(trunc(-682f))))))), !(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, true)))), true, true);
    var_0 = ~arg_0.x;
    var_0 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b)))))));
}

fn func_4(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.zxw + _wgslsmith_f_op_vec3_f32(-arg_0.wwy));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, 1006f, arg_0.x))))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a) << (vec4<u32>(0u, u_input.d, u_input.b, u_input.e) % vec4<u32>(32u))), -vec4<i32>(0i, u_input.a, -19432i, 11492i)), -firstTrailingBit(u_input.a & 34126i), u_input.a), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-arg_0.x))), !vec3<bool>(true, true | (u_input.a < -18723i), true), true, all(vec4<bool>(true, !any(vec3<bool>(false, true, true)), arg_0.x < arg_0.x, true)));
    let var_2 = ~_wgslsmith_clamp_u32(~9211u, u_input.e, 0u & u_input.b);
    var var_3 = abs(min(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, -15668i, 2147483647i, u_input.a)), reverseBits(vec4<i32>(var_1.a.x, 7761i, -52102i, var_1.a.x))), -vec4<i32>(-2147483647i, u_input.a, var_1.a.x, 1i)) | _wgslsmith_div_vec4_i32(-(~vec4<i32>(u_input.a, var_1.a.x, var_1.a.x, var_1.a.x)), ~vec4<i32>(-3839i, u_input.a, var_1.a.x, u_input.a) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1901i, var_1.a.x, -42622i), vec4<i32>(-85836i, 7470i, 0i, var_1.a.x))));
    return var_1.a;
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.a;
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 20826u, 32065u) >> (vec3<u32>(u_input.d, u_input.e, 102756u) % vec3<u32>(32u)), vec3<u32>(0u, u_input.c, 4294967295u) & vec3<u32>(u_input.c, 0u, 100580u)) >> (~85770u % 32u), u_input.c >> (abs(u_input.b) % 32u)));
    let var_2 = Struct_3(var_1.a);
    var_1 = Struct_3(var_1.a);
    var_1 = Struct_3(~vec2<u32>(_wgslsmith_add_u32(1u, 0u), u_input.b));
    return Struct_4(func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_f_op_f32(f32(-1f) * -901f), 1f, _wgslsmith_f_op_f32(func_3(vec4<u32>(3032u, 0u, 14913u, 1u), false)))))), 28791u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.b)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1446f))))) - arg_0.c.b);
    let var_1 = vec2<u32>(u_input.e, ~u_input.b);
    var var_2 = func_2();
    var_2 = Struct_4(func_2().a, 34815u, arg_0.a);
    var_2 = Struct_4(arg_0.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2.a.x, 13764u, _wgslsmith_add_u32(_wgslsmith_div_u32(58322u, 35456u), ~var_2.b)), ~(~(~vec3<u32>(var_1.x, 1u, 58818u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a, -1216f)))) - var_2.c));
    return firstTrailingBit(min(abs(var_1.x), arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(reverseBits(func_1(Struct_5(969f, vec2<i32>(u_input.a, u_input.a), Struct_1(vec3<i32>(u_input.a, u_input.a, -1i), 520f, vec3<bool>(false, false, true), false, true)), u_input.a, Struct_3(vec2<u32>(u_input.e, u_input.e)))), ~u_input.d & _wgslsmith_sub_u32(u_input.e, u_input.d)), u_input.b, 1u), ~select(select(vec3<u32>(u_input.e, 56433u, u_input.e), select(vec3<u32>(u_input.c, u_input.b, u_input.b), vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<bool>(true, true, false)), vec3<bool>(false, true, true)), vec3<u32>(~6039u, u_input.c, 0u << (u_input.b % 32u)), true));
    var var_1 = Struct_3(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_0.xx, firstLeadingBit(~vec2<u32>(1u, 0u))), ~(~var_0.xx >> (var_0.yz % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-534f * -1000f)))), _wgslsmith_f_op_f32(select(1756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1735f + -880f)), true)), _wgslsmith_f_op_f32(func_3(~(~vec4<u32>(1u, 11232u, 1u, u_input.b)), !select(false, false, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, 928f, -1019f) - vec3<f32>(-367f, -481f, -1000f)), vec3<f32>(1f, 1f, 1f))))));
    var var_3 = _wgslsmith_add_u32(107610u, ~_wgslsmith_dot_vec2_u32(var_1.a, ~abs(vec2<u32>(4294967295u, 7629u))));
    var var_4 = -1i;
    var var_5 = u_input.a;
    let var_6 = reverseBits(abs(select(max(vec3<i32>(-2952i, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, 41189i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, -3663i), vec3<i32>(63909i, -1639i, u_input.a), vec3<i32>(17535i, u_input.a, 1i)), vec3<bool>(true, true, true)) | (func_2().a >> (vec3<u32>(u_input.d, u_input.b, 0u) % vec3<u32>(32u)))));
    var var_7 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_2.yz, vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(944f, 290f)))))), vec4<u32>(var_0.x, 47008u & (4294967295u << (var_1.a.x % 32u)), ~28378u, ~_wgslsmith_mod_u32(var_0.x, 1u)) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.x, var_0.x, var_0.x, 1u), vec4<u32>(var_1.a.x, 0u, 1u, 7854u), vec4<u32>(0u, 0u, u_input.c, 1u)), vec4<u32>(0u, var_1.a.x, 0u << (u_input.c % 32u), ~4294967295u), true), ~u_input.d);
}

