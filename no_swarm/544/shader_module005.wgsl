struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-330f, 2055f, -128f), vec3<f32>(697f, 705f, 961f), vec3<f32>(-190f, -2348f, 1340f), vec3<f32>(2762f, -542f, 1000f), vec3<f32>(-1000f, 243f, 658f), vec3<f32>(-155f, -741f, -658f), vec3<f32>(-1223f, 822f, -911f), vec3<f32>(1040f, -578f, 479f), vec3<f32>(-416f, 1000f, 636f), vec3<f32>(789f, -783f, 850f));

var<private> global1: array<bool, 9>;

var<private> global2: array<u32, 3>;

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(334f, vec3<bool>(false, true, false), vec3<i32>(-13225i, 2147483647i, 11655i)), false, vec4<bool>(true, true, true, true), Struct_1(204f, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), i32(-2147483648), 5684i))), Struct_2(Struct_1(496f, vec3<bool>(true, false, true), vec3<i32>(0i, 0i, -46650i)), true, vec4<bool>(false, true, false, false), Struct_1(874f, vec3<bool>(true, false, false), vec3<i32>(2147483647i, 32569i, -1i))), Struct_2(Struct_1(1000f, vec3<bool>(false, true, false), vec3<i32>(1i, -1i, 31661i)), false, vec4<bool>(false, false, false, true), Struct_1(2011f, vec3<bool>(false, false, false), vec3<i32>(2147483647i, -48498i, i32(-2147483648)))), Struct_2(Struct_1(-1717f, vec3<bool>(true, true, true), vec3<i32>(1i, -38221i, 17899i)), false, vec4<bool>(true, false, false, true), Struct_1(807f, vec3<bool>(true, false, false), vec3<i32>(36938i, 0i, i32(-2147483648)))), Struct_2(Struct_1(-378f, vec3<bool>(false, false, true), vec3<i32>(2147483647i, 1i, 2147483647i)), false, vec4<bool>(false, true, false, true), Struct_1(1171f, vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, -1i))), Struct_2(Struct_1(-648f, vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), -4262i, 2147483647i)), false, vec4<bool>(true, true, false, true), Struct_1(844f, vec3<bool>(false, true, true), vec3<i32>(364i, 2147483647i, -5152i))), Struct_2(Struct_1(980f, vec3<bool>(false, true, true), vec3<i32>(1i, i32(-2147483648), 45705i)), false, vec4<bool>(true, true, false, true), Struct_1(-114f, vec3<bool>(false, false, false), vec3<i32>(1i, -9164i, -1i))), Struct_2(Struct_1(-179f, vec3<bool>(false, false, false), vec3<i32>(1i, 2147483647i, 2147483647i)), true, vec4<bool>(true, true, true, true), Struct_1(1632f, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 5821i, i32(-2147483648)))), Struct_2(Struct_1(541f, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), true, vec4<bool>(false, false, true, false), Struct_1(-1300f, vec3<bool>(false, true, true), vec3<i32>(16513i, 36218i, -4637i))), Struct_2(Struct_1(1000f, vec3<bool>(true, false, false), vec3<i32>(81809i, -11462i, -18120i)), true, vec4<bool>(false, false, false, true), Struct_1(424f, vec3<bool>(false, false, true), vec3<i32>(-14798i, 2147483647i, -23821i))), Struct_2(Struct_1(-1494f, vec3<bool>(false, false, false), vec3<i32>(-25658i, 42009i, 1i)), true, vec4<bool>(false, false, false, true), Struct_1(1099f, vec3<bool>(true, false, true), vec3<i32>(i32(-2147483648), 77142i, 5019i))), Struct_2(Struct_1(-1600f, vec3<bool>(false, true, true), vec3<i32>(12451i, 2111i, -5158i)), true, vec4<bool>(true, true, false, false), Struct_1(-561f, vec3<bool>(false, false, true), vec3<i32>(73592i, -1i, -1i))), Struct_2(Struct_1(-1000f, vec3<bool>(true, true, true), vec3<i32>(0i, 45067i, 5859i)), true, vec4<bool>(false, false, false, true), Struct_1(-866f, vec3<bool>(true, true, false), vec3<i32>(-39900i, -26731i, -2339i))), Struct_2(Struct_1(-257f, vec3<bool>(false, false, false), vec3<i32>(i32(-2147483648), 1i, -12487i)), false, vec4<bool>(false, true, true, true), Struct_1(1409f, vec3<bool>(true, true, false), vec3<i32>(-1i, 0i, -6043i))), Struct_2(Struct_1(-437f, vec3<bool>(false, true, true), vec3<i32>(15634i, -15775i, 2147483647i)), true, vec4<bool>(true, true, false, true), Struct_1(1732f, vec3<bool>(true, false, false), vec3<i32>(2568i, -14963i, -1i))), Struct_2(Struct_1(-461f, vec3<bool>(false, true, false), vec3<i32>(17809i, i32(-2147483648), 90746i)), false, vec4<bool>(true, true, true, true), Struct_1(-199f, vec3<bool>(false, true, false), vec3<i32>(45431i, 1i, 0i))), Struct_2(Struct_1(891f, vec3<bool>(true, true, false), vec3<i32>(2147483647i, 2224i, 2147483647i)), false, vec4<bool>(false, true, true, true), Struct_1(1609f, vec3<bool>(false, false, true), vec3<i32>(-47146i, 1i, 0i))), Struct_2(Struct_1(1000f, vec3<bool>(false, true, false), vec3<i32>(41250i, -1236i, 2147483647i)), false, vec4<bool>(true, true, true, false), Struct_1(909f, vec3<bool>(true, false, false), vec3<i32>(-3837i, 2147483647i, -56276i))), Struct_2(Struct_1(211f, vec3<bool>(true, false, false), vec3<i32>(50451i, 1i, -39165i)), true, vec4<bool>(true, false, false, true), Struct_1(567f, vec3<bool>(false, true, true), vec3<i32>(23797i, 1i, 0i))), Struct_2(Struct_1(-406f, vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 0i, 0i)), false, vec4<bool>(false, false, true, true), Struct_1(-905f, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), i32(-2147483648), -20210i))), Struct_2(Struct_1(323f, vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), i32(-2147483648), -27741i)), false, vec4<bool>(false, true, false, false), Struct_1(225f, vec3<bool>(false, true, false), vec3<i32>(-14652i, i32(-2147483648), -20822i))), Struct_2(Struct_1(-530f, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 2147483647i, -48433i)), false, vec4<bool>(true, true, false, true), Struct_1(-1447f, vec3<bool>(false, true, true), vec3<i32>(-28899i, -13368i, 1i))), Struct_2(Struct_1(514f, vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 19440i, 15970i)), true, vec4<bool>(false, true, true, true), Struct_1(1164f, vec3<bool>(true, true, false), vec3<i32>(-32720i, i32(-2147483648), 0i))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, 863f)), vec2<f32>(-604f, 1296f), true))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(-1680f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(151f * var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))));
    let var_2 = firstTrailingBit(abs(vec4<u32>(~6574u, abs(0u), min(16567u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9616u, 3u)], 3u)], 3u)], 3u)], 3u)]), 0u) & (~vec4<u32>(0u, 66147u, 1u, global2[_wgslsmith_index_u32(34112u, 3u)]) | vec4<u32>(0u, 90992u, 1u, 148827u))));
    var var_3 = _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(step(118f, var_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 616f)) * _wgslsmith_f_op_f32(675f * 1616f)))))));
    let var_4 = abs(0u);
    return global3[_wgslsmith_index_u32(~min(71368u, reverseBits(firstTrailingBit(_wgslsmith_mult_u32(25718u, 0u)))), 23u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: vec2<u32>) -> bool {
    return all(select(!select(vec4<bool>(true, false, false, arg_2), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 9u)]), all(vec3<bool>(arg_2, arg_2, true))), vec4<bool>(arg_2, true, all(vec4<bool>(global1[_wgslsmith_index_u32(3645u, 9u)], false, false, global1[_wgslsmith_index_u32(0u, 9u)])), true), select(vec4<bool>(true, true, true | arg_2, arg_2), select(select(vec4<bool>(true, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27148u, 3u)], 9u)], arg_2, false, true), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(30888u, 9u)], arg_2)), !vec4<bool>(arg_1, arg_1, false, false), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 9u)], arg_2), vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_2, arg_2, false, true))), select(func_2().c, !vec4<bool>(arg_2, arg_1, arg_2, arg_2), !vec4<bool>(true, arg_1, false, false)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3652u, 3u)], 3u)], 3u)], 0u), vec2<u32>(39037u, 18801u)) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1u) % vec2<u32>(32u)))), countOneBits(~(~vec2<u32>(9019u, global2[_wgslsmith_index_u32(4294967295u, 3u)]))));
    var var_1 = _wgslsmith_sub_i32(0i, firstLeadingBit(-((arg_2.d.c.x | -35801i) << (select(0u, 44221u, global1[_wgslsmith_index_u32(6919u, 9u)]) % 32u))));
    let var_2 = func_2();
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 9u)];
    let var_4 = _wgslsmith_f_op_f32(-arg_2.d.a);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0, 9u)];
    var_0 = true;
    var var_1 = func_2();
    var var_2 = Struct_1(func_2().d.a, var_1.d.b, vec3<i32>(_wgslsmith_div_i32(countOneBits(min(-9288i, 1i)), -(arg_1.x << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6131u, 3u)], 3u)] % 32u))), max(var_1.d.c.x, _wgslsmith_mult_i32(u_input.a, -var_1.a.c.x)), 6693i));
    var var_3 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(select(var_1.a.a, -334f, func_4(-1330f, func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a, 439f))), var_1.d.c.x == 4793i, !var_1.b, vec2<u32>(1u, 55103u)), func_2()))), select(func_2().a.b, vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 103530u), 9u)], var_1.c.x | !var_2.b.x, true), true), _wgslsmith_div_vec3_i32(var_1.d.c, select(~vec3<i32>(-2147483647i, arg_1.x, 2147483647i), arg_1.xzx, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 13182u)), 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec4<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23155u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)]), 9u)], select(!global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 3u)], 9u)]), false, any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], false, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22493u, 3u)], 3u)], 3u)], 9u)], global1[_wgslsmith_index_u32(22420u, 9u)], true, false), true)))), false);
    let var_1 = false;
    var var_2 = !(!(!var_0.x));
    var var_3 = func_1(global2[_wgslsmith_index_u32(1u, 3u)], firstTrailingBit(countOneBits(reverseBits(vec4<i32>(u_input.a, 31552i, u_input.a, 12815i)))));
    var var_4 = true;
    let var_5 = var_3.c.zz;
    var var_6 = var_3.a;
    let var_7 = global1[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(min(1u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(1245u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67844u, 3u)], 3u)]), 3u)], 3u)], 3u)], select(global2[_wgslsmith_index_u32(37237u, 3u)], 9076u, true))), 3u)] | 1u), 9u)];
    global0 = array<vec3<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 13997u), vec2<u32>(2778u, global2[_wgslsmith_index_u32(0u, 3u)])) | ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(445u, 3u)], 3u)], 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)])) << (~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(18206u, global2[_wgslsmith_index_u32(9010u, 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(10854u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28816u, 3u)], 3u)]), vec2<u32>(global2[_wgslsmith_index_u32(66772u, 3u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)])), vec2<u32>(1u, global2[_wgslsmith_index_u32(1u, 3u)])) % vec2<u32>(32u)), ~u_input.a, 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2334f, -265f, var_3.a, var_3.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 2035f, var_3.a, var_3.a)))) + vec4<f32>(-610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), -1197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a))))));
}

