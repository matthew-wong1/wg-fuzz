struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 20>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-854f, -1000f, -1000f), true, false, vec4<bool>(false, false, true, false));

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(86154u, 4294967295u, 69307u, 4294967295u), vec4<u32>(0u, 1941u, 4294967295u, 37034u), vec4<u32>(1u, 1u, 5025u, 16579u), vec4<u32>(5307u, 35244u, 18170u, 0u), vec4<u32>(29033u, 0u, 4294967295u, 47718u), vec4<u32>(15327u, 4294967295u, 32170u, 56588u), vec4<u32>(45369u, 63091u, 12231u, 0u), vec4<u32>(4233u, 1u, 4294967295u, 1u), vec4<u32>(0u, 0u, 4294967295u, 17951u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(99241u, 1u, 108002u, 4255u), vec4<u32>(4294967295u, 1u, 13385u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 0u, 43080u, 70337u), vec4<u32>(52512u, 2859u, 0u, 0u), vec4<u32>(0u, 0u, 4294967295u, 2881u), vec4<u32>(1u, 76580u, 0u, 5218u), vec4<u32>(3805u, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(82501u, 9465u, 4294967295u, 29866u), vec4<u32>(69364u, 0u, 0u, 16430u), vec4<u32>(4294967295u, 4294967295u, 1u, 44526u), vec4<u32>(4294967295u, 20214u, 51948u, 95632u), vec4<u32>(4294967295u, 0u, 0u, 13731u), vec4<u32>(0u, 4294967295u, 0u, 44023u), vec4<u32>(44345u, 12204u, 15379u, 77213u), vec4<u32>(3559u, 1u, 0u, 27792u), vec4<u32>(76834u, 0u, 0u, 1u), vec4<u32>(110670u, 4294967295u, 0u, 81007u), vec4<u32>(68387u, 4294967295u, 10051u, 0u));

var<private> global4: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = global0.d.yyz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(arg_0.a.x, 901f, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(-arg_0.a)), global2.a, vec3<bool>(true, true, true)))), false, true, vec4<bool>(u_input.c == u_input.c, !(!global0.c), all(global0.d.yyx), false));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * global0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)))), global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, -1650f)), _wgslsmith_f_op_f32(-arg_0.a.x))), arg_1, any(var_1.d.xxx), global2.d);
    var var_2 = ~(-(~(-_wgslsmith_div_i32(u_input.b, u_input.a))));
    global4 = array<vec2<u32>, 1>();
    return ~(u_input.c ^ min(u_input.c, 74422u));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> bool {
    global1 = array<Struct_1, 20>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(arg_0.d.x << ((u_input.c >> ((36161u ^ arg_0.d.x) % 32u)) % 32u), 1u)], reverseBits(vec2<u32>(func_3(global1[_wgslsmith_index_u32(9571u, 20u)], arg_0.b.b), select(4294967295u, 4294967295u, global0.b)))) & min(arg_0.c.x, 45786u), 20u)];
    let var_0 = arg_0;
    global4 = array<vec2<u32>, 1>();
    var var_1 = arg_0;
    return !(!(!any(select(vec3<bool>(global2.d.x, arg_0.b.b, global0.d.x), vec3<bool>(arg_0.b.c, false, false), arg_0.b.c))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(2218f)), 953f));
    global3 = array<vec4<u32>, 30>();
    var var_1 = ~16134u;
    global4 = array<vec2<u32>, 1>();
    global1 = array<Struct_1, 20>();
    return false;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(vec4<i32>(firstLeadingBit(1i), _wgslsmith_mod_i32(-47219i, countOneBits(~1212i)), i32(-1i) * -2147483647i, 58753i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, global2.a.x, global2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 884f, -369f)))), global0.b, func_4(func_2(Struct_2(vec4<i32>(0i, -1i, arg_0.x, -2147483647i), global1[_wgslsmith_index_u32(87208u, 20u)], vec4<u32>(8412u, u_input.c, 1u, 0u), vec3<u32>(1u, 0u, u_input.c), -52640i), arg_0.x), 17053u == select(1u, u_input.c, false), global2.a.x), global0.d), min(vec4<u32>(~firstLeadingBit(18587u), _wgslsmith_mult_u32(reverseBits(u_input.c), _wgslsmith_mod_u32(u_input.c, u_input.c)), func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26179u, u_input.c, u_input.c), vec3<u32>(90913u, 23888u, u_input.c)), 20u)], false), ~(~4337u)), global3[_wgslsmith_index_u32(~(~u_input.c), 30u)]), ~abs(vec3<u32>(u_input.c, 0u, 41612u)), 1i);
    var var_1 = 62636i;
    global2 = global1[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_2 = ~var_0.c ^ var_0.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(global2.a.xz));
    return ~u_input.c;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_add_u32(u_input.c, firstTrailingBit(u_input.c))) << (u_input.c % 32u);
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(arg_1.a, global0.a))))), _wgslsmith_f_op_vec3_f32(-global2.a), true)), abs(-u_input.b) <= _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 1i, 8367i), vec3<i32>(u_input.a, -2147483647i, u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (abs(vec3<u32>(4294967295u, 1u, u_input.c)) % vec3<u32>(32u))), true, select(select(vec4<bool>(false, global2.c, true, global2.c), global0.d, func_4(arg_0, any(global0.d.zy), _wgslsmith_f_op_f32(global2.a.x * -1362f))), !global2.d, false));
    global0 = arg_1;
    global4 = array<vec2<u32>, 1>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, arg_1.a.x, -825f))), _wgslsmith_f_op_vec3_f32(-global0.a))) + _wgslsmith_f_op_vec3_f32(-var_2.a)), true, false, vec4<bool>(any(select(select(vec2<bool>(false, true), global2.d.yw, arg_1.d.x), select(vec2<bool>(false, true), global0.d.yx, false), !var_2.d.wx)), arg_1.d.x, 26561i >= (-669i & (u_input.a | -44722i)), arg_1.b));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(~(vec3<i32>(~u_input.b, u_input.a | 2147483647i, -1i) >> (vec3<u32>(~u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c), u_input.c) % vec3<u32>(32u))), -firstLeadingBit(vec3<i32>(-u_input.b, _wgslsmith_mult_i32(2147483647i, 1i), min(u_input.b, 39524i))), arg_0.d.wxy);
    var var_1 = Struct_2(-vec4<i32>(1i, 2147483647i, var_0.x, var_0.x ^ var_0.x) << (~vec4<u32>(1u, 65100u, u_input.c ^ u_input.c, u_input.c) % vec4<u32>(32u)), func_5(false, Struct_1(func_5(global0.d.x, func_5(arg_0.b, global1[_wgslsmith_index_u32(u_input.c, 20u)])).a, -1000f == global0.a.x, !arg_0.b, vec4<bool>(!arg_0.d.x, false, all(vec2<bool>(true, false)), true))), min(~max(reverseBits(vec4<u32>(7130u, 0u, 1u, u_input.c)), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~abs(reverseBits(global3[_wgslsmith_index_u32(u_input.c, 30u)]))), vec3<u32>(27764u, abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(11205u, u_input.c), max(u_input.c, u_input.c))), func_1(~(-var_0.zz))), u_input.b);
    let var_2 = !vec4<bool>(func_2(Struct_2(vec4<i32>(2147483647i, -49903i, var_1.e, 2147483647i), func_5(true, Struct_1(vec3<f32>(-1936f, arg_0.a.x, -434f), arg_0.b, global2.b, vec4<bool>(arg_0.b, arg_0.c, var_1.b.b, true))), vec4<u32>(4294967295u, 4294967295u, var_1.c.x, var_1.c.x), ~var_1.c.xxw, _wgslsmith_clamp_i32(u_input.b, var_1.e, var_0.x)), _wgslsmith_add_i32(min(var_0.x, var_1.a.x), _wgslsmith_sub_i32(var_0.x, 46182i))), true, true, !any(var_1.b.d.yz));
    let var_3 = true;
    let var_4 = -7041i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-844f, -1225f, 410f), vec3<f32>(-339f, 1000f, global2.a.x)))))) - global0.a), all(global2.d.xww), false, !(!global0.d));
    global0 = func_6(func_5((_wgslsmith_mod_u32(u_input.c, u_input.c) >> (func_1(vec2<i32>(-31613i, 10062i)) % 32u)) < u_input.c, global1[_wgslsmith_index_u32(~25380u, 20u)]));
    var var_0 = -vec4<i32>(_wgslsmith_mult_i32(reverseBits(max(u_input.b, -2147483647i)), u_input.b), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b) | ~vec2<i32>(-22764i, u_input.b), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(7131i, u_input.a)), ~vec2<i32>(31163i, -49634i))), 5701i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, 441f, 1820f, -327f)))))));
    var var_2 = vec4<bool>(func_5(global0.b, Struct_1(global0.a, !(!global2.c), global0.b, global2.d)).b, func_6(func_6(Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), func_6(global1[_wgslsmith_index_u32(20957u, 20u)]).d.x, !global2.b, vec4<bool>(false, global0.d.x, global2.c, true)))).d.x, func_6(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1690f, global0.a.x, -637f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, global2.a.x, -1000f), vec3<f32>(global0.a.x, -151f, var_1.x), global0.b))), global0.c, !select(global2.c, true, global2.d.x), vec4<bool>(global0.d.x, any(vec2<bool>(global0.d.x, true)), any(vec3<bool>(false, global2.b, true)), func_6(global1[_wgslsmith_index_u32(4294967295u, 20u)]).d.x))).c, global0.b);
    let var_3 = _wgslsmith_clamp_i32(-17281i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_mod_i32(var_0.x, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), var_0.xx) & var_0.wz), firstTrailingBit(var_0.yy)), 2147483647i);
    let var_4 = countOneBits(-37847i & var_3);
    let var_5 = Struct_2(vec4<i32>(var_0.x, min(_wgslsmith_clamp_i32(-31774i, _wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(var_4, -2147483647i)), firstTrailingBit(2147483647i)), -_wgslsmith_sub_i32(-42768i, u_input.a)), _wgslsmith_add_i32(var_3, var_3), ~_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.x, var_3), abs(-1i))), func_6(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(2290f, 785f, 1302f), _wgslsmith_f_op_vec3_f32(-var_1.yxy)), global2.b, !(!global0.d.x), vec4<bool>(4294967295u <= u_input.c, any(global0.d.xww), true, global0.b))), vec4<u32>(4294967295u, u_input.c, _wgslsmith_mod_u32(~u_input.c, func_1(~var_0.xy)), ~(~select(u_input.c, u_input.c, false))), min(~(~vec3<u32>(u_input.c, u_input.c, u_input.c)), max(vec3<u32>(1u, 4294967295u, u_input.c) >> (vec3<u32>(35504u, u_input.c, 15246u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(4294967295u, u_input.c, u_input.c)))) & select(select(vec3<u32>(u_input.c, 40469u, u_input.c), vec3<u32>(u_input.c, 36895u, 14826u), var_2.x) | ~vec3<u32>(0u, 4294967295u, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 95248u), _wgslsmith_mod_vec3_u32(vec3<u32>(46423u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 47420u)), vec3<u32>(u_input.c, 1u, u_input.c) | vec3<u32>(1u, 75327u, u_input.c)), global0.c), -abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_0.xzz, var_0.xxx), _wgslsmith_mult_i32(u_input.a, u_input.a))));
    global4 = array<vec2<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4, max(var_5.c, ~(~select(var_5.c, vec4<u32>(u_input.c, u_input.c, 1u, u_input.c), global2.d))), var_4, ~var_3);
}

