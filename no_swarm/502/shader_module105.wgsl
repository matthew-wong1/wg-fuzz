struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 64635u);

var<private> global1: Struct_2;

var<private> global2: bool;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<u32>(0u, 4294967295u), vec3<bool>(false, true, false), 1296f, vec4<i32>(49270i, 1i, 1i, 1i)), Struct_2(vec2<u32>(4294967295u, 19656u), vec3<bool>(false, true, true), -940f, vec4<i32>(2147483647i, 19144i, 52493i, 12370i)), Struct_2(vec2<u32>(0u, 77574u), vec3<bool>(false, true, false), -610f, vec4<i32>(i32(-2147483648), 25463i, -83192i, 2147483647i)), Struct_2(vec2<u32>(14052u, 0u), vec3<bool>(false, true, true), 1988f, vec4<i32>(-18525i, -26361i, 1i, 18146i)), Struct_2(vec2<u32>(12078u, 7918u), vec3<bool>(true, false, true), -247f, vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i)), Struct_2(vec2<u32>(1u, 34469u), vec3<bool>(true, true, false), -297f, vec4<i32>(-6074i, -37272i, -34415i, -3004i)), Struct_2(vec2<u32>(17583u, 33322u), vec3<bool>(false, true, true), -433f, vec4<i32>(47676i, 21833i, 2147483647i, 83116i)), Struct_2(vec2<u32>(1u, 95323u), vec3<bool>(true, true, true), 785f, vec4<i32>(-12629i, 14089i, 33768i, 33454i)), Struct_2(vec2<u32>(15613u, 22154u), vec3<bool>(true, true, false), -1313f, vec4<i32>(40742i, 19213i, -25166i, -6564i)), Struct_2(vec2<u32>(57972u, 4294967295u), vec3<bool>(true, false, true), 1579f, vec4<i32>(-47300i, -1i, 0i, 2147483647i)), Struct_2(vec2<u32>(1u, 1u), vec3<bool>(false, false, false), 1078f, vec4<i32>(22136i, 2147483647i, 34043i, 1i)), Struct_2(vec2<u32>(55376u, 1u), vec3<bool>(true, true, false), -1736f, vec4<i32>(36439i, 2147483647i, -1i, 1i)), Struct_2(vec2<u32>(0u, 0u), vec3<bool>(false, false, true), -214f, vec4<i32>(-1i, 2147483647i, i32(-2147483648), -7087i)), Struct_2(vec2<u32>(17645u, 0u), vec3<bool>(true, true, false), 891f, vec4<i32>(37561i, 0i, -1i, 2147483647i)), Struct_2(vec2<u32>(63823u, 41340u), vec3<bool>(false, false, false), -815f, vec4<i32>(i32(-2147483648), -25820i, 5846i, 1i)), Struct_2(vec2<u32>(8808u, 1u), vec3<bool>(false, false, false), -839f, vec4<i32>(-57571i, -32338i, i32(-2147483648), 1i)), Struct_2(vec2<u32>(1u, 59569u), vec3<bool>(true, false, false), -481f, vec4<i32>(-1560i, 1i, -1i, 0i)), Struct_2(vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, true), 296f, vec4<i32>(0i, -1i, 2147483647i, 0i)), Struct_2(vec2<u32>(89639u, 47864u), vec3<bool>(true, true, false), 1640f, vec4<i32>(i32(-2147483648), 51576i, -717i, -1i)), Struct_2(vec2<u32>(31501u, 69804u), vec3<bool>(false, true, false), 3083f, vec4<i32>(-1i, 0i, -6548i, 36149i)), Struct_2(vec2<u32>(41074u, 2441u), vec3<bool>(true, true, false), -288f, vec4<i32>(-42651i, 1i, -1i, i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 59009u), vec3<bool>(true, true, true), 654f, vec4<i32>(0i, i32(-2147483648), 12838i, -1i)), Struct_2(vec2<u32>(0u, 74299u), vec3<bool>(false, true, true), -481f, vec4<i32>(-24084i, 6812i, -27730i, 16603i)), Struct_2(vec2<u32>(0u, 71127u), vec3<bool>(false, true, true), -1571f, vec4<i32>(-22875i, -30879i, 2147483647i, 47960i)), Struct_2(vec2<u32>(0u, 65829u), vec3<bool>(false, false, true), 644f, vec4<i32>(12318i, 2147483647i, 8909i, 2147483647i)), Struct_2(vec2<u32>(16505u, 0u), vec3<bool>(false, false, false), 241f, vec4<i32>(20427i, -35561i, 35866i, 1867i)), Struct_2(vec2<u32>(1u, 26994u), vec3<bool>(true, true, true), 920f, vec4<i32>(0i, 1i, 0i, -6582i)), Struct_2(vec2<u32>(109088u, 1u), vec3<bool>(false, false, false), -1629f, vec4<i32>(0i, 1i, 0i, -49972i)), Struct_2(vec2<u32>(30951u, 3353u), vec3<bool>(true, false, false), -413f, vec4<i32>(1i, 2147483647i, -1i, 50622i)), Struct_2(vec2<u32>(64132u, 1u), vec3<bool>(false, true, false), -1979f, vec4<i32>(-1i, -25877i, 21160i, i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 21753u), vec3<bool>(true, true, true), 1273f, vec4<i32>(-47796i, 0i, 2147483647i, 11693i)), Struct_2(vec2<u32>(4294967295u, 6194u), vec3<bool>(true, true, false), 892f, vec4<i32>(-28422i, i32(-2147483648), 1i, 5296i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> Struct_2 {
    let var_0 = ~(~u_input.a.wz);
    var var_1 = arg_0.x;
    var var_2 = Struct_2(countOneBits(_wgslsmith_sub_vec2_u32(global1.a | vec2<u32>(u_input.b, u_input.a.x), abs(var_0))), global1.b, _wgslsmith_f_op_f32(ceil(global1.c)), _wgslsmith_mult_vec4_i32(global1.d, ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, global1.d.x, arg_0.x) | global1.d, ~global1.d)));
    var_1 = -16467i;
    let var_3 = vec4<u32>(_wgslsmith_div_u32(~(~53517u), _wgslsmith_add_u32(global0.x, ~global1.a.x)) << (global0.x % 32u), var_0.x, ~countOneBits(select(4294967295u, global0.x, var_2.b.x) >> (4294967295u % 32u)), ~(~(~(~u_input.b))));
    return Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(abs(countOneBits(global1.a.x)), 42758u), ~(~vec2<u32>(1u, global1.a.x) | ~var_0)), !vec3<bool>(all(vec2<bool>(false, true)), _wgslsmith_mod_i32(global1.d.x, arg_1) >= min(58258i, -21481i), false), global1.c, var_2.d);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = -2123f;
    var var_1 = -1i >> (global0.x % 32u);
    var var_2 = vec3<f32>(-227f, _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * -862f))), true)), -273f);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 357f, var_2.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c, global1.c, var_2.x), vec3<f32>(-982f, arg_1.c, -1406f), true)))))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(var_4.c - _wgslsmith_f_op_f32(259f * global1.c));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.c, global1.c))), global1.c, _wgslsmith_f_op_f32(-global1.c));
    var var_1 = 4294967295u;
    global1 = func_2(_wgslsmith_mult_vec2_i32(global1.d.yz << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(38958u, global0.x), vec2<u32>(738u, 0u), vec2<u32>(global0.x, u_input.b))) % vec2<u32>(32u)), vec2<i32>(-16374i, -1i)), ~global1.d.x);
    var_1 = global0.x;
    var var_2 = global1.d.x;
    return Struct_1(8971u, -(~abs(~global1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(false, Struct_1(firstTrailingBit(global0.x), countOneBits(vec4<i32>(global1.d.x, 0i, global1.d.x, global1.d.x)), _wgslsmith_f_op_f32(select(-1039f, global1.c, global1.b.x)), func_2(global1.d.zz, global1.d.x).b.zx), true)))), select(!(!vec2<bool>(global1.b.x, false)), !global1.b.xx, !((global1.b.x != global1.b.x) & (global1.b.x & true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    var var_0 = -20373i;
    global0 = ~vec2<u32>(~23811u, ~(~_wgslsmith_mod_u32(63274u, u_input.b)));
    let var_1 = func_2(vec2<i32>(i32(-1i) * -5683i, _wgslsmith_dot_vec2_i32(vec2<i32>(15702i ^ global1.d.x, arg_0.b.x), arg_1.b.zz)), -abs(1i & _wgslsmith_div_i32(-1i, arg_1.b.x)));
    var_0 = arg_1.b.x;
    var var_2 = arg_0.d;
    return (func_2(arg_0.b.zz, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_0.b.x, 11566i)), max(vec2<i32>(var_1.d.x, global1.d.x), vec2<i32>(1i, 2147483647i)))).a | _wgslsmith_clamp_vec2_u32(var_1.a, _wgslsmith_sub_vec2_u32(max(global1.a, vec2<u32>(0u, u_input.a.x)), ~global1.a), _wgslsmith_div_vec2_u32(~vec2<u32>(6691u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(50970u, 53570u), u_input.a.wz)))) | vec2<u32>(func_1().a, countOneBits(~_wgslsmith_mod_u32(arg_1.a, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(max(~(~countOneBits(33380u)), ~(~countOneBits(u_input.b)) | 37138u), 32u)];
    let var_0 = _wgslsmith_add_i32(-2147483647i, ~_wgslsmith_add_i32(-firstTrailingBit(global1.d.x), -2147483647i));
    let var_1 = Struct_2(vec2<u32>(_wgslsmith_add_u32(~abs(1u), 1u ^ global1.a.x), max(_wgslsmith_add_u32(firstLeadingBit(global1.a.x), global0.x), ~_wgslsmith_add_u32(u_input.a.x, global0.x))), !vec3<bool>(global1.b.x, true, false), -1443f, global1.d);
    var var_2 = var_1.a.x;
    global0 = ~func_4(func_1(), Struct_1(4294967295u, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d.x, -14694i, var_0, -1i), var_1.d), -vec4<i32>(58522i, 9427i, 1i, 6776i)), 397f, select(var_1.b.yy, global1.b.zx, global1.b.yx)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) << (69284u % 32u), _wgslsmith_add_u32(var_1.a.x, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(169f, _wgslsmith_f_op_f32(-var_1.c), global1.c, _wgslsmith_f_op_f32(global1.c - var_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1164f, var_1.c, global1.c, -1000f), vec4<f32>(global1.c, global1.c, var_1.c, 180f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1360f - var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(677f)) + _wgslsmith_f_op_f32(1348f + 1000f)), 942f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_1(var_1.a.x, vec4<i32>(var_1.d.x, global1.d.x, var_1.d.x, 71704i), 875f, vec2<bool>(var_1.b.x, global1.b.x)), global1.b.x))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c, -1000f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1013f, -378f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(950f, global1.c)))), global1.b.x)), vec4<u32>(12882u, 31697u, ~(~4294967295u), 28458u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(194f, global1.c, 1356f), vec3<f32>(-658f, 2076f, 787f))) + vec3<f32>(-855f, var_1.c, -216f)))))));
}

