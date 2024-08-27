struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2289f, 650f, 252f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1625f, 1404f, -686f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-566f, 1587f, 262f) + vec3<f32>(845f, 403f, 881f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(342f, -711f, -357f) - vec3<f32>(262f, -667f, -1054f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2139f, -305f, -573f) - vec3<f32>(-305f, 1336f, 423f)), true))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(758f))), _wgslsmith_f_op_f32(f32(-1f) * -836f), -547f)));
    let var_1 = u_input.e;
    global0 = firstLeadingBit(57996i);
    let var_2 = vec3<f32>(733f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(max(var_0.x, var_0.x))))));
    global1 = u_input.d.x;
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1043f));
}

fn func_2() -> u32 {
    let var_0 = false | (!(all(vec4<bool>(true, false, false, true)) & false) != true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(353f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2424f, 1000f))), _wgslsmith_f_op_f32(func_3()));
    let var_2 = _wgslsmith_add_i32(-(firstLeadingBit(u_input.c) & -1i), u_input.b);
    var var_3 = all(!vec2<bool>(false, var_0));
    let var_4 = Struct_1(u_input.d.x);
    return firstLeadingBit(var_4.a);
}

fn func_1() -> vec3<bool> {
    global1 = abs(_wgslsmith_div_u32(abs(69056u), func_2()) << (u_input.d.x % 32u));
    global1 = u_input.d.x;
    var var_0 = true;
    var var_1 = u_input.d.wx;
    var var_2 = -532f;
    return select(select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), u_input.b >= u_input.e.x), vec3<bool>(true, true, true)), !vec3<bool>(true, any(vec2<bool>(true, false)), true), true), !(!vec3<bool>(any(vec2<bool>(true, true)), u_input.d.x > 58010u, true)), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~(-vec2<i32>(reverseBits(u_input.c), i32(-1i) * -2147483647i));
    var var_1 = Struct_2(2200f, Struct_1(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(56959u, u_input.d.x, u_input.d.x), u_input.d.yyx), vec3<u32>(5543u, 1u, 33982u), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, arg_1)), (u_input.d.xxx & vec3<u32>(0u, u_input.d.x, u_input.d.x)) ^ ~vec3<u32>(0u, 37199u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-408f - -381f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1103f, 1000f) * 1f)) * 323f), -2147483647i, _wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.d.x, arg_0.a) ^ ~max(vec3<u32>(9314u, 1u, 97889u), u_input.d.zyy), u_input.d.wxy ^ vec3<u32>(1u, ~u_input.d.x, arg_0.a >> (u_input.d.x % 32u))));
    var var_2 = vec4<u32>(~var_1.e.x, ~(~(~(~u_input.d.x))), 55125u, _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(56178u, arg_0.a), vec2<u32>(u_input.d.x, 45007u)), abs(arg_0.a)), var_1.e.xx));
    var var_3 = Struct_1(87919u);
    global1 = ~firstLeadingBit(var_3.a);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -13251i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(972f, _wgslsmith_f_op_f32(ceil(254f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-853f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(747f - -845f)))))), func_4(Struct_1(4294967295u), select(vec3<bool>(u_input.b != 2598i, false, any(vec3<bool>(false, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), func_1()), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1341f))) * 809f), _wgslsmith_f_op_f32(-1546f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)))), countOneBits(u_input.b), vec3<u32>(firstLeadingBit(func_4(Struct_1(u_input.d.x), vec3<bool>(false, false, true)).a), reverseBits(_wgslsmith_add_u32(~26421u, u_input.d.x)), countOneBits(_wgslsmith_div_u32(33380u, u_input.d.x))));
    global0 = u_input.c;
    let var_2 = var_1;
    var var_3 = !select(_wgslsmith_f_op_f32(sign(-470f)) < _wgslsmith_f_op_f32(step(var_2.c, var_2.a)), !select(any(vec2<bool>(true, false)), true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, _wgslsmith_f_op_f32(round(var_1.c)))))));
}

