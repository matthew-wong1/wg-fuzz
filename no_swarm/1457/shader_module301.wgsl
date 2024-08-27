struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, -39164i, vec4<u32>(44193u, 0u, 5306u, 97337u), vec4<f32>(-1014f, 106f, -760f, -746f), vec2<i32>(i32(-2147483648), -49780i)), Struct_1(false, 2147483647i, vec4<u32>(0u, 34847u, 44235u, 23927u), vec4<f32>(-899f, 337f, 159f, -683f), vec2<i32>(i32(-2147483648), -60878i)), Struct_1(false, 1i, vec4<u32>(25113u, 1u, 4294967295u, 42771u), vec4<f32>(202f, -376f, -707f, -989f), vec2<i32>(2147483647i, -32791i)), Struct_1(false, i32(-2147483648), vec4<u32>(1u, 33293u, 10212u, 45269u), vec4<f32>(1226f, -600f, 210f, -1000f), vec2<i32>(i32(-2147483648), 1i)), Struct_1(false, 1i, vec4<u32>(100552u, 1u, 1u, 39211u), vec4<f32>(-358f, 1897f, 295f, -389f), vec2<i32>(35318i, -8105i)), Struct_1(true, -7156i, vec4<u32>(0u, 78468u, 1u, 50493u), vec4<f32>(747f, -1064f, 479f, 347f), vec2<i32>(0i, 37601i)), Struct_1(true, 0i, vec4<u32>(0u, 46683u, 0u, 125252u), vec4<f32>(-670f, -464f, -1322f, -875f), vec2<i32>(-9081i, -14253i)), Struct_1(false, 1i, vec4<u32>(0u, 0u, 35793u, 1u), vec4<f32>(-1364f, -448f, -1000f, 1001f), vec2<i32>(i32(-2147483648), 1393i)), Struct_1(false, 2147483647i, vec4<u32>(67746u, 1u, 4294967295u, 5504u), vec4<f32>(333f, 792f, 432f, -774f), vec2<i32>(-1i, 45751i)), Struct_1(false, -1i, vec4<u32>(1u, 0u, 15113u, 22060u), vec4<f32>(322f, 289f, 450f, 726f), vec2<i32>(0i, 13198i)), Struct_1(false, -21433i, vec4<u32>(0u, 1u, 0u, 54170u), vec4<f32>(-233f, -567f, -1000f, 1161f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(false, 1i, vec4<u32>(36955u, 17598u, 4294967295u, 1u), vec4<f32>(1362f, 117f, -905f, -280f), vec2<i32>(2147483647i, -2190i)), Struct_1(true, i32(-2147483648), vec4<u32>(138483u, 0u, 4294967295u, 0u), vec4<f32>(-145f, -1452f, 263f, 488f), vec2<i32>(2147483647i, -52406i)), Struct_1(false, i32(-2147483648), vec4<u32>(6790u, 17059u, 0u, 46764u), vec4<f32>(356f, -749f, -827f, 173f), vec2<i32>(13232i, 2147483647i)), Struct_1(false, -24203i, vec4<u32>(7952u, 0u, 53949u, 0u), vec4<f32>(-474f, -669f, -875f, 555f), vec2<i32>(24378i, 2147483647i)), Struct_1(true, 1i, vec4<u32>(4294967295u, 3238u, 36094u, 4294967295u), vec4<f32>(-922f, -1071f, -816f, 744f), vec2<i32>(23483i, -14810i)), Struct_1(false, -10719i, vec4<u32>(0u, 4294967295u, 26863u, 4294967295u), vec4<f32>(-790f, 999f, -1675f, 1308f), vec2<i32>(7417i, -22213i)), Struct_1(false, -52468i, vec4<u32>(17875u, 1u, 34553u, 43798u), vec4<f32>(948f, -1217f, 1323f, 445f), vec2<i32>(-3836i, 2147483647i)), Struct_1(false, 2147483647i, vec4<u32>(39689u, 0u, 22711u, 4294967295u), vec4<f32>(-1450f, 999f, -1059f, 570f), vec2<i32>(992i, 6541i)), Struct_1(true, 1i, vec4<u32>(85990u, 4294967295u, 1u, 4294967295u), vec4<f32>(-1000f, -353f, 1410f, 244f), vec2<i32>(21865i, -25664i)), Struct_1(false, 0i, vec4<u32>(36783u, 42081u, 30707u, 69760u), vec4<f32>(256f, -1143f, -1133f, -1394f), vec2<i32>(45183i, 33059i)), Struct_1(false, 1i, vec4<u32>(0u, 4294967295u, 2139u, 68290u), vec4<f32>(-1583f, -1060f, 1580f, -1861f), vec2<i32>(2147483647i, -20855i)), Struct_1(true, 21493i, vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<f32>(-380f, -1463f, -1096f, 925f), vec2<i32>(50962i, -4869i)), Struct_1(true, 15298i, vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<f32>(898f, -500f, 2498f, -315f), vec2<i32>(2147483647i, 1i)), Struct_1(false, -61369i, vec4<u32>(54679u, 0u, 0u, 44764u), vec4<f32>(300f, -716f, -831f, -2512f), vec2<i32>(-4123i, -1i)), Struct_1(false, 16390i, vec4<u32>(27228u, 75610u, 105882u, 0u), vec4<f32>(815f, -208f, -908f, -1000f), vec2<i32>(-1i, 2147483647i)), Struct_1(true, -1i, vec4<u32>(4294967295u, 1u, 16499u, 0u), vec4<f32>(-479f, -529f, -731f, -223f), vec2<i32>(0i, 0i)));

var<private> global1: array<bool, 12> = array<bool, 12>(true, false, true, true, true, false, true, true, true, true, true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = array<bool, 12>();
    let var_0 = ~arg_1.c.x;
    global0 = array<Struct_1, 27>();
    var var_1 = arg_1;
    global0 = array<Struct_1, 27>();
    return -24447i;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_mult_i32(u_input.b, _wgslsmith_mult_i32(func_3(global0[_wgslsmith_index_u32(~0u, 27u)], global0[_wgslsmith_index_u32(22063u, 27u)]), arg_2.b));
    var var_1 = Struct_1(true, -arg_2.e.x & -1i, arg_2.c, _wgslsmith_div_vec4_f32(arg_2.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(864f, arg_0, arg_0, arg_0), vec4<f32>(arg_1, 914f, arg_0, arg_0))))))), -countOneBits(vec2<i32>(u_input.b, ~arg_2.e.x)));
    let var_2 = ((u_input.b ^ 1i) | func_3(Struct_1(global1[_wgslsmith_index_u32(92754u, 12u)] || var_1.a, 47427i, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c.x, 60261u, var_1.c.x, arg_2.c.x), var_1.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_2.d.x, var_1.d.x, -445f), arg_2.d)), vec2<i32>(arg_2.e.x, 29828i)), arg_2)) << (~(~48479u) % 32u);
    var var_3 = var_1.d.xy;
    var_0 = arg_2.e.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-549f)), _wgslsmith_f_op_f32(var_3.x * -403f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-451f, -603f)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = arg_2.c.wxw;
    var var_1 = -_wgslsmith_sub_i32(arg_2.e.x, -u_input.a);
    let var_2 = var_0;
    let var_3 = -1381f;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(925f, -1000f, global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_f32(-2031f + -334f))) + -221f), 717f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -823f), 276f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-623f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(901f, -110f), 1u, Struct_1(true, u_input.b, vec4<u32>(65026u, 1u, 4294967295u, 46064u), vec4<f32>(1855f, 1091f, -1486f, 580f), vec2<i32>(48652i, 1i)), -323f))), any(!vec2<bool>(global1[_wgslsmith_index_u32(30311u, 12u)], global1[_wgslsmith_index_u32(21870u, 12u)])))))));
    var var_1 = global0[_wgslsmith_index_u32(20933u, 27u)];
    let var_2 = vec3<i32>(u_input.b, -select(~_wgslsmith_div_i32(u_input.a, var_1.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.x, var_1.b), var_1.e), false), -1i);
    var var_3 = false;
    global1 = array<bool, 12>();
    let var_4 = !(!select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.c.x, 12u)], var_1.c.x >= 26270u), select(vec3<bool>(true, true, true), !vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.c.x, 12u)], false), global1[_wgslsmith_index_u32(var_1.c.x, 12u)] | true), vec3<bool>(true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)])), var_1.e.x >= u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1865f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + -290f)), var_1.d.x, 45263i);
}

