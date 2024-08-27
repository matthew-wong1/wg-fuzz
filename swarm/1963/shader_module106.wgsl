struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = ~(~4294967295u) > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~abs(vec4<u32>(19707u, 84915u, 4294967295u, 0u))));
    let var_2 = _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 28420u, ~0u, ~0u), select(vec4<u32>(0u, 4294967295u, 12726u, 26940u), firstLeadingBit(vec4<u32>(4294967295u, 4986u, 13075u, 18525u)), true))), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(867f)))))));
    let var_4 = select(false, var_1, _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_clamp_u32(var_2.x, 0u, 0u)) <= 0u);
    return var_2.zw;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1988f, 802f))))), -3154f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-912f + _wgslsmith_f_op_f32(trunc(-1002f))))))));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~(select(vec2<u32>(1u, 18654u), vec2<u32>(54666u, 1u), vec2<bool>(arg_0.x, arg_0.x)) ^ func_3(-2147483647i, Struct_1(arg_0, arg_0.xz, arg_0.zz, arg_0.x))), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 6251u), vec2<u32>(3991u, 1u), vec2<u32>(28773u, 4294967295u)) & firstLeadingBit(vec2<u32>(101334u, 48325u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 3010u)))));
    let var_2 = vec4<bool>(false, any(!select(vec4<bool>(arg_0.x, true, arg_0.x, true), !vec4<bool>(true, true, arg_0.x, false), arg_0.x || true)), _wgslsmith_f_op_f32(max(-2553f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1725f - var_0.x))))) > var_0.x, true);
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2209f, _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(1938f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f * var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))))))), 523f);
    return 1528f;
}

fn func_1() -> u32 {
    let var_0 = ~0u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1509f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, true, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1051f))))), 974f);
    let var_2 = Struct_3(479f, false || (var_0 <= 31581u));
    let var_3 = ~0i;
    var var_4 = var_2.b;
    return _wgslsmith_sub_u32(var_0, reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_0, 1u), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(9861u, 57711u, 1u), vec3<u32>(14399u, 39442u, 31455u), vec3<u32>(11953u, 12758u, 26705u)), ~vec3<u32>(2511u, 41598u, 4294967295u)), 1u, 0u, _wgslsmith_mod_u32(min(1u, ~30553u), _wgslsmith_clamp_u32(1u, max(1u, 1u), _wgslsmith_mod_u32(78700u, 55458u)))), ~vec4<u32>(~func_1(), ~reverseBits(50576u), 11546u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 33388u), vec4<u32>(0u, 21654u, 7465u, 4294967295u))), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(firstTrailingBit(0u), reverseBits(92760u), 7243u)), abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(25648u, 1u), vec2<u32>(4294967295u, 0u), vec2<bool>(true, false)), vec2<u32>(1u, 1u))), ~(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(34357u, 4294967295u, 8265u, 103074u), vec4<u32>(863u, 40294u, 0u, 4294967295u))), 1u));
    var_0 = max(vec4<u32>(44592u, 0u, var_0.x, abs(1u)), _wgslsmith_add_vec4_u32(~abs(~vec4<u32>(var_0.x, 108298u, 0u, 11825u)), reverseBits(vec4<u32>(1u << (var_0.x % 32u), var_0.x, var_0.x, ~var_0.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f * 194f)), true);
    var var_2 = Struct_1(select(vec3<bool>(any(!vec4<bool>(false, var_1.b, var_1.b, false)), all(!vec3<bool>(false, var_1.b, false)), var_1.b && (true || var_1.b)), vec3<bool>(true, !all(vec2<bool>(var_1.b, var_1.b)), true), !(_wgslsmith_f_op_f32(var_1.a - var_1.a) >= _wgslsmith_f_op_f32(abs(548f)))), !select(!select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_1.b), true), vec2<bool>(var_1.b, all(vec2<bool>(false, var_1.b))), true), vec2<bool>(var_1.a != _wgslsmith_f_op_f32(floor(var_1.a)), u_input.a < _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a)), ~vec2<i32>(u_input.a, 2147483647i))), true);
    var_0 = ~(~(~vec4<u32>(~var_0.x, ~4294967295u, countOneBits(var_0.x), ~var_0.x)));
    var var_3 = Struct_1(select(var_2.a, vec3<bool>(var_1.b, var_2.a.x, var_2.a.x), vec3<bool>(var_2.c.x, !(u_input.a > -2147483647i), all(var_2.a))), select(vec2<bool>(!(!var_1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(-1i, 1i, u_input.a, u_input.a)) <= 2494i), vec2<bool>(any(!var_2.c), true), select(var_2.b, vec2<bool>(var_2.b.x, all(var_2.a)), any(select(vec2<bool>(false, var_2.c.x), vec2<bool>(false, false), vec2<bool>(var_2.c.x, true))))), vec2<bool>(all(vec4<bool>(any(vec2<bool>(var_1.b, var_1.b)), any(vec4<bool>(true, var_2.d, true, var_1.b)), all(vec4<bool>(true, false, var_1.b, var_1.b)), false)), !any(select(vec2<bool>(var_2.a.x, true), var_2.c, false))), any(vec3<bool>(var_2.b.x, select(true, select(true, var_2.b.x, false), var_2.d), true)));
    var var_4 = var_0.wyw;
    var var_5 = var_1;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-u_input.a, -3732i, u_input.a << (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(var_0.x, 21314u), var_4.x & var_4.x) % 32u)), select(~(~(~var_0.zzz)), var_0.yzw, true), ~vec3<u32>(~1u, ~(var_4.x ^ 75246u), ~(~4294967295u)), abs(_wgslsmith_sub_u32(var_4.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1113f * -802f) + _wgslsmith_f_op_f32(abs(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)))));
}

