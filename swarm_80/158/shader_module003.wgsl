struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(89621u, Struct_1(vec3<i32>(1i, -40266i, 28390i), vec2<f32>(1572f, 152f), vec4<i32>(-26617i, -6909i, -27090i, 12517i)), -1i, -1142f, 1535f), Struct_2(1u, Struct_1(vec3<i32>(9110i, -38738i, 2147483647i), vec2<f32>(-2029f, -1000f), vec4<i32>(-19185i, -1768i, 1i, 2147483647i)), i32(-2147483648), -1000f, -1921f), Struct_2(1u, Struct_1(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec2<f32>(594f, -1659f), vec4<i32>(12804i, -48480i, 36099i, -1i)), 4048i, -414f, 1000f), Struct_2(4294967295u, Struct_1(vec3<i32>(1i, -19931i, 16281i), vec2<f32>(-988f, -1195f), vec4<i32>(23985i, -28370i, -1i, 5785i)), 27453i, -1829f, 223f), Struct_2(4294967295u, Struct_1(vec3<i32>(-1i, -1i, 29770i), vec2<f32>(1000f, 685f), vec4<i32>(i32(-2147483648), i32(-2147483648), -3217i, -23265i)), -201i, -1070f, -1000f), Struct_2(2945u, Struct_1(vec3<i32>(-11582i, 27960i, -7323i), vec2<f32>(1168f, 402f), vec4<i32>(17677i, -22292i, 29178i, 0i)), i32(-2147483648), 2005f, -1295f), Struct_2(10466u, Struct_1(vec3<i32>(2051i, i32(-2147483648), -43088i), vec2<f32>(-342f, -451f), vec4<i32>(2147483647i, -19703i, 60646i, -564i)), -15731i, 477f, 434f), Struct_2(36798u, Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), vec2<f32>(-236f, 703f), vec4<i32>(i32(-2147483648), -1i, 81858i, -1i)), -34730i, 933f, 300f), Struct_2(4294967295u, Struct_1(vec3<i32>(-8866i, 8347i, 2147483647i), vec2<f32>(337f, -2457f), vec4<i32>(1811i, 0i, 23272i, 3789i)), 0i, 1028f, 337f), Struct_2(0u, Struct_1(vec3<i32>(1877i, -13022i, 2147483647i), vec2<f32>(-437f, 813f), vec4<i32>(1i, -1i, -13471i, 11598i)), 37760i, 983f, -852f), Struct_2(0u, Struct_1(vec3<i32>(52826i, -49979i, 22091i), vec2<f32>(-1839f, 345f), vec4<i32>(-13840i, -35646i, 1i, 2147483647i)), -1i, -571f, 498f), Struct_2(497u, Struct_1(vec3<i32>(6040i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-656f, -1685f), vec4<i32>(i32(-2147483648), 58799i, 23103i, -13491i)), -67122i, 282f, 827f), Struct_2(1u, Struct_1(vec3<i32>(-48309i, 43463i, 7766i), vec2<f32>(307f, 624f), vec4<i32>(9688i, 1i, -30226i, 1921i)), i32(-2147483648), -1590f, 1000f), Struct_2(38118u, Struct_1(vec3<i32>(-468i, 51600i, -14586i), vec2<f32>(531f, 606f), vec4<i32>(2147483647i, 2147483647i, -16388i, 2147483647i)), -11910i, -258f, -1104f), Struct_2(4294967295u, Struct_1(vec3<i32>(65131i, i32(-2147483648), 2147483647i), vec2<f32>(-1188f, 196f), vec4<i32>(29832i, 1i, 6693i, 40586i)), i32(-2147483648), 684f, 742f), Struct_2(0u, Struct_1(vec3<i32>(22867i, i32(-2147483648), 14405i), vec2<f32>(162f, 1000f), vec4<i32>(29586i, i32(-2147483648), -33899i, 19670i)), 0i, 1000f, 1613f), Struct_2(6243u, Struct_1(vec3<i32>(-30413i, 1i, -1i), vec2<f32>(-1372f, 908f), vec4<i32>(0i, 1i, 57767i, 25336i)), 36211i, -190f, -157f), Struct_2(0u, Struct_1(vec3<i32>(16495i, -32563i, 2147483647i), vec2<f32>(-1346f, 1248f), vec4<i32>(1i, 1i, 22849i, i32(-2147483648))), 17990i, 592f, 2341f), Struct_2(4294967295u, Struct_1(vec3<i32>(2147483647i, 12556i, -17945i), vec2<f32>(-1419f, 145f), vec4<i32>(-29889i, -14419i, -41889i, -1i)), -48921i, 1000f, 716f), Struct_2(4294967295u, Struct_1(vec3<i32>(i32(-2147483648), -17561i, 19606i), vec2<f32>(497f, 1189f), vec4<i32>(0i, 1i, 7975i, -53083i)), 0i, 1911f, 1000f), Struct_2(52364u, Struct_1(vec3<i32>(0i, i32(-2147483648), 51021i), vec2<f32>(373f, -895f), vec4<i32>(16107i, 62489i, -1i, 1i)), -45444i, -1576f, -604f), Struct_2(32443u, Struct_1(vec3<i32>(-7180i, -53458i, -1i), vec2<f32>(573f, 1330f), vec4<i32>(-22587i, 20937i, 61844i, 0i)), -30350i, -447f, 418f), Struct_2(0u, Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), vec2<f32>(-636f, -675f), vec4<i32>(0i, 12931i, 37119i, i32(-2147483648))), 41286i, 1847f, 1106f));

var<private> global2: array<f32, 20> = array<f32, 20>(-1264f, 2013f, 873f, -646f, 100f, 745f, -1070f, 560f, 1187f, -111f, 2914f, 377f, -701f, -2359f, 1289f, 471f, 136f, -1017f, -147f, -723f);

var<private> global3: i32 = 30584i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    let var_0 = arg_1.x;
    global3 = ~(firstLeadingBit(abs(33021i)) | u_input.c.x) >> ((_wgslsmith_clamp_u32(4587u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(50318u, 0u), vec2<u32>(0u, 41220u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(49325u, 4972u, 1u), ~vec3<u32>(12345u, 42168u, 1u)), 15973u) ^ _wgslsmith_mult_u32(firstLeadingBit(~25840u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(7175u, 15715u, 15698u), vec3<u32>(1u, 0u, 1u)))) % 32u);
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(-(~u_input.c.wwx), reverseBits(vec3<i32>(-63868i, 44603i, arg_0)));
    var var_2 = 8522i;
    var var_3 = global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(select(64747u, 0u, true), firstLeadingBit(0u)), vec2<u32>(1u, ~4294967295u)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22467u, 1u), vec2<u32>(0u, 3051u)), 1u)), min(~countOneBits(reverseBits(0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 1u, 1u)))), 20u)];
    return -2147483647i;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, func_3(0i, vec3<bool>(false, true, true))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(u_input.c.x, 8170i))) >> (vec2<u32>(~max(0u, 22984u), _wgslsmith_clamp_u32(116360u, ~4294967295u, 0u)) % vec2<u32>(32u)), vec2<i32>(u_input.a, 2147483647i));
    return global2[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~0u, 11334u), min(vec3<u32>(1u, 47720u, 4294967295u), select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), true))), ~(~119895u), any(!vec3<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, false, false))))), 20u)];
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_f32(func_2());
    global1 = array<Struct_2, 23>();
    let var_1 = vec3<u32>(~61591u, 1u, ~0u);
    global3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 2147483647i, global0.x, u_input.b.x), vec4<i32>(u_input.c.x, 1i, 1i, 3595i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i ^ u_input.b.x, global0.x, global0.x, global0.x), min(~u_input.c, -u_input.c))), ~(-43635i));
    return global1[_wgslsmith_index_u32(max(firstTrailingBit(var_1.x), var_1.x), 23u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.b.b.x)), -321f, arg_0.b.b.x, -427f));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, all(vec2<bool>(false, false)), false, all(vec4<bool>(true, true, true, true)))), true), false);
    var var_2 = func_1();
    let var_3 = Struct_1(firstLeadingBit(~arg_0.b.c.yzy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_2.b.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -295f))), _wgslsmith_f_op_vec2_f32(-arg_0.b.b), !(!var_1.x)))), var_2.b.c);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-920f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(884f, arg_0.e)), -2322f), -558f, 1238f));
    return ~var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(max(u_input.b.x, _wgslsmith_mod_i32(-2147483647i, select(firstTrailingBit(1i), ~10078i, true))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, countOneBits(u_input.b.x)), _wgslsmith_sub_i32(reverseBits(u_input.a) << (~25572u % 32u), -19863i) & u_input.c.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1761f * 187f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(7990u, 20u)]) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(24408u, 32889u)), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(90214u, 20u)])), global2[_wgslsmith_index_u32(~1u, 20u)]))), vec2<u32>(1u, func_4(func_1(), -vec4<i32>(global0.x, 0i, 19532i, global0.x) ^ vec4<i32>(1i, 1i, 1i, 1i))));
}

