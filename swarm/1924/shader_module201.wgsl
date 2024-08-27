struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_4, 31>;

var<private> global2: array<f32, 30> = array<f32, 30>(-1232f, -353f, 1601f, -380f, 149f, -541f, -151f, -336f, 637f, 2366f, -690f, 255f, 451f, -114f, -574f, -994f, -876f, 1982f, 1994f, -228f, 793f, -1005f, 130f, 984f, -553f, -1480f, -1171f, -971f, 1648f, 1640f);

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-43923i, 10924i), vec2<i32>(2932i, 33379i), vec2<i32>(1i, 48057i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(63063i, 31884i), vec2<i32>(-1i, 0i), vec2<i32>(-18978i, 1i), vec2<i32>(-12035i, 10202i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-17166i, -40641i), vec2<i32>(-1i, 0i), vec2<i32>(1i, -30840i), vec2<i32>(0i, 22985i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 67623i), vec2<i32>(15081i, 0i), vec2<i32>(13368i, 1i), vec2<i32>(2147483647i, -9164i), vec2<i32>(-13867i, -38098i), vec2<i32>(-60111i, -1i), vec2<i32>(1i, 17242i), vec2<i32>(52269i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    global3 = array<vec2<i32>, 26>();
    let var_0 = 37486u;
    return u_input.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: bool) -> vec4<f32> {
    let var_0 = arg_1.x;
    let var_1 = arg_0.c;
    var var_2 = Struct_1(arg_0.e.a ^ _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b, arg_0.a, u_input.b) << (u_input.c % vec3<u32>(32u)), select(var_1.a, vec3<i32>(-64448i, 2147483647i, -1i), vec3<bool>(arg_3, arg_2.b, false))), max(-vec3<i32>(u_input.b, -59609i, 2147483647i), select(var_1.a, arg_0.b.a, vec3<bool>(global0.x, false, true)))), ~2147483647i, ~(~9840u), 41655u, select(!vec2<bool>(true, var_1.e.x), !(!select(arg_0.c.e, arg_0.b.e, var_1.e)), select(vec2<bool>(false, true), vec2<bool>(true, true), (arg_2.a > -482f) | true)));
    var var_3 = true;
    var var_4 = 785f;
    return arg_1;
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(37548u, 30u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(func_3(select(global0.x, !global0.x, true), _wgslsmith_f_op_f32(-1365f * global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), Struct_1(firstLeadingBit(abs(vec3<i32>(2147483647i, 0i, u_input.b))), func_3(false, _wgslsmith_f_op_f32(ceil(570f))), ~5105u, ~_wgslsmith_mod_u32(37736u, u_input.a.x), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), global0.x), !vec2<bool>(global0.x, false), global0.x)), Struct_1(vec3<i32>(reverseBits(u_input.b), u_input.b, -2638i), _wgslsmith_dot_vec4_i32(vec4<i32>(-49155i, 2147483647i, u_input.b, 1i), select(vec4<i32>(0i, 14574i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 25487i, u_input.b, -16278i), vec4<bool>(global0.x, global0.x, false, global0.x))), 26957u, u_input.c.x, !select(vec2<bool>(true, global0.x), vec2<bool>(false, true), false)), ~select(firstTrailingBit(u_input.d.zy), u_input.d.zz >> (u_input.a % vec2<u32>(32u)), false), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, u_input.b, 31882i, u_input.b), vec4<i32>(-44385i, 4637i, u_input.b, -30012i)), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -23988i))), min(u_input.d.x, u_input.d.x) | _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 84903u), ~(48793u & u_input.d.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0)), 296f)), global2[_wgslsmith_index_u32(u_input.d.x, 30u)], _wgslsmith_f_op_f32(-697f + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(var_0 * -1087f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], 976f, var_0, 1410f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(309f, 938f, 585f, var_0), vec4<f32>(var_0, global2[_wgslsmith_index_u32(139765u, 30u)], -1189f, var_0), global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 789f, 734f, global2[_wgslsmith_index_u32(34027u, 30u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1745f, global2[_wgslsmith_index_u32(u_input.d.x, 30u)], var_0))))), Struct_4(var_0, ((u_input.b >> (u_input.d.x % 32u)) << (2371u % 32u)) >= ~(-1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 30u)] - _wgslsmith_f_op_f32(var_0 + global2[_wgslsmith_index_u32(4294967295u, 30u)]))) == global2[_wgslsmith_index_u32(reverseBits(reverseBits(u_input.c.x) | ~u_input.a.x), 30u)]));
    global1 = array<Struct_4, 31>();
    return ~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, 1i), vec3<i32>(u_input.b, u_input.b, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(-2147483647i, 2147483647i, u_input.b))), vec3<i32>(_wgslsmith_mult_i32(u_input.b, 2147483647i), firstTrailingBit(-1i), select(0i, 1i, global0.x))) >> (_wgslsmith_div_vec3_u32(~(~vec3<u32>(977u, u_input.c.x, 1u) ^ (vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x) >> (vec3<u32>(12058u, u_input.c.x, u_input.a.x) % vec3<u32>(32u)))), u_input.d) % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = true;
    global0 = vec2<bool>(true, global0.x || all(!vec4<bool>(true, false, arg_0.e.e.x, global0.x)));
    global0 = !(!arg_3.e.e);
    let var_1 = Struct_1(-func_2(), 0i, 6191u, max(28292u, select(~u_input.c.x, arg_3.c.d, false) ^ 0u), arg_0.c.e);
    let var_2 = ~(arg_0.c.b >> (~(arg_0.d.x << (13917u % 32u)) % 32u)) | 2147483647i;
    return !(!select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.e.x, global0.x, arg_0.b.e.x, global0.x), false), vec4<bool>(false, global0.x, false, false), vec4<bool>(arg_3.c.e.x, false, global0.x, true)), select(!vec4<bool>(true, true, false, global0.x), vec4<bool>(arg_3.c.e.x, false, true, false), true), all(vec2<bool>(arg_0.e.e.x, arg_3.b.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2152f;
    global3 = array<vec2<i32>, 26>();
    global2 = array<f32, 30>();
    global0 = select(vec2<bool>(all(!func_1(Struct_2(-1i, Struct_1(vec3<i32>(u_input.b, -1i, u_input.b), 2147483647i, 4294967295u, u_input.a.x, vec2<bool>(false, global0.x)), Struct_1(vec3<i32>(-1i, 29055i, -2147483647i), u_input.b, u_input.c.x, 51661u, vec2<bool>(false, false)), vec2<u32>(u_input.c.x, 36716u), Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), u_input.b, 1u, u_input.c.x, vec2<bool>(global0.x, global0.x))), vec3<i32>(u_input.b, u_input.b, -1i), Struct_3(u_input.c.x), Struct_2(u_input.b, Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), -1i, u_input.c.x, u_input.a.x, vec2<bool>(false, false)), Struct_1(vec3<i32>(u_input.b, u_input.b, 1i), -29561i, u_input.d.x, u_input.d.x, vec2<bool>(true, global0.x)), vec2<u32>(4294967295u, u_input.a.x), Struct_1(vec3<i32>(u_input.b, 1i, u_input.b), u_input.b, 4294967295u, u_input.c.x, vec2<bool>(true, false))))), !global0.x), func_1(Struct_2(~u_input.b, Struct_1(vec3<i32>(u_input.b, u_input.b, 0i), -1i, ~11557u, max(u_input.c.x, 0u), !vec2<bool>(global0.x, global0.x)), Struct_1(func_2(), _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.c.x, func_1(Struct_2(u_input.b, Struct_1(vec3<i32>(u_input.b, -1i, u_input.b), u_input.b, 4294967295u, u_input.d.x, vec2<bool>(true, false)), Struct_1(vec3<i32>(-2147483647i, u_input.b, 0i), 35755i, 28081u, 4294967295u, vec2<bool>(global0.x, true)), u_input.c.zz, Struct_1(vec3<i32>(-2147483647i, 0i, 11175i), u_input.b, u_input.d.x, 4294967295u, vec2<bool>(global0.x, global0.x))), vec3<i32>(8886i, u_input.b, 2147483647i), Struct_3(4294967295u), Struct_2(u_input.b, Struct_1(vec3<i32>(-1i, 1i, 37048i), -1484i, 11853u, 0u, vec2<bool>(global0.x, global0.x)), Struct_1(vec3<i32>(1i, -11790i, u_input.b), -2147483647i, u_input.c.x, 4294967295u, vec2<bool>(false, global0.x)), vec2<u32>(u_input.c.x, u_input.d.x), Struct_1(vec3<i32>(-614i, 0i, u_input.b), u_input.b, u_input.a.x, u_input.c.x, vec2<bool>(global0.x, global0.x)))).wy), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 15609u)), u_input.d.x), Struct_1(vec3<i32>(0i, u_input.b, 1i), 1i, 7574u, 0u, !vec2<bool>(global0.x, true))), countOneBits(~func_2()), Struct_3(1u), Struct_2(min(u_input.b, u_input.b) >> (u_input.d.x % 32u), Struct_1(vec3<i32>(u_input.b, 1i, 0i), -u_input.b, u_input.c.x, max(u_input.c.x, u_input.d.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), vec2<bool>(false, false))), Struct_1(firstLeadingBit(vec3<i32>(-1i, u_input.b, 0i)), u_input.b >> (24878u % 32u), u_input.d.x, _wgslsmith_add_u32(58793u, u_input.c.x), vec2<bool>(global0.x, true)), abs(u_input.d.zz & u_input.a), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(0i, -61276i, u_input.b)), -u_input.b, u_input.c.x, ~u_input.c.x, vec2<bool>(global0.x, false)))).zy, !any(vec4<bool>(true, true, true, true)));
    global2 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], 724f) - vec2<f32>(-165f, global2[_wgslsmith_index_u32(0u, 30u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(41200u, u_input.c.x), u_input.a), reverseBits(~7861u), u_input.d.x), 54235u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a, u_input.c.zx))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, 4294967295u, 28849u), countOneBits(vec4<u32>(1u, 4294967295u, 1u, u_input.c.x)))), 30u)], 1241f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1607f, -870f, var_1.x, 579f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, -388f, global2[_wgslsmith_index_u32(17179u, 30u)]) + vec4<f32>(var_1.x, var_1.x, 144f, -639f)))))), ~(countOneBits(~u_input.d.x) << (~_wgslsmith_div_u32(1u, 4294967295u) % 32u)));
}

