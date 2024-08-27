struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(76064u), -705f, Struct_1(0u), Struct_1(0u), Struct_1(23659u)), Struct_2(Struct_1(18886u), 1027f, Struct_1(4294967295u), Struct_1(21266u), Struct_1(28205u)), Struct_2(Struct_1(4294967295u), -967f, Struct_1(104591u), Struct_1(0u), Struct_1(22418u)), Struct_2(Struct_1(63189u), 1221f, Struct_1(49705u), Struct_1(4294967295u), Struct_1(3612u)), Struct_2(Struct_1(1u), 1562f, Struct_1(31560u), Struct_1(0u), Struct_1(14340u)), Struct_2(Struct_1(1u), -1000f, Struct_1(0u), Struct_1(51022u), Struct_1(74104u)), Struct_2(Struct_1(0u), 256f, Struct_1(0u), Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(47243u), -1442f, Struct_1(1u), Struct_1(19553u), Struct_1(30731u)), Struct_2(Struct_1(15974u), 342f, Struct_1(1u), Struct_1(4294967295u), Struct_1(1u)), Struct_2(Struct_1(12909u), -156f, Struct_1(4294967295u), Struct_1(4420u), Struct_1(1u)), Struct_2(Struct_1(24775u), -1087f, Struct_1(4294967295u), Struct_1(1u), Struct_1(44571u)), Struct_2(Struct_1(48352u), -1744f, Struct_1(4294967295u), Struct_1(6847u), Struct_1(0u)), Struct_2(Struct_1(97134u), -152f, Struct_1(6541u), Struct_1(4294967295u), Struct_1(0u)), Struct_2(Struct_1(7811u), -509f, Struct_1(52984u), Struct_1(4294967295u), Struct_1(20857u)), Struct_2(Struct_1(3399u), -518f, Struct_1(4294967295u), Struct_1(14190u), Struct_1(794u)), Struct_2(Struct_1(26900u), -1631f, Struct_1(6559u), Struct_1(1u), Struct_1(112495u)), Struct_2(Struct_1(37734u), -1704f, Struct_1(46916u), Struct_1(1u), Struct_1(0u)), Struct_2(Struct_1(48565u), -1041f, Struct_1(1u), Struct_1(9079u), Struct_1(0u)), Struct_2(Struct_1(54426u), 233f, Struct_1(63487u), Struct_1(1u), Struct_1(1479u)), Struct_2(Struct_1(60285u), -168f, Struct_1(25842u), Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(Struct_1(4454u), -846f, Struct_1(82009u), Struct_1(8842u), Struct_1(4294967295u)), Struct_2(Struct_1(4294967295u), 966f, Struct_1(4294967295u), Struct_1(13222u), Struct_1(1u)), Struct_2(Struct_1(9507u), -325f, Struct_1(4294967295u), Struct_1(1u), Struct_1(43560u)), Struct_2(Struct_1(56345u), -545f, Struct_1(0u), Struct_1(44813u), Struct_1(18769u)), Struct_2(Struct_1(18616u), 140f, Struct_1(1u), Struct_1(0u), Struct_1(34818u)), Struct_2(Struct_1(4889u), -936f, Struct_1(1u), Struct_1(1u), Struct_1(1u)), Struct_2(Struct_1(1u), 410f, Struct_1(1u), Struct_1(0u), Struct_1(0u)), Struct_2(Struct_1(5164u), 491f, Struct_1(1u), Struct_1(4294967295u), Struct_1(30796u)), Struct_2(Struct_1(0u), -1426f, Struct_1(55604u), Struct_1(25325u), Struct_1(45279u)), Struct_2(Struct_1(0u), 1150f, Struct_1(21308u), Struct_1(0u), Struct_1(4294967295u)), Struct_2(Struct_1(55099u), 462f, Struct_1(29981u), Struct_1(1u), Struct_1(4294967295u)));

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true));

var<private> global3: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global2 = array<vec4<bool>, 32>();
    let var_0 = Struct_1(7619u);
    let var_1 = vec2<u32>(947u, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_0.a), ~(~arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 0u, u_input.a.x) ^ vec4<u32>(arg_0.x, 28056u, arg_0.x, var_0.a), vec4<u32>(var_0.a, u_input.a.x, 4294967295u, arg_0.x) << (vec4<u32>(u_input.a.x, global0.a, u_input.a.x, u_input.d) % vec4<u32>(32u))), ~_wgslsmith_mod_u32(21645u, 4294967295u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a.x, 68121u, arg_0.x, 0u)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_0.x, 100598u, 4294967295u, 4294967295u)), ~vec4<u32>(0u, 85536u, arg_0.x, u_input.e)), select(min(vec4<u32>(1u, arg_0.x, arg_0.x, 34458u), vec4<u32>(global0.a, arg_0.x, 40974u, 57242u)), abs(vec4<u32>(4294967295u, global0.a, 63033u, 12925u)), global2[_wgslsmith_index_u32(abs(4294967295u), 32u)]))));
    let var_2 = -984f;
    global2 = array<vec4<bool>, 32>();
    return u_input.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = u_input.c.x;
    let var_1 = Struct_2(Struct_1(arg_1), arg_0.b, Struct_1(var_0), Struct_1(var_0), arg_0.a);
    var var_2 = var_1.a.a;
    global1 = array<Struct_2, 31>();
    var var_3 = u_input.a;
    return Struct_1(func_3(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 27056u, 4294967295u), abs(vec3<u32>(11298u, var_1.c.a, 0u))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(u_input.d | global0.a)), _wgslsmith_add_u32(global0.a, global0.a)), 31u)], countOneBits(_wgslsmith_mod_u32(1u, 4294967295u)), any(vec3<bool>(global3.x, global3.x & true, false)), !global3.zy);
    global3 = select(select(vec3<bool>(true, true, false), vec3<bool>(true, global3.x, global3.x), vec3<bool>(select(any(global2[_wgslsmith_index_u32(0u, 32u)]), any(vec3<bool>(true, global3.x, false)), !global3.x), true, true)), select(!(!(!vec3<bool>(true, global3.x, global3.x))), !select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), global3.x), !vec3<bool>(global3.x, global3.x, global3.x), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true), global3.x)), global3.x), !(!(!select(vec3<bool>(global3.x, false, false), vec3<bool>(global3.x, global3.x, global3.x), global3.x))));
    let var_1 = Struct_2(Struct_1(select(u_input.d, ~(~10006u), any(vec4<bool>(false, false, global3.x, global3.x)) | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f + 1f) - 546f), Struct_1(var_0.a), func_2(global1[_wgslsmith_index_u32(41915u, 31u)], ~(~80867u << (0u % 32u)), global3.x, select(select(!vec2<bool>(global3.x, false), global3.yx, select(global3.zx, vec2<bool>(false, global3.x), global3.x)), !(!global3.zy), global3.x)), func_2(global1[_wgslsmith_index_u32(var_0.a, 31u)], ~u_input.c.x | (4294967295u >> ((var_0.a >> (u_input.e % 32u)) % 32u)), global3.x, select(vec2<bool>(all(vec2<bool>(true, false)), all(global3.xx)), !select(global3.zy, global3.zy, global3.zz), all(vec3<bool>(true, global3.x, global3.x)))));
    var_0 = var_1.a;
    let var_2 = var_1;
    return vec4<u32>(global0.a, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c.x, var_0.a, 4294967295u), vec3<u32>(34039u, var_2.a.a, 15231u), vec3<bool>(true, true, true)) & vec3<u32>(4294967295u & global0.a, var_2.e.a, ~var_2.a.a), vec3<u32>(~firstLeadingBit(4294967295u), ~_wgslsmith_add_u32(var_2.a.a, global0.a), _wgslsmith_mod_u32(~0u, var_0.a))), ~(~var_0.a), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-950f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) - _wgslsmith_f_op_f32(294f * -588f)), -1035f), _wgslsmith_f_op_f32(ceil(arg_2))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1889f, _wgslsmith_f_op_f32(arg_2 * 781f), arg_2))));
    global2 = array<vec4<bool>, 32>();
    var var_1 = _wgslsmith_div_f32(-298f, -395f);
    let var_2 = vec2<bool>(!(true && all(vec3<bool>(global3.x, global3.x, global3.x))) & true, global3.x);
    global1 = array<Struct_2, 31>();
    return global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_1().x, firstLeadingBit(28450u)), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-12607i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, -38040i), -14719i), ~u_input.b, u_input.b);
    let var_1 = func_4(Struct_1(u_input.a.x), countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.a, 0u, 18073u, 66700u), select(~vec4<u32>(1u, 93106u, global0.a, global0.a), func_1(), global2[_wgslsmith_index_u32(~u_input.a.x, 32u)]))), 827f);
    global2 = array<vec4<bool>, 32>();
    var var_2 = global0.a;
    let var_3 = var_1.a;
    global3 = vec3<bool>(select(global3.x, true, true), any(global2[_wgslsmith_index_u32(~1u, 32u)]), global3.x);
    let var_4 = ~_wgslsmith_mod_i32(abs(0i), var_0.x);
    let var_5 = true;
    let var_6 = 236f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, _wgslsmith_div_f32(var_1.b, _wgslsmith_div_f32(var_6, -265f)), var_6, _wgslsmith_f_op_f32(f32(-1f) * -516f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(979f * var_1.b), 199f, -1000f, _wgslsmith_f_op_f32(-var_6))))));
}

