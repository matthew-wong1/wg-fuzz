struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: array<i32, 31> = array<i32, 31>(0i, -28774i, -1i, 0i, 5444i, 10361i, 0i, -1i, 20508i, 2166i, -41075i, -13274i, -4693i, -1i, i32(-2147483648), 2147483647i, 2147483647i, 0i, 4313i, 0i, 31417i, i32(-2147483648), -14208i, -87899i, -17083i, 1i, -26374i, 0i, 0i, 18634i, 33681i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    let var_1 = !(!select(vec2<bool>(!var_0.c, true), select(vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(var_0.a, arg_1.c), arg_1.c), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_2 = global0.d;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - -1356f), _wgslsmith_f_op_f32(select(-2085f, -1501f, var_1.x)))), -391f))));
    let var_4 = u_input.a;
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_5(false);
    global2 = array<i32, 31>();
    var var_1 = vec4<i32>(-2147483647i << (_wgslsmith_add_u32(arg_0.c, firstLeadingBit(global0.d.b.x) ^ arg_0.a.b.x) % 32u), -u_input.a, _wgslsmith_mult_i32(-100997i, -_wgslsmith_mult_i32(~arg_3.x, arg_3.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b.x, func_3(global0.d.d.x, Struct_1(var_0.a, arg_0.d.b, arg_0.d.c, vec3<f32>(arg_0.a.d.x, 574f, global0.d.d.x), global2[_wgslsmith_index_u32(1u, 31u)])), arg_0.a.e), -(~(i32(-1i) * -2147483647i))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(max(global0.b.x, 17461i), -1i, 65188i, -10393i), select(u_input.b, vec4<i32>(1i, 21866i, arg_3.x, -2147483647i) >> (vec4<u32>(global0.d.b.x, u_input.c, global0.a.b.x, global0.a.b.x) % vec4<u32>(32u)), arg_3.x > 1i)) <= arg_3.x, vec3<u32>((select(u_input.d, 46729u, true) & ~arg_0.d.b.x) & ~27463u, ~1u, firstLeadingBit(~arg_0.c)), arg_2.x, vec3<f32>(global0.d.d.x, _wgslsmith_f_op_f32(1641f * _wgslsmith_f_op_f32(-global0.a.d.x)), arg_0.d.d.x), _wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.d.d.x)), _wgslsmith_f_op_f32(-1067f + arg_0.d.d.x))), global0.a), arg_3.x | 0i));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_div_f32(global0.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2002f)) * 2172f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-749f - -249f))))));
    return global0.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = vec4<bool>(any(select(select(!vec4<bool>(arg_0.a.x, arg_2, arg_0.a.x, true), !vec4<bool>(arg_2, true, arg_3.a, false), select(vec4<bool>(false, false, arg_3.c, false), vec4<bool>(arg_3.c, true, arg_2, true), false)), vec4<bool>(global0.a.a, true, all(vec3<bool>(arg_3.a, true, false)), global0.a.c && arg_0.a.x), arg_3.a)), arg_3.c, global0.d.c, !arg_3.c);
    let var_1 = select(vec4<bool>(global0.a.a, false, false, !(true | arg_3.c)), vec4<bool>(true != arg_3.c, ~func_2(Struct_2(arg_3, global0.b, u_input.d, Struct_1(true, vec3<u32>(0u, u_input.d, 4294967295u), arg_0.a.x, arg_3.d, 60191i)), var_0.x, vec4<bool>(true, false, true, true), global0.b.yz).e == arg_3.e, arg_3.c, _wgslsmith_f_op_f32(global0.a.d.x - arg_3.d.x) < _wgslsmith_f_op_f32(func_2(Struct_2(arg_3, vec3<i32>(-69406i, global0.a.e, 0i), 4294967295u, global0.a), global0.d.c, vec4<bool>(arg_2, false, arg_3.a, arg_0.a.x), global0.b.yx).d.x + 1000f)), vec4<bool>(func_2(Struct_2(Struct_1(arg_3.a, vec3<u32>(36650u, arg_3.b.x, 74843u), arg_3.a, arg_3.d, 53134i), vec3<i32>(u_input.b.x, arg_0.b.x, global0.b.x), firstLeadingBit(arg_3.b.x), Struct_1(true, global0.d.b, false, global0.d.d, -1i)), arg_0.a.x, !vec4<bool>(global0.d.c, true, true, var_0.x), -global0.b.zx).a, false, !(false | (-1i < global0.d.e)), !arg_3.a));
    global1 = firstLeadingBit(global0.d.e);
    global0 = Struct_2(Struct_1(arg_2, ~(vec3<u32>(3436u, 64525u, u_input.d) << (max(arg_3.b, vec3<u32>(0u, arg_1, arg_1)) % vec3<u32>(32u))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.d.x, arg_3.d.x, arg_3.d.x)))), global0.d.e), _wgslsmith_sub_vec3_i32(firstLeadingBit(arg_0.b.wxw), max(arg_0.b.xzy, ~vec3<i32>(arg_0.b.x, 17082i, 27880i))), arg_3.b.x, Struct_1(global0.d.e >= reverseBits(max(1i, -23943i)), vec3<u32>(global0.c, u_input.c, u_input.c), true, global0.d.d, global0.b.x));
    var_0 = vec4<bool>(false, select(true, true, var_0.x), !arg_0.a.x, all(!vec2<bool>(!arg_2, var_1.x)));
    return select(u_input.c, _wgslsmith_mult_u32(arg_1, 1u), func_2(Struct_2(Struct_1(arg_2, arg_3.b, true, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1994f, global0.a.d.x, -1434f))), global2[_wgslsmith_index_u32(arg_3.b.x << (80184u % 32u), 31u)]), vec3<i32>(global2[_wgslsmith_index_u32(~u_input.d, 31u)], _wgslsmith_clamp_i32(-28262i, -1i, u_input.a), -u_input.a), arg_3.b.x ^ 0u, Struct_1(true, ~global0.d.b, all(arg_0.a.zz), arg_3.d, _wgslsmith_mult_i32(global0.b.x, global2[_wgslsmith_index_u32(125825u, 31u)]))), true, vec4<bool>(func_2(Struct_2(Struct_1(arg_0.a.x, arg_3.b, arg_2, vec3<f32>(-534f, arg_3.d.x, global0.a.d.x), 2147483647i), vec3<i32>(0i, 13562i, 57929i), global0.a.b.x, Struct_1(global0.a.c, arg_3.b, arg_3.c, global0.a.d, -22174i)), true, !var_1, _wgslsmith_div_vec2_i32(arg_0.b.yx, vec2<i32>(u_input.b.x, 0i))).a, arg_3.d.x < arg_3.d.x, all(!var_0.yy), false), ~u_input.b.zw).a);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    global1 = u_input.b.x;
    global2 = array<i32, 31>();
    let var_0 = global0.d.d.x;
    let var_1 = _wgslsmith_add_u32(max(arg_0.a.b.x, _wgslsmith_add_u32(~4294967295u << ((arg_0.a.b.x << (u_input.c % 32u)) % 32u), 45818u)), func_4(Struct_3(!vec3<bool>(arg_0.d.a, false, true), vec4<i32>(arg_1.x, -1i, -25867i, 2147483647i) << ((vec4<u32>(65947u, global0.c, 8526u, u_input.c) & vec4<u32>(4294967295u, u_input.c, 4294967295u, 1u)) % vec4<u32>(32u))), ~_wgslsmith_mult_u32(select(48857u, 35356u, global0.a.a), ~1390u), !arg_0.d.a, func_2(arg_0, arg_0.d.c, !(!vec4<bool>(false, false, global0.a.a, true)), ~vec2<i32>(-1i, 54817i))));
    var var_2 = Struct_5(!global0.a.a);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(min(vec2<u32>(func_1(Struct_2(global0.a, global0.b, u_input.d, global0.a), ~vec4<i32>(-9399i, global0.b.x, 7766i, -23199i)), _wgslsmith_dot_vec3_u32(global0.d.b, global0.a.b ^ global0.a.b)), ~(~(~global0.d.b.xz))), func_2(Struct_2(global0.a, vec3<i32>(u_input.a & 26823i, u_input.b.x, global2[_wgslsmith_index_u32(0u, 31u)] & 2147483647i), 0u, Struct_1(!global0.a.a, vec3<u32>(u_input.c, global0.c, u_input.c) ^ global0.a.b, any(vec2<bool>(global0.d.c, global0.a.a)), global0.a.d, reverseBits(59405i))), true, vec4<bool>(any(select(vec3<bool>(false, global0.d.c, true), vec3<bool>(global0.d.a, global0.d.a, false), vec3<bool>(global0.a.c, global0.a.c, true))), global0.a.c, true, true), countOneBits(_wgslsmith_div_vec2_i32(~global0.b.yy, global0.b.yy))).b.yz, global0.d.c);
    global1 = -2147483647i;
    let var_1 = Struct_5(~(~(-2147483647i)) > ~max(u_input.b.x, u_input.b.x));
    var var_2 = Struct_5(true);
    global0 = Struct_2(Struct_1(false, _wgslsmith_mod_vec3_u32(vec3<u32>(~global0.a.b.x, var_0.x, u_input.d), select(vec3<u32>(41260u, 22306u, 0u), abs(global0.a.b), !vec3<bool>(false, var_2.a, global0.a.a))), _wgslsmith_div_i32(min(global2[_wgslsmith_index_u32(72809u, 31u)], u_input.a), abs(2147483647i)) != 3052i, global0.d.d, _wgslsmith_mod_i32(0i, u_input.b.x)), firstLeadingBit(global0.b), _wgslsmith_sub_u32(~_wgslsmith_add_u32(15263u, u_input.d) ^ 1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 63909u, 5986u, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, u_input.c)), 4294967295u), global0.c)), global0.d);
    let var_3 = min(vec4<u32>(global0.c | 1u, _wgslsmith_add_u32(global0.c, global0.d.b.x) >> (global0.c % 32u), ~(u_input.d << (22579u % 32u)), 25155u), abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, 1u, 0u), vec4<u32>(12652u, u_input.c, u_input.c, global0.a.b.x)))) << (~vec4<u32>(func_2(Struct_2(Struct_1(var_2.a, global0.d.b, true, global0.d.d, 5499i), vec3<i32>(u_input.a, -2147483647i, 7562i), var_0.x, Struct_1(var_1.a, vec3<u32>(global0.c, 1u, global0.a.b.x), true, vec3<f32>(-1800f, -1089f, -506f), global0.d.e)), -1i < global0.a.e, vec4<bool>(var_1.a, var_1.a, global0.d.c, var_1.a), vec2<i32>(-2147483647i, 1i)).b.x, 4294967295u, var_0.x, 1u) % vec4<u32>(32u));
    var var_4 = Struct_4(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_3.zyz, vec3<u32>(var_3.x, 1u, var_3.x >> (4294967295u % 32u))), firstLeadingBit(max(max(vec3<u32>(18950u, 55109u, var_0.x), global0.a.b), ~var_3.ywx))), -(vec4<i32>(2147483647i, global0.a.e, select(5723i, global2[_wgslsmith_index_u32(1u, 31u)], var_2.a), 0i) | vec4<i32>(_wgslsmith_clamp_i32(0i, 4749i, 21884i), -2147483647i, u_input.a ^ global2[_wgslsmith_index_u32(4294967295u, 31u)], 17601i)), firstLeadingBit(-u_input.a) >> (func_2(Struct_2(Struct_1(var_2.a, vec3<u32>(1u, var_0.x, u_input.c), var_2.a, global0.d.d, global0.a.e), vec3<i32>(-16578i, -2484i, 38488i), 0u, func_2(Struct_2(Struct_1(true, vec3<u32>(var_3.x, 0u, 15660u), var_1.a, global0.a.d, u_input.a), global0.b, u_input.c, global0.d), false, vec4<bool>(var_2.a, var_1.a, var_1.a, false), vec2<i32>(global0.d.e, u_input.a))), func_2(Struct_2(global0.d, vec3<i32>(-1i, -28354i, u_input.a), 23005u, global0.d), var_1.a, vec4<bool>(false, false, global0.d.a, var_2.a), global0.b.xy).a | var_1.a, !select(vec4<bool>(false, true, false, false), vec4<bool>(var_1.a, var_2.a, var_1.a, global0.d.a), false), ~u_input.b.yy | global0.b.yx).b.x % 32u), select(select(select(vec3<bool>(false, var_2.a, var_2.a), select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_2.a, var_2.a, global0.a.a), vec3<bool>(true, true, var_2.a)), true), !select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, global0.d.a, false), true), !all(vec3<bool>(false, var_1.a, true))), select(select(vec3<bool>(global0.d.a, global0.d.a, true), select(vec3<bool>(var_2.a, true, var_1.a), vec3<bool>(var_1.a, true, false), vec3<bool>(var_1.a, true, true)), true), !(!vec3<bool>(global0.d.a, false, global0.d.c)), global0.a.c & (var_3.x != var_0.x)), true));
    let var_5 = !var_4.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(-global0.b, global0.b, -(u_input.b.xyz << (vec3<u32>(0u, var_0.x, u_input.d) % vec3<u32>(32u)))), u_input.b.yzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a.d)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.d.x, global0.d.d.x)) * global0.d.d.x), _wgslsmith_f_op_f32(abs(global0.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(331f))))));
}

