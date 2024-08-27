struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_4 {
    let var_0 = ~(~(~vec3<u32>(1u, 1u, 1u)));
    let var_1 = ~abs(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(919u, var_0.x, 0u), ~vec3<u32>(var_0.x, 4294967295u, 0u)), var_0.x, ~reverseBits(var_0.x)));
    global0 = array<bool, 12>();
    let var_2 = Struct_1(vec4<bool>(!global0[_wgslsmith_index_u32(~19396u, 12u)], true || (0i != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d.x, -30413i, -44318i), u_input.c)), all(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 12u)], true, true, false)), !global0[_wgslsmith_index_u32(var_0.x, 12u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1044f, -1000f)))), 153f), var_1.x, firstLeadingBit(u_input.b << ((vec3<u32>(var_0.x, 4294967295u, 0u) >> (vec3<u32>(var_0.x, var_0.x, 50887u) % vec3<u32>(32u))) % vec3<u32>(32u))), -20851i);
    var var_3 = Struct_4(_wgslsmith_div_f32(-683f, var_2.b));
    return Struct_4(var_2.b);
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-510f, 1425f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-885f, -822f) + vec2<f32>(924f, -992f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) * vec2<f32>(1179f, 1124f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-654f, -741f), vec2<f32>(439f, -1179f), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-834f, 178f) + vec2<f32>(-861f, 237f)))))));
    var var_1 = var_0.a.x;
    var var_2 = func_2();
    var var_3 = var_0;
    var_1 = _wgslsmith_f_op_f32(exp2(var_0.a.x));
    return Struct_4(-1970f);
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    let var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = vec3<u32>(var_0.x, var_0.x, 0u);
    var var_2 = ~_wgslsmith_mult_i32(-u_input.c.x, 15828i);
    let var_3 = arg_1;
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(1711f, -2195f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, arg_1.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), 1283f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(363f, arg_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -914f))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -1012f) * vec2<f32>(var_3.a, var_3.a)), _wgslsmith_f_op_vec2_f32(-var_4.a)), var_4.a))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_0 = true;
    let var_1 = func_3(all(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(36534u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(global0[_wgslsmith_index_u32(7895u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false), global0[_wgslsmith_index_u32(30331u, 12u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(23962u, 12u)], false, global0[_wgslsmith_index_u32(45143u, 12u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(46444u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)], false)), global0[_wgslsmith_index_u32(~4294967295u, 12u)]), vec3<bool>(true, true, true))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) * -889f)));
    var var_2 = Struct_1(!select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(7867u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false, global0[_wgslsmith_index_u32(0u, 12u)])), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(58339u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(3198u, 12u)], false, true), false), false & global0[_wgslsmith_index_u32(1u, 12u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(12461u, 12u)], false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(33657u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), !vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 12u)], false, true), !vec4<bool>(global0[_wgslsmith_index_u32(16778u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], true)), !(true | global0[_wgslsmith_index_u32(0u, 12u)])), 306f, _wgslsmith_mult_u32(1u, firstLeadingBit(1u)), u_input.c.xyx, ~(-2147483647i));
    return 1508f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -77435i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(true, func_1(u_input.d.wy)), ~(_wgslsmith_clamp_i32(-12463i, 3997i, var_0) | _wgslsmith_add_i32(-5050i, 29298i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1600f, 457f, -1262f, -1464f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1149f, 585f, -1412f, -1254f) * vec4<f32>(-1719f, -888f, 579f, -712f))) * vec4<f32>(1f, 1f, 1f, 1f)))) * _wgslsmith_f_op_f32(f32(-1f) * -912f));
    global0 = array<bool, 12>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-573f))));
    global0 = array<bool, 12>();
    let var_3 = _wgslsmith_add_vec4_i32(~(~(vec4<i32>(-6873i, -1i, var_0, -1i) | vec4<i32>(u_input.a, var_0, 0i, u_input.a))), select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 31746i, -49614i, var_0), vec4<i32>(-1i, 2147483647i, -25366i, 2147483647i)), ~u_input.c, !vec4<bool>(true, true, global0[_wgslsmith_index_u32(83745u, 12u)], true)) & _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), u_input.d >> (vec4<u32>(0u, 19187u, 1u, 2112u) % vec4<u32>(32u)))) << (abs((select(vec4<u32>(54130u, 0u, 39227u, 0u), vec4<u32>(24209u, 15479u, 22660u, 9663u), global0[_wgslsmith_index_u32(4294967295u, 12u)]) << (~vec4<u32>(86043u, 1u, 8431u, 0u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(46299u, 54618u, 1u, 0u), vec4<u32>(1u, 35592u, 114779u, 50588u))) % vec4<u32>(32u));
    var_1 = var_2.a;
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_mod_i32(abs(var_3.x >> (10299u % 32u)), ~(-5357i)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(-567f, var_2.a, func_3(global0[_wgslsmith_index_u32(~1u, 12u)], func_1(vec2<i32>(var_3.x, var_3.x))).a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, var_2.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a, -1244f, var_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), var_2.a, _wgslsmith_f_op_f32(abs(var_2.a)))))), -1000f);
}

