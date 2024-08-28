struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_5 = Struct_5(vec2<bool>(true, false), 2274f, vec2<i32>(28924i, 0i), Struct_2(Struct_1(vec2<f32>(-375f, 1034f), vec4<i32>(-51001i, 7052i, -32985i, -21542i), vec4<bool>(false, true, false, true), -78493i), vec4<u32>(0u, 0u, 4294967295u, 0u), Struct_1(vec2<f32>(883f, 1234f), vec4<i32>(0i, 13446i, 0i, 0i), vec4<bool>(false, false, true, false), 1i), vec4<f32>(365f, 1000f, -811f, -1000f)));

var<private> global2: vec4<f32> = vec4<f32>(1314f, -1888f, 1000f, 1150f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = arg_0.d.xy;
    var var_1 = Struct_2(global1.d.a, global1.d.b, Struct_1(_wgslsmith_f_op_vec2_f32(step(global2.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.zx - global1.d.c.a) - _wgslsmith_f_op_vec2_f32(-global2.xy)))), select(~vec4<i32>(-4202i, -2147483647i, -1i, -2147483647i), global1.d.c.b, true), !vec4<bool>(arg_0.e.x, all(vec2<bool>(global1.d.c.c.x, global1.d.c.c.x)), !global1.a.x, false), -1i), global1.d.d);
    let var_2 = vec2<f32>(var_1.d.x, var_1.c.a.x);
    var var_3 = global2.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, arg_0.b.x), var_2)), !select(vec2<bool>(var_1.c.c.x, var_1.c.c.x), var_1.a.c.yz, true)))), _wgslsmith_div_vec4_i32(firstLeadingBit(global1.d.a.b), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global1.d.c.b.x, 70660i, 1i, var_1.a.d)), var_1.c.b ^ _wgslsmith_mod_vec4_i32(var_1.c.b, vec4<i32>(var_1.c.d, global1.d.c.d, u_input.b, 63338i)))), select(select(vec4<bool>(true, false, global1.a.x, var_1.a.c.x != false), select(!global1.d.c.c, vec4<bool>(var_1.a.c.x, true, global1.a.x, global1.a.x), arg_0.d.x == 1u), vec4<bool>(var_1.c.c.x, false, var_1.c.c.x, true || arg_0.e.x)), var_1.c.c, !select(true, false, all(arg_0.e.zz))), min(_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.e), u_input.e));
    return ~abs(vec4<i32>(_wgslsmith_mod_i32(u_input.e, var_4.b.x), -8738i ^ var_4.d, global1.d.c.b.x, 2147483647i ^ countOneBits(global1.c.x)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(~global1.c.x, max(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, 1258f) - global1.d.c.a), vec4<f32>(-1373f, 569f, 1122f, global2.x), global1.d.d, _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 41575u), vec3<u32>(35652u, 3236u, u_input.c)), global1.d.a.c.xyy)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(7986i, -9596i, 1i, -46652i)), select(vec4<i32>(-2147483647i, -11338i, u_input.d.x, 1270i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, global1.d.c.b.x, u_input.a.x, global1.c.x), vec4<i32>(global1.d.c.b.x, u_input.a.x, global1.c.x, global1.c.x)), vec4<bool>(true, true, false, false)))), all(!(!vec4<bool>(global1.d.c.c.x, global1.d.c.c.x, true, true))), -u_input.a.x, global1.d.a.a.x);
    var var_1 = global1.d.a.b.yyw | select(var_0.b.ywy, ~vec3<i32>(global1.c.x | global1.d.a.d, global1.c.x ^ 42795i, u_input.e), vec3<bool>(any(select(arg_1, vec2<bool>(arg_1.x, false), global1.d.a.c.x)), var_0.c, all(global1.a)));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.x));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1147f);
    var var_3 = vec3<bool>(!arg_1.x & global1.d.a.c.x, true, arg_1.x);
    return global1.d.c;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = func_2(~_wgslsmith_mod_u32(0u, 1u), vec2<bool>(!all(global1.d.a.c), global2.x <= -1000f));
    let var_1 = Struct_5(vec2<bool>(max(18909u, _wgslsmith_dot_vec4_u32(global1.d.b, vec4<u32>(u_input.c, 48750u, arg_0.x, arg_0.x))) < (0u << (1u % 32u)), func_2(15880u | arg_0.x, !vec2<bool>(var_0.c.x, arg_1)).c.x), 2030f, _wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.b.yz), ~global1.c), Struct_2(func_2(0u, vec2<bool>(true, arg_1)), global1.d.b, Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global1.d.c.a, vec2<f32>(1181f, global1.d.a.a.x)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -43877i, -34793i, -4639i), global1.d.c.b), _wgslsmith_mult_i32(-43623i, u_input.d.x), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_0.b.x), -15361i), global1.d.c.c, min(-1i, func_2(global1.d.b.x, global1.a).b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(-475f, global0.x)), _wgslsmith_f_op_f32(-var_0.a.x), global2.x) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.d.d))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.d.c.a)));
    var var_2 = global2.x;
    var var_3 = var_1.d.d;
    return var_1.d;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.ww)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(func_1(global1.d.b.wzy, false).d.x, global1.b), global1.d.d.xx))));
    let var_0 = Struct_3(vec2<f32>(1435f, _wgslsmith_f_op_f32(1180f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1305f + global0.x) * 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1586f, global2.x, 335f, arg_2.c.a.x)), global1.d.d)) * global1.d.d), func_2(arg_2.b.x, vec2<bool>(any(vec2<bool>(false, true)), func_2(u_input.c, vec2<bool>(global1.a.x, true)).c.x)).c)), arg_2.d, arg_2.b.zyy, arg_2.c.c.www);
    var var_1 = global1.d.b.x;
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global1.d.a.a.x)), _wgslsmith_f_op_f32(step(850f, global1.b)), _wgslsmith_f_op_f32(step(global0.x, var_0.c.x)), _wgslsmith_div_f32(348f, 1019f))) * vec4<f32>(arg_2.c.a.x, 312f, arg_2.c.a.x, _wgslsmith_f_op_f32(round(-125f))))));
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.x) * _wgslsmith_f_op_f32(-func_1(arg_2.b.zzy, false).c.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 4294967295u, var_0.d.x), true).d.x + _wgslsmith_f_op_f32(-global2.x)))), -818f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1517f)), 1216f, 1044f != global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * 1417f))))), _wgslsmith_f_op_vec4_f32(-var_0.b));
    return Struct_3(_wgslsmith_div_vec2_f32(global1.d.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_2.c.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d + global1.d.d) * vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d.x))), -152f, -2549f, 846f)), global1.d.d, global1.d.b.wzy, global1.d.a.c.zxw);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> Struct_4 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(select(0i, -2147483647i | u_input.e, true), firstTrailingBit(1i)), global1.d.c.d);
    global0 = _wgslsmith_f_op_vec2_f32(-var_0.a);
    global2 = func_1(~(_wgslsmith_div_vec3_u32(func_4(arg_0.b.xx, arg_0.c, global1.d, vec4<i32>(arg_0.d, 0i, arg_0.b.x, -2147483647i)).d, var_0.d) & ~abs(vec3<u32>(var_0.d.x, global1.d.b.x, 4294967295u))), false).d;
    var var_2 = ~max(global1.d.b, reverseBits(vec4<u32>(~var_0.d.x, global1.d.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(global1.d.b.x, var_0.d.x)), arg_1.d.x)));
    return Struct_4(~1i, vec4<i32>((global1.c.x << (~0u % 32u)) << (firstTrailingBit(~var_0.d.x) % 32u), 0i, 1i, -countOneBits(30176i)), !select(all(func_2(var_2.x, arg_1.e.xx).c.wx), global1.d.a.c.x, true), arg_0.d, _wgslsmith_f_op_f32(-func_1(var_0.d, global1.d.b.x != 17672u).c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global1.d.c, func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, -38173i), vec2<i32>(2147483647i, 2147483647i)) << (~vec2<u32>(23122u, u_input.c) % vec2<u32>(32u)), select(vec4<bool>(all(global1.d.a.c), !global1.a.x, global1.d.b.x <= u_input.c, true), vec4<bool>(global1.d.a.c.x, true, global1.a.x, select(global1.d.a.c.x, true, global1.a.x)), !select(vec4<bool>(true, false, global1.d.a.c.x, global1.a.x), vec4<bool>(true, global1.d.c.c.x, false, false), false)), func_1(vec3<u32>(min(4294967295u, 4294967295u), max(u_input.c, 12825u), min(global1.d.b.x, 4294967295u)), true), global1.d.a.b), _wgslsmith_f_op_f32(325f * -304f));
    let var_1 = ~var_0.b.wz;
    let var_2 = !(!(!(_wgslsmith_f_op_f32(floor(492f)) <= global0.x)));
    global0 = global2.xy;
    var var_3 = _wgslsmith_add_i32(2147483647i, ~34744i);
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(130f)), 2334f), abs(vec4<i32>(-3581i, 1i, 2147483647i, -var_0.d)) | ~(-_wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(u_input.a.x, global1.d.c.b.x, var_1.x, -2147483647i))), !vec4<bool>(!(var_0.e <= -459f), func_4(~var_0.b.wz, !vec4<bool>(var_2, false, true, global1.d.c.c.x), Struct_2(global1.d.c, vec4<u32>(4294967295u, u_input.c, 21268u, 40603u), Struct_1(vec2<f32>(global2.x, global1.b), var_0.b, global1.d.a.c, 0i), global1.d.d), var_0.b << (global1.d.b % vec4<u32>(32u))).e.x, var_2, false & !global1.a.x), ~u_input.b);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(global1.d.d, vec4<f32>(global0.x, 983f, -1151f, global1.b), vec4<bool>(var_4.c.x, var_4.c.x, true, global1.d.c.c.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_4.a.x, -1598f) - global1.d.d) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.a.x, global1.d.c.a.x, -1240f, global1.d.d.x), global1.d.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.a.d, ~(~_wgslsmith_dot_vec2_u32(global1.d.b.xz, vec2<u32>(global1.d.b.x, 95079u))));
}

