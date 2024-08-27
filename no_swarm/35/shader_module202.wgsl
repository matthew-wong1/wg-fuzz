struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(523f, -1000f, -902f, 811f));

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(1000f, 1268f, -2020f, 1355f), vec4<f32>(-899f, 1101f, 1099f, -173f), vec4<f32>(-235f, -301f, -795f, 328f), vec4<f32>(1329f, -625f, -319f, 1000f), vec4<f32>(-952f, -411f, -260f, -1975f), vec4<f32>(143f, -741f, -2290f, -183f), vec4<f32>(-1000f, 1000f, 490f, -1638f), vec4<f32>(1308f, -1633f, 945f, -665f), vec4<f32>(-208f, 601f, 179f, -306f), vec4<f32>(1601f, 875f, -1000f, -348f), vec4<f32>(-2076f, 1927f, -1722f, -190f), vec4<f32>(-1796f, 647f, -293f, 617f));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<f32>(500f, 888f, 2235f, 1532f)), Struct_2(vec4<f32>(411f, 1063f, 555f, 149f)), Struct_2(vec4<f32>(-222f, -1701f, 117f, -608f)), Struct_2(vec4<f32>(1302f, -439f, 1000f, -1299f)), Struct_2(vec4<f32>(-1000f, -434f, 330f, -1103f)), Struct_2(vec4<f32>(1444f, -370f, -158f, -940f)), Struct_2(vec4<f32>(434f, 2196f, -382f, -644f)), Struct_2(vec4<f32>(-2011f, 162f, -109f, 1215f)), Struct_2(vec4<f32>(980f, 145f, -1598f, 604f)), Struct_2(vec4<f32>(2144f, -600f, 1000f, 673f)), Struct_2(vec4<f32>(-315f, -1000f, -390f, 1245f)), Struct_2(vec4<f32>(193f, -274f, 977f, -1000f)), Struct_2(vec4<f32>(1110f, -1037f, -2315f, -1623f)), Struct_2(vec4<f32>(825f, 129f, 1171f, 1711f)), Struct_2(vec4<f32>(386f, -1318f, -1526f, -298f)), Struct_2(vec4<f32>(658f, 2751f, 463f, -217f)), Struct_2(vec4<f32>(732f, 1000f, -812f, 689f)), Struct_2(vec4<f32>(-364f, -666f, -1021f, -572f)), Struct_2(vec4<f32>(641f, -160f, 2048f, -618f)), Struct_2(vec4<f32>(1000f, 1448f, -1299f, 578f)), Struct_2(vec4<f32>(-1000f, -1000f, 767f, 1000f)), Struct_2(vec4<f32>(-913f, 2289f, -1000f, -712f)), Struct_2(vec4<f32>(-1023f, 345f, 1437f, -281f)), Struct_2(vec4<f32>(-349f, 1066f, 344f, 783f)), Struct_2(vec4<f32>(-962f, -784f, -1627f, -1620f)), Struct_2(vec4<f32>(-150f, -468f, -534f, 534f)), Struct_2(vec4<f32>(-202f, 2277f, 792f, 396f)));

var<private> global4: array<f32, 18> = array<f32, 18>(-268f, 791f, 457f, 654f, -882f, 2360f, -2300f, -672f, 118f, -2889f, -221f, -1036f, -228f, -276f, 1000f, 520f, 289f, -318f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(~6408u, !any(vec3<bool>(true, 509f > global0.a.x, true)));
    let var_1 = Struct_2(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)])) + global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.a, abs(var_0.a)), 12u)])));
    let var_2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(13099u, 31311u, 20330u, 42866u)), vec4<u32>(~1u, firstTrailingBit(27061u), _wgslsmith_add_u32(u_input.a.x, var_0.a), 0u & u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 21382u), firstTrailingBit(~u_input.a.yy)) & max(~u_input.a.x, 86340u));
    let var_3 = vec2<u32>(var_0.a, countOneBits(16534u));
    global4 = array<f32, 18>();
    return vec4<bool>(var_0.b & var_0.b, true, true, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(arg_2.a >> (0u % 32u));
    global3 = array<Struct_2, 27>();
    var var_1 = vec4<bool>(!arg_2.b, 18837i > abs(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(36973i, -26383i)), -vec2<i32>(-63628i, 0i))), false, all(vec2<bool>(false & arg_2.b, all(vec2<bool>(arg_2.b, true)))) & false);
    global4 = array<f32, 18>();
    var var_2 = !(!select(select(!vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, true, arg_2.b, var_1.x), func_3()), vec4<bool>(func_3().x, any(vec2<bool>(var_1.x, false)), false, true), vec4<bool>(true, var_1.x, any(var_1.zy), true)));
    return arg_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = arg_2;
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a.x * 1609f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(global0.a.yz + global2.a.wz);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global0.a.zz)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, global2.a.x) * vec2<f32>(-469f, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(arg_2.a.zz, vec2<f32>(var_1, 289f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(arg_1.a, 18u)]))))));
    return _wgslsmith_add_u32(arg_3, u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = ~(func_4(~u_input.a.yx, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, global0.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(arg_1.a, 18u)])), global0.a.xx, Struct_1(58286u, arg_1.b)), Struct_2(vec4<f32>(global2.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], -278f, -137f)), 66643u) << (max(_wgslsmith_mod_u32(arg_0.a, u_input.a.x), ~(~31892u)) % 32u));
    global3 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global2.a.xz), global0.a.yz))));
    let var_2 = Struct_2(global2.a);
    var var_3 = global3[_wgslsmith_index_u32(arg_1.a, 27u)];
    return ~(~26110i);
}

fn func_5(arg_0: i32) -> u32 {
    var var_0 = Struct_1(4294967295u, !all(func_3()));
    var_0 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global2.a)), global2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global2.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), 322f), vec2<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(var_0.a, 18u)], 362f)), _wgslsmith_f_op_f32(-global0.a.x)))))), Struct_1(~_wgslsmith_add_u32(1u, var_0.a) | _wgslsmith_sub_u32(u_input.a.x, 12091u), var_0.b));
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-423f)), -1332f, 1u <= u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) + 1f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(0u), 18u)]), 578f), vec4<f32>(704f, global4[_wgslsmith_index_u32(max(6334u | var_0.a, ~var_0.a), 18u)], _wgslsmith_f_op_f32(min(-619f, -729f)), global0.a.x))), global0.a.ww, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_0.a, 18u)], global4[_wgslsmith_index_u32(var_0.a, 18u)], 230f, 882f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a.xw, vec2<f32>(global4[_wgslsmith_index_u32(var_0.a, 18u)], global2.a.x))) - vec2<f32>(global2.a.x, 223f)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.a.yw)) - vec2<f32>(global2.a.x, -120f)), func_2(global0.a, _wgslsmith_f_op_vec2_f32(-global2.a.xy), func_2(vec4<f32>(global0.a.x, global2.a.x, -1121f, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec2<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global2.a.x), Struct_1(u_input.a.x, var_0.b))))));
    return countOneBits(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<u32>(12744u, ~u_input.a.x, func_5(func_1(Struct_1(55783u, true), Struct_1(0u, true)))), _wgslsmith_div_vec3_u32(select(u_input.a, max(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) >> (vec3<u32>(u_input.a.x, 53726u, u_input.a.x) % vec3<u32>(32u))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), ~u_input.a));
    let var_1 = func_2(global0.a, vec2<f32>(global2.a.x, global0.a.x), Struct_1(var_0.x, !func_3().x));
    let var_2 = -1118f;
    let var_3 = global2.a.zy;
    var var_4 = countOneBits(_wgslsmith_mod_i32(1i, (1i >> ((var_1.a ^ 129441u) % 32u)) & 2147483647i));
    let var_5 = global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.zz, u_input.a.zx), abs(var_0.xx)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2, var_3.x, -1160f)), _wgslsmith_f_op_vec2_f32(-global0.a.yx), Struct_1(32031u, false)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(32259u), _wgslsmith_add_u32(var_1.a, 1u)), 27u)], ~var_1.a << (~8819u % 32u)), 25802u)), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(func_4(firstLeadingBit(abs(select(u_input.a.yz, vec2<u32>(u_input.a.x, 52603u), var_1.b))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(1u, 18u)], -1060f, -329f, -1278f), var_5.a, true)), _wgslsmith_f_op_vec4_f32(-global2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.xz * global0.a.xz)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_1.a), 12u)], vec2<f32>(-1326f, var_2), Struct_1(var_1.a, var_1.b))), Struct_2(global0.a), ~var_1.a), (vec4<i32>(-2147483647i, i32(-1i) * -30017i, ~1i, firstLeadingBit(29813i)) & vec4<i32>(-33682i, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -28218i), 1i, -1i)) ^ -(~(~vec4<i32>(1i, 34761i, 1i, -56234i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-136f, var_5.a.x)))), _wgslsmith_div_f32(global0.a.x, -686f), all(vec4<bool>(true, var_1.b, var_1.b, true)) == false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * 1000f)), _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, ~u_input.a.x, u_input.a.x, 73895u), vec4<u32>(27192u, ~countOneBits(u_input.a.x), _wgslsmith_mod_u32(countOneBits(45688u), var_0.x), ~(227u | var_0.x))));
}

