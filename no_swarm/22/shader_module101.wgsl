struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_1(-u_input.a.x == _wgslsmith_div_i32(reverseBits(-2147483647i) << (u_input.b.x % 32u), ~(-1i & arg_0.c)));
    var_0 = Struct_1(true);
    let var_1 = true;
    let var_2 = 4294967295u;
    var_0 = Struct_1(false && var_0.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-358f, _wgslsmith_f_op_f32(2116f + _wgslsmith_f_op_f32(min(819f, -1749f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a)))));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-464f)) * _wgslsmith_f_op_f32(-353f + 165f)), Struct_3(Struct_2(vec4<f32>(1411f, -1132f, -150f, -286f), vec2<f32>(-1620f, 911f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -299f, -412f, -530f))), max(u_input.a.x, u_input.a.x), 28496u), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -264f, -2078f, 892f))), vec2<f32>(-1488f, _wgslsmith_f_op_f32(ceil(-1117f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-665f, _wgslsmith_f_op_f32(abs(-1428f))))))), -878f);
    let var_1 = 499f;
    var var_2 = ((vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.a, u_input.a)) & u_input.a) << (u_input.e % vec2<u32>(32u));
    var_2 = abs(_wgslsmith_mult_vec2_i32(-u_input.a, u_input.a));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) + var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, all(vec3<bool>(arg_0, true, false))))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
}

fn func_1() -> f32 {
    var var_0 = 144f;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(510f - 906f), _wgslsmith_f_op_f32(select(245f, -789f, false)), _wgslsmith_div_f32(573f, -466f), _wgslsmith_f_op_f32(f32(-1f) * -731f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.d != u_input.d, ~u_input.d))), vec4<f32>(-1250f, _wgslsmith_f_op_f32(-272f + _wgslsmith_f_op_f32(-110f * 1441f)), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1453f * -272f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -174f), var_1.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, var_1.x, -321f)))), all(vec2<bool>(false, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(298f, var_1.x, 789f, 407f)))))));
    let var_2 = ~0i;
    let var_3 = Struct_1(false);
    return _wgslsmith_f_op_f32(f32(-1f) * -952f);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_5) -> Struct_2 {
    var var_0 = !select(select(vec2<bool>(true, !arg_1.x), select(select(arg_1.zz, vec2<bool>(true, arg_1.x), vec2<bool>(true, false)), vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, arg_1.x)), arg_1.zz), !arg_1.yx, all(!arg_1.xz));
    var_0 = vec2<bool>(true, u_input.a.x != max(arg_0.c, ~_wgslsmith_add_i32(arg_2.x, 0i)));
    var_0 = arg_1.yx;
    var_0 = select(vec2<bool>(var_0.x, !(~arg_0.d <= u_input.d)), vec2<bool>(false, false), true);
    var_0 = vec2<bool>(all(!vec3<bool>(true, all(vec4<bool>(true, var_0.x, true, arg_1.x)), true)), any(!select(select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, false, false, true), var_0.x), !vec4<bool>(arg_1.x, false, true, arg_1.x), arg_1.x)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, arg_3.a.a.x, 1000f, _wgslsmith_f_op_f32(-arg_3.a.a.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.a.x) - _wgslsmith_f_op_f32(-496f - 465f)), _wgslsmith_f_op_f32(abs(arg_0.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(205f * 129f), Struct_3(func_4(Struct_4(_wgslsmith_f_op_f32(func_1()), Struct_3(Struct_2(vec4<f32>(-505f, 125f, 1000f, -721f), vec2<f32>(1593f, -739f)), vec4<f32>(102f, -247f, -864f, -159f)), 0i & u_input.a.x, 33949u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec2<i32>(1i, u_input.a.x), Struct_5(Struct_2(vec4<f32>(438f, 1582f, 898f, -274f), vec2<f32>(1568f, 664f)))), _wgslsmith_f_op_vec4_f32(select(func_4(Struct_4(-1000f, Struct_3(Struct_2(vec4<f32>(433f, -1599f, 703f, -520f), vec2<f32>(533f, -473f)), vec4<f32>(-1083f, -1128f, 1309f, -611f)), u_input.a.x, u_input.c.x), vec3<bool>(false, true, false), vec2<i32>(u_input.a.x, u_input.a.x) & vec2<i32>(u_input.a.x, -6680i), Struct_5(Struct_2(vec4<f32>(1073f, 1000f, 464f, 1258f), vec2<f32>(-548f, 165f)))).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, 349f, 1000f, -461f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1931f, 1000f, -508f, 181f), vec4<f32>(-965f, 1368f, -1950f, 1317f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), _wgslsmith_add_i32(-7314i, _wgslsmith_div_i32(1i, -1i | -u_input.a.x)), 4294967295u);
    let var_1 = var_0.b.b.xyz;
    var var_2 = false;
    var_2 = false;
    var_2 = false;
    var_2 = true;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -8503i, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

