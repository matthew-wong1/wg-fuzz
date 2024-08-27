struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<i32>(-1i, -21120i, i32(-2147483648)), -2325f, vec3<i32>(1i, 0i, 1i), 53618u), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), 607f, vec3<i32>(-48402i, 49508i, -1i), 1u), Struct_1(vec3<i32>(-1i, -34898i, 9899i), 107f, vec3<i32>(-6518i, -1i, -4256i), 1u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), -1599f, vec3<i32>(-32236i, 2147483647i, -1i), 39867u), Struct_1(vec3<i32>(40482i, -12366i, -44203i), -963f, vec3<i32>(-18857i, -1i, 0i), 9099u), Struct_1(vec3<i32>(-1i, 23654i, 1i), 1255f, vec3<i32>(-1i, -43205i, -3042i), 4294967295u), Struct_1(vec3<i32>(36694i, 0i, -27031i), 1000f, vec3<i32>(-96109i, -1i, 16635i), 36752u));

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(13526i, 1i, -1i), -1000f, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 1u), Struct_1(vec3<i32>(49705i, 43933i, -11902i), 907f, vec3<i32>(-15674i, 2147483647i, 24180i), 51198u), Struct_1(vec3<i32>(2147483647i, -4541i, -1i), 1555f, vec3<i32>(0i, 0i, -32982i), 1u), Struct_1(vec3<i32>(1i, 2147483647i, -47211i), -275f, vec3<i32>(-36249i, -5976i, -1i), 34006u), Struct_1(vec3<i32>(-38451i, 2147483647i, -40773i), 1542f, vec3<i32>(i32(-2147483648), -29748i, -27373i), 55912u), Struct_1(vec3<i32>(2147483647i, 0i, -16855i), -529f, vec3<i32>(25174i, 1i, -5296i), 3628u), Struct_1(vec3<i32>(2147483647i, 0i, -2224i), 1115f, vec3<i32>(2147483647i, 2147483647i, 49749i), 61617u), Struct_1(vec3<i32>(0i, 2147483647i, -33696i), 1000f, vec3<i32>(0i, 0i, -1i), 34693u), Struct_1(vec3<i32>(4991i, -41513i, 32680i), 1004f, vec3<i32>(-1i, -30726i, 0i), 52003u), Struct_1(vec3<i32>(0i, 1i, 27761i), -1926f, vec3<i32>(2147483647i, 12819i, 2147483647i), 9421u), Struct_1(vec3<i32>(15346i, 0i, -7100i), -2513f, vec3<i32>(2147483647i, -31282i, 1i), 4294967295u), Struct_1(vec3<i32>(-21084i, 18861i, -41121i), -2436f, vec3<i32>(1i, -1i, 8828i), 37027u), Struct_1(vec3<i32>(1i, -33410i, 0i), -480f, vec3<i32>(-68308i, -80701i, -37872i), 1u), Struct_1(vec3<i32>(3833i, 32577i, 2147483647i), 1589f, vec3<i32>(1i, 4660i, -29651i), 26893u), Struct_1(vec3<i32>(755i, 1i, 14221i), -408f, vec3<i32>(-39115i, 0i, -2049i), 1u), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -54932i), -382f, vec3<i32>(-22838i, 1i, 2147483647i), 1u), Struct_1(vec3<i32>(-50245i, -24175i, -44029i), 353f, vec3<i32>(62138i, -12340i, 1i), 1u), Struct_1(vec3<i32>(-63444i, 0i, 2147483647i), -497f, vec3<i32>(-15465i, 94876i, -50879i), 35906u), Struct_1(vec3<i32>(-1i, 2147483647i, -16056i), 947f, vec3<i32>(-65682i, 70039i, 50535i), 1u), Struct_1(vec3<i32>(31169i, i32(-2147483648), -41280i), 1008f, vec3<i32>(578i, 51350i, 51201i), 1u), Struct_1(vec3<i32>(2147483647i, 1i, 1i), 185f, vec3<i32>(0i, 1i, 9468i), 0u), Struct_1(vec3<i32>(i32(-2147483648), 0i, -43068i), -882f, vec3<i32>(22733i, i32(-2147483648), 0i), 0u), Struct_1(vec3<i32>(35852i, -1i, i32(-2147483648)), -1150f, vec3<i32>(2147483647i, 31266i, -7506i), 14492u), Struct_1(vec3<i32>(-10151i, i32(-2147483648), 219i), -604f, vec3<i32>(-13669i, -1i, 2147483647i), 0u), Struct_1(vec3<i32>(-1i, 1i, 38586i), 261f, vec3<i32>(-7875i, -1i, 2147483647i), 0u), Struct_1(vec3<i32>(-11700i, 1i, -42700i), -792f, vec3<i32>(69113i, 57777i, -32277i), 1u), Struct_1(vec3<i32>(-59870i, 4381i, -35525i), -1878f, vec3<i32>(7958i, -1i, -1i), 0u), Struct_1(vec3<i32>(24127i, 0i, 0i), 423f, vec3<i32>(41126i, 0i, 55860i), 4294967295u));

var<private> global2: array<vec2<u32>, 14>;

var<private> global3: array<u32, 8>;

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool) -> bool {
    let var_0 = abs(global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(53143u, 13460u, global3[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], global3[_wgslsmith_index_u32(16018u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10333u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)])), vec3<u32>(14415u, 29745u, global3[_wgslsmith_index_u32(20599u, 8u)]) ^ vec3<u32>(1899u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59776u, 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(0u, 8u)]))), 8u)]) != global3[_wgslsmith_index_u32(44999u, 8u)];
    global2 = array<vec2<u32>, 14>();
    var var_1 = select(select(vec4<bool>(any(vec2<bool>(false, false)) || true, true, !arg_1, !select(true, true, var_0)), vec4<bool>(any(!vec4<bool>(arg_1, true, var_0, arg_1)), arg_1, arg_1, true), any(vec2<bool>(global3[_wgslsmith_index_u32(22103u, 8u)] <= global3[_wgslsmith_index_u32(4294967295u, 8u)], !var_0))), select(vec4<bool>(select(var_0, arg_1 || false, all(vec2<bool>(var_0, true))), arg_1, var_0, true), select(vec4<bool>(false, false, true, !arg_1), select(vec4<bool>(arg_1, var_0, false, var_0), vec4<bool>(true, false, false, var_0), select(vec4<bool>(false, var_0, false, arg_1), vec4<bool>(arg_1, var_0, true, arg_1), arg_1)), vec4<bool>(!var_0, false, true, true)), false), vec4<bool>(var_0, false, true, any(vec3<bool>(all(vec3<bool>(var_0, false, false)), all(vec3<bool>(true, var_0, false)), var_0))));
    global3 = array<u32, 8>();
    var var_2 = u_input.a.yyy;
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = ~((arg_1.c.x | arg_0.c.x) >> (arg_1.d % 32u));
    global1 = array<Struct_1, 28>();
    var var_1 = arg_1;
    global2 = array<vec2<u32>, 14>();
    let var_2 = vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), func_3(-1000f, true))) || all(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), true)), true);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(arg_0.d, 23932u), 0u, abs(1u));
    global2 = array<vec2<u32>, 14>();
    var var_1 = arg_1.c.x;
    return func_2(func_2(func_2(arg_0, arg_0, i32(-1i) * -23759i, ~(~arg_2.ywz)), global1[_wgslsmith_index_u32(reverseBits(arg_0.d), 28u)], u_input.a.x, vec3<u32>(arg_1.d, arg_0.d, ~abs(0u))), Struct_1(-func_2(arg_1, func_2(Struct_1(vec3<i32>(0i, u_input.a.x, arg_1.a.x), arg_1.b, arg_0.a, var_0.x), Struct_1(arg_0.a, arg_0.b, arg_1.a, global3[_wgslsmith_index_u32(arg_0.d, 8u)]), arg_1.a.x, vec3<u32>(arg_0.d, global3[_wgslsmith_index_u32(20329u, 8u)], arg_1.d)), 0i, vec3<u32>(20122u, 1u, var_0.x)).c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(659f - arg_0.b))), arg_0.a, 4294967295u), -1i, vec3<u32>(~_wgslsmith_dot_vec4_u32(~arg_2, _wgslsmith_div_vec4_u32(arg_2, arg_2)), ~(~(arg_2.x | 0u)), ~(arg_0.d & arg_0.d) | global3[_wgslsmith_index_u32(arg_1.d, 8u)]));
}

fn func_1() -> vec3<i32> {
    global4 = array<vec4<f32>, 13>();
    var var_0 = select(!all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], global3[_wgslsmith_index_u32(25124u, 8u)], 57700u), 4294967295u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], any(vec4<bool>(true, true, false, false))), 14u)], ~global2[_wgslsmith_index_u32(16542u, 14u)]) == 1u, !(true == any(vec4<bool>(true, true, true, true))));
    global1 = array<Struct_1, 28>();
    let var_1 = func_4(func_2(Struct_1(u_input.a.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(880f, -936f, true)) - _wgslsmith_f_op_f32(abs(367f))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.yyw, vec3<i32>(u_input.a.x, u_input.a.x, -7676i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-18824i, -1i, -1i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(10021i, -2147483647i, u_input.a.x))), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(62448u, 8u)], 8u)]), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(81038u, 8u)], global3[_wgslsmith_index_u32(45290u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26361u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], 15418u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5504u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78149u, 8u)], 8u)]))), 28u)], countOneBits(1i & firstTrailingBit(u_input.a.x)), ~(~firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26504u, 8u)], 8u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)])))), func_2(func_2(func_2(global0[_wgslsmith_index_u32(0u, 7u)], func_2(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 480f, u_input.a.zww, global3[_wgslsmith_index_u32(1u, 8u)]), global0[_wgslsmith_index_u32(63916u, 7u)], u_input.a.x, vec3<u32>(34652u, global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)])), _wgslsmith_mult_i32(-2147483647i, u_input.a.x), vec3<u32>(70947u, 64811u, global3[_wgslsmith_index_u32(9361u, 8u)])), global1[_wgslsmith_index_u32(reverseBits(~4294967295u), 28u)], u_input.a.x, select(firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19951u, 8u)], 8u)], 4294967295u)), firstTrailingBit(vec3<u32>(0u, 45020u, 25428u)), vec3<bool>(true, false, false))), func_2(Struct_1(-vec3<i32>(-47586i, -1i, 31083i), _wgslsmith_f_op_f32(-1767f - -900f), abs(vec3<i32>(-13090i, u_input.a.x, -35868i)), 29082u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)]), Struct_1(u_input.a.ywz, _wgslsmith_f_op_f32(-2869f - -726f), ~vec3<i32>(27204i, -27690i, 40856i), 4294967295u), -(-46795i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52333u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)] % 32u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6707u, 8u)], 8u)], 8u)], 1u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7938u, 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(14946u, 8u)]), true), ~vec3<u32>(0u, 0u, 5308u))), firstLeadingBit(abs(_wgslsmith_mod_i32(-15302i, 34967i))), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40661u, 8u)], 8u)], 13618u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15904u, 8u)], 8u)])), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 56245u), 8u)], 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(38289u, 8u)]), 8u)], 8u)]))), ~select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 8u)], 25140u, global3[_wgslsmith_index_u32(16944u, 8u)], 1u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(20490u, 8u)])), vec4<u32>(0u, global3[_wgslsmith_index_u32(27018u, 8u)], 35466u, 38568u) >> (vec4<u32>(global3[_wgslsmith_index_u32(42460u, 8u)], global3[_wgslsmith_index_u32(6888u, 8u)], 43955u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)]) % vec4<u32>(32u)), true), vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23021u, 8u)], 8u)], countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)]), 15837u >> (global3[_wgslsmith_index_u32(26610u, 8u)] % 32u), 0u), true));
    let var_2 = Struct_1(func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u << (global3[_wgslsmith_index_u32(var_1.d, 8u)] % 32u), ~var_1.d, var_1.d) | ~0u, 7u)], Struct_1(vec3<i32>(_wgslsmith_div_i32(var_1.a.x, -2147483647i), _wgslsmith_mult_i32(u_input.a.x, -1i), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-196f, var_1.b) - var_1.b), ~vec3<i32>(-59596i, u_input.a.x, u_input.a.x), var_1.d), _wgslsmith_add_i32(var_1.a.x, 1i), abs(~vec3<u32>(0u, global3[_wgslsmith_index_u32(var_1.d, 8u)], 51646u) | select(vec3<u32>(104230u, 4294967295u, global3[_wgslsmith_index_u32(6822u, 8u)]), vec3<u32>(26860u, 0u, var_1.d), true))).a, var_1.b, ~_wgslsmith_mult_vec3_i32(var_1.a, max(vec3<i32>(var_1.a.x, u_input.a.x, 51852i), reverseBits(vec3<i32>(2147483647i, -28908i, 0i)))), ~global3[_wgslsmith_index_u32(var_1.d, 8u)]);
    return max(u_input.a.xwx, ~(-(vec3<i32>(u_input.a.x, 39629i, -45856i) ^ u_input.a.wyy)) ^ vec3<i32>(~func_2(global0[_wgslsmith_index_u32(0u, 7u)], Struct_1(var_1.a, -773f, vec3<i32>(u_input.a.x, u_input.a.x, 1i), 19913u), 5685i, vec3<u32>(6703u, var_2.d, var_1.d)).a.x, var_2.a.x, 31890i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(61651u, 14181u), 8u)], 8u)], 8u)];
    var var_1 = Struct_1(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1013f), func_4(Struct_1(-firstLeadingBit(u_input.a.yxy), 1000f, _wgslsmith_sub_vec3_i32(u_input.a.yzz, firstTrailingBit(u_input.a.wyz)), 0u), func_4(Struct_1(select(u_input.a.wyz, u_input.a.wxz, false), _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_div_vec3_i32(u_input.a.xzz, vec3<i32>(7442i, u_input.a.x, u_input.a.x)), 0u), global0[_wgslsmith_index_u32(func_4(func_2(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31099u, 8u)], 8u)], 28u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 7u)], u_input.a.x, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34628u, 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11932u, 8u)], 8u)])), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(vec3<i32>(u_input.a.x, 47367i, -35818i), -549f, u_input.a.ywz, global3[_wgslsmith_index_u32(51477u, 8u)]), -2147483647i, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11136u, 8u)], 8u)], global3[_wgslsmith_index_u32(4645u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])).d, 8u)], 28u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14117u, 8u)], 8u)], 8u)], 8u)], 8u)]), vec4<u32>(68194u, 4294967295u, global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(47927u, 8u)]), vec4<u32>(global3[_wgslsmith_index_u32(78931u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34437u, 8u)], 8u)], 8u)], 1u, 1u))).d, 7u)], vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 8u)], ~global3[_wgslsmith_index_u32(33650u, 8u)], _wgslsmith_dot_vec2_u32(vec2<u32>(65125u, 5181u), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19933u, 8u)], 8u)], 14u)]), min(4937u, 36722u))), ~(~(~vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(1u, 8u)], 45555u)))).a, 4294967295u);
    let var_2 = var_1.b;
    let var_3 = vec2<u32>(~1u, global3[_wgslsmith_index_u32(~34587u, 8u)] << (_wgslsmith_dot_vec4_u32(vec4<u32>(60828u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67971u, 8u)], 8u)], var_1.d, global3[_wgslsmith_index_u32(0u, 8u)]) >> (~vec4<u32>(55479u, var_1.d, var_1.d, 4294967295u) % vec4<u32>(32u)), vec4<u32>(19507u, 1u, ~4294967295u, reverseBits(var_1.d))) % 32u));
    let var_4 = vec2<i32>(_wgslsmith_div_i32(-32451i, abs(-3722i)), max(var_1.a.x, select(u_input.a.x, ~(1i & u_input.a.x), true)));
    var var_5 = func_2(func_2(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~74293u, 8u)], 28u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u << (~var_1.d % 32u), 8u)] << (_wgslsmith_mult_u32(var_1.d, ~var_3.x) % 32u), 28u)], u_input.a.x, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 85710u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]) ^ firstLeadingBit(vec3<u32>(26943u, var_1.d, var_1.d)), select(abs(vec3<u32>(var_3.x, var_3.x, var_3.x)), vec3<u32>(1u, var_1.d, 45682u), true))), func_4(func_2(func_2(func_4(global1[_wgslsmith_index_u32(var_3.x, 28u)], Struct_1(vec3<i32>(u_input.a.x, var_1.c.x, var_1.a.x), var_1.b, vec3<i32>(-3657i, var_1.a.x, -1i), var_1.d), vec4<u32>(62491u, 0u, var_3.x, var_3.x)), func_4(global1[_wgslsmith_index_u32(8050u, 28u)], Struct_1(u_input.a.yzw, var_1.b, vec3<i32>(var_4.x, -28004i, 2147483647i), 35717u), vec4<u32>(4294967295u, var_1.d, 69287u, 41366u)), _wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(var_4.x, -58720i)), vec3<u32>(var_3.x, 0u, 23033u)), global1[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.x, global3[_wgslsmith_index_u32(1u, 8u)]), 28u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], max(60561i, var_1.a.x), abs(vec3<u32>(24526u, 16389u, 1u))).d, 28u)], min(~u_input.a.x, u_input.a.x), reverseBits(vec3<u32>(0u, 0u, global3[_wgslsmith_index_u32(var_1.d, 8u)])) >> (~vec3<u32>(var_1.d, 4294967295u, 27141u) % vec3<u32>(32u))), Struct_1(select(func_2(Struct_1(vec3<i32>(var_4.x, u_input.a.x, 2147483647i), var_1.b, vec3<i32>(var_1.c.x, 12546i, 55127i), var_3.x), global1[_wgslsmith_index_u32(var_1.d, 28u)], u_input.a.x, vec3<u32>(35913u, global3[_wgslsmith_index_u32(var_1.d, 8u)], global3[_wgslsmith_index_u32(0u, 8u)])).c, firstTrailingBit(vec3<i32>(var_4.x, var_4.x, 20549i)), vec3<bool>(false, true, false)), 783f, u_input.a.zzx, ~0u), abs(firstLeadingBit(vec4<u32>(4294967295u, var_1.d, 73969u, 0u))) & ~vec4<u32>(var_3.x, var_3.x, 1u, 0u)), -28116i, ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(9529u, var_1.d, var_3.x), vec3<u32>(var_1.d, var_3.x, 4294967295u) & vec3<u32>(var_3.x, 4294967295u, var_3.x))));
    global4 = array<vec4<f32>, 13>();
    let var_6 = firstTrailingBit(vec2<u32>(57163u, 4294967295u));
    var var_7 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_5.b, var_5.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-596f, var_1.b, -257f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, -438f, var_5.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, 1426f, 2207f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1667f, _wgslsmith_f_op_f32(abs(-235f)), -341f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_5.b, var_1.b, -1067f), vec3<f32>(555f, -406f, 1758f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-525f * var_5.b), var_1.b, -145f)))), select(false, all(vec4<bool>(var_5.b <= -249f, true, true, true)), !(!all(vec3<bool>(false, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(469f)), _wgslsmith_f_op_f32(min(var_7.x, 315f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b)))))), ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(1u, var_1.d ^ var_3.x), var_5.d), _wgslsmith_clamp_u32(~(1u << (var_5.d % 32u)), min(var_6.x, var_6.x), 61116u));
}

