struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec3<bool>(true, false, true), 875f, -971f, Struct_1(vec3<f32>(-1159f, 320f, 935f)), vec2<bool>(false, true)), Struct_3(vec3<bool>(false, true, true), 1281f, 1514f, Struct_1(vec3<f32>(110f, 325f, -1521f)), vec2<bool>(true, false)), Struct_3(vec3<bool>(true, true, false), -186f, 701f, Struct_1(vec3<f32>(258f, -922f, 1239f)), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, false, true), 532f, -2304f, Struct_1(vec3<f32>(293f, -1967f, -203f)), vec2<bool>(true, false)), Struct_3(vec3<bool>(false, false, true), -705f, 1478f, Struct_1(vec3<f32>(-192f, -722f, -1583f)), vec2<bool>(true, false)), Struct_3(vec3<bool>(true, true, false), 415f, 1047f, Struct_1(vec3<f32>(1000f, 1000f, 783f)), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, true, true), 1639f, 244f, Struct_1(vec3<f32>(648f, -838f, 1840f)), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, true, false), -185f, 419f, Struct_1(vec3<f32>(108f, 817f, 1976f)), vec2<bool>(true, true)), Struct_3(vec3<bool>(true, false, false), -764f, -799f, Struct_1(vec3<f32>(-1172f, -1868f, 195f)), vec2<bool>(false, false)), Struct_3(vec3<bool>(false, true, true), 1000f, 649f, Struct_1(vec3<f32>(1000f, -153f, 1694f)), vec2<bool>(false, false)), Struct_3(vec3<bool>(true, true, true), -248f, -1130f, Struct_1(vec3<f32>(977f, -270f, 1643f)), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, true, true), 1000f, -572f, Struct_1(vec3<f32>(1000f, 519f, 1477f)), vec2<bool>(false, true)), Struct_3(vec3<bool>(true, true, true), 691f, -778f, Struct_1(vec3<f32>(504f, -976f, 1257f)), vec2<bool>(false, false)));

var<private> global3: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(453f, -2502f, -916f, -855f), vec4<f32>(563f, -1117f, 707f, 514f), vec4<f32>(-780f, -723f, -1584f, -1380f), vec4<f32>(-492f, 125f, -1000f, 578f), vec4<f32>(-344f, -363f, 368f, 1501f), vec4<f32>(-967f, -657f, 2060f, 1000f), vec4<f32>(-725f, -1000f, -499f, 270f), vec4<f32>(-874f, 659f, 672f, 884f), vec4<f32>(-427f, -840f, -658f, -1368f), vec4<f32>(436f, 113f, 1577f, 2085f), vec4<f32>(-932f, 557f, 425f, -1797f), vec4<f32>(206f, 1735f, -1227f, 619f), vec4<f32>(-303f, -908f, 1305f, 1775f), vec4<f32>(-1922f, -1844f, 1659f, 685f), vec4<f32>(909f, 1132f, 1000f, -2230f), vec4<f32>(263f, 1225f, 587f, 1000f), vec4<f32>(442f, -1281f, -296f, 1220f), vec4<f32>(-600f, 388f, -288f, -760f), vec4<f32>(-570f, -450f, -1149f, 1102f), vec4<f32>(-307f, -1370f, -1000f, -942f), vec4<f32>(-1048f, 737f, 1739f, -442f), vec4<f32>(-1362f, 2048f, -1966f, 226f), vec4<f32>(-1704f, 279f, -333f, 300f), vec4<f32>(366f, -1214f, 1572f, 1407f), vec4<f32>(921f, 1595f, -536f, 1000f), vec4<f32>(-1247f, 415f, 2253f, 1311f), vec4<f32>(1000f, 773f, 1155f, -1734f), vec4<f32>(1290f, 1332f, 269f, 823f), vec4<f32>(-525f, 1737f, -1282f, 2339f), vec4<f32>(1846f, 1350f, -1000f, 644f), vec4<f32>(-510f, 1096f, 1150f, -1298f));

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(max(firstTrailingBit(u_input.a.x), 1u), ((-2147483647i << ((34434u ^ u_input.a.x) % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global1.a), ~global1.a) % 32u)) == ~global1.c.x, vec3<i32>(-u_input.b, ~global1.c.x << (~u_input.a.x % 32u), -2147483647i & (u_input.b | ~u_input.c)), global1.d);
    let var_1 = ~u_input.a.xww;
    global0 = array<vec4<bool>, 29>();
    let var_2 = !global4.zzx;
    global0 = array<vec4<bool>, 29>();
    return u_input.a.yy;
}

fn func_3(arg_0: Struct_3) -> Struct_1 {
    let var_0 = any(!select(!select(vec2<bool>(false, arg_0.a.x), arg_0.e, vec2<bool>(false, true)), global4.yw, select(vec2<bool>(global4.x, true), !vec2<bool>(global1.b, true), global4.yz)));
    var var_1 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, global1.d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1160f)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = global1.d.a.x;
    var var_2 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2() ^ ~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 152176u)), 13u)]);
    var var_3 = u_input.a.x;
    let var_4 = vec4<i32>(~(-reverseBits(~2147483647i)), min(~(-u_input.c) | global1.c.x, u_input.c), i32(-1i) * -(u_input.c << (u_input.a.x % 32u)), max(global1.c.x, -52414i));
    return Struct_2(~global1.a, !global1.b, global1.c, Struct_1(_wgslsmith_f_op_vec3_f32(max(global1.d.a, _wgslsmith_div_vec3_f32(func_3(global2[_wgslsmith_index_u32(26817u, 13u)]).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, arg_0.b, 321f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 13>();
    global0 = array<vec4<bool>, 29>();
    global1 = func_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], global1.d.a);
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~(~var_0.x), global1.a, ~global1.a), var_0.x, var_0.x, ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(global1.a, 19565u, u_input.a.x)), vec3<u32>(u_input.a.x, 16746u, u_input.a.x))), ~vec4<u32>(_wgslsmith_sub_u32(global1.a, 53371u ^ global1.a), ~(~1860u), ~global1.a, ~func_2().x), reverseBits(~vec4<u32>(0u, _wgslsmith_clamp_u32(var_0.x, var_0.x, 25739u), 4294967295u, u_input.a.x << (35282u % 32u))));
    var var_2 = global2[_wgslsmith_index_u32(14526u, 13u)];
    let var_3 = func_1(Struct_3(!select(global4.wxx, select(global4.yww, var_2.a, vec3<bool>(true, global4.x, false)), u_input.c != -17508i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_div_f32(936f, var_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f), -882f)), _wgslsmith_f_op_f32(889f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_div_f32(472f, -447f)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.a.x, -2055f, -1048f), vec3<f32>(-2152f, var_2.b, 602f), global4.xxz))))), select(var_2.a.yz, !(!global4.xz), select(!vec2<bool>(true, global4.x), !vec2<bool>(var_2.a.x, true), !var_2.e))), vec3<f32>(global1.d.a.x, global1.d.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f - 1625f))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec2_u32(var_1.zy, u_input.a.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.a.x))));
}

