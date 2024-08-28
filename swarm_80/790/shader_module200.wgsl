struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = arg_1.a;
    let var_1 = vec3<f32>(1110f, 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1116f + 926f))));
    let var_2 = arg_0;
    let var_3 = abs(u_input.c.xwz);
    var var_4 = u_input.b.x;
    return any(vec3<bool>(true, (u_input.b.x & u_input.c.x) != _wgslsmith_mult_u32(~4294967295u, countOneBits(var_3.x)), false));
}

fn func_2() -> bool {
    let var_0 = i32(-1i) * -11633i;
    let var_1 = u_input.b.x;
    let var_2 = select(!vec3<bool>(false, false | all(vec3<bool>(true, true, true)), ~u_input.a.x <= (var_0 ^ var_0)), select(vec3<bool>(true, select(true, 0u >= u_input.b.x, true), func_3(Struct_2(Struct_1(-962f, vec3<f32>(2188f, 422f, -1000f)), Struct_1(-746f, vec3<f32>(-475f, -139f, 261f)), vec3<f32>(-1006f, 287f, 858f), Struct_1(-1387f, vec3<f32>(-345f, -515f, 159f))), Struct_3(false), u_input.b.x, u_input.a.x)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))), vec3<bool>(true, true, true));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(599f, 574f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1288f, -1430f), vec3<f32>(248f, 119f, -1166f), false)), vec3<f32>(362f, -250f, -244f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2103f, -565f, 119f) * vec3<f32>(752f, 416f, 904f)), true))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) + _wgslsmith_f_op_f32(1058f * -496f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, -646f, 923f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), -666f, -1239f), Struct_1(_wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(select(242f, _wgslsmith_f_op_f32(f32(-1f) * -1061f), var_2.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(851f, -344f, 258f), vec3<f32>(1000f, 314f, 1421f)))), var_2))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -828f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.a.b))));
    return var_2.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> vec3<bool> {
    var var_0 = -1285f;
    var var_1 = Struct_4(26173i, vec2<bool>(true | any(vec4<bool>(true, true, true, true)), func_2() & (true | func_2())), select(true, func_3(Struct_2(Struct_1(-274f, vec3<f32>(arg_1, arg_1, arg_1)), Struct_1(arg_1, vec3<f32>(-1026f, -954f, 119f)), vec3<f32>(561f, arg_1, arg_1), Struct_1(186f, vec3<f32>(arg_1, arg_1, -1504f))), Struct_3(any(vec4<bool>(false, false, true, false))), u_input.b.x, _wgslsmith_sub_i32(firstLeadingBit(2555i), -u_input.a.x)), true));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x ^ u_input.a.x, arg_0.x), select(u_input.a | abs(vec2<i32>(-35700i, var_1.a)), max(u_input.a & firstLeadingBit(vec2<i32>(u_input.a.x, arg_0.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-35937i, 0i), -vec2<i32>(1i, 1254i))), any(select(var_1.b, var_1.b, var_1.b.x))));
    var var_3 = 2147483647i;
    let var_4 = Struct_5(Struct_2(Struct_1(408f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f)), vec3<f32>(arg_1, arg_1, -239f)))), Struct_1(_wgslsmith_f_op_f32(-arg_1), vec3<f32>(_wgslsmith_div_f32(240f, 687f), 1466f, _wgslsmith_f_op_f32(110f - arg_1))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(817f, -935f) * _wgslsmith_f_op_f32(arg_1 - -294f)), 535f, -1001f), Struct_1(-339f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(100f, -1073f, 1551f) - vec3<f32>(arg_1, arg_1, arg_1))))), Struct_1(585f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1971f, arg_1)), vec3<f32>(arg_1, 1689f, arg_1), !vec3<bool>(false, true, var_1.c)))))), ~arg_0);
    return !(!select(select(select(vec3<bool>(var_1.b.x, var_1.c, true), vec3<bool>(var_1.b.x, var_1.c, false), vec3<bool>(true, var_1.c, var_1.c)), select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(true, var_1.b.x, var_1.b.x), true), vec3<bool>(true, false, var_1.c)), !select(vec3<bool>(var_1.c, true, false), vec3<bool>(var_1.b.x, var_1.c, var_1.b.x), vec3<bool>(var_1.b.x, true, true)), !select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(true, true, var_1.b.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> Struct_5 {
    var var_0 = arg_1;
    var var_1 = u_input.c.x;
    let var_2 = arg_0.zy;
    var var_3 = Struct_3(arg_3.a);
    return Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(-936f, -347f, any(arg_0.yy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.b.x, var_0.b.x, var_0.b.x), arg_1.b, false)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -825f), arg_2.b.b), vec3<f32>(arg_1.a, arg_2.d.b.x, 1000f), Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + var_0.b))), arg_2.d, vec3<i32>(~(-min(1i, u_input.a.x)), u_input.a.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, true, false), func_1(vec3<i32>(u_input.a.x, 66951i, u_input.a.x), 572f), any(vec2<bool>(false, true))), func_2()), Struct_1(1005f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, -1174f, 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(127f, 457f, -542f) + vec3<f32>(2133f, -812f, 318f))))), Struct_2(Struct_1(-1696f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1639f, 379f, 393f) * vec3<f32>(-128f, -395f, -1134f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(200f, 1846f, 1586f))))), Struct_1(_wgslsmith_f_op_f32(-252f - _wgslsmith_f_op_f32(f32(-1f) * -640f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(762f, 648f, -1167f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-708f + 2071f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1664f - 989f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -201f), vec3<f32>(-544f, _wgslsmith_f_op_f32(round(-279f)), -1870f))), Struct_3((func_3(Struct_2(Struct_1(-1160f, vec3<f32>(1000f, 663f, -1700f)), Struct_1(-572f, vec3<f32>(596f, 479f, -635f)), vec3<f32>(-1180f, -1000f, 1000f), Struct_1(1009f, vec3<f32>(954f, 326f, -1124f))), Struct_3(true), u_input.c.x, u_input.a.x) != true) && func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(-2147483647i, 0i, u_input.a.x)), _wgslsmith_f_op_f32(round(-677f))).x));
    let var_1 = func_4(!select(vec3<bool>(any(vec2<bool>(false, true)), true, func_2()), func_1(-vec3<i32>(u_input.a.x, 3455i, var_0.c.x), _wgslsmith_f_op_f32(var_0.b.a - 1021f)), vec3<bool>(true, true, true)), Struct_1(456f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(vec3<bool>(false, true, false), Struct_1(var_0.a.c.x, vec3<f32>(var_0.a.a.a, 121f, -1249f)), Struct_2(Struct_1(-605f, var_0.a.b.b), Struct_1(1045f, vec3<f32>(146f, 1000f, 1611f)), var_0.a.d.b, var_0.a.d), Struct_3(false)).a.b.b))), Struct_2(func_4(vec3<bool>(u_input.c.x != u_input.b.x, any(vec2<bool>(false, true)), true), Struct_1(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, var_0.b.a, -1000f))), func_4(vec3<bool>(false, true, true), func_4(vec3<bool>(false, true, false), Struct_1(var_0.b.b.x, vec3<f32>(var_0.b.a, var_0.a.c.x, var_0.a.a.a)), var_0.a, Struct_3(true)).a.b, func_4(vec3<bool>(false, false, false), var_0.a.b, Struct_2(Struct_1(var_0.a.a.b.x, var_0.a.a.b), Struct_1(-1000f, var_0.a.d.b), vec3<f32>(var_0.b.a, var_0.a.b.a, var_0.a.b.a), var_0.b), Struct_3(false)).a, Struct_3(true)).a, Struct_3(func_1(var_0.c, var_0.a.c.x).x)).a.b, var_0.a.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a.a.b)))), var_0.b), Struct_3(true)).a.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.b.x, -1566f, 109f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, -1469f, 423f, 959f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(438f, var_0.a.d.a, var_0.b.b.x, -282f), vec4<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.d.a, var_0.a.c.x), vec4<bool>(true, true, false, true))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-391f, -896f, var_0.b.b.x, var_0.a.c.x))), false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), func_4(vec3<bool>(true, false, true), var_0.a.b, var_0.a, Struct_3(true)).a.a, func_4(vec3<bool>(false, true, false), Struct_1(873f, var_1.b), Struct_2(var_1, Struct_1(var_1.a, vec3<f32>(115f, 948f, var_0.b.b.x)), var_0.b.b, Struct_1(483f, vec3<f32>(892f, var_0.b.a, 319f))), Struct_3(false)).a, Struct_3(false)).a.b.a))), _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), var_1.b, vec4<i32>(u_input.a.x, ~_wgslsmith_mult_i32(u_input.a.x, -17221i), var_0.c.x, 42955i));
}

