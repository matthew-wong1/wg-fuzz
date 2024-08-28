struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(68008u, 4698u, 0u), vec3<u32>(40637u, 38972u, 1u), vec3<u32>(54083u, 13637u, 0u), vec3<u32>(0u, 2609u, 1u), vec3<u32>(0u, 38491u, 5404u), vec3<u32>(1u, 34598u, 27105u), vec3<u32>(4294967295u, 1u, 41950u), vec3<u32>(1u, 1u, 0u), vec3<u32>(43238u, 75443u, 57929u), vec3<u32>(1u, 38781u, 0u), vec3<u32>(61220u, 4294967295u, 38309u), vec3<u32>(1u, 29943u, 75843u), vec3<u32>(0u, 0u, 11187u), vec3<u32>(141u, 0u, 29343u), vec3<u32>(19779u, 19975u, 0u), vec3<u32>(47228u, 1u, 23150u), vec3<u32>(1u, 29089u, 31002u), vec3<u32>(15520u, 0u, 4294967295u), vec3<u32>(52615u, 0u, 25884u), vec3<u32>(67829u, 1u, 1u), vec3<u32>(4294967295u, 12591u, 43611u), vec3<u32>(19825u, 78865u, 4294967295u), vec3<u32>(0u, 1u, 30780u), vec3<u32>(21590u, 1u, 1u), vec3<u32>(42095u, 27978u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(28533u, 1u, 27878u), vec3<u32>(16521u, 0u, 4294967295u), vec3<u32>(4294967295u, 4127u, 7597u), vec3<u32>(0u, 11797u, 49535u), vec3<u32>(1897u, 4294967295u, 9631u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    return arg_2;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -805f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, arg_2.x)))), arg_2.zy))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_2.yz - _wgslsmith_f_op_vec2_f32(arg_2.zy - vec2<f32>(-1733f, arg_2.x)))))))));
    var var_1 = func_1(_wgslsmith_f_op_f32(var_0.x * 1f), _wgslsmith_f_op_f32(-var_0.x), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, -139f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, arg_2.x)))), var_0.x, func_1(_wgslsmith_f_op_f32(var_0.x + -1681f), arg_2.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(-arg_0), Struct_3(vec3<bool>(true, false, true), vec3<i32>(u_input.b, u_input.b, -1i)), ~u_input.b), u_input.b), u_input.b), u_input.b);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1034f, 1545f))))), _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(904f, 851f)), _wgslsmith_f_op_f32(exp2(var_0.x)));
    var var_3 = var_2;
    var var_4 = u_input.a.x;
    return !select(vec2<bool>(func_1(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x, Struct_3(var_1.a, var_1.b), var_1.b.x).a.x, abs(u_input.a.x) < ~0u), !vec2<bool>(false, any(vec3<bool>(true, false, var_1.a.x))), vec2<bool>(any(vec2<bool>(true, false)), !(!arg_3)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, -319f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1157f))) * arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-517f * 1118f)))), arg_1));
    global0 = array<vec3<u32>, 32>();
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, 359f) - vec2<f32>(arg_1, var_0.x)))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1128f, 648f) - vec2<f32>(-1026f, var_0.x))))), select(arg_0.a.zz, !func_3(_wgslsmith_f_op_f32(f32(-1f) * -321f), select(vec2<bool>(false, false), vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(237f, var_0.x, 716f))), true), !(u_input.c >= 31747u) || any(func_1(var_0.x, -1000f, arg_0, -60044i).a))));
    global0 = array<vec3<u32>, 32>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-661f, 968f, arg_0.a.x)), 560f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1, 1000f), _wgslsmith_f_op_f32(223f * var_0.x), arg_0.a.x == arg_0.a.x)))));
    return Struct_1(true, arg_1, u_input.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, 531f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.b))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -830f) * vec2<f32>(325f, -1000f))))), _wgslsmith_f_op_f32(-arg_0));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~firstLeadingBit(u_input.a.x);
    var_0 = 38371u;
    var_0 = 0u;
    let var_1 = func_4(_wgslsmith_f_op_f32(arg_0.b.x * 1464f), Struct_1(select((u_input.b > 2147483647i) != any(vec4<bool>(true, true, false, true)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + -161f))), _wgslsmith_mult_u32(firstLeadingBit(~59476u), ~firstLeadingBit(u_input.c))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    let var_0 = func_1(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, func_1(_wgslsmith_f_op_f32(-func_2(Struct_3(vec3<bool>(false, true, false), vec3<i32>(u_input.b, -12728i, u_input.b)), _wgslsmith_f_op_f32(-arg_1.x)).b), arg_1.x, Struct_3(vec3<bool>(true, true, true), abs(vec3<i32>(u_input.b, u_input.b, -26732i))), u_input.b), -2147483647i);
    global0 = array<vec3<u32>, 32>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 696f;
    global0 = array<vec3<u32>, 32>();
    global0 = array<vec3<u32>, 32>();
    let var_1 = -abs(-_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-36065i, 0i, 17072i)));
    let var_2 = func_6(func_5(func_4(_wgslsmith_f_op_f32(1042f - _wgslsmith_f_op_f32(-var_0)), func_2(func_1(-240f, var_0, Struct_3(vec3<bool>(false, true, true), vec3<i32>(10382i, var_1.x, var_1.x)), u_input.b), _wgslsmith_f_op_f32(-var_0)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, var_0)))), var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-468f)) * _wgslsmith_f_op_f32(-var_0))))), ~u_input.a.x);
    global0 = array<vec3<u32>, 32>();
    let var_3 = Struct_1(false, var_0, _wgslsmith_clamp_u32(abs(max(u_input.a.x, 40990u) << (u_input.c % 32u)), 1u, u_input.c));
    let var_4 = -15436i;
    global0 = array<vec3<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~1i, 47289i);
}

