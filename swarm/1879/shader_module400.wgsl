struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    var var_0 = 2605i;
    let var_1 = ~(~29408u);
    var var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = select(!(!(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true))), select(select(vec2<bool>(arg_0 & arg_0, arg_0), vec2<bool>(arg_0 || arg_0, arg_0), true), select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), arg_0), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_0, true)), vec2<bool>(true, true), false || arg_0), vec2<bool>(arg_0, arg_0 & arg_0)), arg_1.b > _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-319i, 1i, arg_1.b), vec3<i32>(arg_1.b, 53654i, -2147483647i)), vec3<i32>(var_3.b, u_input.a, -8122i))), vec2<bool>(var_2.a < arg_1.a, !any(vec3<bool>(true, true, true))));
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    let var_0 = 708f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(683f, -1496f))))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 704f))))), 1286f);
    let var_2 = firstLeadingBit(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_clamp_u32(func_3(false, Struct_1(-793f, -2147483647i), var_1.xyw), 42461u, _wgslsmith_mult_u32(0u, 6564u)), 1u, ~(~0u), func_3(all(vec3<bool>(false, arg_1, true)), Struct_1(-578f, 2147483647i), var_1.xzz)), !any(vec3<bool>(false, arg_1, arg_1))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(611f)), var_0, -658f) * arg_0)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(820f, 893f)))))), ~_wgslsmith_div_i32(firstLeadingBit(u_input.a), -18999i));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = vec3<i32>(~1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -2147483647i), -1i), countOneBits(arg_0.b)) >> (vec3<u32>(4294967295u | _wgslsmith_div_u32(_wgslsmith_div_u32(103474u, 1u), func_3(arg_3, var_0, vec3<f32>(-264f, 884f, arg_0.a))), func_3(all(arg_2) && false, arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1242f, -900f, 372f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2150f, 531f, 1054f) - vec3<f32>(var_0.a, 486f, var_0.a)))), ~(~4294967295u)) % vec3<u32>(32u));
    var_1 = abs(min(reverseBits(~vec3<i32>(arg_0.b, var_0.b, u_input.b.x)) | abs(vec3<i32>(-2147483647i, -21763i, var_1.x)), vec3<i32>(~(-2147483647i), ~_wgslsmith_mult_i32(-1i, arg_0.b), var_1.x)));
    let var_2 = var_1.x;
    var_1 = vec3<i32>(-1i, -func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_1, arg_0.a, arg_0.a) + vec4<f32>(329f, 472f, var_0.a, -239f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_1, arg_1, -367f))), true), -37398i);
    return Struct_1(-490f, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27559i, 2147483647i, 47440i, 2147483647i), -vec4<i32>(arg_0.b, arg_0.b, var_1.x, arg_0.b)), -vec4<i32>(-59446i, -1i, 1i, arg_0.b) >> (~vec4<u32>(116134u, 110488u, 4294967295u, 4294967295u) % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = false | (~_wgslsmith_clamp_i32(reverseBits(0i), -arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(9255i, arg_0.b, u_input.c, -1148i), vec4<i32>(u_input.b.x, u_input.b.x, arg_0.b, 2147483647i))) == u_input.b.x);
    var_0 = select(true, true, false);
    var var_1 = firstLeadingBit(~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), min(vec2<u32>(1u, 1u), ~vec2<u32>(3752u, 0u))));
    var_1 = vec2<u32>(_wgslsmith_mult_u32(267u, 1u), 0u);
    var_1 = vec2<u32>(var_1.x, _wgslsmith_add_u32(1092u, ~(~var_1.x)));
    return arg_0;
}

fn func_1() -> Struct_1 {
    return func_5(func_4(Struct_1(_wgslsmith_f_op_f32(-898f * -225f), firstLeadingBit(u_input.a)), 1000f, vec3<bool>(u_input.a < func_2(vec4<f32>(1611f, -961f, 203f, 676f), false), true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(697f, _wgslsmith_add_i32(u_input.b.x, 1i));
    let var_1 = select(vec4<bool>(false, !(~u_input.c != -1i), all(vec4<bool>(true, true, true, true)), !(_wgslsmith_mod_i32(u_input.a, var_0.b) != 2147483647i)), vec4<bool>(true, true, true, true), select(!vec4<bool>(any(vec4<bool>(false, true, false, true)), false, true, false), vec4<bool>(true, true, true, false), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), true), (-1i > u_input.a) || (-1582f <= var_0.a))));
    var_0 = func_4(Struct_1(-1109f, var_0.b), _wgslsmith_f_op_f32(func_4(func_4(func_1(), -281f, vec3<bool>(true, false, var_1.x), var_1.x), _wgslsmith_f_op_f32(-var_0.a), var_1.wyw, true | !var_1.x).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-693f, var_0.a)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a, var_0.a))))), select(!vec3<bool>(true, var_1.x, var_1.x), select(select(var_1.wzy, var_1.wwy, select(vec3<bool>(true, var_1.x, false), var_1.yyz, true)), select(!vec3<bool>(var_1.x, false, false), select(var_1.zxy, var_1.yyx, var_1.x), select(var_1.yzw, vec3<bool>(false, false, var_1.x), var_1.yzw)), select(select(vec3<bool>(var_1.x, var_1.x, false), var_1.wxz, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x))), var_1.xwy), !(_wgslsmith_clamp_u32(1u, 1u, 1u) > ~_wgslsmith_mult_u32(22586u, 0u)));
    var var_2 = _wgslsmith_mod_u32(~1u, abs(select(~1u, 1u, all(select(var_1, vec4<bool>(false, true, var_1.x, var_1.x), var_1.x)))));
    let var_3 = func_4(Struct_1(var_0.a, var_0.b), func_1().a, vec3<bool>(var_1.x, true, select(!all(vec3<bool>(var_1.x, true, false)), true, true)), any(select(!select(var_1.zw, vec2<bool>(false, false), var_1.xy), !var_1.yz, true)));
    let var_4 = vec3<bool>(!var_1.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, firstLeadingBit(~(~select(1u, 0u, true))), -vec4<i32>(u_input.a, -u_input.c ^ 1i, i32(-1i) * -38789i, _wgslsmith_add_i32(41662i, _wgslsmith_add_i32(-43602i, -25673i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(1208f + _wgslsmith_f_op_f32(-291f + -529f)), -345f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1965f, var_3.a, 272f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-607f, -229f, var_3.a)), true))))));
}

