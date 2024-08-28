struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<bool>) -> vec2<bool> {
    global0 = select(!select(select(!vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, true, global0.x), true), !(!vec4<bool>(arg_2.x, false, true, false)), !any(vec3<bool>(false, arg_2.x, true))), vec4<bool>(true, false | (_wgslsmith_add_i32(arg_0.x, arg_0.x) > min(-2147483647i, u_input.c.x)), !all(global0.yww), u_input.d < u_input.c.x), vec4<bool>(all(vec4<bool>(u_input.a.x > 4294967295u, global0.x, arg_1 != arg_1, !global0.x)), !arg_2.x, arg_2.x, all(vec4<bool>(global0.x, true, global0.x, global0.x)) & global0.x));
    let var_0 = Struct_2(Struct_1(vec4<bool>(any(!arg_2), global0.x, !(false && arg_2.x), false), _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, arg_1, arg_1, -2031f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -368f, -178f, arg_1), vec4<f32>(297f, arg_1, arg_1, 683f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 900f, arg_1) * vec4<f32>(798f, arg_1, arg_1, -559f))), u_input.a.x, -1000f));
    let var_1 = Struct_2(var_0.a);
    var var_2 = Struct_3(true, var_1, Struct_1(var_0.a.a, ~var_0.a.d & _wgslsmith_dot_vec3_u32(vec3<u32>(66020u, 4294967295u, var_0.a.b), vec3<u32>(0u, var_0.a.d, 30050u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(891f, _wgslsmith_f_op_f32(step(var_0.a.e, arg_1)), 1f, 745f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.e, -662f, arg_1, arg_1)))), ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b, var_1.a.b, 23747u, var_1.a.d), vec4<u32>(var_1.a.d, var_1.a.b, u_input.a.x, var_1.a.b)), var_1.a.b, all(vec2<bool>(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(ceil(-2645f))));
    var var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~(var_2.c.b << (93871u % 32u)), max(0u, 29043u) | _wgslsmith_dot_vec4_u32(vec4<u32>(7347u, u_input.a.x, 15960u, 66617u), vec4<u32>(1u, u_input.a.x, 1u, 0u)), abs(abs(u_input.a.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(50391u, 1u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) ^ abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.d, 1u, 36726u), vec3<u32>(var_0.a.d, var_2.c.d, var_0.a.b))));
    return !vec2<bool>(true, (var_2.c.e <= _wgslsmith_f_op_f32(var_1.a.e - var_1.a.c.x)) == (var_1.a.a.x & false));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> bool {
    global0 = vec4<bool>(true, arg_0.a.x, all(global0.wx), true);
    var var_0 = vec4<bool>(!(!(!select(arg_2, false, false))), any(!select(func_3(u_input.c, 462f, arg_0.a.yzy), vec2<bool>(false, true), func_3(vec2<i32>(u_input.d, 36570i), 547f, arg_0.a.xxx))), false, arg_0.c.x < _wgslsmith_f_op_f32(-arg_0.e));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~48806u) & _wgslsmith_mod_u32(u_input.a.x, 4294967295u), reverseBits(u_input.a.x)), arg_0.b);
    var var_2 = arg_0;
    var_2 = arg_0;
    return !func_3(-vec2<i32>(u_input.b >> (1u % 32u), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f - arg_0.c.x)), vec3<bool>(true, true, true)).x;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = all(select(vec4<bool>(func_2(Struct_1(vec4<bool>(false, false, arg_2.x, global0.x), arg_1, vec4<f32>(-879f, arg_0.x, arg_0.x, arg_0.x), u_input.a.x, 1442f), _wgslsmith_add_i32(-1i, u_input.b), arg_2.x | global0.x, vec3<f32>(-715f, 978f, -170f)), true, func_2(Struct_1(arg_2, u_input.a.x, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -740f), u_input.a.x, -2167f), 2147483647i, false | global0.x, vec3<f32>(arg_0.x, -880f, arg_0.x)), u_input.c.x < u_input.c.x), arg_2, select(select(vec4<bool>(global0.x, true, arg_2.x, false), !vec4<bool>(true, global0.x, true, arg_2.x), !global0.x), vec4<bool>(true, false, 1i == u_input.c.x, arg_2.x), !arg_2.x && global0.x)));
    global0 = !select(arg_2, !select(select(vec4<bool>(global0.x, arg_2.x, global0.x, global0.x), arg_2, arg_2), arg_2, !arg_2.x), arg_2);
    var var_1 = select(4294967295u == abs(reverseBits(countOneBits(u_input.a.x))), true, 1u != _wgslsmith_clamp_u32(abs(countOneBits(u_input.a.x)), max(~0u, _wgslsmith_sub_u32(0u, arg_1)), u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -939f), 606f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -365f)))))));
    var_1 = arg_2.x;
    return Struct_2(Struct_1(!select(vec4<bool>(global0.x, false, arg_2.x, false), !vec4<bool>(false, global0.x, arg_2.x, true), select(arg_2, arg_2, global0.x)), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, var_2.x, arg_0.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1401f, arg_0.x, arg_0.x, 658f) - vec4<f32>(-809f, arg_0.x, arg_0.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, -792f, 1427f, var_2.x) * vec4<f32>(1823f, 602f, arg_0.x, -1919f)))), 4294967295u, -175f));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_1(_wgslsmith_f_op_vec2_f32(arg_2.a.c.xz + vec2<f32>(arg_2.a.c.x, 410f)), _wgslsmith_div_u32(0u, arg_2.a.b << (81892u % 32u)), func_1(arg_2.a.c.xz, u_input.a.x, select(vec4<bool>(global0.x, arg_2.a.a.x, global0.x, arg_2.a.a.x), vec4<bool>(global0.x, false, false, true), true)).a.a).a.c));
    let var_1 = true;
    let var_2 = vec3<u32>(1u, u_input.a.x, 40749u);
    var var_3 = vec4<bool>(!any(vec2<bool>(true, func_1(arg_2.a.c.xy, 24984u, arg_2.a.a).a.a.x)), func_1(vec2<f32>(arg_2.a.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2.a.e))))), 11542u, select(vec4<bool>(true, all(vec4<bool>(false, true, global0.x, true)), var_0.x <= arg_2.a.e, true), select(vec4<bool>(false, true, false, arg_2.a.a.x), arg_2.a.a, var_1), select(vec4<bool>(var_1, arg_2.a.a.x, global0.x, false), vec4<bool>(var_1, var_1, true, true), select(arg_2.a.a, arg_2.a.a, arg_2.a.a)))).a.a.x, all(arg_2.a.a.yzz), arg_2.a.a.x);
    let var_4 = firstLeadingBit(~vec4<u32>(u_input.a.x, var_2.x, abs(u_input.a.x), var_2.x));
    return arg_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!any(vec3<bool>(false, true, global0.x)), all(!func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, u_input.b), vec4<i32>(u_input.d, u_input.b, -778i, u_input.b)), u_input.c.x, func_1(vec2<f32>(814f, 635f), 19734u, vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), !global0.x, false);
    global0 = !vec4<bool>(all(global0.wz), -u_input.d > -59338i, true, global0.x);
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(518f)), _wgslsmith_f_op_f32(f32(-1f) * -751f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, 1116f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, -1754f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-421f, 1049f), vec2<f32>(1053f, 2124f), global0.x))))))), 4294967295u >> (func_1(vec2<f32>(-473f, -544f), u_input.a.x, vec4<bool>(true, true, true, global0.x & global0.x)).a.b % 32u), select(func_1(vec2<f32>(-877f, _wgslsmith_f_op_f32(max(-126f, -1028f))), 11152u, !func_4(u_input.d, u_input.c.x, Struct_2(Struct_1(vec4<bool>(true, false, global0.x, global0.x), 1u, vec4<f32>(1671f, -1613f, 416f, 1000f), u_input.a.x, -632f)))).a.a, vec4<bool>(true, all(vec3<bool>(true, global0.x, true)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1103f, -242f)), u_input.a.x, select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), true)).a.a.x, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2208f, 2202f)), u_input.a.x, func_4(1i, -1i, Struct_2(Struct_1(vec4<bool>(global0.x, false, global0.x, false), 6837u, vec4<f32>(-1517f, 1279f, -331f, -1000f), u_input.a.x, -440f)))).a.a.x), select(!func_1(vec2<f32>(-1064f, -1464f), 35533u, vec4<bool>(false, global0.x, global0.x, global0.x)).a.a.x, global0.x, all(global0.wxx)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_add_i32(-34507i, firstLeadingBit(2147483647i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(-29412i, u_input.b, u_input.c.x), vec3<i32>(14291i, u_input.c.x, 12498i) & vec3<i32>(-5914i, u_input.d, 13671i))), 39496u, (-(vec3<i32>(19051i, 34407i, 2147483647i) & vec3<i32>(u_input.d, -44318i, 40596i)) & (vec3<i32>(18378i, -2147483647i, u_input.c.x) >> (~vec3<u32>(var_0.d, 4294967295u, var_0.d) % vec3<u32>(32u)))) >> (vec3<u32>(12560u, ~select(37013u, var_0.d, true), 4294967295u) % vec3<u32>(32u)));
}

