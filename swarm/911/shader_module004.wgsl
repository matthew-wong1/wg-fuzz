struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.a);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(var_0.x * -1697f), global0.a.x, _wgslsmith_f_op_f32(-738f - global0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, global0.a.x, -601f, -897f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, global0.a.x, -771f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-290f, -774f), -1281f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -2031f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(347f, -607f, var_0.x, var_0.x)), vec4<f32>(global0.a.x, global0.a.x, 1172f, _wgslsmith_f_op_f32(570f - var_0.x)), vec4<bool>(any(global0.d.yy), true, true, global0.d.x)))));
    var var_2 = vec2<i32>(u_input.a.x, 48281i & u_input.a.x);
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<bool>) -> vec3<bool> {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, -1841f)), _wgslsmith_f_op_f32(503f - global0.a.x))), all(arg_0), ~global0.c, select(select(vec3<bool>(1u > global0.c, true, global0.d.x), arg_2.ywx, vec3<bool>(true, arg_1, false)), global0.d, global0.d));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)), false, ~countOneBits(global0.c), vec3<bool>(false, _wgslsmith_div_i32(-1i, min(u_input.a.x, 26165i)) > 1i, (firstLeadingBit(35908u) > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53071u, 88966u), vec3<u32>(global0.c, global0.c, global0.c))) || arg_1));
    global0 = Struct_1(global0.a, true, global0.c, vec3<bool>(arg_1, true, 4294967295u > _wgslsmith_sub_u32(global0.c, abs(1u))));
    global0 = Struct_1(vec2<f32>(560f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(972f, global0.a.x)) + _wgslsmith_f_op_f32(abs(-1000f)))))), !arg_1 && all(vec4<bool>(arg_0.x, true, arg_2.x | false, !global0.b)), 14556u, vec3<bool>(all(arg_0), !(true || !global0.b), true));
    var var_0 = -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(0i, -26469i, -1i, 1i)), vec4<i32>(reverseBits(-2147483647i), u_input.a.x, u_input.a.x, -2147483647i)), vec4<i32>(u_input.a.x, firstTrailingBit(reverseBits(u_input.a.x)), 2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 1i), u_input.a.x)));
    return select(select(global0.d, vec3<bool>(!arg_0.x, global0.b, true), arg_2.wzy), vec3<bool>(global0.d.x | (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global0.c, global0.c, 54628u), vec4<u32>(global0.c, global0.c, 1u, global0.c)) <= global0.c), true, u_input.a.x != 1i), !select(!(!arg_2.wyy), vec3<bool>(global0.a.x < -1231f, true, 1043f < global0.a.x), vec3<bool>(!arg_0.x, false, global0.d.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = u_input.a.zy;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-986f))), -410f), !func_3(vec4<i32>(var_0.x, _wgslsmith_add_i32(37909i, -10751i), var_0.x, -68650i)), _wgslsmith_mult_u32(global0.c, 4294967295u), global0.d);
    var var_1 = max(abs(-vec3<i32>(var_0.x, var_0.x, 19594i)) << (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(max(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, max(u_input.a, u_input.a), vec3<i32>(-14072i, var_0.x, 24659i))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -1i, -1i), select(vec3<i32>(9700i, 41074i, 36446i), vec3<i32>(u_input.a.x, 65i, var_0.x), arg_1.d.x)), u_input.a)));
    global0 = arg_1;
    let var_2 = reverseBits(~(_wgslsmith_sub_u32(0u, arg_1.c) << (arg_1.c % 32u))) << (0u % 32u);
    return -u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = ~(-2147483647i) | func_5(!func_4(!vec4<bool>(true, global0.d.x, global0.d.x, true), func_3(vec4<i32>(arg_0.x, 0i, arg_0.x, -2147483647i)), select(vec4<bool>(global0.d.x, global0.d.x, false, false), vec4<bool>(global0.d.x, global0.b, arg_1.b, true), false)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-400f * arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)), global0.c >= _wgslsmith_sub_u32(1u, arg_1.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.c, 1u), vec2<u32>(0u, arg_1.c)), select(arg_1.d, vec3<bool>(arg_1.b, true, arg_1.d.x), !global0.b)), ~(~global0.c));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, global0.c, global0.c), abs(abs(vec3<u32>(arg_1.c, 43908u, 21746u)))), 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 1u) & vec2<u32>(global0.c, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(45053u, arg_1.c), vec2<u32>(arg_1.c, 1u))) >> (arg_1.c % 32u));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-1143f, 441f) + _wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, 1156f))))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a * arg_3.a) * _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(-1i, -17102i), Struct_1(global0.a, true, 29395u, vec3<bool>(global0.b, global0.b, false)))))))), global0.d.x && (_wgslsmith_f_op_vec2_f32(func_2(-u_input.a.yx, Struct_1(global0.a, global0.d.x, 60651u, global0.d))).x > _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(abs(arg_3.a.x))))), 77907u, global0.d);
    global0 = arg_3;
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a * vec2<f32>(805f, arg_3.a.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(709f, global0.a.x) - vec2<f32>(-166f, -1267f)))))), true, arg_3.c, vec3<bool>(true, true, true));
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(443f, _wgslsmith_f_op_f32(-global0.a.x), 297f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_3.a.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, 1571f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_3.a.x, -1000f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 2113f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - global0.a.x), -411f))))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -659f)) - arg_3.a.x), global0.a.x, 1488f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) + var_1)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f + 448f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1016f, arg_3.a.x) - _wgslsmith_div_f32(-627f, var_1.x)), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -533f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1530f, var_0) - vec3<f32>(var_0, 1349f, -789f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global0.d.yz, 9587u, u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, var_0) - global0.a), !global0.d.x, 1u << (global0.c % 32u), !vec3<bool>(global0.b, global0.b, global0.b)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1451f, 151f, var_0), vec3<f32>(global0.a.x, 1488f, global0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-3246f * -445f), 1000f, _wgslsmith_f_op_f32(exp2(var_0))), global0.b))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.yx * global0.a), !func_4(select(!vec4<bool>(global0.b, true, true, global0.d.x), select(vec4<bool>(false, true, false, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(true, global0.b, true, true)), vec4<bool>(false, global0.b, true, global0.b)), func_4(!vec4<bool>(global0.d.x, global0.b, false, true), global0.c != 1u, !vec4<bool>(global0.b, global0.b, false, true)).x, vec4<bool>(global0.d.x, select(global0.d.x, global0.d.x, false), true, func_4(vec4<bool>(global0.b, global0.d.x, global0.b, true), false, vec4<bool>(false, false, global0.b, true)).x)).x, _wgslsmith_sub_u32(select(firstTrailingBit(select(29342u, 0u, global0.b)), _wgslsmith_add_u32(0u, 1u), -1661f > var_0), global0.c), global0.d);
    var var_2 = global0.a;
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_1);
}

