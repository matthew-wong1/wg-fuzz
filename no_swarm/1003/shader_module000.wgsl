struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2112f, 695f);

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(1i, -40227i, -17463i), vec3<i32>(1i, -11990i, i32(-2147483648)), vec3<i32>(44298i, 18125i, -31385i), vec3<i32>(-19052i, -1i, 2605i), vec3<i32>(18450i, 50010i, -19071i));

var<private> global2: array<bool, 30> = array<bool, 30>(true, true, false, false, true, false, true, false, false, true, true, true, false, false, true, true, true, true, false, true, true, false, true, false, true, false, true, false, false, true);

var<private> global3: Struct_4 = Struct_4(vec4<f32>(-2706f, 146f, 775f, -140f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], true)), select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(12556u, 30u)], false, global2[_wgslsmith_index_u32(62909u, 30u)])))));
    global2 = array<bool, 30>();
    global0 = _wgslsmith_f_op_vec2_f32(-global3.a.zx);
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -959f), _wgslsmith_f_op_f32(min(arg_0, 374f)), 941f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, arg_0, 1000f, global0.x) * global3.a)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3.a.x))))) * -1950f));
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(u_input.b, _wgslsmith_add_i32(0i, u_input.a), -61941i, -u_input.b);
    global0 = global3.a.ww;
    var_0 = -vec4<i32>(abs(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -7474i, -u_input.a, ~2147483647i), vec4<i32>(_wgslsmith_mod_i32(1i, u_input.b), _wgslsmith_add_i32(0i, 1i), ~var_0.x, u_input.a)), 2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.a), vec3<i32>(2147483647i, -23867i, 430i)) & var_0.x, u_input.a, true));
    global3 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-997f, 582f, 1000f, global3.a.x)));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(-global3.a.x)))), 30u)], 72351i, vec3<i32>(0i, var_0.x, var_0.x >> (countOneBits(~1u) % 32u)), global3.a.wy);
    return Struct_1(global2[_wgslsmith_index_u32(70953u, 30u)] && false, abs(-1i | _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.a), u_input.a >> (40654u % 32u))), -var_0.wwy, _wgslsmith_f_op_vec2_f32(select(global3.a.zw, global3.a.xx, !vec2<bool>(var_1.d.x != global3.a.x, true))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~reverseBits(arg_2.c ^ (vec3<i32>(2147483647i, arg_1, arg_1) & func_2().c));
    let var_1 = global3.a;
    global2 = array<bool, 30>();
    var var_2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 17788u, 107909u, 1u), vec4<u32>(0u, min(0u, 40078u), 11011u, 87985u), select(vec4<u32>(12269u, 28830u, 0u, 7751u), abs(vec4<u32>(11746u, 23813u, 4294967295u, 88732u)), !vec4<bool>(arg_2.a, true, false, true))), vec4<u32>(_wgslsmith_div_u32(min(1u, 1u), ~(~17909u)), func_3(_wgslsmith_f_op_f32(arg_2.d.x * _wgslsmith_f_op_f32(exp2(global3.a.x)))), ~(~1u), ~2811u), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(select(vec4<u32>(4294967295u, 3479u, 4294967295u, 19077u), vec4<u32>(1u, 19339u, 21317u, 4294967295u), true) | ~vec4<u32>(1u, 27880u, 0u, 0u))));
    let var_3 = Struct_2(Struct_1(all(!select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(var_2.x, 30u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(var_2.x, 30u)], false, false, global2[_wgslsmith_index_u32(var_2.x, 30u)]), global2[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 40899i, 0i, -1i), select(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.b), vec4<i32>(arg_1, arg_1, 58930i, u_input.a), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(var_2.x, 30u)], arg_0.x, true))), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 2147483647i, -17029i, -10413i), vec4<i32>(0i, arg_1, arg_1, var_0.x))), ~vec3<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(39767u, 5u)], vec3<i32>(1i, 2147483647i, -74985i)), _wgslsmith_mult_i32(-1i, 2147483647i), -var_0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(arg_2.d)))), vec2<f32>(461f, 632f)))), _wgslsmith_div_u32(var_2.x, 74689u));
    return var_3;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_2().c.x, -(~u_input.b) << (_wgslsmith_clamp_u32(max(25667u, 31705u), arg_1.b.b, arg_1.b.b & 34179u) % 32u)), -arg_3.b, i32(-1i) * -30348i);
    let var_1 = Struct_4(global3.a);
    global1 = array<vec3<i32>, 5>();
    let var_2 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-34250i, -1265i, 57399i, arg_1.a.c.x), vec4<i32>(arg_3.b, arg_1.b.a.c.x, arg_1.a.c.x, -72827i)), reverseBits(vec4<i32>(arg_3.c.x, u_input.b, u_input.a, u_input.a))), arg_3.c.x, _wgslsmith_mod_i32(arg_3.c.x, arg_1.a.b)), global1[_wgslsmith_index_u32(arg_1.b.b, 5u)]));
    global1 = array<vec3<i32>, 5>();
    return func_4(select(!select(vec2<bool>(false, true), !arg_2.wx, select(arg_2.wx, vec2<bool>(arg_3.a, false), arg_0)), !select(select(arg_2.wy, vec2<bool>(arg_0, arg_3.a), arg_0), !arg_2.zz, arg_2.wx), arg_1.a.a), max(arg_1.a.b, max(2147483647i, _wgslsmith_mult_i32(var_2.x, 35989i))), arg_3).a;
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(false, Struct_3(Struct_1(global2[_wgslsmith_index_u32(2709u, 30u)], _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(3568u, 5u)] >> (vec3<u32>(0u, 110u, 8804u) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.zz + global3.a.wz) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, 689f))))), func_4(vec2<bool>(true, global2[_wgslsmith_index_u32(firstTrailingBit(61400u), 30u)]), u_input.b ^ _wgslsmith_sub_i32(u_input.a, -6069i), func_2())), vec4<bool>(!select(false, false, true) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != global3.a.x, func_2().a, true), func_4(vec2<bool>(true, true), _wgslsmith_mod_i32(func_2().b, u_input.b), Struct_1(false, 1i, global1[_wgslsmith_index_u32(firstLeadingBit(~34433u), 5u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global3.a.x) + vec2<f32>(-1337f, global0.x)) * global3.a.zx))).a);
    var var_1 = ~vec2<u32>(4294967295u, max(39166u, _wgslsmith_div_u32(4294967295u, ~23513u)));
    let var_2 = Struct_3(var_0, Struct_2(Struct_1(true, u_input.a, _wgslsmith_mod_vec3_i32(var_0.c, firstTrailingBit(global1[_wgslsmith_index_u32(0u, 5u)])), _wgslsmith_f_op_vec2_f32(-func_2().d)), firstLeadingBit(20833u)));
    let var_3 = func_4(vec2<bool>(!(!(!var_2.a.a)), !var_2.a.a), -17167i, var_0);
    var var_4 = true;
    return Struct_4(vec4<f32>(func_5(!(!global2[_wgslsmith_index_u32(var_2.b.b, 30u)]), Struct_3(var_3.a, Struct_2(Struct_1(false, u_input.a, var_2.b.a.c, var_3.a.d), var_1.x)), vec4<bool>(true, true, true, true), Struct_1(var_3.b >= var_2.b.b, _wgslsmith_mod_i32(-2147483647i, u_input.b), ~var_3.a.c, var_0.d)).d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.a.d.x), _wgslsmith_f_op_f32(exp2(var_3.a.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + global3.a.x))), func_4(!vec2<bool>(var_3.a.a, var_2.a.a), 8663i, var_0).a.d.x), _wgslsmith_div_f32(1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(622f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1175f + 352f), -1000f)), vec2<f32>(1410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(501f - 139f), _wgslsmith_f_op_f32(-global3.a.x))))) - _wgslsmith_f_op_vec2_f32(global3.a.wz + global3.a.zy));
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1886f)) + vec2<f32>(_wgslsmith_f_op_f32(286f - global0.x), _wgslsmith_f_op_f32(-global3.a.x))))));
    let var_1 = _wgslsmith_f_op_f32(1054f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 286f, global2[_wgslsmith_index_u32(4294967295u, 30u)]))) * _wgslsmith_f_op_f32(-var_0.x))));
    global3 = func_1();
    global0 = _wgslsmith_f_op_vec2_f32(global3.a.zz * _wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-137f, var_0.x), _wgslsmith_f_op_f32(round(var_1))), global3.a.zx, !(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], false))))));
    var var_2 = func_4(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)])), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), -1i), -9937i, ~(~(-1i))), func_4(select(vec2<bool>(!global2[_wgslsmith_index_u32(97592u, 30u)], 2147483647i <= u_input.a), vec2<bool>(true, global2[_wgslsmith_index_u32(~72400u, 30u)]), false), select(_wgslsmith_div_i32(~2147483647i, -9737i), func_2().b, func_4(vec2<bool>(global2[_wgslsmith_index_u32(46609u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]), max(u_input.b, u_input.b), Struct_1(false, -39463i, global1[_wgslsmith_index_u32(1u, 5u)], vec2<f32>(-580f, global0.x))).a.a), Struct_1(all(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(23153u, 30u)])), u_input.b, _wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, -2147483647i, -4208i), global1[_wgslsmith_index_u32(0u, 5u)]), global1[_wgslsmith_index_u32(60846u, 5u)] << (vec3<u32>(1u, 5368u, 0u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global3.a.x)), _wgslsmith_f_op_vec2_f32(-var_0), func_5(true, Struct_3(Struct_1(global2[_wgslsmith_index_u32(1u, 30u)], u_input.a, vec3<i32>(27515i, u_input.a, 0i), var_0), Struct_2(Struct_1(global2[_wgslsmith_index_u32(0u, 30u)], 0i, vec3<i32>(u_input.a, 0i, u_input.a), var_0), 14076u)), vec4<bool>(global2[_wgslsmith_index_u32(3510u, 30u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 30u)]), Struct_1(false, 39191i, vec3<i32>(-1i, 2147483647i, -39031i), vec2<f32>(var_0.x, -1324f))).a)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global3.a.x, func_2().d.x), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, 50580u, 4294967295u, var_2.b), vec4<u32>(1u, var_2.b, var_2.b, var_2.b) << (vec4<u32>(13265u, 30625u, var_2.b, 1u) % vec4<u32>(32u))), 0u, ~var_2.b), global3.a);
}

