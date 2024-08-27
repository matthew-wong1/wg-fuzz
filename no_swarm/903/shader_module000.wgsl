struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = ~u_input.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.b)))), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1384f + _wgslsmith_f_op_f32(select(global1.b, 1317f, global0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, arg_0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global1.b)), global1.b, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(176f, arg_0.b)), 376f))));
    var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(-vec3<i32>(var_0.x | u_input.b, _wgslsmith_mult_i32(u_input.a.x, 21059i), 1i)), select(u_input.a << (_wgslsmith_div_vec3_u32(vec3<u32>(global1.a, global1.a, 29344u), vec3<u32>(0u, arg_0.a, global1.a)) % vec3<u32>(32u)), vec3<i32>(u_input.b, _wgslsmith_div_i32(var_0.x, 886i), _wgslsmith_add_i32(3111i, -74268i)), !any(global0.zwy)) >> ((abs(~vec3<u32>(1u, 67494u, 29109u)) ^ ~vec3<u32>(1u, arg_0.a, global1.a)) % vec3<u32>(32u)));
    global1 = arg_0;
    return vec4<bool>(global0.x, _wgslsmith_add_i32(u_input.a.x, u_input.b) <= -1i, !select(any(global0.yww), !(global0.x && false), global0.x), true);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    var var_0 = vec4<bool>(false, all(vec3<bool>(select(false, any(vec3<bool>(global0.x, global0.x, false)), all(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), false, false)), false, any(!global0.zx));
    var_0 = !(!select(select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, false), true), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, false, true, global0.x), vec4<bool>(true, global0.x, true, false)), arg_1.x == global1.b), func_3(Struct_1(global1.a, -1670f)), vec4<bool>(true, false, func_3(Struct_1(global1.a, 1463f)).x, global0.x)));
    let var_1 = false;
    let var_2 = func_3(Struct_1(~(~36559u), -564f)).x;
    global1 = Struct_1(abs(~reverseBits(1u)), _wgslsmith_f_op_f32(-244f * 1f));
    return _wgslsmith_div_u32(global1.a, global1.a);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(abs(countOneBits(~(~1655u))), _wgslsmith_f_op_f32(-arg_2));
    var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(max(-1i, ~u_input.a.x), u_input.a.x, 1i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_div_i32(-31676i, u_input.a.x))), vec4<i32>(u_input.b, -15058i, u_input.b >> ((1u ^ var_0.a) % 32u), reverseBits(20377i)));
    global0 = !vec4<bool>(all(select(!global0.zx, select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(global0.zy, vec2<bool>(global0.x, false), true))), !((var_1.x >= -1i) != false), true, all(!global0.xxx) && (var_0.a >= min(4294967295u, global1.a)));
    global0 = !vec4<bool>(((18250i >> (global1.a % 32u)) & select(0i, -25176i, global0.x)) > 1i, (~0u | _wgslsmith_sub_u32(global1.a, var_0.a)) != 1u, !select(true, global0.x, global0.x) | global0.x, true);
    var var_2 = Struct_2(var_0);
    return var_0;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> vec2<u32> {
    global1 = Struct_1(global1.a, global1.b);
    var var_0 = func_4(~(func_2(295f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -484f)))) >> (func_2(arg_1.x, arg_1.xx) % 32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-339f, arg_2, 712f), _wgslsmith_div_vec3_f32(vec3<f32>(199f, arg_2, -464f), arg_1.xzy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, global1.b, arg_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xyw)))), _wgslsmith_f_op_f32(f32(-1f) * -769f));
    let var_1 = vec2<i32>(1i, u_input.b);
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(arg_2 - global1.b));
    let var_3 = ~_wgslsmith_mod_u32(64895u, _wgslsmith_mod_u32(~var_2.a, func_4(var_0.a, vec3<f32>(1433f, var_2.b, var_0.b), var_0.b).a));
    return vec2<u32>(~(~var_0.a), ~(~global1.a) >> (var_0.a % 32u));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(func_4(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(620f, arg_1, 349f) * vec3<f32>(global1.b, global1.b, global1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b, arg_1, arg_1), vec3<f32>(arg_1, -754f, 403f))))), _wgslsmith_f_op_f32(-global1.b)));
    return !select(vec4<bool>(false, any(vec3<bool>(true, global0.x, false)), all(global0.xy), global0.x), vec4<bool>(false, all(vec3<bool>(false, true, global0.x)), true && global0.x, global0.x), vec4<bool>(global0.x, !all(global0.xz), false, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-1i, global1.b, func_1(~(21272u & global1.a) <= (~60527u | abs(global1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, 882f, global1.b)))), _wgslsmith_f_op_f32(floor(-215f))));
    global0 = select(vec4<bool>(~global1.a < ~(~global1.a), true, any(global0.ww), !any(!vec2<bool>(var_0.x, global0.x))), !vec4<bool>(true, true, global1.a > global1.a, true), func_5(_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.a.zy), u_input.a.zz), 210f, vec2<u32>(global1.a, 0u)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, 2069f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, -478f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1518f, -152f) + vec2<f32>(-220f, global1.b)))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global1.b)));
    var var_2 = ~(~_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global1.a, 11285u) & vec3<u32>(25851u, global1.a, 15988u), ~vec3<u32>(61670u, 56318u, global1.a))));
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-649f * global1.b)), 416f)));
    let var_3 = 231f;
    var_2 = 0u;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(35579u, 0u, global1.a)), abs(~vec3<u32>(global1.a, global1.a, global1.a))), func_2(_wgslsmith_f_op_f32(-var_1.x), vec2<f32>(-1000f, var_1.x))));
}

