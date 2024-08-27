struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22>;

var<private> global1: array<vec4<i32>, 11>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 1u), 18362u, 68755u, -1113i), Struct_1(1i, vec3<u32>(1u, 0u, 1u), 10720u, 35110u, 2147483647i), Struct_1(1i, vec3<u32>(0u, 56356u, 0u), 19667u, 44185u, -1i), Struct_1(2147483647i, vec3<u32>(1u, 4106u, 20056u), 1u, 0u, 8336i), Struct_1(1i, vec3<u32>(12718u, 49242u, 69435u), 1u, 23894u, 1i), Struct_1(2147483647i, vec3<u32>(4294967295u, 8474u, 103519u), 1u, 4294967295u, i32(-2147483648)), Struct_1(15256i, vec3<u32>(209u, 40835u, 21043u), 0u, 14513u, -8895i), Struct_1(-1i, vec3<u32>(36440u, 0u, 1u), 4294967295u, 1u, 1i), Struct_1(i32(-2147483648), vec3<u32>(1u, 1u, 4294967295u), 48078u, 4294967295u, -2900i), Struct_1(-36657i, vec3<u32>(0u, 21668u, 59197u), 1u, 0u, -1i), Struct_1(53200i, vec3<u32>(31079u, 53588u, 89941u), 7273u, 11160u, -25003i));

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-14840i, vec3<u32>(1u, 1u, 4294967295u), 0u, 4294967295u, i32(-2147483648)), Struct_1(i32(-2147483648), vec3<u32>(33982u, 17154u, 0u), 50361u, 39723u, -12706i), Struct_1(1i, vec3<u32>(80591u, 1u, 4294967295u), 47513u, 4294967295u, -1i), Struct_1(0i, vec3<u32>(1u, 4294967295u, 4294967295u), 4294967295u, 7385u, 2147483647i), Struct_1(2147483647i, vec3<u32>(63526u, 1u, 1u), 0u, 39021u, -46706i), Struct_1(-6207i, vec3<u32>(0u, 0u, 62672u), 18094u, 11719u, 405i), Struct_1(27753i, vec3<u32>(54078u, 21737u, 4294967295u), 4054u, 21569u, 29979i), Struct_1(-1i, vec3<u32>(17381u, 50445u, 1u), 1u, 1u, 52185i), Struct_1(-5307i, vec3<u32>(4294967295u, 53429u, 11624u), 50132u, 2832u, 0i), Struct_1(0i, vec3<u32>(0u, 84381u, 0u), 5353u, 4294967295u, 7882i), Struct_1(-11898i, vec3<u32>(1u, 36136u, 0u), 43262u, 0u, 1i), Struct_1(26841i, vec3<u32>(4294967295u, 3397u, 5973u), 1u, 10282u, 1221i), Struct_1(15638i, vec3<u32>(4294967295u, 0u, 28515u), 289u, 0u, 1i), Struct_1(-8355i, vec3<u32>(6741u, 41910u, 6816u), 10808u, 38829u, -14888i), Struct_1(37083i, vec3<u32>(77198u, 1u, 88425u), 1u, 1u, 0i), Struct_1(26983i, vec3<u32>(16617u, 91267u, 34380u), 1u, 5683u, 36397i), Struct_1(-1i, vec3<u32>(55956u, 40507u, 47167u), 15410u, 4294967295u, 38043i), Struct_1(-38843i, vec3<u32>(21511u, 4294967295u, 4294967295u), 2206u, 11563u, -711i), Struct_1(38769i, vec3<u32>(39191u, 50117u, 0u), 1u, 1u, 0i), Struct_1(2147483647i, vec3<u32>(31326u, 28925u, 4294967295u), 39590u, 1u, -29833i), Struct_1(32121i, vec3<u32>(4294967295u, 19538u, 52854u), 4294967295u, 20080u, 55554i), Struct_1(i32(-2147483648), vec3<u32>(0u, 1u, 27158u), 0u, 30236u, 2147483647i), Struct_1(-6668i, vec3<u32>(1u, 0u, 1u), 4294967295u, 76728u, -18676i), Struct_1(i32(-2147483648), vec3<u32>(1u, 4294967295u, 1u), 0u, 1u, 10093i), Struct_1(1i, vec3<u32>(28297u, 0u, 6718u), 30234u, 4294967295u, 5546i), Struct_1(1i, vec3<u32>(0u, 23205u, 3745u), 1u, 4294967295u, -57550i), Struct_1(0i, vec3<u32>(1u, 54813u, 11615u), 104700u, 28792u, 1i), Struct_1(3354i, vec3<u32>(0u, 43049u, 1u), 0u, 43161u, 0i), Struct_1(1i, vec3<u32>(4294967295u, 4294967295u, 0u), 10027u, 4294967295u, 1i), Struct_1(1i, vec3<u32>(1u, 1u, 4294967295u), 26159u, 64910u, 2147483647i), Struct_1(-19288i, vec3<u32>(1u, 4294967295u, 4294967295u), 1u, 1u, 1332i), Struct_1(1i, vec3<u32>(14653u, 60111u, 92224u), 48680u, 0u, -1989i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -164f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1015f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1277f + -610f) - _wgslsmith_f_op_f32(ceil(-799f)))), _wgslsmith_f_op_f32(sign(1f)), 1110f));
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.x));
    global2 = array<Struct_1, 11>();
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_1)), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, -1189f, var_0.x, -1481f) - vec4<f32>(var_1, var_0.x, -167f, var_1))))))), vec4<f32>(var_1, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_1))));
    return vec4<bool>(any(!global3.yxx), (all(select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, global3.x, global3.x, false))) | global3.x) && !(_wgslsmith_mult_i32(1i, u_input.a.x) == arg_0.a), any(vec4<bool>(true, !any(global3.yxy), all(global3.wzw), global3.x)), all(!select(!vec4<bool>(false, true, global3.x, global3.x), select(vec4<bool>(true, false, global3.x, true), vec4<bool>(global3.x, global3.x, false, false), false), select(vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(global3.x, global3.x, true, global3.x), global3.x))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    global3 = select(!(!(!select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(true, true, false, true), vec4<bool>(true, global3.x, global3.x, global3.x)))), func_3(global2[_wgslsmith_index_u32(~min(_wgslsmith_div_u32(arg_0, 13129u), arg_1 << (arg_1 % 32u)), 11u)]), !vec4<bool>(-48436i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.a.x), u_input.a), func_3(Struct_1(-6635i, vec3<u32>(u_input.c, 39669u, 38417u), u_input.c, arg_1, 1i)).x, true, global3.x));
    let var_0 = false;
    global0 = array<vec2<f32>, 22>();
    let var_1 = global4[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~countOneBits(min(arg_1, u_input.c)), arg_0 ^ _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1, 4294967295u), 12076u | u_input.e.x, 26748u & u_input.e.x)), (4294967295u << (~max(4294967295u, 0u) % 32u)) & _wgslsmith_div_u32(~19908u, u_input.e.x), false), 32u)];
    return 4294967295u;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = 25896u & (firstLeadingBit(_wgslsmith_add_u32(10685u, _wgslsmith_mod_u32(u_input.c, 1u))) >> (_wgslsmith_sub_u32(u_input.c & max(51418u, u_input.c), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 68645u), vec3<u32>(1u, 24045u, u_input.e.x)), _wgslsmith_sub_u32(u_input.e.x, 16280u))) % 32u));
    var var_1 = Struct_1(u_input.a.x, vec3<u32>(u_input.c, ~(~(~1u)), func_2(max(6510u, u_input.e.x), countOneBits(~4953u), vec3<i32>(u_input.d.x, -u_input.d.x, ~0i), ~u_input.d.x)), select(func_2(67004u, var_0, u_input.d, -2147483647i), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 4294967295u), u_input.c, ~(~var_0)), max(var_0, 4294967295u) > firstLeadingBit(firstTrailingBit(var_0))), ~select(countOneBits(firstLeadingBit(u_input.e.x)), _wgslsmith_mult_u32(~34588u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, u_input.e.x, var_0), vec4<u32>(var_0, 4294967295u, 53683u, 1u))), _wgslsmith_add_u32(26822u, var_0) == u_input.c), ~_wgslsmith_dot_vec3_i32(u_input.d, ~u_input.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 22u)] * vec2<f32>(arg_0, 1339f));
    global3 = select(!vec4<bool>(any(vec4<bool>(global3.x, true, true, false)), !func_3(Struct_1(35865i, var_1.b, 16198u, u_input.c, 45202i)).x, true, true), select(!vec4<bool>(true, global3.x, true, true), !select(!vec4<bool>(false, global3.x, global3.x, false), func_3(global4[_wgslsmith_index_u32(20748u, 32u)]), !vec4<bool>(true, global3.x, false, global3.x)), vec4<bool>(!select(true, global3.x, false), global3.x, all(global3.xw) != (1i > u_input.d.x), all(select(global3.xwy, global3.wxw, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 474f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-201f))));
    let var_3 = reverseBits(70236u);
    return Struct_1(-(min(u_input.a.x, var_1.e) & _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(46584i, -2147483647i, var_1.e, u_input.b.x))), _wgslsmith_add_vec3_u32(~var_1.b, vec3<u32>(var_3, ~var_3, 86184u)) ^ vec3<u32>(~1u, 1u, ~4294967295u), var_3, var_0, 1287i >> (_wgslsmith_mult_u32(~var_0, _wgslsmith_mod_u32(5899u, u_input.e.x) & 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 32>();
    var var_0 = Struct_1(-countOneBits(i32(-1i) * -26189i), ~(~vec3<u32>(4294967295u, u_input.e.x, u_input.e.x) & vec3<u32>(~4294967295u, _wgslsmith_sub_u32(14437u, u_input.c), u_input.e.x)), 1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 36774u, 13233u, 48770u), vec4<u32>(max(1u, u_input.c), ~1u, 2335u, firstLeadingBit(12534u))), u_input.d.x);
    var var_1 = func_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1264f + -1100f)))));
    global1 = array<vec4<i32>, 11>();
    let var_2 = ~(~firstTrailingBit(12877u) >> (var_1.b.x % 32u));
    global3 = !(!(!vec4<bool>(!global3.x, func_3(Struct_1(-1i, var_1.b, 4294967295u, var_2, 61795i)).x, global3.x, false && global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1197f, -2089f, -1009f) * vec3<f32>(268f, 869f, 387f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(876f, -1363f, 246f) - vec3<f32>(-1147f, -366f, 1562f)), vec3<bool>(global3.x, true, true)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-962f, -233f, -950f), vec3<f32>(1140f, -1710f, -1587f), vec3<bool>(true, global3.x, global3.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1295f, -1101f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, -161f, 689f)))));
}

