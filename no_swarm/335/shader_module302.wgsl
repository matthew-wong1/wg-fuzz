struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(53752i, -26839i), vec2<i32>(-10593i, -55111i), vec2<i32>(0i, -28641i), vec2<i32>(-13367i, 25385i), vec2<i32>(50005i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(14979i, -29460i), vec2<i32>(36457i, 49245i), vec2<i32>(-10935i, 36028i), vec2<i32>(1i, 15218i), vec2<i32>(20147i, -57337i), vec2<i32>(i32(-2147483648), -23091i), vec2<i32>(46080i, i32(-2147483648)), vec2<i32>(-47501i, 2147483647i), vec2<i32>(6317i, -1i), vec2<i32>(-1i, -19311i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(60035i, 38485i), vec2<i32>(42478i, i32(-2147483648)), vec2<i32>(25475i, 0i), vec2<i32>(0i, -28788i), vec2<i32>(-22229i, 32138i), vec2<i32>(2147483647i, -110146i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-47960i, i32(-2147483648)), vec2<i32>(-92726i, 11227i), vec2<i32>(-26876i, -9791i), vec2<i32>(2147483647i, -108040i), vec2<i32>(-14901i, 0i), vec2<i32>(-22054i, 60243i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<f32> {
    global1 = array<vec2<i32>, 30>();
    let var_0 = select(!arg_2.b.xy, arg_2.a.xx, arg_2.b.yx);
    let var_1 = u_input.e;
    let var_2 = Struct_2(global0.a);
    global0 = var_2;
    return arg_3.zx;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-308f, arg_1.x, 23030i, ~vec2<u32>(u_input.e, u_input.e), select(vec2<u32>(u_input.e, 2938u), vec2<u32>(1u, u_input.e), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), max(arg_0.x, -2147483647i), countOneBits(-58824i), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(6972u, u_input.e)), arg_3, vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 654f) * vec2<f32>(-542f, -295f))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(964f, 1301f))));
    let var_1 = Struct_3(!vec3<bool>(!(!global0.a), !(!global0.a), var_0.x < _wgslsmith_f_op_f32(abs(var_0.x))), vec4<bool>(global0.a, all(arg_3.b.xzz), global0.a, any(select(select(vec3<bool>(arg_3.b.x, true, global0.a), arg_3.b.wxw, global0.a), !arg_3.a, false))));
    global1 = array<vec2<i32>, 30>();
    let var_2 = Struct_2(false);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1640f)) + -477f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(244f)))))));
    return -189f;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> Struct_2 {
    global0 = Struct_2(!any(vec2<bool>(true, true)));
    var var_0 = Struct_3(vec3<bool>(!all(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(false, global0.a, false), vec3<bool>(global0.a, true, global0.a))), true, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -363f))), vec4<bool>(true, global0.a, global0.a, select(true, global0.a, !all(vec2<bool>(global0.a, global0.a)))));
    global1 = array<vec2<i32>, 30>();
    var_0 = Struct_3(var_0.a, var_0.b);
    global0 = Struct_2(false);
    return Struct_2(_wgslsmith_div_i32(u_input.c, -(~2147483647i)) != u_input.b.x);
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, 569f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, 207f) - vec2<f32>(1900f, 769f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, -461f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-236f, 1049f, true)) - 331f)), -413f);
    var var_1 = _wgslsmith_mult_u32(4294967295u, max(~19184u, arg_1.x)) < select(_wgslsmith_div_u32(~_wgslsmith_mod_u32(49462u, 1u), arg_1.x), 28142u, !(!arg_2.a));
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1188f, 345f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, -678f) - vec2<f32>(866f, -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1380f, 182f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1608f - -428f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-661f, u_input.a, u_input.c, vec2<u32>(u_input.e, u_input.e), arg_1), Struct_1(120f, u_input.d.x, u_input.c, vec2<u32>(0u, 51832u), vec2<u32>(20510u, 30640u)), Struct_3(vec3<bool>(arg_2.a, false, arg_0), vec4<bool>(true, arg_2.a, arg_2.a, var_0.a)), vec3<f32>(143f, 738f, 1094f))).x + -1000f)));
    var var_3 = ~(~arg_1.x);
    var_3 = u_input.e;
    return Struct_3(select(select(!(!vec3<bool>(true, true, arg_0)), !vec3<bool>(false, var_0.a, false), global0.a), !vec3<bool>(14353u >= u_input.e, true, arg_0), vec3<bool>(true, any(vec2<bool>(arg_0, false)) | var_2.a, true)), select(!select(vec4<bool>(false, true, false, arg_0), !vec4<bool>(false, var_2.a, false, true), !vec4<bool>(var_0.a, false, false, global0.a)), !vec4<bool>(u_input.a <= 1i, true, any(vec2<bool>(true, var_2.a)), !global0.a), !select(arg_1.x > 45711u, !arg_2.a, !arg_0)));
}

fn func_1() -> Struct_2 {
    var var_0 = max(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.e, u_input.e, 9150u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e) << (vec3<u32>(56556u, 32560u, 102505u) % vec3<u32>(32u)), vec3<u32>(30216u, u_input.e, u_input.e) | vec3<u32>(0u, u_input.e, u_input.e))), vec3<u32>(0u, ~_wgslsmith_sub_u32(u_input.e, 0u), 0u), vec3<bool>(!global0.a, true, global0.a)), ~vec3<u32>(~_wgslsmith_div_u32(u_input.e, u_input.e), u_input.e, _wgslsmith_sub_u32(u_input.e, max(0u, u_input.e))));
    var var_1 = func_5(select(_wgslsmith_div_f32(-313f, 1702f) > _wgslsmith_f_op_f32(floor(435f)), true, !all(vec2<bool>(false, true))) | (-2830i <= abs(-u_input.a)), vec2<u32>(u_input.e, ~(~u_input.e >> (_wgslsmith_mod_u32(29832u, 115774u) % 32u))), func_4(vec2<f32>(189f, _wgslsmith_f_op_f32(429f + _wgslsmith_f_op_f32(f32(-1f) * -534f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1872f) + _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, -2147483647i, -15222i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, -5038i), u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 103778i, -5994i, u_input.a), vec4<i32>(u_input.c, 19023i, -15980i, u_input.c)), Struct_3(vec3<bool>(true, global0.a, true), vec4<bool>(global0.a, true, global0.a, global0.a))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1601f))))));
    let var_2 = Struct_3(!var_1.b.yzy, vec4<bool>(true, select(var_1.a.x, false, true), global0.a, true));
    let var_3 = -169f;
    var_0 = vec3<u32>(u_input.e, 28143u, ~u_input.e);
    return Struct_2(!var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 30>();
    global1 = array<vec2<i32>, 30>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-108f))), 529f, _wgslsmith_f_op_f32(abs(-1654f)));
    let var_1 = min(global1[_wgslsmith_index_u32(~(~u_input.e), 30u)], -vec2<i32>(_wgslsmith_mod_i32(u_input.d.x, ~u_input.b.x), _wgslsmith_div_i32(29910i, abs(u_input.c))));
    global0 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1243f));
    global0 = Struct_2((var_1.x <= firstLeadingBit(-var_1.x)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2089f, -1174f)) + -1957f) * -1855f), _wgslsmith_f_op_f32(var_2.x * var_0.x), 433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -773f))));
}

