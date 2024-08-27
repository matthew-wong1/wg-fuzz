struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(1684f, 313f, 612f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -2607f)), any(select(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(!arg_2.x, arg_2.x | true, 50472u >= u_input.b.x, true), select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(true, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, true, false, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), vec4<bool>(true, true, true, true)))));
    var var_1 = ~(~vec4<u32>(9803u, 42459u, 1u & u_input.b.x, ~15428u << (~u_input.b.x % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))))) + _wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1326f)), _wgslsmith_f_op_f32(-global0.a.x))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + global0.a.x)) + var_0.a))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-498f, global0.a.x, arg_0), global0.a, true))))))));
    var var_3 = ~vec4<u32>(1u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(25621u, u_input.a, 88964u) & var_1.zzz), vec3<u32>(4294967295u, var_1.x, u_input.a) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_add_u32(firstLeadingBit(firstLeadingBit(u_input.b.x)), 1u), ~(~u_input.a));
    return _wgslsmith_add_vec2_i32(vec2<i32>(60498i, max(_wgslsmith_sub_i32(11124i, abs(0i)), arg_1)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, arg_1) << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), vec2<i32>(arg_1, 1i) ^ vec2<i32>(arg_1, -10605i)), vec2<i32>(28731i, _wgslsmith_mult_i32(arg_1, 43282i))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = select(!(!vec4<bool>(false, any(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(false, false)))), select(vec4<bool>(_wgslsmith_f_op_f32(trunc(1202f)) != -647f, false, true, all(vec4<bool>(false, true, true, true))), !vec4<bool>(true, u_input.a >= 21u, arg_1.b < 0u, any(vec2<bool>(true, true))), false), vec4<bool>(any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), false, all(vec3<bool>(true, -37403i == arg_1.c, arg_2.x > 29629i)), false));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(84183u, ~u_input.b.x), ~(~reverseBits(1u)), 0u << (_wgslsmith_div_u32(_wgslsmith_sub_u32(33951u, select(82126u, 31057u, true)), ~1u) % 32u), arg_1.b);
    var_0 = select(vec4<bool>(any(select(select(vec2<bool>(true, false), var_0.yy, vec2<bool>(true, var_0.x)), !var_0.xw, var_0.xw)), var_0.x, false, var_0.x), !(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x);
    let var_2 = arg_1;
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f + 1039f)), -1000f, 449f) - global0.a));
    return firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_1.b, ~arg_1.d.x, abs(var_1.x))), countOneBits(_wgslsmith_mult_u32(min(arg_1.b, arg_1.d.x), arg_1.d.x)), ~_wgslsmith_mult_u32(arg_1.d.x >> (14231u % 32u), _wgslsmith_sub_u32(u_input.b.x, var_1.x))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, true)))))));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(vec3<f32>(180f, 911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-663f + global0.a.x))))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(818f, arg_2.a, global0.a.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1203f, arg_2.a, 379f), vec3<f32>(global0.a.x, arg_2.a, -416f)))))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1373f, -1686f, arg_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), -1266f, _wgslsmith_f_op_f32(arg_2.a + arg_2.a))))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = vec2<u32>(u_input.b.x, 94569u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.a.yy);
    let var_2 = func_5(Struct_3(_wgslsmith_f_op_f32(-arg_0.a), u_input.b.x, 14620i, ~(~(~u_input.b))), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(~58288i, -70113i, arg_1.x, min(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(58729i, arg_1.x, arg_1.x, 59630i), vec4<i32>(-51549i, arg_1.x, arg_1.x, arg_1.x))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_0.x, -20907i, _wgslsmith_sub_vec3_u32(u_input.b, func_4(global0.a.x, Struct_3(var_1.x, var_0.x, -6019i, u_input.b), func_3(842f, 1i, vec2<bool>(true, arg_0.b))))), 39841u ^ select(~116664u, 1u, true));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a))));
    var var_3 = var_1.x;
    return arg_1.wxw;
}

fn func_6(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), true);
    var var_1 = countOneBits(vec4<u32>(1u, min(firstTrailingBit(~u_input.b.x), u_input.b.x), u_input.b.x ^ max(64654u, _wgslsmith_add_u32(1u, 1u)), abs(u_input.a)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a))));
    var var_3 = select(vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, false)), -1i > _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.x, 13279i), ~0i), true, false), vec4<bool>(true, !(true && select(false, true, var_0.x)), var_0.x || !(!var_0.x), var_0.x), vec4<bool>(false, !var_0.x, !var_0.x, !(_wgslsmith_f_op_f32(-var_2.a.x) >= 580f)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1774f, -1189f) - _wgslsmith_div_f32(-323f, -1428f))))), !(any(vec3<bool>(var_0.x, false, var_3.x)) & (true | var_3.x)));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_4.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1096f)), _wgslsmith_div_f32(-669f, 1971f)), false)) - _wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-var_4.a)))), 1u, arg_0.x, min(countOneBits(var_1.xxy), _wgslsmith_mod_vec3_u32(~var_1.yzw, u_input.b) & ~var_1.yyz));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_6(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -267f), true), firstLeadingBit(_wgslsmith_div_vec4_i32(~arg_0, _wgslsmith_sub_vec4_i32(vec4<i32>(22212i, 21791i, -2147483647i, 26080i), arg_0)))));
    let var_1 = Struct_2(vec3<f32>(global0.a.x, -316f, _wgslsmith_f_op_f32(-global0.a.x)));
    var var_2 = func_6(arg_0.xxw);
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)))));
    var var_4 = ~var_2.d.zy;
    return Struct_1(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.a, 1675f, false)), _wgslsmith_f_op_f32(-var_3.x), any(vec3<bool>(true, false, false))))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~firstTrailingBit(select(vec4<i32>(7139i, 2147483647i, 0i, -11368i), vec4<i32>(82867i, -23269i, 1i, 2215i), false))), Struct_3(-879f, _wgslsmith_add_u32(0u, select(u_input.b.x, u_input.b.x, u_input.a == 8112u)), _wgslsmith_mod_i32(max(~63375i, 0i), ~_wgslsmith_sub_i32(-1i, -7698i)), ~u_input.b));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global0.a.x, global0.a.x) + global0.a), _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(-1000f, 2004f, 541f)))) + global0.a));
    global0 = Struct_2(global0.a);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1603f);
    global0 = Struct_2(global0.a);
    var var_3 = select(vec3<bool>(~7412u > u_input.b.x, true, true && !func_1(vec4<i32>(1i, 37377i, 23847i, 6936i), Struct_3(-720f, u_input.b.x, 1i, vec3<u32>(1173u, 1u, u_input.a))).b), vec3<bool>(true, select(1f >= var_1.a.x, var_0.b, all(vec2<bool>(var_0.b, var_0.b))), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~(~countOneBits(~vec2<u32>(u_input.a, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -270f))), vec3<i32>(-1i, 39531i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(59328i, -62567i, 2655i, 40653i), vec4<i32>(0i, 1i, -31180i, -40323i) >> (vec4<u32>(0u, u_input.b.x, u_input.a, 38690u) % vec4<u32>(32u)), -vec4<i32>(-63315i, 2147483647i, -1i, 2147483647i)), vec4<i32>(select(0i, -2147483647i, var_0.b), _wgslsmith_div_i32(-35269i, -1i), 39015i, min(-1i, 6981i)))));
}

