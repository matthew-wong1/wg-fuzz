struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(47398u, 0u, 35825u, 4294967295u));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<i32>(-9988i, -26602i), 4294967295u, 2147483647i, Struct_1(11861u, false, vec2<f32>(980f, 1936f)), vec2<u32>(14087u, 20709u)), Struct_2(vec2<i32>(-1i, 16644i), 4294967295u, -1i, Struct_1(24001u, false, vec2<f32>(-195f, -416f)), vec2<u32>(6690u, 57717u)), Struct_2(vec2<i32>(i32(-2147483648), -70743i), 54323u, 1i, Struct_1(1u, true, vec2<f32>(-441f, 236f)), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(-10224i, 1i), 24163u, 1i, Struct_1(1u, true, vec2<f32>(-2053f, -2170f)), vec2<u32>(4294967295u, 0u)), Struct_2(vec2<i32>(-38632i, 0i), 69500u, 2147483647i, Struct_1(0u, false, vec2<f32>(709f, 1000f)), vec2<u32>(1u, 4294967295u)), Struct_2(vec2<i32>(-57361i, 3786i), 1u, 0i, Struct_1(4294967295u, true, vec2<f32>(1234f, -971f)), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<i32>(50058i, i32(-2147483648)), 18872u, 0i, Struct_1(69481u, false, vec2<f32>(-498f, 2205f)), vec2<u32>(58436u, 4294967295u)), Struct_2(vec2<i32>(-37902i, -1i), 1u, -2513i, Struct_1(43734u, true, vec2<f32>(-1367f, 369f)), vec2<u32>(38814u, 63775u)), Struct_2(vec2<i32>(28205i, 2147483647i), 68733u, 0i, Struct_1(9801u, false, vec2<f32>(997f, -963f)), vec2<u32>(79710u, 0u)), Struct_2(vec2<i32>(2147483647i, 2147483647i), 16539u, -40818i, Struct_1(4294967295u, false, vec2<f32>(511f, -302f)), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(26370i, -24507i), 37816u, 21123i, Struct_1(1u, false, vec2<f32>(-1380f, -226f)), vec2<u32>(32819u, 4294967295u)), Struct_2(vec2<i32>(-65529i, 2147483647i), 1u, i32(-2147483648), Struct_1(1u, false, vec2<f32>(-706f, 623f)), vec2<u32>(102916u, 4294967295u)), Struct_2(vec2<i32>(2147483647i, 2147483647i), 1u, 12285i, Struct_1(1u, true, vec2<f32>(-2082f, -1063f)), vec2<u32>(1u, 4294967295u)), Struct_2(vec2<i32>(5282i, 1i), 105664u, 1i, Struct_1(4294967295u, false, vec2<f32>(-633f, -1281f)), vec2<u32>(33140u, 54482u)), Struct_2(vec2<i32>(2147483647i, 16689i), 0u, 8366i, Struct_1(12922u, false, vec2<f32>(-1509f, -2471f)), vec2<u32>(1u, 28039u)), Struct_2(vec2<i32>(81938i, -16336i), 4294967295u, i32(-2147483648), Struct_1(1u, false, vec2<f32>(346f, -477f)), vec2<u32>(0u, 0u)), Struct_2(vec2<i32>(66076i, i32(-2147483648)), 1u, i32(-2147483648), Struct_1(15472u, false, vec2<f32>(-853f, 1000f)), vec2<u32>(35775u, 4294967295u)), Struct_2(vec2<i32>(0i, -37689i), 4294967295u, -7473i, Struct_1(33839u, true, vec2<f32>(618f, 504f)), vec2<u32>(26746u, 4294967295u)), Struct_2(vec2<i32>(-1i, -33914i), 4294967295u, -8063i, Struct_1(0u, false, vec2<f32>(1000f, -371f)), vec2<u32>(4294967295u, 4812u)), Struct_2(vec2<i32>(37396i, -1i), 631u, 0i, Struct_1(0u, false, vec2<f32>(-400f, -591f)), vec2<u32>(37065u, 36783u)), Struct_2(vec2<i32>(-1i, -31016i), 34268u, 0i, Struct_1(1u, true, vec2<f32>(1808f, 432f)), vec2<u32>(41405u, 0u)), Struct_2(vec2<i32>(3659i, 1i), 43886u, -68601i, Struct_1(0u, false, vec2<f32>(-474f, -2222f)), vec2<u32>(1u, 4294967295u)), Struct_2(vec2<i32>(6175i, 24814i), 54322u, -5683i, Struct_1(78088u, false, vec2<f32>(2492f, 1481f)), vec2<u32>(12870u, 42804u)), Struct_2(vec2<i32>(1i, 31029i), 23472u, -3419i, Struct_1(82029u, false, vec2<f32>(193f, 1518f)), vec2<u32>(50893u, 1u)), Struct_2(vec2<i32>(-1891i, -35580i), 1u, 1i, Struct_1(15938u, false, vec2<f32>(-1356f, -240f)), vec2<u32>(32524u, 0u)), Struct_2(vec2<i32>(17003i, 24177i), 9647u, 32822i, Struct_1(14833u, false, vec2<f32>(-831f, -292f)), vec2<u32>(47232u, 13765u)), Struct_2(vec2<i32>(0i, 0i), 4294967295u, -23685i, Struct_1(4294967295u, false, vec2<f32>(-508f, 283f)), vec2<u32>(25047u, 0u)), Struct_2(vec2<i32>(1i, 15688i), 32276u, -10885i, Struct_1(1u, true, vec2<f32>(881f, -1125f)), vec2<u32>(1u, 0u)));

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-618f, 117f), vec2<f32>(-434f, -1106f), vec2<f32>(-326f, 524f), vec2<f32>(-597f, 1012f), vec2<f32>(-1259f, -1000f), vec2<f32>(-354f, -2316f), vec2<f32>(-920f, 755f), vec2<f32>(339f, 140f));

var<private> global3: Struct_2;

var<private> global4: i32 = -2220i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = Struct_3(u_input.c & countOneBits(vec4<u32>(16804u, ~32434u, _wgslsmith_clamp_u32(arg_1.b, 4294967295u, global0.a.x), ~global0.a.x)));
    var var_0 = ~select(u_input.b, vec3<i32>(_wgslsmith_add_i32(arg_2, arg_0.c | global3.c), firstLeadingBit(i32(-1i) * -16569i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -64229i, -49733i, 2147483647i) >> (global0.a % vec4<u32>(32u)), ~vec4<i32>(-4648i, arg_0.a.x, 7140i, u_input.b.x))), arg_0.d.b);
    return arg_0.a.x;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(min(u_input.b, _wgslsmith_add_vec3_i32(-u_input.b, arg_1)), vec3<i32>(func_3(Struct_2(u_input.b.yx, global3.b, global3.c, global3.d, vec2<u32>(global0.a.x, 28295u)), Struct_2(arg_1.yy, 9519u, arg_1.x, Struct_1(0u, arg_0, vec2<f32>(global3.d.c.x, global3.d.c.x)), vec2<u32>(35370u, u_input.c.x)), arg_1.x) ^ (global3.c ^ 35440i), reverseBits(u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.x, 40319i, global3.c)), arg_1))));
    let var_1 = Struct_1(u_input.a.x, 1f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - _wgslsmith_f_op_f32(round(global3.d.c.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), _wgslsmith_f_op_f32(global3.d.c.x - global3.d.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(-global3.d.c.x), global3.d.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(~u_input.a.x, 8u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.c.x, global3.d.c.x)))))));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.a.x, 1u), firstTrailingBit(68352u), countOneBits(global0.a.x))), u_input.c));
    let var_3 = select(vec2<bool>(!(55971i < -var_0.x), any(vec4<bool>(arg_0, arg_0, arg_0, !var_1.b))), !select(select(!vec2<bool>(global3.d.b, var_1.b), select(vec2<bool>(var_1.b, false), vec2<bool>(global3.d.b, var_1.b), vec2<bool>(true, var_1.b)), vec2<bool>(arg_0, true)), !select(vec2<bool>(var_1.b, arg_0), vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b)), select(var_1.b, false, true)), true);
    let var_4 = _wgslsmith_f_op_f32(-774f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 1680f))));
    return global1[_wgslsmith_index_u32(0u, 28u)];
}

fn func_1() -> Struct_3 {
    global3 = func_2(true, -select(max(select(u_input.b, u_input.b, vec3<bool>(global3.d.b, false, global3.d.b)), vec3<i32>(81755i, -5405i, 26842i)), vec3<i32>(global3.a.x, -1i, min(-14361i, global3.c)), false));
    var var_0 = _wgslsmith_div_f32(920f, 234f);
    let var_1 = any(select(select(select(!vec2<bool>(global3.d.b, global3.d.b), vec2<bool>(global3.d.b, global3.d.b), vec2<bool>(global3.d.b, false)), vec2<bool>(any(vec4<bool>(true, false, global3.d.b, false)), true), func_2(any(vec2<bool>(false, false)), u_input.b).d.b), select(vec2<bool>(true, global3.d.b), vec2<bool>(global3.d.b, false), vec2<bool>(true, true)), true));
    var var_2 = 0u;
    let var_3 = select(u_input.c.wyw, global0.a.zxx, !(!vec3<bool>(!global3.d.b, global3.d.b, false)));
    return Struct_3(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(-global3.d.c.x)))));
    global0 = func_1();
    let var_1 = 81390u;
    var var_2 = Struct_2(vec2<i32>(countOneBits(0i), u_input.b.x), select(func_1().a.x, 98611u, false) << (func_1().a.x % 32u), -40170i, func_2(!global3.d.b, vec3<i32>(2147483647i, 1i, global3.c)).d, u_input.c.zw);
    global2 = array<vec2<f32>, 8>();
    let var_3 = select(vec3<bool>(!all(vec2<bool>(false, true)), true || select(!global3.d.b, false, global3.d.b), true), select(select(!vec3<bool>(false, global3.d.b, var_2.d.b), !select(vec3<bool>(false, var_2.d.b, var_2.d.b), vec3<bool>(true, true, true), vec3<bool>(var_2.d.b, false, var_2.d.b)), select(vec3<bool>(true, global3.d.b, true), select(vec3<bool>(global3.d.b, true, global3.d.b), vec3<bool>(false, global3.d.b, true), vec3<bool>(global3.d.b, true, global3.d.b)), !vec3<bool>(false, global3.d.b, global3.d.b))), select(!select(vec3<bool>(true, true, false), vec3<bool>(global3.d.b, true, global3.d.b), var_2.d.b), !vec3<bool>(true, false, global3.d.b), select(select(vec3<bool>(global3.d.b, false, false), vec3<bool>(true, global3.d.b, false), var_2.d.b), !vec3<bool>(true, var_2.d.b, var_2.d.b), all(vec4<bool>(var_2.d.b, true, false, true)))), vec3<bool>(!var_2.d.b != any(vec2<bool>(var_2.d.b, global3.d.b)), global3.d.b, true)), vec3<bool>(true, any(select(vec2<bool>(var_2.d.b, true), vec2<bool>(global3.d.b, var_2.d.b), vec2<bool>(global3.d.b, true))) || select(true, true, select(var_2.d.b, true, global3.d.b)), true));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec4_i32(reverseBits(abs(vec4<i32>(-2147483647i, global3.c, 0i, -1i))), min(~vec4<i32>(23005i, 0i, var_2.a.x, u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, var_2.a.x, -23024i, u_input.b.x), vec4<i32>(var_2.c, -2147483647i, -23072i, 54224i)))), ~select(vec4<i32>(32201i, -2147483647i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_2.a.x, 1i, u_input.b.x), vec4<i32>(1i, 2300i, var_2.c, -18460i)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d.c.x, var_2.d.c.x, var_2.d.c.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1252f, 473f, -117f))))), select(select(var_3, var_3, false), var_3, select(var_3, vec3<bool>(var_3.x, var_2.d.b, false), true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.c.x, -1143f)));
}

