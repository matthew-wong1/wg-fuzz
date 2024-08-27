struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    var var_0 = !(!(!vec2<bool>(all(arg_1), arg_0 < arg_0)));
    global0 = array<vec2<i32>, 22>();
    var_0 = arg_1.xy;
    global0 = array<vec2<i32>, 22>();
    var var_1 = 10082u;
    return arg_0;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global0 = array<vec2<i32>, 22>();
    let var_0 = _wgslsmith_div_i32(min(arg_0.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(~1i, 0i), 0i)), i32(-1i) * -27366i);
    global0 = array<vec2<i32>, 22>();
    var var_1 = !vec2<bool>(true || ((i32(-1i) * -83i) == -arg_0.x), ~(u_input.c.x << (0u % 32u)) > ~(~u_input.c.x));
    let var_2 = u_input.c.x;
    return -236f;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(~arg_2.zxw)), arg_1.c.e.c.x)))));
    let var_1 = any(vec4<bool>(arg_1.c.c.x, !all(arg_1.e.c.wxy), -arg_2.x < _wgslsmith_sub_i32(firstLeadingBit(arg_1.e.b), 0i), any(vec2<bool>(true, select(false, true, false)))));
    let var_2 = abs(~firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.d.x), min(arg_1.c.a.x, 4294967295u), select(114259u, u_input.a, var_1), arg_1.d)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)));
    var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-arg_1.a))), var_0.x));
    return var_1;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    var var_0 = vec2<bool>(!func_4(false, Struct_3(_wgslsmith_f_op_f32(func_3(vec3<i32>(-64259i, arg_1.x, arg_1.x))), Struct_1(true, vec2<f32>(-242f, -453f), vec3<f32>(256f, 625f, 992f), 2147483647i, 6618i), Struct_2(u_input.c, -1i, vec4<bool>(true, true, false, false), Struct_1(false, vec2<f32>(815f, -1000f), vec3<f32>(-894f, 1101f, 1978f), arg_1.x, arg_1.x), Struct_1(false, vec2<f32>(-1977f, -1590f), vec3<f32>(-590f, -301f, 305f), 34416i, -2147483647i)), arg_0, Struct_2(vec3<u32>(1u, arg_0, arg_0), 1i, vec4<bool>(false, true, true, false), Struct_1(true, vec2<f32>(507f, -737f), vec3<f32>(-597f, -614f, 339f), 1i, arg_1.x), Struct_1(true, vec2<f32>(-518f, -1655f), vec3<f32>(-1177f, -1509f, 968f), arg_1.x, -2147483647i))), arg_1, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1377f)), _wgslsmith_f_op_f32(f32(-1f) * -1843f))), select(true, false, 1i == firstTrailingBit(_wgslsmith_sub_i32(arg_1.x, arg_1.x))));
    var var_1 = Struct_1(!(var_0.x && true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(265f)), 1f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1202f, 144f) * vec2<f32>(471f, -1418f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1035f, 1406f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1295f, -1033f, 1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-817f, 2017f, -140f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1329f, -504f, 1306f))))), -1i, arg_1.x);
    global0 = array<vec2<i32>, 22>();
    let var_2 = ~(~(~vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c.x, arg_0), ~u_input.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, _wgslsmith_f_op_f32(f32(-1f) * -103f), var_1.c.x, 540f));
    return ~arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), -1290f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1873f, 968f, -2546f)))))), func_2(u_input.a, vec4<i32>(func_1(0i, vec3<bool>(false, true, true)), -(~(-17221i)), 2147483647i, _wgslsmith_div_i32(~(-7423i), _wgslsmith_sub_i32(2147483647i, 1148i)))), 1i);
    let var_1 = Struct_4(abs(16842u), u_input.d.x != _wgslsmith_dot_vec3_u32(abs(vec3<u32>(46055u, 4294967295u, u_input.b.x)), vec3<u32>(1u, ~u_input.c.x, _wgslsmith_sub_u32(u_input.a, 0u))), vec3<i32>(var_0.e, -2147483647i | func_2(4294967295u, ~vec4<i32>(65146i, var_0.d, 2147483647i, -1i)), var_0.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, firstTrailingBit(4294967295u), _wgslsmith_div_u32(25583u, u_input.d.x)), vec3<u32>(min(40970u, u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(27847u, 84765u)), ~0u)) ^ _wgslsmith_clamp_u32(1u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), vec2<u32>(u_input.a, 34399u))), u_input.d.x ^ 0u), Struct_2(firstLeadingBit(countOneBits(~vec3<u32>(4294967295u, 0u, u_input.d.x))), ~(~var_0.d), !select(!vec4<bool>(true, true, var_0.a, var_0.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), true), Struct_1(false, _wgslsmith_f_op_vec2_f32(var_0.c.zy * _wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(268f, 1164f))), _wgslsmith_f_op_vec3_f32(-var_0.c), var_0.e, _wgslsmith_sub_i32(firstTrailingBit(-11751i), func_1(var_0.e, vec3<bool>(var_0.a, var_0.a, var_0.a)))), var_0));
    let var_2 = 1i >> (~var_1.a % 32u);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x + 972f)));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-var_1.e.d.c.x), 643f == var_0.b.x, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2, -8940i, countOneBits(abs(var_0.e))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, 301f, var_1.e.d.b.x, var_0.b.x)) - vec4<f32>(-355f, _wgslsmith_f_op_f32(func_3(vec3<i32>(var_4.c, var_1.c.x, var_1.e.b))), var_1.e.d.b.x, _wgslsmith_f_op_f32(trunc(-410f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, var_4.a, var_0.b.x, var_0.b.x) * vec4<f32>(var_4.a, -748f, 962f, var_1.e.d.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-709f, -152f, var_1.e.e.c.x, var_0.c.x), vec4<f32>(-283f, -293f, -1625f, 408f)))), var_1.e.c)), _wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(46517u, ~(~var_1.e.a.x))), var_4.a, u_input.a);
}

