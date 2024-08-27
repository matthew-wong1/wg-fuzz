struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = arg_2;
    var var_1 = reverseBits(u_input.a.x);
    let var_2 = ~countOneBits(64200u);
    global0 = Struct_2(global0.a);
    var var_3 = vec4<f32>(1521f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_2.a.x)))), -603f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-819f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1310f, 727f)))), true)));
    return (min(abs(vec2<i32>(2147483647i, arg_1.a.b)), vec2<i32>(reverseBits(arg_1.a.b), -18630i | global0.a.b)) | ((_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a.b, global0.a.b), vec2<i32>(global0.a.b, arg_1.a.b)) ^ vec2<i32>(0i, arg_1.a.b)) | -vec2<i32>(1i, 1i))) ^ -abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(15561i, 57088i), vec2<i32>(global0.a.b, global0.a.b)), vec2<i32>(-1i, arg_1.a.b)));
}

fn func_2() -> f32 {
    let var_0 = Struct_5(abs(func_3(false, Struct_2(Struct_1(global0.a.a, 7209i, global0.a.c)), Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1772f, -873f), vec2<f32>(-250f, -1424f), vec2<bool>(false, false)))))), u_input.b);
    let var_1 = global0.a;
    let var_2 = abs(reverseBits(~global0.a.a));
    global1 = ~var_1.a;
    global1 = 4294967295u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-216f, -808f), _wgslsmith_f_op_f32(ceil(-1869f))), -949f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(2038f * _wgslsmith_f_op_f32(trunc(331f))), _wgslsmith_f_op_f32(f32(-1f) * -1087f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1847f - -1318f))), 1f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -385f)))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_3(!select(!select(global0.a.c, vec3<bool>(true, global0.a.c.x, arg_2), false), global0.a.c, global0.a.c), Struct_2(global0.a), _wgslsmith_f_op_f32(step(885f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)))))), arg_2 && (~(~global0.a.b) != -1i));
    let var_1 = vec2<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(f32(-1f) * -716f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, -959f)) * 692f))));
    let var_2 = Struct_2(Struct_1(110419u, -global0.a.b, vec3<bool>(arg_2 || arg_2, !var_0.b.a.c.x, global0.a.c.x)));
    var var_3 = Struct_4(var_1);
    global0 = var_2;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = firstTrailingBit(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, -36066i, arg_0.b), vec4<i32>(-2147483647i, arg_1, arg_1, 1i), vec4<i32>(4886i, global0.a.b, -18915i, arg_0.b) >> (vec4<u32>(0u, 1u, u_input.a.x, 1245u) % vec4<u32>(32u))), min(~vec4<i32>(-26745i, 1i, -20342i, -22079i), ~vec4<i32>(arg_0.b, global0.a.b, -18612i, arg_0.b))) << (select(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(104171u, global0.a.a, arg_0.a, arg_0.a), vec4<u32>(60271u, 1u, u_input.a.x, arg_0.a)), ~45630u, _wgslsmith_mod_u32(global0.a.a, arg_0.a)), max(~vec4<u32>(63915u, 43633u, 1u, 1u), vec4<u32>(4294967295u, u_input.a.x, 57678u, 0u)), select(vec4<bool>(global0.a.c.x, arg_0.c.x, global0.a.c.x, global0.a.c.x), !vec4<bool>(false, global0.a.c.x, global0.a.c.x, true), arg_0.c.x)) % vec4<u32>(32u)));
    let var_1 = false;
    let var_2 = func_4(arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(max(-1089f, _wgslsmith_f_op_f32(func_2())))), 473f), true, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), u_input.a));
    let var_3 = Struct_3(!func_4(-189f, arg_2.a.x, var_2.a.c.x, 4294967295u).a.c, var_2, _wgslsmith_f_op_f32(-arg_2.a.x), any(vec2<bool>(true, !(1791f < arg_2.a.x))));
    let var_4 = vec2<bool>(true, _wgslsmith_mult_i32(min(_wgslsmith_mult_i32(var_2.a.b, 14794i), arg_1), 14068i) > ~func_4(_wgslsmith_div_f32(var_3.c, var_3.c), 534f, var_3.b.a.c.x == var_3.b.a.c.x, ~u_input.b).a.b);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(global0.a, 1i, Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1236f, 1176f), vec2<f32>(104f, -783f))))));
    var var_0 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(515f - -1494f) * -714f)))), 4294967295u >= ~_wgslsmith_add_u32(~1u, ~u_input.b), abs(global0.a.a));
    var_0 = Struct_2(global0.a);
    let var_1 = Struct_4(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1412f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1533f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, var_1.a, true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) - var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a - var_1.a))))));
    var var_3 = !(!vec2<bool>(!global0.a.c.x || true, !(u_input.b <= 4294967295u)));
    let var_4 = vec4<bool>(true, global0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f * _wgslsmith_f_op_f32(f32(-1f) * -216f)) - var_1.a.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f - -542f))), false);
    var var_5 = select(var_0.a.c, !vec3<bool>(min(0u, global0.a.a) > ~23373u, (true | var_4.x) & any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-var_2.a.x) >= _wgslsmith_f_op_f32(572f + var_2.a.x)), func_1(func_4(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x, true, 57291u).a, -_wgslsmith_add_i32(-6973i, 0i) & var_0.a.b, var_1).c);
    global0 = func_4(var_2.a.x, -1440f, all(!select(vec3<bool>(var_4.x, var_0.a.c.x, var_4.x), vec3<bool>(true, global0.a.c.x, var_0.a.c.x), func_1(global0.a, global0.a.b, var_1).c)), var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(sign(-103f)))))));
}

