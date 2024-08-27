struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(vec3<bool>(u_input.c.x <= ~abs(27952u), true, true), true, vec4<bool>(true, all(vec2<bool>(true, select(true, true, false))), any(vec4<bool>(true, true, true, true)), true), vec4<u32>(u_input.c.x, ~u_input.c.x, 64734u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 93374u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.c.x), countOneBits(u_input.c.x), u_input.c.x, countOneBits(4294967295u)))));
    var var_1 = Struct_2(~var_0.d.x);
    let var_2 = (((1u & u_input.c.x) << (var_0.d.x % 32u)) & reverseBits(22289u)) >= var_0.d.x;
    let var_3 = _wgslsmith_mod_i32(-52520i, u_input.e);
    var var_4 = select(vec2<bool>(all(!select(var_0.c.ww, vec2<bool>(var_2, var_0.c.x), false)), true), select(var_0.c.xz, var_0.a.zz, var_0.c.yx), var_0.a.yz);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.d.x, var_1.a), vec3<u32>(4294967295u, ~(~1u), abs(~1u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_2(35052u);
    var var_1 = Struct_5(Struct_1(vec3<bool>(true, !all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(0u, u_input.c.x, 61707u)) >= reverseBits(u_input.c.x)), all(vec4<bool>(arg_0.x >= arg_0.x, true, false, true)), vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), var_0.a <= 15056u, (arg_1 << (var_0.a % 32u)) < _wgslsmith_div_i32(13473i, -32090i), true), vec4<u32>(var_0.a | u_input.c.x, 83724u, 67230u, _wgslsmith_div_u32(~var_0.a, var_0.a & 39282u))), var_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1126f)) - _wgslsmith_f_op_f32(round(-926f))) + -1890f), _wgslsmith_f_op_f32(-1f), -1303f, _wgslsmith_f_op_f32(806f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-756f + -187f), _wgslsmith_f_op_f32(1140f + 157f))))), Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9753u, 10526u, 1u), func_3()), u_input.c.x)));
    let var_2 = Struct_5(Struct_1(!select(vec3<bool>(true, var_1.a.c.x, var_1.a.c.x), select(vec3<bool>(false, var_1.a.a.x, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.c.x, var_1.a.c.x), var_1.a.a), var_1.a.a), ~_wgslsmith_mod_i32(arg_1, arg_0.x) == _wgslsmith_sub_i32(-25795i, arg_0.x), select(!(!vec4<bool>(true, var_1.a.b, var_1.a.a.x, var_1.a.c.x)), vec4<bool>(true, true, true, true), any(vec4<bool>(var_1.a.b, var_1.a.b, false, var_1.a.a.x))), var_1.a.d), Struct_2(~select(21020u, 0u, var_1.a.b) ^ ~0u), var_1.c, Struct_2(_wgslsmith_div_u32(~3902u, var_1.b.a) ^ 4294967295u));
    var var_3 = -(~vec2<i32>(~(~(-11077i)), u_input.d));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-261f))))));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    var var_0 = func_2(-u_input.a ^ u_input.a, ~(-max(u_input.d, 1i))).b;
    var var_1 = Struct_3(Struct_2(0u & reverseBits(~arg_1.a.d.x)));
    var_1 = Struct_3(arg_1.d);
    let var_2 = func_2(-max(-u_input.a, vec3<i32>(u_input.e, 631i, u_input.e) << (arg_1.a.d.wzx % vec3<u32>(32u))), _wgslsmith_mult_i32(-(-u_input.b ^ -arg_2.c.x), u_input.a.x)).a;
    let var_3 = func_2(vec3<i32>(~reverseBits(~0i), -22294i, u_input.a.x), _wgslsmith_mult_i32(u_input.d, -2147483647i));
    return select(!(!vec4<bool>(arg_2.a.x, var_2.c.x, false, arg_2.a.x | var_3.a.a.x)), vec4<bool>(select(!all(vec4<bool>(arg_2.a.x, var_3.a.a.x, arg_2.a.x, var_2.a.x)), all(select(vec3<bool>(true, false, true), var_3.a.c.zzy, vec3<bool>(var_2.b, arg_2.a.x, false))), select(var_2.c.x, false, true)), !var_3.a.a.x, true, true), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = Struct_5(Struct_1(!arg_1.xyw, !(!arg_1.x) | !(true && arg_1.x), func_4(_wgslsmith_f_op_f32(712f * _wgslsmith_f_op_f32(f32(-1f) * -886f)), func_2(select(u_input.a, u_input.a, true), u_input.d | -2147483647i), Struct_4(vec3<bool>(false, true, true), ~u_input.c.xy, u_input.a.zz | u_input.a.xy, Struct_2(u_input.c.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 2230f)), ~vec4<u32>(~u_input.c.x, 4294967295u, 566u, u_input.c.x)), func_2(vec3<i32>(~countOneBits(0i), 66816i, 2147483647i), ~(-_wgslsmith_clamp_i32(-1i, u_input.d, u_input.e))).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-655f, -443f, arg_0.x, 127f) * vec4<f32>(1000f, 1599f, 994f, 719f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1228f, arg_0.x, -375f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1074f, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, 918f, 147f, 554f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(205f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, -1464f, arg_0.x, -1592f))))), Struct_2(u_input.c.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.x)))) + 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(~1u));
    var var_1 = 1596f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<f32>(-138f, -1648f, 1025f), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))))))), -1871f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1132f * 569f))) - 1739f));
    let var_3 = Struct_1(func_2(~(vec3<i32>(-1i) * -vec3<i32>(-15133i, 0i, u_input.b)), ((u_input.b | u_input.d) | ~(-13573i)) << (_wgslsmith_div_u32(1u, select(0u, u_input.c.x, false)) % 32u)).a.a, !func_4(var_2.x, Struct_5(Struct_1(vec3<bool>(true, false, false), false, vec4<bool>(false, true, false, false), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_2(u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, var_2.x, var_2.x, 120f)), var_0.a), Struct_4(vec3<bool>(false, true, false), ~u_input.c.xz, vec2<i32>(-2147483647i, u_input.a.x), func_2(u_input.a, -7463i).b, _wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(var_2, var_2), vec4<bool>(false, false, false, true)))).x, func_2(firstTrailingBit(vec3<i32>(select(u_input.b, u_input.e, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, 0i, -2147483647i, u_input.b)), i32(-1i) * -1i)), countOneBits(reverseBits(-u_input.e))).a.c, vec4<u32>(1u, var_0.a.a, 1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.a.a, 4294967295u, var_0.a.a) << (u_input.c % vec3<u32>(32u))), vec3<u32>(var_0.a.a, _wgslsmith_sub_u32(21373u, 1u), select(u_input.c.x, u_input.c.x, false)))));
    var_1 = var_2.x;
    var var_4 = var_0.a;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(950f)) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.c.x, 79345u), u_input.a.yx, ~_wgslsmith_add_vec4_i32(-abs(vec4<i32>(-11105i, u_input.a.x, u_input.a.x, u_input.d)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -29965i, -16381i, 2147483647i), vec4<i32>(0i, u_input.e, -81418i, u_input.b))), _wgslsmith_f_op_vec3_f32(floor(var_2)));
}

