struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    global0 = firstLeadingBit(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_3.c.x, arg_3.c.x), 31371u)));
    global0 = 10123u;
    global0 = _wgslsmith_mod_u32(1u, arg_3.c.x);
    var var_0 = arg_1;
    global0 = ~abs(_wgslsmith_mult_u32(var_0.c.c.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.c.c.x, 1u, arg_1.c.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(79892u, 1884u, var_0.c.c.x), vec3<u32>(u_input.b, u_input.b, u_input.a)))));
    return vec3<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.a.b - 896f))))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1274f, arg_1.b.a.b) - _wgslsmith_f_op_f32(f32(-1f) * -1483f)), arg_2)), false);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(min(u_input.c.x & u_input.d, -2147483647i), u_input.c.x);
    var var_1 = Struct_4(u_input.b >> (35893u % 32u), Struct_2(Struct_1(arg_3.a.c.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.b * 983f) - _wgslsmith_f_op_f32(arg_1.b.a.b + arg_0.x)), func_3(2147483647i, arg_1, _wgslsmith_f_op_f32(step(arg_1.c.a.b, 1800f)), Struct_3(arg_1.c.a, arg_1.d.c.xy, arg_1.c.c)))), Struct_3(arg_1.d, arg_3.a.c.zx, vec2<u32>(~min(61767u, arg_2), 27749u)), arg_1.b.a);
    global0 = _wgslsmith_div_u32(46380u, u_input.a << (_wgslsmith_sub_u32(~(~var_1.c.c.x), firstTrailingBit(3874u)) % 32u));
    var_1 = Struct_4(1u, arg_1.b, Struct_3(Struct_1(vec2<bool>(arg_1.c.a.c.x == true, arg_3.a.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1885f * arg_3.a.b), 1131f), vec3<bool>(var_1.c.b.x, func_3(2147483647i, arg_1, arg_3.a.b, var_1.c).x, !arg_1.d.c.x)), arg_3.a.a, arg_1.c.c), var_1.c.a);
    let var_2 = arg_3.a;
    return Struct_1(!select(!vec2<bool>(arg_3.a.c.x, false), vec2<bool>(all(var_1.b.a.c.yx), arg_3.a.a.x), func_3(_wgslsmith_mult_i32(1i, u_input.e.x), arg_1, _wgslsmith_f_op_f32(max(var_1.c.a.b, arg_3.a.b)), Struct_3(Struct_1(var_2.c.xy, var_1.b.a.b, arg_1.d.c), vec2<bool>(false, arg_1.c.b.x), vec2<u32>(arg_2, arg_1.c.c.x))).yy), 1100f, vec3<bool>(var_2.c.x, false, _wgslsmith_f_op_f32(sign(480f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_4(~0u, Struct_2(func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(508f, arg_1.x, -188f, -944f)))), Struct_4(1u, Struct_2(Struct_1(vec2<bool>(true, true), -443f, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec2<bool>(true, false), 244f, vec3<bool>(true, false, true)), vec2<bool>(false, true), vec2<u32>(4294967295u, 14645u)), Struct_1(vec2<bool>(false, true), 349f, vec3<bool>(true, false, false))), select(u_input.b, 65728u, true), Struct_2(Struct_1(vec2<bool>(true, true), 1000f, vec3<bool>(false, true, true))))), Struct_3(Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), select(func_2(vec4<f32>(arg_1.x, arg_1.x, 451f, arg_1.x), Struct_4(0u, Struct_2(Struct_1(vec2<bool>(true, true), arg_1.x, vec3<bool>(true, false, true))), Struct_3(Struct_1(vec2<bool>(true, false), -679f, vec3<bool>(true, false, true)), vec2<bool>(false, false), vec2<u32>(21179u, 4846u)), Struct_1(vec2<bool>(false, true), arg_1.x, vec3<bool>(true, true, false))), countOneBits(60447u), Struct_2(Struct_1(vec2<bool>(false, true), 1528f, vec3<bool>(true, false, false)))).a, vec2<bool>(false, all(vec2<bool>(true, false))), vec2<bool>(select(true, false, false), true)), ~(~vec2<u32>(11091u, u_input.a) | ~vec2<u32>(u_input.b, u_input.b))), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(642f * 1000f), _wgslsmith_f_op_f32(arg_1.x - -1000f), _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, -227f, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, 652f, arg_1.x)))))), Struct_4(_wgslsmith_mult_u32(~u_input.b, select(39607u, 4294967295u, true)), Struct_2(Struct_1(vec2<bool>(false, true), arg_1.x, vec3<bool>(true, true, true))), Struct_3(Struct_1(vec2<bool>(true, true), -1000f, vec3<bool>(true, true, true)), vec2<bool>(true, true), firstLeadingBit(vec2<u32>(u_input.a, 12461u))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), -1257f, func_3(arg_0.x, Struct_4(u_input.b, Struct_2(Struct_1(vec2<bool>(false, true), arg_1.x, vec3<bool>(false, true, false))), Struct_3(Struct_1(vec2<bool>(true, false), 960f, vec3<bool>(false, true, false)), vec2<bool>(false, true), vec2<u32>(u_input.a, u_input.a)), Struct_1(vec2<bool>(false, false), arg_1.x, vec3<bool>(false, true, false))), -1718f, Struct_3(Struct_1(vec2<bool>(true, false), arg_1.x, vec3<bool>(false, false, true)), vec2<bool>(true, false), vec2<u32>(u_input.a, u_input.a))))), max(max(_wgslsmith_mult_u32(u_input.b, 36895u), 4294967295u & u_input.a), u_input.a), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, -697f, arg_1.x, -258f)), Struct_4(u_input.a, Struct_2(Struct_1(vec2<bool>(false, false), arg_1.x, vec3<bool>(false, false, true))), Struct_3(Struct_1(vec2<bool>(true, false), arg_1.x, vec3<bool>(true, true, false)), vec2<bool>(true, true), vec2<u32>(0u, u_input.b)), Struct_1(vec2<bool>(false, true), arg_1.x, vec3<bool>(false, false, true))), _wgslsmith_div_u32(u_input.b, u_input.b), Struct_2(Struct_1(vec2<bool>(false, false), -2004f, vec3<bool>(false, false, true)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.b, -691f) - _wgslsmith_f_op_f32(f32(-1f) * -358f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(602f))))))));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1571f, -1708f, -1000f, 566f) * vec4<f32>(166f, arg_1.x, -342f, var_0.d.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-212f, 261f, arg_1.x, arg_1.x), vec4<f32>(-787f, var_1, 1269f, var_0.c.a.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.b, var_0.b.a.b, 940f, var_1))))), Struct_4(~u_input.b, Struct_2(Struct_1(select(vec2<bool>(var_0.c.b.x, false), vec2<bool>(var_0.b.a.a.x, true), true), _wgslsmith_f_op_f32(max(-579f, arg_1.x)), vec3<bool>(var_0.b.a.a.x, var_0.b.a.a.x, false))), Struct_3(func_2(vec4<f32>(var_0.b.a.b, 1082f, arg_1.x, -559f), Struct_4(var_0.c.c.x, var_0.b, var_0.c, var_0.d), 79704u, Struct_2(var_0.c.a)), !var_0.d.a, firstTrailingBit(var_0.c.c ^ vec2<u32>(94562u, var_0.a))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, arg_1.x, var_0.b.a.b, -236f)), Struct_4(1u, var_0.b, var_0.c, var_0.c.a), ~(var_0.a | u_input.a), Struct_2(func_2(vec4<f32>(var_1, -1608f, var_1, arg_1.x), Struct_4(51800u, Struct_2(Struct_1(var_0.c.a.a, 758f, var_0.c.a.c)), var_0.c, var_0.c.a), var_0.c.c.x, var_0.b)))), 10447u, Struct_2(Struct_1(!var_0.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-125f + -712f))), var_0.d.c)));
    var_0 = Struct_4(98403u, Struct_2(Struct_1(var_0.d.c.zy, _wgslsmith_f_op_f32(-1810f + _wgslsmith_f_op_f32(trunc(803f))), select(!var_2.c, vec3<bool>(true, var_0.d.a.x, var_2.a.x), !vec3<bool>(var_2.c.x, var_0.b.a.a.x, var_2.a.x)))), Struct_3(Struct_1(vec2<bool>(any(vec4<bool>(var_0.c.b.x, var_2.c.x, var_0.c.b.x, false)), var_2.a.x), var_1, !select(vec3<bool>(var_2.a.x, false, false), vec3<bool>(true, false, false), vec3<bool>(true, var_2.c.x, true))), select(!(!vec2<bool>(var_0.d.c.x, var_2.a.x)), vec2<bool>(!var_0.c.a.c.x, any(vec3<bool>(var_0.c.a.c.x, var_0.b.a.c.x, var_0.c.b.x))), !vec2<bool>(true, var_2.a.x)), vec2<u32>(58366u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(20106u, var_0.c.c.x, var_0.a), vec3<u32>(15379u, 11290u, var_0.a), var_0.c.a.c), firstLeadingBit(vec3<u32>(var_0.a, u_input.a, 37456u))))), var_0.d);
    let var_3 = abs(vec4<u32>(var_0.c.c.x, _wgslsmith_sub_u32(var_0.a ^ var_0.a, ~73797u) << (max(36665u, 4294967295u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~var_0.a), var_0.c.c), 1u));
    return vec4<u32>(~(~abs(_wgslsmith_mult_u32(1u, var_3.x))), ~var_0.a, _wgslsmith_dot_vec3_u32(select(select(var_3.xxz, firstTrailingBit(var_3.zzw), true), vec3<u32>(firstLeadingBit(38849u), u_input.b, ~u_input.b), var_0.d.a.x), var_3.zzx), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), 44438u), u_input.a), _wgslsmith_add_u32(~(~4294967295u ^ u_input.a), u_input.b), true);
    let var_0 = func_1(u_input.e >> (((_wgslsmith_add_vec4_u32(vec4<u32>(80963u, u_input.b, u_input.b, 38370u), vec4<u32>(60258u, u_input.a, 23174u, 0u)) ^ (vec4<u32>(u_input.a, u_input.b, 92171u, u_input.b) ^ vec4<u32>(0u, u_input.b, u_input.a, 15373u))) | vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.b, 51741u)), max(62424u, u_input.a), 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(856f, 765f), vec2<f32>(584f, 383f), false)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-1599f * -253f))))));
    global0 = abs(abs(~(~(u_input.a ^ 165u))));
    let var_1 = firstLeadingBit(~(~(~var_0)));
    global0 = 16683u;
    var var_2 = (firstTrailingBit(1i) >= u_input.c.x) && true;
    let var_3 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_4(~u_input.b, Struct_2(func_2(vec4<f32>(-1059f, 317f, 1918f, 227f), Struct_4(u_input.a, Struct_2(Struct_1(vec2<bool>(false, false), 2082f, vec3<bool>(true, false, true))), Struct_3(Struct_1(vec2<bool>(true, true), -1000f, vec3<bool>(false, false, true)), vec2<bool>(true, false), var_0.xw), Struct_1(vec2<bool>(false, true), 695f, vec3<bool>(false, false, true))), var_0.x, Struct_2(Struct_1(vec2<bool>(false, false), 1000f, vec3<bool>(false, true, false))))), Struct_3(Struct_1(vec2<bool>(false, false), 1817f, vec3<bool>(true, false, false)), func_3(8853i, Struct_4(0u, Struct_2(Struct_1(vec2<bool>(false, false), -793f, vec3<bool>(true, false, false))), Struct_3(Struct_1(vec2<bool>(false, false), 149f, vec3<bool>(false, false, true)), vec2<bool>(false, false), var_1.yw), Struct_1(vec2<bool>(true, true), 1458f, vec3<bool>(true, false, false))), -510f, Struct_3(Struct_1(vec2<bool>(true, false), -497f, vec3<bool>(false, true, false)), vec2<bool>(false, true), vec2<u32>(0u, var_1.x))).xx, _wgslsmith_add_vec2_u32(var_1.wz, vec2<u32>(var_0.x, 26853u))), Struct_1(vec2<bool>(true, true), -301f, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), ~u_input.b, Struct_2(Struct_1(vec2<bool>(true, false), _wgslsmith_div_f32(1017f, 1000f), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)))), !(!(!func_2(vec4<f32>(-1750f, -893f, -1000f, -1000f), Struct_4(var_1.x, Struct_2(Struct_1(vec2<bool>(false, false), 411f, vec3<bool>(false, false, false))), Struct_3(Struct_1(vec2<bool>(true, true), 440f, vec3<bool>(true, true, false)), vec2<bool>(false, true), vec2<u32>(30025u, var_1.x)), Struct_1(vec2<bool>(false, false), -1000f, vec3<bool>(false, false, true))), var_0.x, Struct_2(Struct_1(vec2<bool>(true, false), 923f, vec3<bool>(false, false, true)))).c.zx)), ~var_1.wy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-2147483647i, select(2147483647i, u_input.e.x, var_3.b.x) & _wgslsmith_div_i32(1699i, 21568i)) | u_input.d, vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b) - var_3.a.b), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1502f, var_3.a.b, var_3.a.b, var_3.a.b) + vec4<f32>(-1120f, -1656f, 1474f, -200f)), Struct_4(var_3.c.x, Struct_2(Struct_1(var_3.b, 789f, vec3<bool>(false, var_3.b.x, false))), Struct_3(Struct_1(var_3.a.c.xx, 237f, vec3<bool>(false, var_3.a.c.x, var_3.a.c.x)), var_3.b, vec2<u32>(var_1.x, 1u)), Struct_1(vec2<bool>(var_3.a.c.x, true), -316f, vec3<bool>(true, true, var_3.a.a.x))), var_1.x, Struct_2(var_3.a)).b)), -182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1750f)) + _wgslsmith_f_op_f32(ceil(983f)))));
}

