struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(-2838i, -22749i), vec4<i32>(-5157i, i32(-2147483648), 11733i, 33348i), vec4<f32>(221f, -500f, -210f, -449f)), Struct_1(vec2<i32>(-1i, 1i), vec4<i32>(0i, 2147483647i, 2147483647i, 57151i), vec4<f32>(1372f, 131f, -1750f, -1000f)), Struct_1(vec2<i32>(1i, 2147483647i), vec4<i32>(-1i, 0i, 0i, i32(-2147483648)), vec4<f32>(1000f, 519f, -1156f, -400f)), Struct_1(vec2<i32>(2147483647i, -4798i), vec4<i32>(13171i, 21951i, 2147483647i, 1i), vec4<f32>(-119f, -790f, 154f, -3211f)), Struct_1(vec2<i32>(i32(-2147483648), -9103i), vec4<i32>(1i, 32006i, 38013i, 25864i), vec4<f32>(210f, -190f, 1027f, 225f)), Struct_1(vec2<i32>(-3605i, 1811i), vec4<i32>(43141i, 12178i, -1i, -16935i), vec4<f32>(2276f, 1198f, -231f, -1824f)), Struct_1(vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), 1i, -69227i, -54573i), vec4<f32>(1307f, 1249f, -858f, 700f)), Struct_1(vec2<i32>(-1i, 1i), vec4<i32>(-1797i, 2147483647i, 1i, -27996i), vec4<f32>(286f, 493f, -630f, 589f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(-10099i, 19918i, -1i, 2147483647i), vec4<f32>(-874f, -1271f, 192f, -390f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(-28174i, 37471i, 2147483647i, 1i), vec4<f32>(-1348f, -2050f, -1136f, 1513f)), Struct_1(vec2<i32>(i32(-2147483648), -43596i), vec4<i32>(-15382i, -14050i, -1i, 1746i), vec4<f32>(334f, 508f, 1000f, -206f)), Struct_1(vec2<i32>(25513i, 2476i), vec4<i32>(-51139i, 47217i, -11156i, -67287i), vec4<f32>(680f, 168f, -739f, -361f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(0i, -34198i, 16350i, 0i), vec4<f32>(-419f, 1204f, 221f, -650f)), Struct_1(vec2<i32>(-49372i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, -1i, -72396i), vec4<f32>(-397f, 1000f, -1131f, 947f)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<i32>(0i, 11939i, 2147483647i, -47238i), vec4<f32>(1779f, 465f, 254f, 431f)), Struct_1(vec2<i32>(-31962i, 0i), vec4<i32>(24157i, i32(-2147483648), -36675i, -5387i), vec4<f32>(385f, 148f, 923f, -261f)), Struct_1(vec2<i32>(-21869i, 25781i), vec4<i32>(29468i, 5502i, -1i, -7649i), vec4<f32>(433f, 1016f, -774f, -1000f)), Struct_1(vec2<i32>(2147483647i, 1i), vec4<i32>(-10821i, -26415i, -49612i, 24436i), vec4<f32>(-1569f, -2146f, -538f, 442f)), Struct_1(vec2<i32>(0i, 2147483647i), vec4<i32>(-1i, 30255i, -11915i, 2147483647i), vec4<f32>(-324f, -1219f, 810f, 414f)), Struct_1(vec2<i32>(1695i, -29984i), vec4<i32>(28083i, -45184i, 1i, 0i), vec4<f32>(727f, 601f, -920f, -1139f)), Struct_1(vec2<i32>(0i, -36197i), vec4<i32>(-1i, -25616i, 35368i, i32(-2147483648)), vec4<f32>(1938f, 802f, 548f, 583f)), Struct_1(vec2<i32>(2147483647i, 25527i), vec4<i32>(2147483647i, 1i, 53836i, 2147483647i), vec4<f32>(-746f, -1000f, 401f, -2019f)), Struct_1(vec2<i32>(1i, 49775i), vec4<i32>(-47888i, 36098i, 2147483647i, 13823i), vec4<f32>(294f, -463f, 620f, 763f)), Struct_1(vec2<i32>(76549i, 5329i), vec4<i32>(i32(-2147483648), 0i, 1i, i32(-2147483648)), vec4<f32>(2396f, -304f, 231f, -762f)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<i32>(-3026i, 1i, 0i, i32(-2147483648)), vec4<f32>(-971f, 1673f, -1603f, 1000f)), Struct_1(vec2<i32>(66999i, -28748i), vec4<i32>(31405i, -49158i, 35601i, -1883i), vec4<f32>(-1092f, -910f, 928f, 1000f)), Struct_1(vec2<i32>(-30072i, 8740i), vec4<i32>(-1i, 14572i, 31820i, -29694i), vec4<f32>(687f, 174f, 1000f, 1368f)), Struct_1(vec2<i32>(-11702i, -1302i), vec4<i32>(i32(-2147483648), 114i, 1i, 4175i), vec4<f32>(554f, -204f, -2381f, -229f)));

var<private> global2: array<f32, 2> = array<f32, 2>(-768f, -1780f);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(0i, 0i), vec4<i32>(0i, 28737i, 11549i, 9026i), vec4<f32>(1000f, -925f, 1231f, -989f));

var<private> global4: array<bool, 22> = array<bool, 22>(true, false, false, false, false, false, false, false, true, true, false, true, true, true, false, true, true, true, true, true, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = !(!(!select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(57616u, 22u)], true), arg_1.wxz, arg_1.x), vec3<bool>(arg_2.x, true, global4[_wgslsmith_index_u32(global0.x, 22u)]), !global4[_wgslsmith_index_u32(1u, 22u)])));
    let var_1 = u_input.b.x;
    var var_2 = vec4<bool>(!(60854u < _wgslsmith_dot_vec4_u32(min(vec4<u32>(global0.x, global0.x, 0u, 53376u), vec4<u32>(21306u, 22616u, global0.x, 4294967295u)), vec4<u32>(0u, u_input.a.x, 4294967295u, 0u))), arg_1.x, true, !arg_2.x);
    global4 = array<bool, 22>();
    global2 = array<f32, 2>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 2u)] * -743f) * -251f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1754f)))), global3.c.x, _wgslsmith_f_op_f32(max(1220f, arg_0.c.c.x))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(global0.x, _wgslsmith_sub_u32(0u, u_input.a.x), ~_wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, 36176u), global0.x), global0.x);
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-u_input.b.x, -2147483647i), _wgslsmith_dot_vec4_i32(arg_0.b.b, vec4<i32>(global3.b.x, u_input.b.x, ~(-1i), -arg_0.c.b.x))), vec4<i32>(_wgslsmith_add_i32(arg_0.d, 12039i), 2147483647i, global3.a.x, max(_wgslsmith_mult_i32(u_input.b.x, arg_0.a.x), -39365i)) | arg_0.b.b, _wgslsmith_f_op_vec4_f32(min(arg_0.c.c, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<i32>(global3.a.x, arg_0.a.x, 12715i, -44665i) ^ global3.b, arg_0.c, Struct_1(u_input.b.yz, vec4<i32>(arg_0.b.a.x, arg_0.a.x, u_input.b.x, u_input.b.x), vec4<f32>(-598f, -659f, 580f, -336f)), -global3.b.x, global3.c.x), select(vec4<bool>(arg_2, arg_2, global4[_wgslsmith_index_u32(global0.x, 22u)], arg_2), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_2, arg_2, false), vec4<bool>(false, arg_2, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_2), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_2, global4[_wgslsmith_index_u32(53820u, 22u)], true)), select(vec4<bool>(true, arg_2, false, true), vec4<bool>(arg_2, global4[_wgslsmith_index_u32(global0.x, 22u)], true, arg_2), global4[_wgslsmith_index_u32(4294967295u, 22u)])), select(!vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), select(vec2<bool>(false, true), vec2<bool>(arg_2, global4[_wgslsmith_index_u32(global0.x, 22u)]), vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 22u)], arg_2)), vec2<bool>(true, arg_2)))))));
    var var_2 = select(!(!select(!vec3<bool>(true, global4[_wgslsmith_index_u32(global0.x, 22u)], true), select(vec3<bool>(arg_2, false, true), vec3<bool>(false, false, false), arg_2), all(vec4<bool>(true, global4[_wgslsmith_index_u32(60495u, 22u)], false, false)))), !select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(global0.x, 22u)], arg_2), vec3<bool>(arg_2, arg_2, arg_2), all(vec4<bool>(true, arg_2, true, true))), vec3<bool>(true, false, true), true || arg_2), !global4[_wgslsmith_index_u32(~1u, 22u)]);
    var_2 = !vec3<bool>(any(!select(vec4<bool>(arg_2, false, false, true), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, global4[_wgslsmith_index_u32(13419u, 22u)], false))), !global4[_wgslsmith_index_u32(25046u, 22u)], any(!vec2<bool>(var_2.x, arg_2)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-arg_0.c.c);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = vec3<u32>(_wgslsmith_add_u32(13383u, abs(arg_0)), _wgslsmith_dot_vec2_u32(global0.zy, ~global0.yx), 57540u);
    let var_0 = func_2(Struct_2(vec4<i32>(global3.a.x, -reverseBits(global3.b.x), -1i ^ (u_input.b.x ^ -42459i), 38086i), arg_1, arg_1, -abs(global3.a.x), _wgslsmith_f_op_f32(824f - _wgslsmith_div_f32(global3.c.x, _wgslsmith_div_f32(-268f, -1181f)))), _wgslsmith_f_op_f32(ceil(-172f)), any(!(!vec2<bool>(global4[_wgslsmith_index_u32(arg_0, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0, 2u)]), arg_1.c.x))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_1.c.zyy)), global3.c.xww, !select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(arg_0, 22u)]), vec3<bool>(global4[_wgslsmith_index_u32(11139u, 22u)], global4[_wgslsmith_index_u32(global0.x, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(global0.x, 22u)]))))), _wgslsmith_f_op_vec3_f32(round(global3.c.www)));
    global3 = func_2(func_2(var_0, _wgslsmith_f_op_f32(1246f - 1000f), all(select(!vec2<bool>(false, global4[_wgslsmith_index_u32(40228u, 22u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 22u)], true), vec2<bool>(true, global4[_wgslsmith_index_u32(26223u, 22u)]), vec2<bool>(true, true)), true)), var_0.b.c.yz), var_0.e, global4[_wgslsmith_index_u32(86186u, 22u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.xx, global3.c.zx, false))) + _wgslsmith_f_op_vec2_f32(var_1.yx - vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 2u)], arg_1.c.x))))).c;
    let var_2 = Struct_2(global3.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(_wgslsmith_mult_u32(96596u, 11492u), ~u_input.a.x | 47742u)), 28u)], Struct_1(u_input.b.xz, _wgslsmith_mult_vec4_i32(var_0.b.b, min(abs(vec4<i32>(var_0.a.x, var_0.d, arg_1.a.x, var_0.a.x)), vec4<i32>(28146i, -12990i, var_0.d, -45118i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, 1396f, var_0.e, 702f)))), 9997i >> (reverseBits(~u_input.a.x) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_f_op_f32(1226f + -450f)));
    return ~(~(4294967295u & (7390u ^ global0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> f32 {
    var var_0 = arg_1.x > 40156u;
    var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<i32>(-31424i, min(arg_0.a.x << (arg_1.x % 32u), 0i ^ u_input.b.x), u_input.b.x, arg_0.a.x), func_2(func_2(func_2(Struct_2(global3.b, Struct_1(vec2<i32>(-1i, global3.b.x), arg_0.b, vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 521f)), Struct_1(global3.b.xz, u_input.b, vec4<f32>(679f, arg_0.c.x, global2[_wgslsmith_index_u32(6752u, 2u)], -1590f)), -41348i, global2[_wgslsmith_index_u32(20246u, 2u)]), -313f, false, global3.c.xy), 140f, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x))), arg_0.c.x, arg_3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_0.b, Struct_1(global3.b.xy, vec4<i32>(-3519i, u_input.b.x, u_input.b.x, arg_0.a.x), vec4<f32>(-462f, -1224f, 549f, -888f)), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.b.x, arg_0.c.x), vec4<bool>(true, false, arg_3.x, global4[_wgslsmith_index_u32(global0.x, 22u)]), vec2<bool>(true, arg_3.x))).zy)).b, global1[_wgslsmith_index_u32(2312u, 28u)], ~15608i, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23634u, 2u)])), vec4<bool>(false, true, global4[_wgslsmith_index_u32(~(~1477u), 22u)] && ((-2147483647i & arg_0.b.x) < select(u_input.b.x, u_input.b.x, arg_3.x)), arg_2.x), arg_2.xz)).x;
    var var_2 = max(~global0.x, ~arg_1.x);
    var_2 = 1u;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(select(~u_input.b.zz, u_input.b.xz, false), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, global3.a.x), global3.b), vec4<f32>(_wgslsmith_f_op_f32(-634f * -758f), -1194f, -1349f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<u32>(func_1(_wgslsmith_sub_u32(global0.x, 13530u), Struct_1(vec2<i32>(u_input.b.x, 51273i), vec4<i32>(-11878i, -7496i, u_input.b.x, global3.b.x), vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 2u)], 1071f, 2143f, -673f))), u_input.a.x & 19981u), vec3<bool>(global4[_wgslsmith_index_u32(1u, 22u)], !(!global4[_wgslsmith_index_u32(1u, 22u)]), global4[_wgslsmith_index_u32(func_1(~global0.x, func_2(Struct_2(vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, global3.a.x), global1[_wgslsmith_index_u32(global0.x, 28u)], Struct_1(vec2<i32>(7904i, -59741i), u_input.b, global3.c), global3.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), -1147f, global4[_wgslsmith_index_u32(1832u, 22u)], vec2<f32>(global3.c.x, 581f)).c), 22u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 2u)] >= global3.c.x, !global4[_wgslsmith_index_u32(2892u, 22u)]), select(vec2<bool>(true, global4[_wgslsmith_index_u32(global0.x, 22u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(19146u, 22u)]), all(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 22u)], global4[_wgslsmith_index_u32(104173u, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)]))), select(select(vec2<bool>(false, false), vec2<bool>(global4[_wgslsmith_index_u32(3013u, 22u)], true), false), !vec2<bool>(global4[_wgslsmith_index_u32(100462u, 22u)], true), any(vec4<bool>(global4[_wgslsmith_index_u32(13390u, 22u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(6868u, 2u)] * -652f)) * -1711f)));
    global3 = global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_1 = func_2(func_2(func_2(Struct_2(-global3.b, func_2(Struct_2(global3.b, global1[_wgslsmith_index_u32(global0.x, 28u)], Struct_1(vec2<i32>(global3.a.x, -12182i), vec4<i32>(-18972i, global3.b.x, global3.b.x, 1i), global3.c), u_input.b.x, -1107f), global2[_wgslsmith_index_u32(16599u, 2u)], global4[_wgslsmith_index_u32(global0.x, 22u)], vec2<f32>(-1241f, -1000f)).b, func_2(Struct_2(vec4<i32>(-1i, global3.b.x, -42711i, -72496i), Struct_1(global3.a, global3.b, global3.c), global1[_wgslsmith_index_u32(4294967295u, 28u)], global3.a.x, -904f), global2[_wgslsmith_index_u32(4294967295u, 2u)], false, vec2<f32>(2279f, global3.c.x)).c, 0i, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 2u)])), -413f, countOneBits(u_input.b.x) <= 29737i, vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(64336u, 2u)], -840f), global3.c.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x), -_wgslsmith_sub_i32(u_input.b.x, 2147483647i) <= u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(586f)) + _wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.c.x * _wgslsmith_f_op_f32(trunc(253f))))), any(!vec3<bool>(any(vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 22u)], global4[_wgslsmith_index_u32(27956u, 22u)], false, false)), all(vec2<bool>(global4[_wgslsmith_index_u32(1u, 22u)], true)), 350f <= global2[_wgslsmith_index_u32(global0.x, 2u)])), global3.c.wy);
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, global3.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(firstLeadingBit(19429i), countOneBits(1i)), ~(-1i), -19276i));
}

