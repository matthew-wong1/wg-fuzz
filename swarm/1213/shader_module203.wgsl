struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-641f, 1441f), vec2<f32>(354f, -397f), vec2<f32>(1000f, -289f), vec2<f32>(-195f, 659f), vec2<f32>(819f, 936f), vec2<f32>(775f, -550f), vec2<f32>(2095f, 395f), vec2<f32>(-276f, -1025f), vec2<f32>(1088f, -738f), vec2<f32>(584f, -130f), vec2<f32>(677f, -1638f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(vec3<bool>(-4504i > firstTrailingBit(0i), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, true))))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), false || any(vec3<bool>(false, true, all(vec4<bool>(true, false, false, false)))));
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(48479u, 1u)), 11374u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, select(~1028u, 12223u, select(false, true, var_0.a.x))), ~1u), 11556u);
    let var_2 = reverseBits(vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(29905i)), 14807i), abs(abs(~44460i)), countOneBits(1i)));
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<bool> {
    global0 = array<vec2<f32>, 11>();
    let var_0 = ~abs(-func_3());
    global0 = array<vec2<f32>, 11>();
    var var_1 = Struct_1(select(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), all(vec3<bool>(true, true, true)));
    var var_2 = Struct_1(vec3<bool>(var_1.a.x, select(false, !var_1.b.x, var_1.a.x) && !all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.a.x, var_1.a.x)), true), select(!select(var_1.a.xy, select(vec2<bool>(true, var_1.b.x), var_1.a.yz, true), var_1.a.yz), !select(var_1.a.xx, vec2<bool>(true, var_1.b.x), !vec2<bool>(var_1.c, true)), var_1.b), false);
    return !vec4<bool>(((1i ^ var_0) > -30231i) || any(!vec2<bool>(true, var_1.c)), !select(false || var_2.b.x, false, var_1.b.x), any(var_2.a), var_2.b.x);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 11>();
    global0 = array<vec2<f32>, 11>();
    let var_0 = false;
    let var_1 = 0u == _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(u_input.a.x, 37485u)), u_input.a.x, ~24314u);
    var var_2 = !select(select(!vec4<bool>(false, false, var_1, var_1), func_2(-24867i, ~u_input.a.x), !vec4<bool>(true, var_1, var_1, var_1)), !func_2(~2147483647i, u_input.a.x), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_1, var_1, var_0), !vec4<bool>(true, true, var_1, var_0)), vec4<bool>(false, var_1, var_0 == true, var_0), true));
    return Struct_1(select(vec3<bool>(true, true, var_1), select(var_2.zzw, var_2.zzy, !(!var_2.xyy)), !func_2(-19704i, 1u).zwz), vec2<bool>(true, true), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1774f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(429f, -291f)))) + -336f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-324f, 253f)), -915f))), -424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f - _wgslsmith_f_op_f32(f32(-1f) * -640f)) * 1843f));
    var var_1 = func_1(1000f);
    let var_2 = var_0.x;
    global0 = array<vec2<f32>, 11>();
    var_1 = func_1(var_0.x);
    var_1 = Struct_1(var_1.a, vec2<bool>(var_1.a.x, var_1.a.x), var_1.b.x);
    var var_3 = var_0;
    let var_4 = vec3<bool>(var_1.c, !select(var_1.c, true, func_1(_wgslsmith_f_op_f32(var_2 * -609f)).b.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, min(~9658i, -2147483647i)), ~_wgslsmith_sub_i32(1i, abs(75364i)), i32(-1i) * -5569i), 1i);
}

