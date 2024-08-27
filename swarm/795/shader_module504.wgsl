struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 25> = array<f32, 25>(-1336f, 121f, -239f, 307f, 1811f, -680f, 854f, -993f, -1057f, -131f, -603f, -1820f, -1168f, 652f, 255f, -965f, 229f, 776f, -151f, 220f, -675f, 409f, -835f, -530f, -1082f);

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, -1285f, vec4<f32>(-252f, 1041f, -1000f, 1636f)), Struct_1(false, 2048f, vec4<f32>(-1631f, 394f, -1420f, 336f)), Struct_1(false, 1820f, vec4<f32>(-319f, 1131f, 3012f, -1000f)), Struct_1(false, -691f, vec4<f32>(-1000f, 1079f, -306f, 1017f)), Struct_1(false, 340f, vec4<f32>(1000f, 205f, 1000f, 179f)), Struct_1(false, -326f, vec4<f32>(-344f, 488f, 1396f, 1226f)), Struct_1(true, 497f, vec4<f32>(456f, 1518f, -1221f, 642f)), Struct_1(false, 805f, vec4<f32>(137f, 1033f, -1622f, 255f)), Struct_1(false, -297f, vec4<f32>(-1045f, 442f, -335f, 1000f)), Struct_1(false, 1618f, vec4<f32>(-2130f, -1259f, -990f, 306f)), Struct_1(true, -834f, vec4<f32>(-1353f, -1498f, 453f, -432f)), Struct_1(true, 1569f, vec4<f32>(110f, -906f, 137f, -158f)), Struct_1(false, 256f, vec4<f32>(475f, 329f, -244f, 1651f)), Struct_1(true, 1000f, vec4<f32>(-276f, 268f, 781f, 671f)), Struct_1(true, -1000f, vec4<f32>(-1000f, -1000f, -354f, -122f)), Struct_1(true, -1000f, vec4<f32>(-455f, 1000f, -805f, -1025f)), Struct_1(false, 1296f, vec4<f32>(-1362f, 1555f, -1410f, 1293f)), Struct_1(true, -1261f, vec4<f32>(361f, -1169f, 790f, 285f)), Struct_1(false, -380f, vec4<f32>(-101f, 873f, 1000f, 1495f)), Struct_1(true, 1000f, vec4<f32>(-789f, 586f, -219f, -1000f)), Struct_1(false, 1920f, vec4<f32>(-313f, -945f, 1598f, -158f)), Struct_1(false, -762f, vec4<f32>(-155f, -857f, -754f, 411f)), Struct_1(false, 1882f, vec4<f32>(-687f, -2588f, 686f, 529f)), Struct_1(false, 580f, vec4<f32>(-577f, 2099f, -164f, -1220f)), Struct_1(false, 389f, vec4<f32>(674f, -133f, 962f, -1123f)), Struct_1(false, -1000f, vec4<f32>(-506f, 782f, -1403f, -588f)), Struct_1(false, -1156f, vec4<f32>(-363f, -870f, -1105f, -579f)), Struct_1(true, -1000f, vec4<f32>(414f, 888f, -228f, -443f)), Struct_1(false, 927f, vec4<f32>(1286f, -2379f, 2138f, 1342f)), Struct_1(true, 652f, vec4<f32>(-449f, 798f, 722f, -217f)), Struct_1(true, 1027f, vec4<f32>(239f, -977f, -392f, -627f)), Struct_1(false, -1228f, vec4<f32>(-176f, -471f, 730f, 137f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.a, global2.a)), 1026f), _wgslsmith_f_op_f32(min(global0.x, global2.a)));
    var var_1 = _wgslsmith_mod_vec2_i32(~(-(~(~vec2<i32>(0i, 464i)))), ~reverseBits(vec2<i32>(1i, 1i)));
    let var_2 = ~vec3<u32>(~u_input.a.x, u_input.c, 6684u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -187f), global0.x, global2.a) + vec3<f32>(449f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - global2.a), _wgslsmith_f_op_f32(-global0.x), var_1.x < var_1.x)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1902f) * global0.x))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_2(global0.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    var var_2 = Struct_1((any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) || !all(vec3<bool>(false, false, true))) | select(all(vec2<bool>(true, true)), true, true), -668f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -657f, var_1.a, global1[_wgslsmith_index_u32(1u, 25u)]) - vec4<f32>(global2.a, var_1.a, 1198f, global1[_wgslsmith_index_u32(0u, 25u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1345f, 932f, 2497f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-147f, -955f, false)), 517f, -833f, _wgslsmith_f_op_vec3_f32(func_1(254f)).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, 748f, -2079f, global0.x) - vec4<f32>(global2.a, var_0.a, global2.a, global0.x))), true == any(vec2<bool>(false, true))))));
    return all(vec2<bool>(true && all(vec3<bool>(var_2.a, var_2.a, var_2.a)), var_2.a));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_1(any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))), global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1000f, -1841f, 674f) * vec4<f32>(-613f, -225f, global2.a, -522f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global2.a, -1558f))))));
    var var_1 = any(vec4<bool>(true, var_0.a, false, !func_3(arg_0)));
    let var_2 = Struct_1(!all(vec3<bool>(select(var_0.a, var_0.a, var_0.a), true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-227f, _wgslsmith_f_op_f32(-353f - global2.a)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1165f, global0.x, global0.x, global1[_wgslsmith_index_u32(arg_0.x, 25u)]) - _wgslsmith_f_op_vec4_f32(round(var_0.c))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.c, 25u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 25u)]), global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 25u)], _wgslsmith_f_op_f32(global2.a * global1[_wgslsmith_index_u32(54650u, 25u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), var_0.c) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1745f, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)])))))))));
    let var_3 = 4294967295u;
    var var_4 = (_wgslsmith_dot_vec3_i32(-(~vec3<i32>(56485i, 32610i, -44225i)), -vec3<i32>(1i, 1i, 1i)) <= 2147483647i) & false;
    return global0.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_1(-943f)).xy + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.zz), arg_1.yy))));
    global3 = array<Struct_1, 32>();
    global1 = array<f32, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 25u)], global2.a))) == _wgslsmith_f_op_f32(sign(1000f)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), u_input.a.x), 25u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, 1106f, -1783f, global2.a)))));
    let var_1 = ~firstTrailingBit(-1i);
    return Struct_2(293f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), vec3<f32>(_wgslsmith_f_op_f32(152f * global1[_wgslsmith_index_u32(21740u, 25u)]), -608f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-624f, global0.x, 205f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2544f, 2731f, global1[_wgslsmith_index_u32(60834u, 25u)]))) + _wgslsmith_f_op_vec3_f32(func_1(global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-192f, -893f, all(vec3<bool>(false, true, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 25u)]) * -480f) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-187f, global1[_wgslsmith_index_u32(4294967295u, 25u)])) * 1302f) * _wgslsmith_f_op_f32(func_2(u_input.b.xx << (u_input.a.zw % vec2<u32>(32u)))))));
    global1 = array<f32, 25>();
    let var_1 = !vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), true)));
    global2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1324f, 1578f)))))));
    global1 = array<f32, 25>();
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global0.x) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 25u)]))), -813f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(98268u, 25u)]), _wgslsmith_f_op_f32(select(var_0.a, 393f, true))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), global0.x, var_0.a, _wgslsmith_f_op_f32(-global2.a))))));
    global3 = array<Struct_1, 32>();
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(u_input.b.x)), vec2<f32>(-906f, var_2.x), global0.x);
}

