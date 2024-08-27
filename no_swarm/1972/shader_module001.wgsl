struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(40331u, Struct_1(vec3<u32>(16793u, 0u, 1u), vec2<bool>(true, true), vec3<i32>(-1i, 15042i, 59437i)), Struct_1(vec3<u32>(0u, 34233u, 1u), vec2<bool>(false, false), vec3<i32>(2147483647i, 6083i, 0i))), Struct_2(0u, Struct_1(vec3<u32>(60133u, 23091u, 19555u), vec2<bool>(false, false), vec3<i32>(-39476i, 2147483647i, -1i)), Struct_1(vec3<u32>(64095u, 1u, 52743u), vec2<bool>(false, false), vec3<i32>(1i, -10801i, -27959i))), Struct_2(1u, Struct_1(vec3<u32>(4294967295u, 11751u, 4294967295u), vec2<bool>(false, false), vec3<i32>(-76619i, 43030i, 0i)), Struct_1(vec3<u32>(1u, 82693u, 46382u), vec2<bool>(true, true), vec3<i32>(2147483647i, 44910i, i32(-2147483648)))), Struct_2(92057u, Struct_1(vec3<u32>(4294967295u, 43415u, 28863u), vec2<bool>(false, false), vec3<i32>(0i, 0i, 0i)), Struct_1(vec3<u32>(27113u, 1u, 37499u), vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -5065i, 20693i))), Struct_2(25017u, Struct_1(vec3<u32>(4294967295u, 58337u, 4294967295u), vec2<bool>(false, true), vec3<i32>(-1i, -1i, 1i)), Struct_1(vec3<u32>(1604u, 1u, 0u), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 0i, -1i))), Struct_2(0u, Struct_1(vec3<u32>(36731u, 4294967295u, 22635u), vec2<bool>(true, false), vec3<i32>(2147483647i, 10489i, -1i)), Struct_1(vec3<u32>(0u, 0u, 34036u), vec2<bool>(true, false), vec3<i32>(1i, -32074i, 1i))), Struct_2(1u, Struct_1(vec3<u32>(11607u, 52946u, 1u), vec2<bool>(false, true), vec3<i32>(28535i, 0i, i32(-2147483648))), Struct_1(vec3<u32>(2015u, 41331u, 46511u), vec2<bool>(true, false), vec3<i32>(28425i, 14257i, 41399i))), Struct_2(27843u, Struct_1(vec3<u32>(0u, 35490u, 15870u), vec2<bool>(true, false), vec3<i32>(0i, 56288i, 40689i)), Struct_1(vec3<u32>(4294967295u, 5151u, 49978u), vec2<bool>(false, false), vec3<i32>(0i, 36956i, -1i))), Struct_2(0u, Struct_1(vec3<u32>(4294967295u, 2791u, 0u), vec2<bool>(true, true), vec3<i32>(3939i, -43636i, 0i)), Struct_1(vec3<u32>(72151u, 90859u, 1u), vec2<bool>(false, true), vec3<i32>(2147483647i, 1i, 2147483647i))), Struct_2(1u, Struct_1(vec3<u32>(0u, 0u, 1u), vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<bool>(true, false), vec3<i32>(2147483647i, -1i, -2342i))), Struct_2(36081u, Struct_1(vec3<u32>(58008u, 1u, 10151u), vec2<bool>(false, false), vec3<i32>(-62667i, -1i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 20938u, 4294967295u), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, -53914i))), Struct_2(4294967295u, Struct_1(vec3<u32>(4294967295u, 0u, 59822u), vec2<bool>(true, true), vec3<i32>(0i, -1i, -34113i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, true), vec3<i32>(1i, 0i, -29150i))), Struct_2(86543u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec2<bool>(true, false), vec3<i32>(i32(-2147483648), -17813i, -42313i)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<bool>(false, false), vec3<i32>(-25472i, 62841i, 2147483647i))), Struct_2(29869u, Struct_1(vec3<u32>(21216u, 17792u, 3604u), vec2<bool>(false, true), vec3<i32>(2147483647i, 33122i, 2147483647i)), Struct_1(vec3<u32>(6662u, 0u, 4294967295u), vec2<bool>(false, true), vec3<i32>(1i, -1i, -19871i))), Struct_2(37137u, Struct_1(vec3<u32>(1u, 0u, 0u), vec2<bool>(true, false), vec3<i32>(1i, -53392i, -1135i)), Struct_1(vec3<u32>(109214u, 40841u, 110626u), vec2<bool>(true, false), vec3<i32>(-1i, 11402i, 43733i))), Struct_2(27879u, Struct_1(vec3<u32>(102398u, 61626u, 34564u), vec2<bool>(false, true), vec3<i32>(2147483647i, i32(-2147483648), 20674i)), Struct_1(vec3<u32>(36209u, 4294967295u, 4294967295u), vec2<bool>(true, true), vec3<i32>(23463i, 2147483647i, i32(-2147483648)))), Struct_2(0u, Struct_1(vec3<u32>(1u, 1u, 36269u), vec2<bool>(true, false), vec3<i32>(-1i, i32(-2147483648), -864i)), Struct_1(vec3<u32>(23148u, 24628u, 44205u), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -15590i))), Struct_2(39306u, Struct_1(vec3<u32>(0u, 0u, 8760u), vec2<bool>(true, true), vec3<i32>(-19597i, -9726i, i32(-2147483648))), Struct_1(vec3<u32>(33532u, 12836u, 10147u), vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -39130i, -63438i))), Struct_2(7858u, Struct_1(vec3<u32>(8109u, 0u, 1u), vec2<bool>(true, true), vec3<i32>(-1i, i32(-2147483648), -18658i)), Struct_1(vec3<u32>(4294967295u, 1u, 44110u), vec2<bool>(false, true), vec3<i32>(33487i, 20396i, 1i))), Struct_2(5881u, Struct_1(vec3<u32>(0u, 17048u, 66367u), vec2<bool>(true, false), vec3<i32>(2147483647i, 1i, -7160i)), Struct_1(vec3<u32>(0u, 11362u, 9874u), vec2<bool>(false, true), vec3<i32>(0i, -1i, -27215i))), Struct_2(35459u, Struct_1(vec3<u32>(1u, 0u, 44354u), vec2<bool>(false, false), vec3<i32>(-1i, 20926i, i32(-2147483648))), Struct_1(vec3<u32>(36957u, 0u, 4294967295u), vec2<bool>(true, true), vec3<i32>(-28858i, 2147483647i, -1i))), Struct_2(82890u, Struct_1(vec3<u32>(4294967295u, 32989u, 0u), vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, 24924i)), Struct_1(vec3<u32>(79413u, 114269u, 4294967295u), vec2<bool>(true, true), vec3<i32>(15530i, -31428i, 2147483647i))), Struct_2(4294967295u, Struct_1(vec3<u32>(0u, 18120u, 4294967295u), vec2<bool>(false, true), vec3<i32>(2424i, -16562i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(true, false), vec3<i32>(0i, 39372i, i32(-2147483648)))), Struct_2(55185u, Struct_1(vec3<u32>(0u, 0u, 26134u), vec2<bool>(true, true), vec3<i32>(6351i, i32(-2147483648), 0i)), Struct_1(vec3<u32>(75829u, 35934u, 61518u), vec2<bool>(true, false), vec3<i32>(-47559i, 1i, -1i))), Struct_2(0u, Struct_1(vec3<u32>(1139u, 59971u, 4294967295u), vec2<bool>(false, false), vec3<i32>(-16350i, -32166i, 1i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, false), vec3<i32>(2147483647i, 46537i, 28860i))));

var<private> global2: array<Struct_1, 30>;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = reverseBits(select(vec4<u32>(1u, ~111481u, global3.a.x, 0u), firstLeadingBit(vec4<u32>(59345u, u_input.c.x, 0u, 0u)), all(!vec4<bool>(arg_1.b.b.x, false, arg_0.c.b.x, false)))) >> (u_input.c % vec4<u32>(32u));
    var var_1 = arg_1;
    var var_2 = arg_1.c;
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_div_u32(~46610u, ~u_input.c.x), var_1.a, ~var_1.a) << (var_1.b.a % vec3<u32>(32u)), !global3.b, vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(18415i, _wgslsmith_dot_vec3_i32(global3.c, var_1.b.c), 0i, global3.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(global3.c.x, 10000i, 1i, 1767i), -vec4<i32>(arg_1.b.c.x, u_input.e, var_2.c.x, 1i))), -var_1.b.c.x));
    var_2 = Struct_1(select(max(vec3<u32>(1u, ~global0[_wgslsmith_index_u32(54427u, 15u)], _wgslsmith_add_u32(var_2.a.x, 1u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.b.a, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32083u, 15u)], 15u)], global3.a.x, 46951u)), vec3<u32>(1u, 99096u, 45959u), var_0.www)), arg_1.c.a, !(var_1.b.b.x & global3.b.x)), vec2<bool>(true || var_1.c.b.x, var_1.c.b.x), ~(~firstLeadingBit(_wgslsmith_add_vec3_i32(var_3.c, vec3<i32>(u_input.d, 0i, global3.c.x)))));
    return _wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(343f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(882f, 1023f) * _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(846f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1504f, 125f, arg_1.c.b.x))))))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    global3 = Struct_1(~vec3<u32>(27577u, max(_wgslsmith_clamp_u32(59236u, global3.a.x, 4294967295u), u_input.c.x | arg_1.x), ~(~0u)), select(arg_3.b, !vec2<bool>(arg_3.b.x, true), select(global3.b, select(vec2<bool>(false, true), vec2<bool>(global3.b.x, false), true), !select(vec2<bool>(true, global3.b.x), vec2<bool>(true, true), global3.b.x))), vec3<i32>(countOneBits(abs(-1i)), reverseBits(0i), -2147483647i));
    var var_0 = global1[_wgslsmith_index_u32(arg_3.a.x, 25u)];
    global3 = arg_3;
    global0 = array<u32, 15>();
    var var_1 = -_wgslsmith_sub_vec2_i32(~(-vec2<i32>(var_0.b.c.x, u_input.a)), reverseBits(vec2<i32>(arg_3.c.x, arg_3.c.x))) | _wgslsmith_mult_vec2_i32(select(global3.c.zx, ~arg_3.c.xx, vec2<bool>(true, true)) & var_0.b.c.yz, vec2<i32>(-30273i, arg_3.c.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) - arg_2.x) - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_2.x))))), 2560f);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = vec3<bool>(all(!vec3<bool>(false, global3.b.x, !global3.b.x)), arg_0 >= _wgslsmith_f_op_f32(max(-153f, _wgslsmith_f_op_f32(ceil(arg_0)))), any(!vec3<bool>(true, true, arg_0 >= -1564f)));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global3.a.x), 24314u), global3.a.x, ~u_input.c.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, ~global3.a.x, (713u >> (u_input.c.x % 32u)) >> (4294967295u % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(global3.a.x, u_input.c.x) >> (~global3.a.x % 32u), 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, countOneBits(~(u_input.c.wxx ^ global3.a)), vec2<f32>(1891f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(110894u, 25u)], Struct_2(var_1.x, global2[_wgslsmith_index_u32(1u, 30u)], Struct_1(vec3<u32>(32634u, u_input.c.x, global0[_wgslsmith_index_u32(25278u, 15u)]), global3.b, vec3<i32>(-1i, u_input.d, u_input.b)))))), global2[_wgslsmith_index_u32(~global3.a.x, 30u)])));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = global3.c;
    return 54465u;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> bool {
    let var_0 = vec4<bool>(any(!(!vec4<bool>(arg_0, arg_2, arg_0, false))), !any(select(!vec3<bool>(true, arg_0, true), !vec3<bool>(false, arg_2, false), true)), false, global3.b.x);
    var var_1 = !(all(!(!var_0.yzz)) | var_0.x);
    var var_2 = ~(90157u << ((~global3.a.x ^ ~func_2(-688f)) % 32u));
    var_2 = (func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(957f * 1550f) - 115f)) ^ ~func_2(_wgslsmith_div_f32(-409f, -194f))) << ((~1u ^ (_wgslsmith_add_u32(_wgslsmith_sub_u32(global3.a.x, 1u), countOneBits(u_input.c.x)) | 1u)) % 32u);
    var var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 30u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, false, all(!(!vec3<bool>(global3.b.x, global3.b.x, global3.b.x)))), select(vec3<bool>(any(vec3<bool>(global3.b.x, global3.b.x, true)), func_1(all(vec4<bool>(false, true, true, false)), 0u, true), max(-20525i, -1i) >= ~u_input.a), vec3<bool>(all(vec4<bool>(true, true, global3.b.x, false)), false, !any(global3.b)), true), true);
    var var_1 = u_input.c.wx;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1126f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1516f * 2129f) + -627f)), 574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(972f + -812f))), -1000f));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -1819f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -1306f))));
    global1 = array<Struct_2, 25>();
    var_1 = ~u_input.c.xw;
    global3 = Struct_1(abs(global3.a), !select(!var_0.zz, vec2<bool>(36409i <= global3.c.x, !global3.b.x), vec2<bool>(global3.a.x > global0[_wgslsmith_index_u32(7535u, 15u)], any(global3.b))), -global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(round(var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1391f) - _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(-var_2.x), var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -485f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x * 1790f))))));
}

