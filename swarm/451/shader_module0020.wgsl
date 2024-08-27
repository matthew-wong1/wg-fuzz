struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: f32;

var<private> global2: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-963f, -104f, 1000f, 1577f), vec4<f32>(-120f, -283f, 2387f, -243f), vec4<f32>(-311f, 448f, -371f, 526f), vec4<f32>(-365f, 387f, -930f, 819f), vec4<f32>(-1476f, -316f, 517f, -422f), vec4<f32>(1027f, 369f, 1514f, -1216f), vec4<f32>(813f, -907f, -940f, -1000f), vec4<f32>(1000f, 364f, 1563f, -1000f), vec4<f32>(267f, -1483f, 226f, -292f), vec4<f32>(-569f, 158f, 1000f, -2428f), vec4<f32>(-1666f, -1095f, 2095f, 644f), vec4<f32>(572f, 604f, 1000f, 1358f), vec4<f32>(-645f, -253f, 495f, -523f), vec4<f32>(-584f, -666f, -722f, 822f), vec4<f32>(867f, -1369f, -106f, -2097f), vec4<f32>(2331f, -333f, 861f, -549f), vec4<f32>(1626f, 501f, 265f, -851f), vec4<f32>(893f, 1152f, -537f, -1964f), vec4<f32>(2304f, -739f, 1000f, 406f), vec4<f32>(-156f, 587f, 1105f, -1099f), vec4<f32>(1077f, -394f, -2002f, 125f), vec4<f32>(-798f, -1322f, 1135f, -604f), vec4<f32>(359f, 2020f, 1159f, 1124f));

var<private> global3: array<vec4<u32>, 1>;

var<private> global4: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_2(4644u, -3743i, vec3<f32>(-876f, -1000f, 1000f)), vec4<i32>(-27496i, i32(-2147483648), -26400i, 2843i), vec3<bool>(false, false, true)), Struct_4(Struct_2(19941u, 42818i, vec3<f32>(-1235f, 168f, -1070f)), vec4<i32>(31991i, 1i, -1i, -8315i), vec3<bool>(false, false, true)), Struct_4(Struct_2(1u, 570i, vec3<f32>(-1019f, 963f, 350f)), vec4<i32>(-25912i, 1i, 14487i, 15552i), vec3<bool>(true, true, false)), Struct_4(Struct_2(7522u, 64917i, vec3<f32>(-352f, 1193f, -1949f)), vec4<i32>(2147483647i, 75749i, 27241i, 44738i), vec3<bool>(false, false, false)), Struct_4(Struct_2(9527u, 398i, vec3<f32>(-957f, -734f, -285f)), vec4<i32>(23993i, -5683i, -1i, -20380i), vec3<bool>(false, false, true)), Struct_4(Struct_2(4294967295u, 2978i, vec3<f32>(573f, 1302f, 182f)), vec4<i32>(-37398i, 0i, 1236i, -30517i), vec3<bool>(false, true, true)), Struct_4(Struct_2(0u, 31936i, vec3<f32>(687f, -886f, 896f)), vec4<i32>(-1i, 0i, 1i, -1i), vec3<bool>(true, true, false)), Struct_4(Struct_2(4294967295u, -2655i, vec3<f32>(689f, -562f, 1046f)), vec4<i32>(-23759i, 0i, -6160i, 90i), vec3<bool>(true, true, true)), Struct_4(Struct_2(19905u, 1i, vec3<f32>(2008f, 739f, 145f)), vec4<i32>(i32(-2147483648), 34884i, -42615i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_4(Struct_2(42891u, -9149i, vec3<f32>(897f, -1888f, 654f)), vec4<i32>(i32(-2147483648), 0i, -40312i, -1i), vec3<bool>(false, true, true)), Struct_4(Struct_2(48609u, 0i, vec3<f32>(1623f, 158f, 1000f)), vec4<i32>(4371i, 1i, -28815i, -1i), vec3<bool>(false, false, true)), Struct_4(Struct_2(4294967295u, 24062i, vec3<f32>(417f, 102f, 1651f)), vec4<i32>(-12112i, 2147483647i, 1i, -36741i), vec3<bool>(false, true, true)), Struct_4(Struct_2(30813u, -1i, vec3<f32>(-1795f, -1464f, 734f)), vec4<i32>(1i, -41138i, 11612i, -34616i), vec3<bool>(false, false, false)), Struct_4(Struct_2(15864u, -34935i, vec3<f32>(-1222f, -552f, -1073f)), vec4<i32>(-38306i, i32(-2147483648), -1i, -37286i), vec3<bool>(true, false, true)), Struct_4(Struct_2(36770u, 1i, vec3<f32>(-187f, -1342f, 202f)), vec4<i32>(21894i, 24213i, -56310i, -36271i), vec3<bool>(false, false, false)), Struct_4(Struct_2(52031u, 2147483647i, vec3<f32>(-454f, -356f, -755f)), vec4<i32>(49234i, 22020i, 0i, -39296i), vec3<bool>(false, false, false)), Struct_4(Struct_2(1u, -9456i, vec3<f32>(-622f, -1260f, -1775f)), vec4<i32>(23627i, i32(-2147483648), -7832i, 0i), vec3<bool>(true, true, false)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = all(arg_1.a);
    var var_1 = arg_1.a;
    return _wgslsmith_f_op_f32(-arg_0.c.x) >= -565f;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> u32 {
    let var_0 = vec4<bool>(all(select(vec4<bool>(all(vec2<bool>(true, false)), arg_2.c.x & true, arg_2.c.x, any(arg_2.c.xz)), select(select(vec4<bool>(true, arg_2.c.x, true, true), vec4<bool>(true, true, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, true, false)), select(vec4<bool>(true, arg_2.c.x, true, arg_2.c.x), vec4<bool>(false, false, false, arg_2.c.x), vec4<bool>(true, false, arg_2.c.x, true)), !vec4<bool>(true, true, true, arg_2.c.x)), true)), true, !((_wgslsmith_f_op_f32(exp2(arg_2.a.c.x)) == _wgslsmith_f_op_f32(f32(-1f) * -657f)) && !arg_2.c.x), arg_2.c.x);
    var var_1 = arg_2.c.yy;
    let var_2 = 4294967295u << (u_input.b % 32u);
    let var_3 = all(vec4<bool>(true, !(!var_1.x), false, true));
    var var_4 = _wgslsmith_sub_vec2_i32(~select(-arg_2.b.yy, arg_2.b.yw, var_0.x), _wgslsmith_mult_vec2_i32(arg_2.b.xx ^ -(~vec2<i32>(arg_2.b.x, -8359i)), -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.b, 36317i), vec2<i32>(6427i, arg_2.b.x)), arg_2.b.xz)));
    return 47011u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = arg_0.yw | arg_0.zz;
    let var_1 = arg_1.c;
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_div_vec2_u32(arg_0.yz, ~vec2<u32>(arg_0.x, u_input.c))), vec2<u32>(17715u >> (_wgslsmith_clamp_u32(arg_0.x, global0.x, 57914u) % 32u), func_3(u_input.b, 183f, arg_1) & reverseBits(72399u))), vec2<u32>(24888u, ~(~(~var_0.x))));
    let var_2 = true;
    var var_3 = func_1(arg_1.a, Struct_1(arg_1.c), true);
    return select(!vec2<bool>(global0.x >= ~u_input.b, all(vec4<bool>(arg_1.c.x, false, true, arg_1.c.x))), arg_1.c.zy, !(false && all(select(vec4<bool>(true, true, true, false), vec4<bool>(var_2, true, var_2, false), var_2))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> Struct_4 {
    global2 = array<vec4<f32>, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -329f, -676f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1034f, -426f, 1993f), vec3<f32>(-173f, 832f, -142f)))))))));
    let var_1 = global0.x;
    var var_2 = global4[_wgslsmith_index_u32(24305u, 17u)];
    global4 = array<Struct_4, 17>();
    return Struct_4(Struct_2(var_2.a.a, 29496i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.a.c, vec3<f32>(var_0.x, var_2.a.c.x, 1500f), select(vec3<bool>(arg_1, false, arg_0.a.x), arg_2, vec3<bool>(true, arg_0.a.x, var_2.c.x)))))), var_2.b, vec3<bool>(true, !(_wgslsmith_f_op_f32(-var_2.a.c.x) == _wgslsmith_f_op_f32(trunc(988f))), select(func_1(Struct_2(var_2.a.a, 0i, var_2.a.c), arg_0, all(vec4<bool>(arg_1, var_2.c.x, arg_1, false))), true, var_2.a.b >= 2147483647i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = arg_2.x;
    return func_4(Struct_1(!func_4(arg_0, arg_0.a.x, vec3<bool>(true, true, arg_1.a.x)).c), false, !select(func_4(Struct_1(arg_3.c), arg_3.c.x | false, arg_1.a).c, vec3<bool>(true, true, !arg_3.c.x), select(arg_1.a.x, !arg_3.c.x, arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~min(46562u, global0.x) & countOneBits(1u));
    let var_1 = u_input.b;
    var var_2 = func_5(Struct_1(vec3<bool>(true, select(true, false, false), true)), Struct_1(!vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true)), !select(vec3<bool>(any(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, false, true, true)), u_input.c != 0u), vec3<bool>(func_1(Struct_2(var_1, u_input.a, vec3<f32>(400f, 1931f, -658f)), Struct_1(vec3<bool>(false, true, true)), true), true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true))), func_4(Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), all(vec2<bool>(true, true)))), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), func_2(global3[_wgslsmith_index_u32(global0.x, 1u)], global4[_wgslsmith_index_u32(global0.x, 17u)]), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), vec3<bool>(false, true, all(func_2(global3[_wgslsmith_index_u32(global0.x, 1u)], Struct_4(Struct_2(23119u, u_input.a, vec3<f32>(-295f, -1195f, 512f)), vec4<i32>(u_input.a, u_input.a, -1i, 0i), vec3<bool>(false, true, false)))))));
    let var_3 = _wgslsmith_mod_vec2_i32(((-var_2.b.yy & vec2<i32>(49139i, 1i)) | var_2.b.xz) ^ -var_2.b.yw, var_2.b.zz);
    global3 = array<vec4<u32>, 1>();
    var var_4 = Struct_2(u_input.c, -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_2.a.c.x, -2763f)), _wgslsmith_div_f32(var_2.a.c.x, var_2.a.c.x), var_2.a.c.x)));
    var_4 = func_4(Struct_1(func_4(Struct_1(!vec3<bool>(var_2.c.x, false, true)), (var_2.c.x | var_2.c.x) & false, var_2.c).c), true, func_4(Struct_1(var_2.c), var_2.c.x, vec3<bool>(true, true, true)).c).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1120f * var_2.a.c.x) * _wgslsmith_f_op_f32(max(-2063f, -1260f))), var_4.c.x, _wgslsmith_f_op_f32(-var_2.a.c.x), -151f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.c.x, 816f, -1550f, 1106f))) - global2[_wgslsmith_index_u32(u_input.c & var_4.a, 23u)])))), var_2.a.c.x, ~var_2.b.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(var_4.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(955f, var_2.a.c.x, var_2.a.c.x)))))), var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1236f * -943f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.c.x)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 804f, any(var_2.c)))));
}

