struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0u, vec2<i32>(7506i, -1i), vec2<u32>(0u, 0u), -730f, -425f), Struct_1(14413u, vec2<i32>(1i, 2147483647i), vec2<u32>(54110u, 4294967295u), -1112f, 477f), Struct_1(53015u, vec2<i32>(37219i, 2147483647i), vec2<u32>(1u, 0u), -676f, 860f), Struct_1(14893u, vec2<i32>(-52352i, -44461i), vec2<u32>(0u, 4079u), 241f, 645f), Struct_1(1u, vec2<i32>(-5109i, 0i), vec2<u32>(7925u, 4294967295u), -1000f, 1282f), Struct_1(77470u, vec2<i32>(4671i, -28828i), vec2<u32>(0u, 32931u), 179f, -461f), Struct_1(4294967295u, vec2<i32>(36537i, 27810i), vec2<u32>(27679u, 40630u), 1260f, -138f), Struct_1(32788u, vec2<i32>(2147483647i, 2728i), vec2<u32>(27009u, 38315u), -1000f, 830f), Struct_1(69892u, vec2<i32>(2147483647i, 2147483647i), vec2<u32>(6232u, 17256u), -1756f, -1000f), Struct_1(4294967295u, vec2<i32>(i32(-2147483648), 26506i), vec2<u32>(1u, 0u), -2610f, 1000f), Struct_1(1u, vec2<i32>(2147483647i, -4800i), vec2<u32>(1u, 1u), 1065f, 2155f), Struct_1(48910u, vec2<i32>(12007i, -14275i), vec2<u32>(26607u, 1u), 1264f, 529f), Struct_1(1u, vec2<i32>(10229i, 4835i), vec2<u32>(54286u, 1u), 505f, -1001f), Struct_1(14699u, vec2<i32>(-40551i, -23958i), vec2<u32>(70374u, 4294967295u), 782f, 1585f), Struct_1(55557u, vec2<i32>(19151i, 2147483647i), vec2<u32>(70220u, 23866u), -727f, 689f), Struct_1(58418u, vec2<i32>(1i, 0i), vec2<u32>(88672u, 11979u), -480f, -368f), Struct_1(0u, vec2<i32>(15295i, 2147483647i), vec2<u32>(53235u, 0u), -1320f, -887f), Struct_1(4294967295u, vec2<i32>(-1i, -15031i), vec2<u32>(4294967295u, 0u), 625f, 1278f), Struct_1(0u, vec2<i32>(-1i, 27975i), vec2<u32>(1u, 1u), 461f, 1872f), Struct_1(25195u, vec2<i32>(15819i, -5512i), vec2<u32>(0u, 41583u), 894f, 621f), Struct_1(4294967295u, vec2<i32>(-21249i, -44909i), vec2<u32>(10262u, 0u), -2674f, -1455f), Struct_1(45433u, vec2<i32>(4396i, 8181i), vec2<u32>(1u, 0u), 739f, 985f), Struct_1(4294967295u, vec2<i32>(2147483647i, -1i), vec2<u32>(1u, 0u), 225f, -1080f), Struct_1(1u, vec2<i32>(20822i, 79462i), vec2<u32>(1u, 15402u), -446f, 2352f), Struct_1(0u, vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(22u, 18651u), 439f, 1000f), Struct_1(57420u, vec2<i32>(-1i, 23658i), vec2<u32>(4294967295u, 1u), -1486f, -789f), Struct_1(1u, vec2<i32>(-1i, -42394i), vec2<u32>(6604u, 25478u), 147f, 742f), Struct_1(1u, vec2<i32>(1i, -27894i), vec2<u32>(48027u, 4294967295u), 2105f, 2396f));

var<private> global1: f32 = -787f;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(1u, vec2<i32>(1i, 49993i), vec2<u32>(2011u, 0u), 310f, -1568f), Struct_1(4782u, vec2<i32>(-1i, 36346i), vec2<u32>(4294967295u, 85479u), 297f, -180f), Struct_1(1u, vec2<i32>(0i, 16429i), vec2<u32>(4467u, 12930u), -1702f, 2280f), Struct_1(52993u, vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 86296u), -1249f, -1350f), Struct_1(15044u, vec2<i32>(2147483647i, 18005i), vec2<u32>(23804u, 63892u), -181f, -726f), Struct_1(1u, vec2<i32>(32899i, 0i), vec2<u32>(4294967295u, 30649u), 148f, -952f), Struct_1(63369u, vec2<i32>(16617i, 0i), vec2<u32>(1u, 0u), -1000f, 199f), Struct_1(4294967295u, vec2<i32>(-20742i, -59634i), vec2<u32>(0u, 1u), -645f, -209f), Struct_1(11264u, vec2<i32>(0i, 0i), vec2<u32>(50015u, 35350u), -2171f, -1266f), Struct_1(81386u, vec2<i32>(17992i, -5578i), vec2<u32>(3455u, 1u), -110f, 2082f), Struct_1(16099u, vec2<i32>(1i, 555i), vec2<u32>(1269u, 1u), 1240f, 958f), Struct_1(92109u, vec2<i32>(-12292i, 2147483647i), vec2<u32>(36713u, 0u), 1000f, -1489f), Struct_1(20296u, vec2<i32>(-13382i, 25253i), vec2<u32>(0u, 34276u), 669f, 1660f), Struct_1(100054u, vec2<i32>(-33511i, 2147483647i), vec2<u32>(0u, 0u), 379f, 1018f), Struct_1(55397u, vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(1u, 26746u), -294f, -1000f), Struct_1(0u, vec2<i32>(12554i, -1i), vec2<u32>(0u, 109873u), -1418f, 421f), Struct_1(0u, vec2<i32>(2147483647i, 1i), vec2<u32>(1u, 0u), 548f, -1179f), Struct_1(64612u, vec2<i32>(0i, 2147483647i), vec2<u32>(37392u, 17623u), 532f, 1569f), Struct_1(15516u, vec2<i32>(-1i, 1i), vec2<u32>(4294967295u, 4294967295u), -2416f, 338f), Struct_1(4294967295u, vec2<i32>(i32(-2147483648), 9167i), vec2<u32>(4294967295u, 17028u), 1072f, 1097f), Struct_1(1u, vec2<i32>(i32(-2147483648), 13670i), vec2<u32>(1u, 40049u), -801f, 1102f), Struct_1(24625u, vec2<i32>(3915i, 1i), vec2<u32>(1u, 79130u), -239f, -989f), Struct_1(4294967295u, vec2<i32>(9718i, -50054i), vec2<u32>(0u, 50147u), 206f, -433f), Struct_1(4294967295u, vec2<i32>(-51037i, -1i), vec2<u32>(0u, 0u), -407f, -1119f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global2 = !(!(!(!(!vec2<bool>(true, global2.x)))));
    global0 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(334f)), _wgslsmith_div_f32(-468f, -534f)))) * -1377f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -233f), 1f)))));
    return select(all(vec3<bool>(1u == ~u_input.e.x, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(160f - _wgslsmith_f_op_f32(1272f + -287f)), 644f, global2.x)), !all(select(select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, false, false), global2.x), select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, true), vec3<bool>(true, true, true)), true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_sub_u32(1u, 0u);
    global0 = array<Struct_1, 28>();
    global2 = vec2<bool>(all(select(!select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(arg_0.x, true, false, true), false), !(!vec4<bool>(arg_0.x, true, true, false)), all(vec3<bool>(false, true, false)) | true)), global2.x);
    var var_1 = Struct_3(func_3(), !(!arg_0), select(0u, ~_wgslsmith_mod_u32(~1u, ~arg_3.a), any(vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, global2.x)), false, true))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1896f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-255f * -563f) * arg_1.x)))) * -507f);
    return Struct_3(global2.x, select(select(vec2<bool>(global2.x, 12480u < var_0), select(select(var_1.b, arg_2.zz, false), arg_2.xx, true), var_1.b), !vec2<bool>(any(arg_2), arg_1.x != arg_3.e), arg_0.x), 0u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = 4294967295u;
    return vec3<f32>(_wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, arg_1.e))))), 730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2009f * arg_1.e)))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1270f, _wgslsmith_f_op_f32(-1000f + 1858f), -130f), _wgslsmith_f_op_vec3_f32(func_4(func_2(vec2<bool>(global2.x, global2.x), vec3<f32>(1381f, -1837f, 413f), vec3<bool>(true, false, global2.x), global3[_wgslsmith_index_u32(u_input.e.x, 24u)]), global3[_wgslsmith_index_u32(0u, 24u)], Struct_2(vec2<u32>(u_input.d.x, 4294967295u), global3[_wgslsmith_index_u32(u_input.a.x, 24u)])))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-561f)), -702f, 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1391f)), 1f, _wgslsmith_div_f32(2103f, _wgslsmith_f_op_f32(f32(-1f) * -190f)))));
    let var_1 = -516f;
    var var_2 = _wgslsmith_mult_i32(59922i, _wgslsmith_mod_i32(u_input.c, u_input.c));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -420f);
    global2 = select(vec2<bool>(any(!select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, true, false), vec4<bool>(true, global2.x, global2.x, true))), any(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), true))), select(vec2<bool>(true, !(-616f == var_1)), !vec2<bool>(true, all(vec2<bool>(false, global2.x))), vec2<bool>(_wgslsmith_f_op_f32(819f + -236f) != var_0.x, true)), global2.x);
    return global0[_wgslsmith_index_u32(15916u, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1494f, _wgslsmith_f_op_f32(973f + 584f), _wgslsmith_div_f32(433f, -1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(874f, 1082f, -1195f))), vec3<f32>(1f, 1f, 1f))), true));
    let var_1 = false;
    var var_2 = func_1(~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, 5994u), ~vec3<u32>(u_input.e.x, 102449u, 8348u))));
    let var_3 = u_input.c << ((u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_2.c.x), ~4294967295u, var_2.c.x & u_input.e.x), vec3<u32>(var_2.a, 1u, 1u) & ~vec3<u32>(var_2.c.x, u_input.e.x, u_input.e.x)) % 32u)) % 32u);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(128f, var_2.d, var_0.x, -101f));
}

