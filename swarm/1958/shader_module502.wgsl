struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(317f), Struct_2(428f), Struct_2(-1526f), Struct_2(2241f), Struct_2(-633f), Struct_2(787f), Struct_2(-779f), Struct_2(418f), Struct_2(-1889f), Struct_2(3057f), Struct_2(-806f), Struct_2(-682f), Struct_2(839f), Struct_2(1123f), Struct_2(1070f), Struct_2(614f), Struct_2(874f), Struct_2(-1835f), Struct_2(207f), Struct_2(-217f), Struct_2(-787f), Struct_2(2291f), Struct_2(-818f));

var<private> global1: vec3<i32> = vec3<i32>(-24764i, -29516i, -46345i);

var<private> global2: array<Struct_3, 29>;

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(false, vec2<bool>(false, false), vec2<i32>(32910i, 1i), Struct_1(vec4<f32>(-1045f, -829f, 1819f, 1340f))), Struct_3(false, vec2<bool>(true, false), vec2<i32>(-12398i, i32(-2147483648)), Struct_1(vec4<f32>(2649f, 422f, 540f, -972f))), Struct_3(false, vec2<bool>(true, false), vec2<i32>(0i, 37729i), Struct_1(vec4<f32>(1458f, -1000f, -1076f, 848f))), Struct_3(true, vec2<bool>(false, false), vec2<i32>(76386i, 1i), Struct_1(vec4<f32>(760f, -921f, -423f, -1046f))), Struct_3(true, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<f32>(530f, 1751f, 1037f, 124f))), Struct_3(true, vec2<bool>(false, false), vec2<i32>(23426i, 1i), Struct_1(vec4<f32>(1000f, 1000f, 1936f, 162f))), Struct_3(false, vec2<bool>(false, false), vec2<i32>(-6037i, 42524i), Struct_1(vec4<f32>(1085f, -266f, -535f, 1355f))), Struct_3(true, vec2<bool>(false, true), vec2<i32>(-36681i, 0i), Struct_1(vec4<f32>(752f, 1391f, 970f, 523f))), Struct_3(true, vec2<bool>(true, true), vec2<i32>(-1i, -35649i), Struct_1(vec4<f32>(106f, -857f, -548f, -271f))), Struct_3(false, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -45595i), Struct_1(vec4<f32>(1000f, 752f, 2538f, 651f))), Struct_3(true, vec2<bool>(false, false), vec2<i32>(1i, -14814i), Struct_1(vec4<f32>(-731f, -305f, 866f, 1108f))), Struct_3(true, vec2<bool>(false, true), vec2<i32>(1i, 54855i), Struct_1(vec4<f32>(-1027f, -313f, -647f, -162f))), Struct_3(true, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 0i), Struct_1(vec4<f32>(-273f, 741f, -622f, 2242f))), Struct_3(false, vec2<bool>(true, true), vec2<i32>(0i, 28010i), Struct_1(vec4<f32>(-161f, -573f, 1000f, 1234f))), Struct_3(true, vec2<bool>(true, true), vec2<i32>(0i, -1i), Struct_1(vec4<f32>(218f, 184f, 281f, -909f))), Struct_3(true, vec2<bool>(false, false), vec2<i32>(1i, -5875i), Struct_1(vec4<f32>(163f, -1312f, 697f, 1864f))), Struct_3(true, vec2<bool>(false, true), vec2<i32>(2147483647i, 51579i), Struct_1(vec4<f32>(-128f, 304f, -448f, -314f))), Struct_3(false, vec2<bool>(false, true), vec2<i32>(2147483647i, -1i), Struct_1(vec4<f32>(573f, 1000f, 668f, -1178f))), Struct_3(false, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec4<f32>(-1772f, -662f, 1449f, -1338f))));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-989f, -1000f, -1000f, -1693f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = 32376u;
    let var_1 = vec3<i32>(global1.x, max(24111i, abs(1i)), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global1.x, arg_1.c.x, 1i)), abs(arg_2)));
    var var_2 = arg_0;
    var var_3 = select(!vec3<bool>(!any(arg_3.zyy), all(select(vec2<bool>(false, true), vec2<bool>(arg_3.x, true), arg_3.x)), arg_3.x), arg_3.ywx, arg_1.b.x != true);
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a * arg_1.d.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-637f, arg_1.d.a.x, var_2.a.x, -295f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.a))))));
    return global1.x >> (39675u % 32u);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, global4.a.x, global4.a.x, -1881f)) - global4.a)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, -279f, -689f, 1255f) - vec4<f32>(883f, global4.a.x, global4.a.x, 455f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global4.a.x, global4.a.x, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-552f, -915f, global4.a.x, global4.a.x)) + _wgslsmith_f_op_vec4_f32(-global4.a)))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1996i, global1.x) << (1u % 32u), 2147483647i, countOneBits(-28478i & u_input.a)), vec3<i32>(i32(-1i) * -3504i, func_3(Struct_1(global4.a), Struct_3(true, vec2<bool>(false, true), global1.xz, Struct_1(var_0.a)), select(vec3<i32>(16333i, -9316i, global1.x), vec3<i32>(u_input.a, u_input.a, 8125i), true), vec4<bool>(true, false, true, true)), min(~(-2147483647i), u_input.a))) >> (~(~firstLeadingBit(~73106u)) % 32u);
    var var_2 = false;
    var var_3 = global3[_wgslsmith_index_u32(~4294967295u, 19u)];
    let var_4 = vec2<bool>(true, true);
    return Struct_4(1u);
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    global1 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(u_input.a), -u_input.a, -2604i), ~vec3<i32>(-35077i, 63588i, -2147483647i), ~(-vec3<i32>(global1.x, -1i, 12101i))) << (abs(~(~min(vec3<u32>(1u, 4294967295u, arg_0.a), vec3<u32>(4294967295u, 4294967295u, arg_0.a)))) % vec3<u32>(32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global4.a))) - global4.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xx, global4.a.xx) * _wgslsmith_f_op_vec2_f32(-global4.a.zw))) * global4.a.zx));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.a + vec4<f32>(var_1.x, 1015f, var_1.x, 1271f)))))));
    let var_2 = vec2<u32>(1u >> (~_wgslsmith_add_u32(arg_0.a, 1u) % 32u), firstLeadingBit(51061u)) ^ countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(20950u >> (arg_0.a % 32u), ~4294967295u), abs(abs(vec2<u32>(arg_0.a, arg_0.a)))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) * -209f), _wgslsmith_f_op_f32(min(2623f, 414f)), global4.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_2()));
    let var_1 = false;
    var var_2 = ~vec4<u32>(32825u, ~13247u, 113378u, select(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 22526u, 11202u, 4294967295u)), 23080u), countOneBits(91697u), select(true, select(var_1, arg_0.x, false), !arg_0.x)));
    var var_3 = arg_1.a.x;
    global0 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1083f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1757f, false)), -2128f, _wgslsmith_f_op_f32(sign(global4.a.x)))));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = !vec4<bool>(!select(false, all(vec4<bool>(false, true, false, true)), true), all(vec2<bool>(arg_0 > 0i, any(vec2<bool>(true, true)))), ~94684u > ~firstTrailingBit(11547u), all(vec3<bool>(true, true, true)));
    var var_1 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(96i, 1i)), min(u_input.a, arg_0)) & -vec2<i32>(2147483647i, u_input.a), countOneBits(global1.yx)) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-42585i, -41129i, global1.x, 1i) & vec4<i32>(u_input.a, -2147483647i, 22546i, global1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(10555i, -1i, global1.x, -1i), vec4<i32>(u_input.a, arg_0, 71950i, u_input.a))), firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, 2147483647i, 7277i, 8540i)))), _wgslsmith_sub_i32(-min(10798i, global1.x), 1i));
    return ~32845u;
}

fn func_6(arg_0: vec3<u32>, arg_1: f32, arg_2: i32, arg_3: f32) -> Struct_1 {
    global4 = func_1(vec2<bool>(all(vec3<bool>(true, all(vec2<bool>(true, true)), true)), all(vec2<bool>(true, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + 1068f)), arg_1, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-354f - global4.a.x))))));
    global1 = select(vec3<i32>(_wgslsmith_add_i32(u_input.a, abs(45908i) << (_wgslsmith_sub_u32(arg_0.x, 41517u) % 32u)), ~arg_2, ~(-2147483647i)), select(min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 3080i, 1i, arg_2), vec4<i32>(2147483647i, u_input.a, u_input.a, -20348i)), 0i, -global1.x), firstLeadingBit(~vec3<i32>(arg_2, global1.x, -2147483647i))), vec3<i32>(u_input.a, -2147483647i, -1i), -global1.x <= (~global1.x | _wgslsmith_add_i32(0i, 0i))), !(!vec3<bool>(false, true, arg_2 >= global1.x)));
    let var_0 = global4.a.x;
    global4 = Struct_1(global4.a);
    global4 = func_1(select(select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(false, false, true, false)), all(vec2<bool>(false, true))), global4.a.x > arg_1), vec2<bool>(true, select(false, true, false)), !(true || (global1.x > -35444i))), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_3), _wgslsmith_f_op_f32(select(-1697f, arg_3, true))), _wgslsmith_f_op_f32(f32(-1f) * -251f), arg_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-477f, 1459f, false)))))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), Struct_1(vec4<f32>(1132f, -1698f, 881f, arg_3))).a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f - 148f) - arg_1)), arg_3, func_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1169f, -2105f, -641f, arg_1))))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -598f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<u32>(func_5(-1i, func_1(vec2<bool>(true, false), Struct_1(global4.a))), 18346u, min(1u, func_2().a)) & vec3<u32>(~4294967295u, 30441u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 16283u), ~45589u)), 1180f, -1i, -1003f);
    var var_1 = -(select(~u_input.a ^ select(1i, 1i, true), u_input.a & 61103i, true) | -2147483647i);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33177u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~24105u, abs(1017u)), 1u), _wgslsmith_div_u32(~(~7044u), ~0u)), vec3<u32>(_wgslsmith_mod_u32(min(func_2().a, func_5(-2147483647i, var_0)), func_2().a), (13409u >> (func_5(u_input.a, Struct_1(var_0.a)) % 32u)) << (~firstTrailingBit(4294967295u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(80150u, 45829u, 54524u), vec3<u32>(1u, 4294967295u, 7229u), vec3<u32>(1u, 86819u, 1u)), select(vec3<u32>(1u, 68196u, 1u), vec3<u32>(36753u, 29562u, 46825u), vec3<bool>(false, false, false))) ^ 0u)), 23u)];
    let var_3 = -1i;
    global3 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~(~0u)), 0u, _wgslsmith_add_u32(~(~11829u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(8751u, 1u, 1u, 27030u)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yx, global1.yx)), vec2<i32>(_wgslsmith_add_i32(36077i, 11077i >> (0u % 32u)), ~global1.x)), _wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-456f)))));
}

