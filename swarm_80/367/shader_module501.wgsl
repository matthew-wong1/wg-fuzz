struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-64832i, -28029i, i32(-2147483648), 16311i, -1i, -4170i, -1i, 55896i, 1i, -32115i, 2147483647i, -4056i, -58216i, -18616i, 34712i, 17590i, -1i, 2147483647i, i32(-2147483648), 6580i);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(755f, -1098f, 223f, -312f), true, vec4<u32>(60868u, 4294967295u, 1u, 4898u), true, 19901i), Struct_1(vec4<f32>(-503f, 1000f, -1000f, -1271f), false, vec4<u32>(1u, 7750u, 1u, 10396u), true, -25023i), Struct_1(vec4<f32>(-1000f, 1531f, 777f, 282f), true, vec4<u32>(2802u, 46215u, 0u, 4294967295u), true, 1i), Struct_1(vec4<f32>(341f, 238f, -252f, 327f), false, vec4<u32>(50939u, 28499u, 45011u, 22814u), false, 1i), Struct_1(vec4<f32>(-417f, -2429f, -1486f, -924f), false, vec4<u32>(82546u, 1u, 47622u, 62478u), false, i32(-2147483648)), Struct_1(vec4<f32>(-1676f, -764f, -507f, 156f), true, vec4<u32>(27682u, 34145u, 72774u, 36949u), false, 32573i), Struct_1(vec4<f32>(1575f, -204f, -898f, 2036f), true, vec4<u32>(65156u, 6113u, 15152u, 0u), true, -1i), Struct_1(vec4<f32>(614f, 1845f, 282f, 842f), true, vec4<u32>(21696u, 0u, 6522u, 50854u), false, 26410i), Struct_1(vec4<f32>(-1747f, -1000f, -1345f, -1470f), true, vec4<u32>(4294967295u, 0u, 36472u, 52693u), true, -1150i), Struct_1(vec4<f32>(587f, -146f, -1160f, 312f), false, vec4<u32>(48134u, 1u, 44148u, 0u), true, -23655i), Struct_1(vec4<f32>(947f, -651f, 651f, -1622f), true, vec4<u32>(4294967295u, 4294967295u, 1u, 5538u), true, 25830i), Struct_1(vec4<f32>(1255f, 2541f, -335f, -1418f), true, vec4<u32>(395u, 101751u, 13146u, 6009u), false, -28954i), Struct_1(vec4<f32>(3035f, -850f, -214f, 102f), false, vec4<u32>(11952u, 1u, 4294967295u, 3009u), false, i32(-2147483648)), Struct_1(vec4<f32>(582f, -1240f, 464f, 619f), true, vec4<u32>(4294967295u, 4294967295u, 4966u, 148801u), false, 0i), Struct_1(vec4<f32>(2718f, 353f, -285f, -1380f), true, vec4<u32>(1u, 57182u, 0u, 4294967295u), false, 2147483647i), Struct_1(vec4<f32>(711f, 852f, 711f, 205f), true, vec4<u32>(4294967295u, 47081u, 19139u, 4294967295u), true, -1i), Struct_1(vec4<f32>(840f, -1000f, 566f, -418f), false, vec4<u32>(0u, 71241u, 1u, 0u), false, 0i), Struct_1(vec4<f32>(2503f, 652f, -127f, 1032f), true, vec4<u32>(21706u, 4294967295u, 4294967295u, 8853u), true, -22645i), Struct_1(vec4<f32>(-306f, 312f, -255f, 2310f), true, vec4<u32>(4294967295u, 72462u, 1u, 43614u), false, 2356i), Struct_1(vec4<f32>(1366f, 1169f, -145f, 442f), false, vec4<u32>(28385u, 4294967295u, 18885u, 28994u), false, -1i), Struct_1(vec4<f32>(-619f, 608f, 110f, -2099f), true, vec4<u32>(1u, 0u, 7732u, 1u), false, -1i), Struct_1(vec4<f32>(-1005f, -690f, 1167f, -1172f), false, vec4<u32>(1u, 1561u, 1u, 10304u), false, i32(-2147483648)), Struct_1(vec4<f32>(1012f, -1632f, -194f, 539f), false, vec4<u32>(0u, 20175u, 1u, 1u), false, -24601i), Struct_1(vec4<f32>(1375f, 1221f, 492f, -954f), true, vec4<u32>(30416u, 0u, 31014u, 61039u), true, 2147483647i), Struct_1(vec4<f32>(1074f, 1727f, 905f, -730f), false, vec4<u32>(61918u, 4294967295u, 16382u, 1u), true, -1i), Struct_1(vec4<f32>(1245f, 1399f, 701f, -773f), false, vec4<u32>(4294967295u, 0u, 1u, 42492u), true, 3145i), Struct_1(vec4<f32>(-184f, 742f, 1192f, -1235f), false, vec4<u32>(35909u, 0u, 1u, 36935u), false, -1i), Struct_1(vec4<f32>(-573f, -320f, 258f, 937f), true, vec4<u32>(1u, 66496u, 1u, 55507u), true, 22296i));

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 31405i);

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(40119u, 0u, 28975u), vec3<u32>(0u, 25467u, 1u), vec3<u32>(36658u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 1u, 0u), vec3<u32>(1528u, 1u, 5723u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    return arg_2.d.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(!select(select(select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_0, arg_0, false, false), true), select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true), false), vec4<bool>(arg_0, true, false, false)), vec4<bool>(true, true, true, true), true), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), global3[_wgslsmith_index_u32(~min(0u, ~abs(u_input.a.x)), 31u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-176f + -395f) + _wgslsmith_f_op_f32(min(508f, 618f))))));
    var var_1 = Struct_2(!(!(!(!var_0.a))), var_0.c.e, var_0.c, _wgslsmith_f_op_vec2_f32(step(var_0.c.a.zy, vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.c.a.x)))));
    let var_2 = var_1.a;
    var var_3 = var_1.c.a;
    let var_4 = Struct_2(select(var_1.a, var_0.a, !(3050f == _wgslsmith_f_op_f32(func_3(var_0.c.e, Struct_2(var_1.a, -1i, var_1.c, var_1.c.a.zz), Struct_2(var_0.a, global0[_wgslsmith_index_u32(13515u, 20u)], Struct_1(vec4<f32>(var_3.x, 1366f, -133f, var_1.d.x), false, vec4<u32>(u_input.a.x, 1u, 1u, 0u), true, 2147483647i), vec2<f32>(var_0.d.x, 332f)), vec4<bool>(var_0.a.x, var_1.c.b, false, var_0.a.x))))), var_0.c.e, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, 226f, var_0.d.x, var_3.x))))), var_0.c.d || any(!vec3<bool>(arg_0, false, var_1.c.b)), countOneBits(~var_0.c.c), true, (var_1.c.e << (1u % 32u)) ^ (var_0.c.e ^ firstTrailingBit(19950i))), var_1.c.a.zy);
    return var_4;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(true);
    var var_1 = func_2(select(~u_input.b.x <= ~u_input.a.x, all(!select(vec3<bool>(var_0.a.x, var_0.c.d, true), var_0.a.zzz, var_0.c.d)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.c.c.x, 47081u), 4294967295u) >= _wgslsmith_div_u32(~30429u, max(u_input.b.x, 1u)))).c;
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(~var_1.c.x, 4294967295u), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15355u, 4776u, 0u, 56282u) | var_0.c.c, ~vec4<u32>(4294967295u, u_input.a.x, var_1.c.x, 20420u)), ~(~4294967295u))), func_2(!var_0.a.x).c.c.x | 20372u, _wgslsmith_dot_vec2_u32(select(~u_input.b.yy, u_input.a, var_0.a.wy), firstLeadingBit(vec2<u32>(~23592u, u_input.b.x))));
    var var_3 = var_1.c.yy;
    global2 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(19501u, 20u)], 1i), vec3<i32>(global2.x, 1i, -20430i) >> (vec3<u32>(0u, 4294967295u, 58572u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(var_0.b, 1i, 14320i)), countOneBits(countOneBits(vec3<i32>(var_1.e, 39043i, 46803i))))), reverseBits(vec3<i32>(~global0[_wgslsmith_index_u32(reverseBits(75926u), 20u)], 0i, countOneBits(-var_0.b))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1089f, _wgslsmith_f_op_f32(abs(-1182f)), _wgslsmith_f_op_f32(abs(-232f)), -1371f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(690f, -1608f, -1681f, -1321f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0.c.a.x, 1000f, 368f))))) + var_1.a), true, vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(var_3.x), ~44587u), 3006u, ~u_input.a.x, 0u) | (_wgslsmith_mult_vec4_u32(~vec4<u32>(26405u, 4294967295u, var_2.x, 0u), countOneBits(var_0.c.c)) ^ vec4<u32>(var_1.c.x, countOneBits(var_3.x), ~u_input.a.x, ~var_0.c.c.x)), !(!var_1.b), ~var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = ~u_input.a << (((vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, 0u, 0u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_0.c.x)), firstTrailingBit(arg_1.x)) << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) << (~(~vec2<u32>(10335u, 56335u) >> (firstLeadingBit(arg_1.wz) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<Struct_1, 28>();
    var var_1 = select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), !(!vec2<bool>(arg_0.b, true)), arg_2), !(!func_2(arg_0.d).a.yz), arg_2), vec2<bool>(arg_0.b, arg_0.b));
    global0 = array<i32, 20>();
    var var_2 = Struct_2(func_2(u_input.b.x != var_0.x).a, countOneBits(~global2.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1749f - -110f))), -1950f, 318f, 121f), !all(vec4<bool>(true, false, true, var_1.x)), vec4<u32>(var_0.x, var_0.x, _wgslsmith_clamp_u32(var_0.x, var_0.x, arg_1.x), u_input.b.x), arg_0.b, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, arg_0.e), firstTrailingBit(-60949i)), firstTrailingBit(-49170i) | -arg_0.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.zy), _wgslsmith_f_op_vec2_f32(sign(arg_0.a.xx)))), _wgslsmith_f_op_vec2_f32(ceil(arg_0.a.yy))));
    return global3[_wgslsmith_index_u32(var_2.c.c.x, 31u)];
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = arg_1.c.xz;
    var_0 = vec2<u32>(49424u, ~firstTrailingBit(min(~arg_1.c.x, ~arg_1.c.x)));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(func_1().c, arg_1.c), 10612u, abs(_wgslsmith_sub_u32(0u, ~abs(var_0.x))));
    let var_2 = 6209u;
    global1 = array<Struct_1, 28>();
    return countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(9802u, 20u)] & _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, -2147483647i), arg_1.e), select(-(~global2.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.e, arg_1.e, -2147483647i, arg_1.e)), vec4<i32>(arg_2, 74069i, -2147483647i, -10077i)), false), arg_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(919f, -531f, -388f, 1717f), vec4<f32>(1371f, -1000f, 1000f, 678f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1599f, -416f, 430f, 179f), vec4<f32>(-656f, 1000f, -696f, -1531f))), func_4(func_1(), ~vec4<u32>(23587u, u_input.a.x, u_input.b.x, u_input.b.x), true), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2.x, global2.x), _wgslsmith_mult_i32(global2.x, global2.x)))) >> (u_input.b % vec3<u32>(32u));
    global4 = array<vec3<u32>, 6>();
    global3 = array<Struct_1, 31>();
    var var_0 = u_input.a.x;
    global0 = array<i32, 20>();
    var var_1 = func_2(true).c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 393f, 613f, var_1.a.x)))) * var_1.a), !var_1.b, ~vec4<u32>(func_4(Struct_1(var_1.a, true, var_1.c, var_1.d, var_1.e), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.c.x, u_input.a.x, u_input.a.x), vec4<u32>(2892u, var_1.c.x, var_1.c.x, u_input.a.x)), any(vec4<bool>(var_1.b, true, true, var_1.d))).c.x, u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(var_1.c.x, u_input.b.x), var_1.c.x), u_input.b.x << (var_1.c.x % 32u)), func_4(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a - var_1.a), var_1.d || false, ~vec4<u32>(28790u, 62049u, 35455u, var_1.c.x), true, -global0[_wgslsmith_index_u32(19379u, 20u)]), abs(func_2(var_1.d).c.c), var_1.c.x != (25170u & u_input.a.x)), var_1.c, false).b, -_wgslsmith_div_i32(reverseBits(var_1.e), func_2(false).b) >> (min(firstTrailingBit(func_4(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], var_1.c, var_1.b).c.x), _wgslsmith_dot_vec2_u32(var_1.c.wx, abs(u_input.a))) % 32u));
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), var_2.a.x, _wgslsmith_f_op_f32(trunc(2490f)), -815f), any(!(!vec4<bool>(false, var_2.b, var_2.d, false))), _wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(abs(37013u), _wgslsmith_div_u32(var_1.c.x, func_4(Struct_1(var_2.a, false, var_2.c, var_2.d, -2147483647i), var_1.c, var_1.b).c.x), _wgslsmith_clamp_u32(func_1().c.x, var_2.c.x, 17803u), firstTrailingBit(~var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a.x)) <= var_2.a.x, global2.x);
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), -959f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-269f))))), _wgslsmith_f_op_f32(-func_1().a.x)), var_2.a.x);
}

