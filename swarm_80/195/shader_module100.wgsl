struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_1(any(select(select(select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true), vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(true, arg_3.x, arg_3.x, true)), !vec4<bool>(arg_3.x, true, false, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x)), !(!vec4<bool>(false, false, arg_3.x, arg_3.x)), vec4<bool>(!arg_3.x, false, select(false, arg_3.x, arg_3.x), all(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 136f, global0.x) - vec3<f32>(-1798f, global0.x, 104f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1698f, 335f, arg_2.x))), vec3<f32>(-751f, 1249f, arg_2.x)))));
    global0 = var_0.b;
    let var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-global0.x);
    let var_3 = abs(arg_1.zz);
    return vec3<bool>(arg_3.x, all(!select(vec4<bool>(false, var_0.a, arg_3.x, true), vec4<bool>(false, var_0.a, arg_3.x, var_0.a), select(var_0.a, false, var_0.a))), var_0.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> vec2<bool> {
    let var_0 = Struct_1(arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3)), _wgslsmith_f_op_f32(round(global0.x)))), -1652f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1650f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, var_0.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(var_0.b.xz)), var_0.b.xx)))));
    var var_2 = Struct_1(func_3(arg_0.x, _wgslsmith_mod_vec4_u32(max(vec4<u32>(103178u, 5827u, u_input.a, u_input.a), vec4<u32>(26363u, 58890u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16841u, 62602u), vec4<u32>(u_input.a, u_input.a, 49071u, 1u))), _wgslsmith_f_op_vec2_f32(select(var_0.b.zz, _wgslsmith_div_vec2_f32(var_0.b.yz, vec2<f32>(var_0.b.x, -1364f)), !arg_1.yx)), !vec2<bool>(true, arg_1.x)).x & (arg_0.x < -(~arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.b.x, 2689f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(-1000f * -1236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - 2409f)), -187f)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b + var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), var_2.b.x, _wgslsmith_f_op_f32(var_1.x - -311f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.b.x, var_0.b.x))))) + _wgslsmith_f_op_vec3_f32(min(var_2.b, vec3<f32>(global0.x, _wgslsmith_f_op_f32(-883f - var_2.b.x), _wgslsmith_f_op_f32(ceil(global0.x)))))));
    var_2 = Struct_1(!(!all(!vec2<bool>(true, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.b))));
    return arg_1.yy;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(arg_2.b));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(arg_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.b.x, arg_1.b.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_2.b.x))))));
    let var_0 = select(vec2<bool>(true, false), vec2<bool>(arg_2.a, arg_1.a && true), all(func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-6250i, 9901i, 2147483647i)), func_3(1i, vec4<u32>(63227u, 1u, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-arg_2.b.xy), vec2<bool>(false, false)), i32(-1i) * -1382i, _wgslsmith_f_op_f32(-arg_1.b.x))));
    var var_1 = 1u;
    let var_2 = any(vec4<bool>(!((4294967295u | u_input.a) >= u_input.a), var_0.x, arg_2.a, false));
    return !select(vec4<bool>(!func_4(vec3<i32>(-21148i, -1i, 3454i), vec3<bool>(arg_1.a, false, arg_2.a), 0i, -1348f).x, true && (4294967295u == u_input.a), false, var_2), vec4<bool>(true, _wgslsmith_f_op_f32(ceil(555f)) <= -1188f, true, arg_1.a), true);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = max(abs(vec3<u32>(66185u, arg_1.x, 0u) << (~vec3<u32>(arg_1.x, arg_1.x, u_input.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 1u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, arg_1.x, 44163u))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, arg_1.x), vec3<u32>(70602u, arg_1.x, 4294967295u)) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.a | arg_1.x, ~countOneBits(u_input.a), u_input.a);
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, global0.x, var_1.b.x, global0.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(625f, var_1.b.x, -535f, 1265f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1312f, -1003f, var_1.b.x, var_1.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, arg_2.b.x, -1047f, 315f) + vec4<f32>(arg_2.b.x, 506f, var_1.b.x, var_1.b.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -1000f, -762f, global0.x) + vec4<f32>(-1314f, -331f, global0.x, var_1.b.x)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.x, arg_2.b.x, -1187f, global0.x), vec4<f32>(arg_2.b.x, -317f, arg_2.b.x, arg_2.b.x), select(vec4<bool>(arg_2.a, false, var_1.a, arg_2.a), vec4<bool>(var_1.a, arg_2.a, true, arg_2.a), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1232f, 441f, var_1.b.x) + vec4<f32>(110f, arg_2.b.x, arg_2.b.x, var_1.b.x)), !func_2(-1482f, arg_2, arg_2))))));
    var var_3 = abs(abs(~(vec4<u32>(var_0.x, 4294967295u, 1u, 7445u) >> (vec4<u32>(0u, 45123u, 0u, arg_1.x) % vec4<u32>(32u))))) | abs(~vec4<u32>(0u, 1u >> (var_0.x % 32u), ~12210u, var_0.x));
    var_1 = arg_2;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, 1682f, global0.x, -903f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, global0.x, -166f, 380f)) - vec4<f32>(-1033f, var_2.x, var_2.x, 1244f))))), vec4<f32>(_wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(round(1442f))), var_1.b.x, _wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + 794f) * _wgslsmith_div_f32(var_1.b.x, arg_2.b.x))), arg_2.b.x));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_1(all(!vec3<bool>(true, false, 409f >= arg_2.x)), arg_2.ywy);
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -2289f, arg_0)) * vec3<f32>(arg_1, 907f, -604f)))) - arg_2.zzy));
    let var_2 = select(vec2<u32>(0u, 42718u | u_input.a), ~select(select(vec2<u32>(u_input.a, 17982u), vec2<u32>(32024u, u_input.a), var_0.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 28671u)), false), arg_2.x <= _wgslsmith_f_op_f32(f32(-1f) * -2345f)) | max(select(vec2<u32>(u_input.a & 4294967295u, 70146u), ~max(vec2<u32>(12234u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_1.a), var_1.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), false), true)), vec2<u32>(u_input.a, ~abs(u_input.a)));
    let var_3 = ~1i;
    global0 = _wgslsmith_f_op_vec3_f32(-var_0.b);
    return arg_2.yxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(2147483647i, ~(~(-45492i)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(floor(global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-101f, global0.x))), global0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_f_op_f32(step(-1454f, -584f)), 276f)))));
    let var_1 = global0.yz;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(-1691f, -1535f, _wgslsmith_f_op_vec4_f32(func_1(var_0, vec2<u32>(u_input.a, u_input.a), Struct_1(true, vec3<f32>(global0.x, -957f, 1135f)))))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(543f, global0.x, -1172f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 155f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, global0.x)) - vec3<f32>(247f, 201f, global0.x))))));
    var var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~countOneBits(-9332i), _wgslsmith_add_i32(~var_0, var_0)), vec2<i32>(var_0, var_0)), -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(15696i, var_0)) << ((vec2<u32>(4294967295u, 1u) >> (vec2<u32>(u_input.a, 39994u) % vec2<u32>(32u))) % vec2<u32>(32u)), -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0))));
    var_2 = _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_0), vec2<i32>(var_0, var_0)), vec2<i32>(var_0, 2147483647i)) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(4294967295u, 15227u))) & ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), max(firstTrailingBit(max(~vec2<i32>(var_0, 21330i), reverseBits(vec2<i32>(var_0, 1i)))), select(-vec2<i32>(-1i, var_2.x) << (vec2<u32>(72088u, 54672u) % vec2<u32>(32u)), ~(~vec2<i32>(52009i, var_0)), func_3(var_2.x, vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), _wgslsmith_div_vec2_f32(global0.zx, vec2<f32>(870f, -766f)), func_3(48693i, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), global0.zx, vec2<bool>(false, false)).yx).zy)));
    var_2 = vec2<i32>(var_0, -var_0) >> (vec2<u32>(u_input.a, 44795u) % vec2<u32>(32u));
    var var_3 = Struct_1(true, vec3<f32>(var_1.x, 1642f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(394f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.x, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, 11472i, var_2.x) & vec3<i32>(2147483647i, -3017i, 31246i), vec3<i32>(-1i, 16039i, var_0), -1417f < global0.x), ~(vec3<i32>(-25819i, 0i, var_2.x) >> (vec3<u32>(54004u, 1u, u_input.a) % vec3<u32>(32u)))), -(~vec3<i32>(var_0, 1i, -2147483647i)) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(21761u, u_input.a, 0u)) >> (~vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~u_input.a) ^ u_input.a);
}

