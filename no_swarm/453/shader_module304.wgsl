struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<bool>(true, false, true, false), 4294967295u, vec4<i32>(5347i, 0i, 1i, 2147483647i)), Struct_2(vec4<bool>(true, true, false, false), 16963u, vec4<i32>(35520i, -48423i, 0i, 41269i)), Struct_2(vec4<bool>(false, true, true, false), 0u, vec4<i32>(21666i, 46432i, -17299i, 0i)), Struct_2(vec4<bool>(true, true, false, true), 17380u, vec4<i32>(0i, -3464i, 2147483647i, -1i)), Struct_2(vec4<bool>(false, true, true, false), 59685u, vec4<i32>(1449i, 1i, i32(-2147483648), -7647i)), Struct_2(vec4<bool>(true, true, false, false), 15027u, vec4<i32>(33286i, 2147483647i, 0i, 4826i)), Struct_2(vec4<bool>(false, true, false, true), 68142u, vec4<i32>(-49011i, 24068i, -9872i, 31395i)), Struct_2(vec4<bool>(false, false, false, true), 4294967295u, vec4<i32>(0i, -57091i, -15527i, -1i)), Struct_2(vec4<bool>(false, false, true, true), 17560u, vec4<i32>(1i, i32(-2147483648), -25362i, -17908i)), Struct_2(vec4<bool>(true, false, false, true), 35207u, vec4<i32>(0i, 0i, 25879i, 1i)), Struct_2(vec4<bool>(false, true, true, false), 4458u, vec4<i32>(i32(-2147483648), 10554i, i32(-2147483648), -111727i)), Struct_2(vec4<bool>(false, false, false, true), 4294967295u, vec4<i32>(11478i, 0i, i32(-2147483648), 1i)), Struct_2(vec4<bool>(false, true, false, false), 48793u, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i)), Struct_2(vec4<bool>(false, true, true, true), 17751u, vec4<i32>(-1i, 8740i, 1i, -14507i)), Struct_2(vec4<bool>(true, false, false, true), 91658u, vec4<i32>(i32(-2147483648), 3395i, i32(-2147483648), 0i)), Struct_2(vec4<bool>(false, true, false, false), 34026u, vec4<i32>(1i, i32(-2147483648), 0i, -14161i)), Struct_2(vec4<bool>(true, false, false, true), 50308u, vec4<i32>(-47388i, 0i, -20337i, 2147483647i)), Struct_2(vec4<bool>(false, false, false, false), 16683u, vec4<i32>(1i, 49315i, 37790i, -61550i)), Struct_2(vec4<bool>(true, false, true, false), 13219u, vec4<i32>(-16822i, 1i, 0i, 14190i)), Struct_2(vec4<bool>(true, true, false, true), 0u, vec4<i32>(1i, 2147483647i, 2147483647i, 0i)), Struct_2(vec4<bool>(false, false, false, false), 0u, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 2147483647i)), Struct_2(vec4<bool>(false, false, false, true), 43280u, vec4<i32>(1i, -45834i, 2147483647i, -35696i)), Struct_2(vec4<bool>(false, false, false, false), 4294967295u, vec4<i32>(-31835i, 0i, -3786i, -32949i)), Struct_2(vec4<bool>(true, true, true, false), 1u, vec4<i32>(i32(-2147483648), -1i, 45224i, -17835i)), Struct_2(vec4<bool>(true, false, true, true), 409u, vec4<i32>(-54288i, -93201i, 12645i, -56812i)), Struct_2(vec4<bool>(true, false, false, false), 35681u, vec4<i32>(6006i, -868i, 0i, 29784i)));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(56686u, 4294967295u, 4294967295u, 1u), 46471u);

var<private> global2: array<u32, 21> = array<u32, 21>(4294967295u, 1u, 54259u, 0u, 1u, 4294967295u, 23755u, 1u, 1u, 4294967295u, 4294967295u, 36267u, 1u, 0u, 49130u, 1u, 52959u, 1u, 4294967295u, 4294967295u, 4294967295u);

var<private> global3: array<vec4<u32>, 3>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 53658i;
    global2 = array<u32, 21>();
    let var_1 = arg_1;
    return select(!select(vec4<bool>(true, all(vec2<bool>(true, false)), false, all(vec3<bool>(true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 73180u >= arg_0), true), !vec4<bool>(true, true, (var_0 <= -1i) & true, false), !all(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(u_input.d, (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b, 21u)], 21u)], 40922u, 7317u), vec4<u32>(arg_0.b, global1.b, u_input.d.x, arg_0.b)) << (~vec4<u32>(global1.a.x, 0u, u_input.d.x, 0u) % vec4<u32>(32u))) & min(vec4<u32>(1u, 3842u, global2[_wgslsmith_index_u32(0u, 21u)], global1.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 21u)], u_input.d.x, 1u), global1.a, u_input.d)), max(vec4<u32>(u_input.d.x, 90694u, global2[_wgslsmith_index_u32(52501u, 21u)], ~global2[_wgslsmith_index_u32(53174u, 21u)]), ~(u_input.d ^ u_input.d))), _wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.d.x, 0u >> (arg_0.b % 32u), firstLeadingBit(56213u)))));
    var var_1 = -1594f;
    let var_2 = false;
    var var_3 = Struct_1(u_input.d, arg_0.b);
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.c, ~vec4<i32>(-1i, 27874i, -19113i, arg_0.c.x)), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, arg_0.c.x), _wgslsmith_div_i32(arg_0.c.x, u_input.e), ~u_input.b.x, -1i)), ~(-12864i)), u_input.e, _wgslsmith_add_i32(u_input.e, -36450i >> (~(~global1.b) % 32u)), ~firstTrailingBit(-arg_0.c.x));
    return !arg_0.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(353f, 513f, -540f, 592f))) + vec4<f32>(292f, -444f, _wgslsmith_f_op_f32(-1302f - 320f), _wgslsmith_f_op_f32(floor(451f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1146f, -790f, 511f, -499f) - vec4<f32>(-1052f, -115f, -1122f, -607f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1370f, -1330f, -1082f, -831f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(344f, 211f, 277f, -307f), vec4<f32>(154f, -2444f, 812f, -305f))))))));
    let var_1 = all(arg_1.a);
    global2 = array<u32, 21>();
    return Struct_1(~(~(~(~vec4<u32>(u_input.d.x, arg_2.b, arg_0.x, 15167u)))), ~arg_2.b);
}

fn func_1() -> i32 {
    let var_0 = 4294967295u;
    global3 = array<vec4<u32>, 3>();
    var var_1 = true;
    global1 = func_4(vec4<u32>(54392u, 6405u, var_0, u_input.a.x), Struct_2(select(vec4<bool>(true, true, u_input.d.x >= 1u, all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_2(5640u, Struct_1(vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 21u)], 21u)], 38379u, var_0), 0u), Struct_1(vec4<u32>(26893u, var_0, global1.b, 38865u), 42760u)), true)), _wgslsmith_dot_vec3_u32(u_input.a ^ ~vec3<u32>(global2[_wgslsmith_index_u32(global1.b, 21u)], u_input.d.x, 1352u), u_input.d.yxz), vec4<i32>(_wgslsmith_div_i32(select(4680i, u_input.b.x, true), u_input.c << (global2[_wgslsmith_index_u32(1u, 21u)] % 32u)), -9577i, min(u_input.c, _wgslsmith_clamp_i32(u_input.b.x, -16079i, -1i)), -8191i)), Struct_2(func_3(global0[_wgslsmith_index_u32(reverseBits(~14371u), 26u)]), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global1.b | 20016u, 3u)], _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, u_input.d.x, global2[_wgslsmith_index_u32(22049u, 21u)]), global1.a), _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, global1.b, u_input.d.x, 53123u)))), vec4<i32>(49741i, -32628i, _wgslsmith_mod_i32(~u_input.c, 2147483647i), 43002i)));
    return -1i;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    var var_0 = func_4(vec4<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(24064u, reverseBits(global2[_wgslsmith_index_u32(21243u, 21u)]) << ((arg_1.b << (90299u % 32u)) % 32u)), 1u, 0u), global0[_wgslsmith_index_u32(77019u, 26u)], arg_1);
    var var_1 = Struct_1(vec4<u32>(arg_0.x >> (1u % 32u), 0u, max(1u << (global2[_wgslsmith_index_u32(arg_0.x, 21u)] % 32u), firstTrailingBit(4294967295u)), ~_wgslsmith_div_u32(1u, arg_1.b)) | ~vec4<u32>(arg_0.x, 20205u, 29271u << (arg_1.b % 32u), arg_0.x << (arg_1.b % 32u)), abs(func_4(~global1.a, arg_1, global0[_wgslsmith_index_u32(40564u, 26u)]).b));
    global1 = Struct_1(var_1.a >> ((~select(u_input.d, var_1.a, false) << (~(~global3[_wgslsmith_index_u32(60918u, 3u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(1u >> (_wgslsmith_div_u32(var_0.a.x, 1u) % 32u))));
    var_0 = Struct_1(vec4<u32>(reverseBits(_wgslsmith_mult_u32(1181u, arg_0.x << (arg_1.b % 32u))), max(~arg_0.x | _wgslsmith_div_u32(var_1.b, 0u), 0u ^ select(arg_0.x, u_input.d.x, true)), ~(~select(u_input.d.x, var_1.b, arg_2)), u_input.d.x), abs(87442u));
    global0 = array<Struct_2, 26>();
    return -18689i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(global1.a.x, 4294967295u) << (34322u % 32u), global1.a.x, 12435u), global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_2(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, true), 1u, vec4<i32>(u_input.e, u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b) << (1u % 32u), func_1())), true);
    let var_1 = _wgslsmith_dot_vec4_u32(~global1.a, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.a.x, global1.a.x, global1.a.x), ~(~165u), ~1u, ~81335u), vec4<u32>(1u, _wgslsmith_sub_u32(~36101u, 36923u), global2[_wgslsmith_index_u32(firstLeadingBit(34800u), 21u)], 43180u)));
    var var_2 = func_4(vec4<u32>(var_1, var_1, _wgslsmith_clamp_u32(u_input.a.x, abs(min(0u, 48059u)), u_input.d.x), _wgslsmith_mod_u32(var_1, countOneBits(64731u) >> (reverseBits(var_1) % 32u))), Struct_2(vec4<bool>(true, true, true, true), 1u, vec4<i32>(1i, ~select(u_input.c, u_input.c, true), 2147483647i, 0i)), Struct_2(func_2(_wgslsmith_mod_u32(1u, 62539u) ^ global1.a.x, func_4(~vec4<u32>(10238u, 1u, u_input.a.x, global2[_wgslsmith_index_u32(32492u, 21u)]), Struct_2(vec4<bool>(true, false, false, false), global2[_wgslsmith_index_u32(u_input.a.x, 21u)], vec4<i32>(0i, u_input.c, 0i, u_input.e)), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(87117u, 21u)], 26u)]), Struct_1(u_input.d, 49731u)), global1.a.x, -vec4<i32>(18338i, 2147483647i, -1i << (u_input.d.x % 32u), u_input.e)));
    var var_3 = -1203f;
    let var_4 = func_4(max(func_4(var_2.a, Struct_2(vec4<bool>(true, true, true, false), 119751u, _wgslsmith_div_vec4_i32(vec4<i32>(-40239i, u_input.e, u_input.e, u_input.c), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.c))), Struct_2(vec4<bool>(true, false, false, false), 49453u >> (u_input.d.x % 32u), ~vec4<i32>(u_input.c, -13987i, u_input.c, u_input.b.x))).a, var_2.a), Struct_2(select(func_3(Struct_2(vec4<bool>(true, false, true, true), global1.b, vec4<i32>(u_input.b.x, -11139i, 55625i, -2147483647i))), vec4<bool>(true, true, true, true), func_3(global0[_wgslsmith_index_u32(abs(global1.b), 26u)])), 1u >> (0u % 32u), (vec4<i32>(u_input.c, -70988i, u_input.c, -2147483647i) | -vec4<i32>(u_input.c, 0i, u_input.e, u_input.b.x)) ^ _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.c, u_input.e, -1i)), abs(vec4<i32>(u_input.e, u_input.e, -8723i, -12892i)))), global0[_wgslsmith_index_u32(1u, 26u)]);
    let var_5 = func_4(abs(~((global3[_wgslsmith_index_u32(1u, 3u)] << (var_2.a % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.d.x, var_2.a.x), global3[_wgslsmith_index_u32(1u, 3u)]))), global0[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(5610u, 0u, 24250u), vec3<u32>(40741u, u_input.a.x, var_2.b)), (u_input.a.x >> (0u % 32u)) ^ _wgslsmith_add_u32(u_input.a.x, var_4.b)), 21u)]), 26u)], Struct_2(vec4<bool>(true, true, func_3(Struct_2(vec4<bool>(false, true, false, true), u_input.d.x, vec4<i32>(u_input.e, 2147483647i, u_input.e, u_input.b.x))).x, false), global2[_wgslsmith_index_u32(~global1.a.x | select(104550u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_4.b), 21u)], true), 21u)], select(~(vec4<i32>(u_input.c, -1i, u_input.b.x, u_input.e) << (u_input.d % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(31064i, u_input.e, u_input.c), ~(-2147483647i), ~(-1i), -85485i), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.b, 44146u, var_2.b, func_4(select(vec4<u32>(var_5.a.x, var_1, global1.b, var_2.b) << (global1.a % vec4<u32>(32u)), vec4<u32>(1u, u_input.a.x, var_2.b, 23597u), func_2(4294967295u, Struct_1(global1.a, 71115u), var_5)), global0[_wgslsmith_index_u32(var_1, 26u)], global0[_wgslsmith_index_u32(reverseBits(func_4(vec4<u32>(u_input.a.x, 1u, var_2.a.x, 4294967295u), Struct_2(vec4<bool>(false, true, false, true), global1.b, vec4<i32>(u_input.c, u_input.b.x, -1704i, -1i)), global0[_wgslsmith_index_u32(22636u, 26u)]).b), 26u)]).a.x), u_input.b.x, vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -2147483647i, u_input.c), abs(vec3<i32>(u_input.e, u_input.c, u_input.b.x))), func_5(~vec4<u32>(7382u, global1.a.x, 609u, global1.a.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 63447u), 26u)], all(vec3<bool>(true, false, false))) >> (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~global1.a.x, 21u)], firstTrailingBit(36185u)) % 32u)), 1u, 1000f);
}

