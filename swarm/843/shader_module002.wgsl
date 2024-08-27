struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(~reverseBits(~vec4<u32>(u_input.b, u_input.c, u_input.b, arg_1.x)), min(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_1.x, 0u, 0u), vec4<u32>(22199u, 0u, arg_1.x, u_input.c)), vec4<u32>(arg_1.x, arg_1.x, 42513u, 4294967295u) & ~vec4<u32>(4294967295u, arg_1.x, 14158u, arg_1.x)), vec4<u32>(4294967295u, arg_1.x, max(4294967295u, 4294967295u), 51995u) | vec4<u32>(u_input.b, ~arg_1.x, 0u, 42302u));
    let var_1 = Struct_1(-39041i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), arg_1.x << (15470u % 32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1, vec2<u32>(u_input.c, arg_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(44195u, var_0.x), vec2<u32>(0u, u_input.b)))) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-577f, -1397f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -828f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(198f + 377f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 1129f)), _wgslsmith_f_op_f32(-637f + 1709f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f - -1060f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -(vec4<i32>(u_input.a, i32(-1i) * -2147483647i, _wgslsmith_div_i32(-18507i, arg_0), select(arg_0, 2147483647i, false)) << (var_0 % vec4<u32>(32u))));
    var var_2 = Struct_2(arg_1.x);
    var var_3 = vec4<bool>(false, all(vec2<bool>(!any(vec3<bool>(false, false, true)), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !(609f >= var_1.c.x));
    var_2 = Struct_2(arg_1.x);
    return 1u;
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.c > ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, func_3(2147483647i, vec2<u32>(u_input.c, u_input.c))), abs(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(u_input.b, 55793u) % vec2<u32>(32u))));
    return firstTrailingBit(_wgslsmith_mod_vec3_i32(-(~countOneBits(vec3<i32>(-138i, -1i, 0i))), vec3<i32>(-1i) * -max(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a))));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(min(_wgslsmith_div_u32(1u, u_input.b & 0u), abs(countOneBits(u_input.b))), u_input.c), abs(u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(165f, 354f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(681f, -1000f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1005f, 804f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1774f, -851f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-651f, 1002f))))), select(vec2<bool>(false || arg_2, true), !vec2<bool>(arg_2, arg_0), select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, false), all(vec3<bool>(arg_2, arg_2, arg_2)))))));
    var var_2 = Struct_2(var_0.x);
    var_2 = Struct_2(0u);
    var_2 = Struct_2(u_input.c);
    return Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_1, -max(arg_1, vec3<i32>(arg_1.x, 1i, u_input.a))), vec3<i32>(~_wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(2147483647i, 1i)), abs(-3584i), -u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(610f - var_1.x) - var_1.x), vec3<f32>(1457f, 185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, var_1.x)))) - 319f)), vec4<i32>(_wgslsmith_dot_vec2_i32(func_2().xx, -firstLeadingBit(arg_1.zx)), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(1i, 48069i, u_input.a, arg_1.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 2147483647i, u_input.a), vec4<i32>(arg_1.x, u_input.a, -33849i, 0i)))), arg_1.x, -arg_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = func_4(true, select(abs(arg_0.d.www), abs(func_2()), vec3<bool>(true, all(vec2<bool>(false, false)), true)) | (vec3<i32>(u_input.a, 0i, 1i) << (~vec3<u32>(0u, 1u, 17065u) % vec3<u32>(32u))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(true, all(vec4<bool>(false, false, true, true)), false))));
    var var_1 = any(!vec2<bool>(!(7510i < var_0.a), false));
    var var_2 = arg_0.b;
    var var_3 = vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(69834u, u_input.b, 4294967295u, arg_1.a)), ~vec4<u32>(2002u, arg_1.a, 11184u, 49281u), vec4<bool>(true, true, true, false)), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.c)), arg_1.a, 40414u | _wgslsmith_mod_u32(~u_input.b, 65587u)) & vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b);
    var_0 = arg_0;
    return arg_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    return abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(~1u, ~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(27481u, u_input.c);
    var var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-697f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-558f)) * 765f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1976f * 592f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1132f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(630f)) * _wgslsmith_f_op_f32(-344f - 459f)))), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i << (~var_0.x % 32u), -2147483647i, -21587i, u_input.a), vec4<i32>(-u_input.a & u_input.a, abs(-15923i), ~u_input.a, u_input.a)));
    let var_2 = true || any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)));
    var_1 = Struct_1(i32(-1i) * -(~37200i), var_1.c.x, vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(floor(var_1.b))), var_1.b, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-691f + -679f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec4<i32>(max(~u_input.a, var_1.a & _wgslsmith_div_i32(2147483647i, var_1.d.x)), -3347i, i32(-1i) * -(i32(-1i) * -2147483647i), u_input.a));
    var var_3 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, func_5(~var_1.d.wwy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, var_1.c.x, var_1.b, 1334f)), func_1(Struct_1(-20983i, -2050f, var_1.c, var_1.d), Struct_2(4294967295u), Struct_3(-1i, vec3<i32>(var_1.d.x, -59615i, var_1.d.x), -314f)), func_1(Struct_1(var_1.a, var_1.c.x, vec3<f32>(-744f, -609f, 1000f), var_1.d), Struct_2(91768u), Struct_3(-2436i, var_1.d.wzx, 145f))), ~(~var_0.x), 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b, 21401u), vec4<u32>(var_0.x, 4294967295u, 1u, 64392u)), func_5(~var_1.d.wyx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.b, var_1.b, var_1.b)), func_1(Struct_1(u_input.a, var_1.c.x, var_1.c, vec4<i32>(4251i, u_input.a, 22653i, u_input.a)), Struct_2(u_input.b), Struct_3(15569i, vec3<i32>(u_input.a, -3897i, u_input.a), var_1.b)), func_1(Struct_1(var_1.a, var_1.b, vec3<f32>(2198f, var_1.b, var_1.b), var_1.d), Struct_2(u_input.c), Struct_3(-13124i, vec3<i32>(-1i, u_input.a, -1i), var_1.b))), func_5(-var_1.d.wxz, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, -1430f, -380f, var_1.b))), Struct_3(u_input.a, var_1.d.xzz, 2058f), func_1(Struct_1(var_1.d.x, 1000f, vec3<f32>(var_1.c.x, 1000f, -313f), vec4<i32>(-2147483647i, 26390i, u_input.a, 1i)), Struct_2(var_0.x), Struct_3(var_1.d.x, vec3<i32>(-2147483647i, 0i, 1050i), 817f))), _wgslsmith_add_u32(0u, ~70723u))));
    var_3 = Struct_2(4294967295u);
    var var_4 = func_1(Struct_1(-4783i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * -419f)) - _wgslsmith_f_op_f32(var_1.c.x + -191f)), _wgslsmith_f_op_vec3_f32(-var_1.c), var_1.d), Struct_2(_wgslsmith_dot_vec2_u32(~var_0, var_0) << (10508u % 32u)), Struct_3(var_1.a, _wgslsmith_mult_vec3_i32(var_1.d.wxy, ~vec3<i32>(u_input.a, u_input.a, u_input.a)), var_1.b));
    var_4 = Struct_3(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(19332i, u_input.a, var_1.a)), -vec3<i32>(var_4.a, var_1.d.x, -2147483647i)), abs(-vec3<i32>(var_4.a, -2147483647i, -1i))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, _wgslsmith_div_i32(0i, var_1.d.x)), -1i), -5022i, var_1.d.x & -_wgslsmith_div_i32(2147483647i, var_4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2481f)) - var_1.c.x));
    let var_5 = func_1(func_4(true, abs(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, var_4.b.x, var_1.a)), var_1.d.wyx)), false), Struct_2(~func_5(var_4.b, vec4<f32>(var_1.c.x, 1576f, var_1.b, var_4.c), Struct_3(var_1.d.x, var_1.d.xwy, -251f), Struct_3(2147483647i, var_1.d.zxw, 706f))), func_1(Struct_1(0i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.c - 424f))), vec3<f32>(var_1.c.x, -557f, _wgslsmith_f_op_f32(-var_4.c)), min(var_1.d, var_1.d)), Struct_2(_wgslsmith_mod_u32(func_5(var_4.b, vec4<f32>(-1037f, -1486f, -596f, 854f), Struct_3(24474i, vec3<i32>(-1i, -56801i, 12284i), var_4.c), Struct_3(var_1.a, var_4.b, var_4.c)), var_0.x)), Struct_3(reverseBits(-60012i << (0u % 32u)), vec3<i32>(var_1.d.x, var_1.a, 2147483647i) >> ((vec3<u32>(var_3.a, var_3.a, var_3.a) << (vec3<u32>(u_input.c, 40770u, 9983u) % vec3<u32>(32u))) % vec3<u32>(32u)), -1916f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -838f, var_1.b) - var_1.c) * _wgslsmith_f_op_vec3_f32(-var_1.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, 1000f, var_5.c)))), ~4176u, var_1.a ^ -25376i);
}

