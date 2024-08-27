struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> vec2<f32> {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(299f, arg_2, -352f, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(940f, -1049f, 523f, 1973f) * vec4<f32>(arg_2, arg_2, arg_2, -109f)), vec4<bool>(arg_1, arg_1, true, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-813f, arg_2, arg_2, arg_2), vec4<f32>(376f, -1000f, arg_2, -248f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, -781f, -223f, arg_2) * vec4<f32>(-554f, -1884f, 405f, 439f)))))));
    let var_2 = Struct_3(Struct_2(var_1.zz, _wgslsmith_f_op_f32(arg_2 - 893f), Struct_1(u_input.a.x), Struct_1(-8397i), 2147483647i), Struct_1(u_input.a.x | max(~u_input.a.x, _wgslsmith_sub_i32(0i, 0i))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(step(-111f, _wgslsmith_f_op_f32(var_1.x + -1000f))), 715f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yzw * vec3<f32>(arg_2, -1197f, var_1.x)) * _wgslsmith_f_op_vec3_f32(select(var_1.zyz, vec3<f32>(var_1.x, -1376f, 1914f), select(arg_1, arg_1, arg_1))))), Struct_1(var_0));
    var var_3 = vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1), select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, true, true)))) & arg_1, arg_1);
    let var_4 = Struct_3(var_2.a, Struct_1(i32(-1i) * -57067i), _wgslsmith_f_op_vec3_f32(-var_1.wyx), var_2.a.d);
    return vec2<f32>(_wgslsmith_f_op_f32(round(-139f)), _wgslsmith_f_op_f32(-var_4.a.a.x));
}

fn func_2() -> Struct_4 {
    let var_0 = u_input.c;
    let var_1 = true;
    let var_2 = -12011i;
    var var_3 = Struct_3(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(30769u, u_input.c, 49394u), true, 317f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-450f, 598f), vec2<f32>(269f, 1000f), var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-192f, -1000f)), vec2<bool>(var_1, false)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + -846f))), Struct_1(15244i), Struct_1(-1i), var_2), Struct_1(-abs(-2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-610f, 223f, -375f), vec3<f32>(124f, 780f, 888f), vec3<bool>(true, true, var_1))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 690f, -549f), vec3<f32>(406f, 203f, -826f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-799f, 121f, -1000f) - vec3<f32>(-972f, 1003f, -1710f)), !var_1))), Struct_1(firstTrailingBit(-2147483647i)));
    var var_4 = vec3<bool>(var_1, any(vec3<bool>(!(!var_1), true, true)), false);
    return Struct_4(var_3.a, var_3.d.a, var_3.a.d, Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.c.yy), var_3.c.xx)), _wgslsmith_f_op_f32(-var_3.c.x), var_3.a.d, var_3.a.d, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x)), _wgslsmith_f_op_vec2_f32(var_3.c.yx - _wgslsmith_f_op_vec2_f32(floor(var_3.a.a))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(~var_0.a);
    let var_2 = 15463u;
    var var_3 = u_input.a;
    var var_4 = func_2();
    return Struct_1(-16304i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(f32(-1f) * -1733f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1004f)))), -708f, Struct_1(_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(_wgslsmith_div_i32(1i, u_input.a.x), u_input.a.x, 0i >> (1u % 32u)))), func_1(Struct_1(_wgslsmith_sub_i32(abs(u_input.a.x), -1i))), 0i);
    var_0 = func_2().a;
    var_0 = func_2().d;
    let var_1 = select(vec3<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), true, all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, false), all(vec4<bool>(true, false, false, true))))), vec3<bool>(!(1i < var_0.c.a), true, all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), any(vec2<bool>(true, true)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(2277f, _wgslsmith_f_op_f32(select(var_0.a.x, -1944f, var_1.x))), _wgslsmith_div_vec2_f32(func_2().d.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, -1000f))))), _wgslsmith_f_op_f32(-2082f * -1485f), var_0.c, Struct_1(-1i), var_0.e), var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1290f, 357f, _wgslsmith_f_op_f32(ceil(-509f))), vec3<f32>(_wgslsmith_f_op_f32(sign(1148f)), 485f, _wgslsmith_f_op_f32(-691f + -478f))))), var_0.c);
    var_2 = Struct_3(var_2.a, var_0.c, var_2.c, var_2.d);
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

