struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 14> = array<f32, 14>(-821f, -113f, -1823f, 471f, 1845f, -738f, 1000f, -2100f, -1899f, -261f, -233f, 111f, -354f, -629f);

var<private> global3: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1085f, 153f, 102f, -135f), vec4<f32>(-1000f, -1527f, -769f, -831f), vec4<f32>(1397f, 1000f, 1069f, -1540f), vec4<f32>(-2953f, -439f, 1361f, 382f), vec4<f32>(-843f, -243f, 963f, -1842f), vec4<f32>(1211f, -109f, -1512f, 1113f), vec4<f32>(-880f, 120f, 822f, -1000f), vec4<f32>(877f, -634f, 537f, 2227f), vec4<f32>(1000f, -440f, -642f, -1295f), vec4<f32>(189f, 393f, -1000f, -981f), vec4<f32>(925f, 552f, 675f, -1000f), vec4<f32>(-641f, 1009f, -508f, 2638f), vec4<f32>(-314f, -919f, 264f, 2196f), vec4<f32>(-796f, 708f, 451f, -1787f), vec4<f32>(1545f, -223f, 637f, -177f), vec4<f32>(-1774f, 921f, 895f, 491f), vec4<f32>(1298f, 1140f, -375f, -544f), vec4<f32>(-233f, -562f, -617f, -1000f), vec4<f32>(1489f, -1000f, -295f, 464f), vec4<f32>(725f, 599f, 556f, 142f), vec4<f32>(-545f, -1149f, -373f, -711f), vec4<f32>(1000f, 1000f, -446f, -1299f), vec4<f32>(-342f, 107f, 940f, 1251f), vec4<f32>(-299f, 422f, 779f, 1000f), vec4<f32>(-240f, 782f, 937f, -279f));

var<private> global4: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    global0 = -1i <= -min(~(-52852i), arg_2.a);
    global1 = ~(-countOneBits(~(~vec3<i32>(1i, 530i, global1.x))));
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    return -1000f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_2(arg_0, Struct_1(-_wgslsmith_mod_i32(-global1.x, arg_3.x), global2[_wgslsmith_index_u32(3542u, 14u)]), false, Struct_1(firstTrailingBit(-_wgslsmith_sub_i32(0i, -21945i)), arg_1.b.b), _wgslsmith_clamp_vec2_i32(-firstLeadingBit(u_input.a.wz ^ global1.yy), -vec2<i32>(-1i, 1i), firstTrailingBit(firstLeadingBit(-arg_3.yx))));
    let var_1 = Struct_3(arg_1.a, Struct_1(_wgslsmith_sub_i32(~countOneBits(arg_3.x), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~46290u, u_input.b, var_0.a)))), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_1.d)), arg_1.c);
    global0 = !arg_1.a & arg_2.b.a.x;
    var var_2 = 20287u | _wgslsmith_clamp_u32(34718u, _wgslsmith_sub_u32(~arg_2.a, ~arg_2.a), u_input.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_2 {
    global0 = true;
    let var_0 = Struct_3(arg_0.x, Struct_1(-2877i, arg_1.x), Struct_1(u_input.a.x, -427f), _wgslsmith_div_f32(1338f, 808f), Struct_1(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(-1i, 8638i), u_input.a.x), arg_3));
    global0 = true;
    var var_1 = _wgslsmith_mod_i32(-firstLeadingBit(arg_2) ^ (_wgslsmith_clamp_i32(-2147483647i, var_0.c.a, 25602i) | 1i), _wgslsmith_div_i32(~_wgslsmith_mod_i32(countOneBits(u_input.a.x), arg_2), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, countOneBits(var_0.b.a), 2147483647i), u_input.a.xwz)));
    global2 = array<f32, 14>();
    return Struct_2(var_0.e, Struct_1(global1.x, arg_1.x), false, Struct_1(-28735i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 14u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(627f - arg_3))))), global1.zy);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_4(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x ^ (u_input.b.x & 38683u), 14u)], _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-603f, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-884f, 224f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 14u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0.x, 14u)], arg_1), -1000f))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(23205i, arg_1), Struct_3(true, Struct_1(-2147483647i, arg_1), Struct_1(u_input.a.x, arg_1), global2[_wgslsmith_index_u32(0u, 14u)], Struct_1(31400i, -507f)), Struct_5(0u, Struct_4(vec3<bool>(true, false, false), Struct_3(false, Struct_1(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 14u)]), Struct_1(0i, global2[_wgslsmith_index_u32(arg_0.x, 14u)]), 990f, Struct_1(0i, 1223f))), -18669i, true), u_input.a.yyx)), global2[_wgslsmith_index_u32(firstLeadingBit(51521u), 14u)]) + _wgslsmith_f_op_f32(func_2(Struct_1(-1i, arg_1), Struct_3(true, Struct_1(-39261i, arg_1), Struct_1(-28354i, global2[_wgslsmith_index_u32(arg_0.x, 14u)]), -880f, Struct_1(u_input.a.x, -244f)), Struct_5(6139u, Struct_4(vec3<bool>(false, false, true), Struct_3(false, Struct_1(13611i, -1480f), Struct_1(-1i, global2[_wgslsmith_index_u32(arg_0.x, 14u)]), global2[_wgslsmith_index_u32(u_input.b.x, 14u)], Struct_1(u_input.a.x, 1254f))), 17710i, true), u_input.a.zwz >> (vec3<u32>(u_input.b.x, 81209u, 3582u) % vec3<u32>(32u))))) * arg_1));
    var var_1 = !vec4<bool>(!all(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, true, true), var_0.c)), true, var_0.c, any(select(select(vec3<bool>(var_0.c, false, true), vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.c, var_0.c, var_0.c)), vec3<bool>(true, var_0.c, var_0.c), false)));
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(global1.x, u_input.a.x))) >> (countOneBits((4294967295u | reverseBits(u_input.b.x)) >> (~firstTrailingBit(23743u) % 32u)) % 32u);
    var var_3 = arg_1;
    global3 = array<vec4<f32>, 25>();
    return Struct_1(-var_2, 852f);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(1u & (0u | (u_input.b.x | 70539u)), abs(u_input.b.x)), select(9367u, arg_2, true)), 14u)];
    let var_1 = arg_1;
    let var_2 = Struct_3(true, var_1.b.b, func_1(~(u_input.b | ~u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.d, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 14u)]), true)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(87101u, arg_2), u_input.b << (~vec2<u32>(u_input.b.x, arg_2) % vec2<u32>(32u)), var_1.b.b)), func_4(select(!(!vec4<bool>(var_1.a.x, arg_1.b.a, arg_1.a.x, false)), !select(vec4<bool>(false, var_1.b.a, true, var_1.a.x), vec4<bool>(false, arg_1.b.a, var_1.a.x, true), false), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-610f, -1558f, var_1.b.b.b) - vec3<f32>(116f, -649f, 200f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1345f, -640f, var_1.b.b.b))), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2260f, -2903f, var_1.b.c.b)))), min(arg_0, abs(_wgslsmith_mod_i32(0i, 14952i))), 1f).b);
    var var_3 = arg_1.b.b;
    let var_4 = Struct_5(abs(~_wgslsmith_mult_u32(abs(u_input.b.x), ~4294967295u)), Struct_4(vec3<bool>(!(!arg_1.a.x), !(!arg_1.a.x), true), arg_1.b), 0i, true);
    return var_4.b.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 25>();
    var var_0 = Struct_3(true, func_5(~(~(~global1.x)), Struct_4(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), Struct_3(false, Struct_1(global1.x, -2312f), Struct_1(1i, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 14u)]))), u_input.b.x ^ u_input.b.x), func_5(_wgslsmith_sub_i32(global1.x, _wgslsmith_clamp_i32(u_input.d, global1.x, 25884i) << (68802u % 32u)), Struct_4(vec3<bool>(true, true, true), Struct_3(true, func_5(global1.x, Struct_4(vec3<bool>(false, false, false), Struct_3(false, Struct_1(33504i, 429f), Struct_1(global1.x, global2[_wgslsmith_index_u32(4294967295u, 14u)]), global2[_wgslsmith_index_u32(13206u, 14u)], Struct_1(u_input.d, 468f))), u_input.b.x), Struct_1(u_input.a.x, -2240f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 14u)]), func_1(u_input.b, global2[_wgslsmith_index_u32(11713u, 14u)]))), u_input.b.x), global2[_wgslsmith_index_u32(109155u, 14u)], Struct_1(-_wgslsmith_sub_i32(-u_input.a.x, ~global1.x), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(~u_input.b.x), 14u)], _wgslsmith_f_op_f32(step(1190f, global2[_wgslsmith_index_u32(u_input.b.x, 14u)])))));
    var var_1 = Struct_4(vec3<bool>(all(select(select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.a), vec3<bool>(false, true, false)))), any(select(!vec3<bool>(false, var_0.a, false), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a), true), select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, var_0.a, true), var_0.a))), all(!(!vec2<bool>(var_0.a, var_0.a)))), Struct_3(var_0.a, var_0.e, var_0.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, (vec2<u32>(u_input.b.x, 35089u) >> (vec2<u32>(1u, 30409u) % vec2<u32>(32u))) & ~vec2<u32>(u_input.b.x, 36695u)), 14u)], var_0.b));
    var var_2 = 29690u;
    global1 = vec3<i32>((_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, 2147483647i, var_1.b.b.a, -6475i), select(u_input.a, u_input.a, vec4<bool>(var_1.b.a, false, true, var_1.b.a))) ^ var_1.b.b.a) ^ ~func_5(-28228i, Struct_4(vec3<bool>(true, var_0.a, false), Struct_3(false, Struct_1(-1131i, 310f), Struct_1(-10074i, var_0.d), -1184f, var_1.b.e)), _wgslsmith_div_u32(u_input.b.x, 17986u)).a, -13971i, -var_0.c.a);
    global2 = array<f32, 14>();
    var var_3 = Struct_2(func_4(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.a, var_1.a.x), vec4<bool>(false, var_1.b.a, var_0.a, false)), var_0.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 917f, var_1.b.d)), vec3<f32>(-1340f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27983u, 14u)]), _wgslsmith_f_op_f32(max(-979f, var_0.e.b))))), reverseBits(var_1.b.b.a), var_1.b.d).b, Struct_1(-min(1i, -global1.x), global2[_wgslsmith_index_u32(8990u, 14u)]), var_0.a, var_1.b.b, -global1.yx);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u & _wgslsmith_mult_u32(u_input.b.x, 17428u))));
}

