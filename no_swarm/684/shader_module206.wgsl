struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<f32>(-2792f, 2790f, -1794f, -308f), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(false, true), -107f)), Struct_2(vec4<f32>(1090f, -519f, -527f, 840f), Struct_1(vec2<u32>(0u, 76764u), vec2<bool>(true, false), 347f)), Struct_2(vec4<f32>(1166f, -551f, -934f, 1391f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(false, true), -1699f)), Struct_2(vec4<f32>(-357f, -909f, 1357f, 1331f), Struct_1(vec2<u32>(2040u, 65663u), vec2<bool>(true, false), 785f)), Struct_2(vec4<f32>(304f, -215f, 617f, -2330f), Struct_1(vec2<u32>(52209u, 0u), vec2<bool>(false, false), -1824f)), Struct_2(vec4<f32>(183f, 739f, 928f, 406f), Struct_1(vec2<u32>(63940u, 36621u), vec2<bool>(false, false), -792f)), Struct_2(vec4<f32>(-1737f, 390f, -1000f, -845f), Struct_1(vec2<u32>(77451u, 12525u), vec2<bool>(false, true), -133f)), Struct_2(vec4<f32>(-1679f, 461f, 2671f, -1000f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), 450f)), Struct_2(vec4<f32>(-1537f, -1771f, 1447f, 452f), Struct_1(vec2<u32>(4643u, 0u), vec2<bool>(true, true), 1013f)), Struct_2(vec4<f32>(107f, 536f, -893f, -758f), Struct_1(vec2<u32>(3666u, 68958u), vec2<bool>(true, false), -1101f)), Struct_2(vec4<f32>(984f, -550f, 1882f, 651f), Struct_1(vec2<u32>(964u, 8570u), vec2<bool>(false, true), -1034f)), Struct_2(vec4<f32>(575f, -716f, -396f, -1186f), Struct_1(vec2<u32>(4294967295u, 4466u), vec2<bool>(true, false), 606f)), Struct_2(vec4<f32>(1526f, -2505f, -810f, -233f), Struct_1(vec2<u32>(79713u, 4294967295u), vec2<bool>(true, false), -585f)), Struct_2(vec4<f32>(1310f, 146f, -109f, -479f), Struct_1(vec2<u32>(0u, 19512u), vec2<bool>(true, false), 750f)), Struct_2(vec4<f32>(-1053f, -503f, -1224f, 389f), Struct_1(vec2<u32>(71936u, 1u), vec2<bool>(false, true), -857f)), Struct_2(vec4<f32>(1000f, 2871f, 1000f, 102f), Struct_1(vec2<u32>(4294967295u, 79908u), vec2<bool>(false, false), -2120f)), Struct_2(vec4<f32>(854f, 462f, -508f, -1057f), Struct_1(vec2<u32>(4294967295u, 19913u), vec2<bool>(false, true), -1228f)), Struct_2(vec4<f32>(387f, -377f, -999f, 832f), Struct_1(vec2<u32>(33824u, 80152u), vec2<bool>(false, true), 340f)), Struct_2(vec4<f32>(112f, 2020f, 892f, -1000f), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), -774f)), Struct_2(vec4<f32>(1070f, -230f, 1073f, 1217f), Struct_1(vec2<u32>(14241u, 80853u), vec2<bool>(false, false), -1276f)), Struct_2(vec4<f32>(-662f, -975f, 428f, 795f), Struct_1(vec2<u32>(15936u, 29705u), vec2<bool>(false, true), -1240f)), Struct_2(vec4<f32>(112f, -1306f, -630f, -1902f), Struct_1(vec2<u32>(15474u, 54568u), vec2<bool>(true, false), -493f)), Struct_2(vec4<f32>(670f, 151f, 686f, 1639f), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(false, true), -1281f)), Struct_2(vec4<f32>(-798f, -1000f, 1231f, -406f), Struct_1(vec2<u32>(0u, 30892u), vec2<bool>(true, false), -400f)));

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> bool {
    global2 = 418f;
    global0 = true;
    let var_0 = global3[_wgslsmith_index_u32(0u, 24u)];
    global3 = array<Struct_2, 24>();
    global2 = _wgslsmith_f_op_f32(-arg_1.x);
    return false;
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = global4[_wgslsmith_index_u32(~(~u_input.b.x), 31u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(172f - 1876f)) - var_0.c), 1264f, var_0.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1147f, _wgslsmith_div_f32(var_0.c, var_0.c), var_0.c, _wgslsmith_f_op_f32(-var_0.c)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * -242f))));
    var var_3 = _wgslsmith_mod_i32(-22171i, arg_0);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -404f, var_1.x, 1304f))) + vec4<f32>(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_div_f32(-833f, var_1.x), var_0.c)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.c, arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1222f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(648f - arg_1.c) + _wgslsmith_f_op_f32(sign(750f)))))));
    global3 = array<Struct_2, 24>();
    global3 = array<Struct_2, 24>();
    global3 = array<Struct_2, 24>();
    global4 = array<Struct_1, 31>();
    return 32966i;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = 338f;
    var var_1 = select(max(-(~(-18956i)), _wgslsmith_sub_i32(26541i, 29158i & u_input.d.x)), 1i, u_input.d.x < -(1i << (u_input.b.x % 32u))) ^ func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b.c, var_0, arg_3.a.x, 751f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(arg_2)), arg_3.a))), arg_3.b, arg_3.b.b.x);
    var var_2 = select(vec2<bool>(arg_3.b.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_3.b.c, 1111f))))), arg_3.b.b, false);
    var var_3 = Struct_1(vec2<u32>(arg_3.b.a.x, 9403u), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -893f));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_3.a, arg_3.a) - vec4<f32>(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(arg_2)).x, var_3.c)), _wgslsmith_f_op_f32(floor(-568f)), _wgslsmith_f_op_f32(-1956f + arg_1.x))), Struct_1(var_3.a, select(!arg_3.b.b, select(arg_3.b.b, select(arg_3.b.b, vec2<bool>(true, true), var_2.x), arg_2 <= u_input.c.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f * _wgslsmith_f_op_f32(769f * var_3.c)))));
    return arg_0 & _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(arg_0, 1u, arg_3.b.a.x)), countOneBits(~vec3<u32>(68530u, 39364u, var_4.b.a.x))), vec3<u32>(3349u, ~abs(4294967295u), arg_3.b.a.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = ~(~firstLeadingBit(_wgslsmith_sub_u32(0u, arg_3.b.a.x) >> (~arg_2 % 32u)));
    let var_1 = abs(vec4<u32>(79043u, min(1u, arg_2), _wgslsmith_mult_u32(arg_3.b.a.x, ~_wgslsmith_clamp_u32(1u, u_input.b.x, arg_2)), abs(411u)));
    var var_2 = arg_3.b;
    let var_3 = ~(1u << ((~_wgslsmith_dot_vec2_u32(vec2<u32>(20456u, 0u), vec2<u32>(arg_3.b.a.x, arg_0.x)) | ((arg_2 | arg_0.x) & firstLeadingBit(8820u))) % 32u));
    global4 = array<Struct_1, 31>();
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(vec2<bool>(true, func_1(4294967295u, vec2<f32>(-1000f, 1151f)))) || true;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-971f)) + _wgslsmith_f_op_f32(func_5(vec3<u32>(~47225u, func_2(u_input.b.x, vec2<f32>(-1205f, 298f), -2147483647i, global3[_wgslsmith_index_u32(3879u, 24u)]), u_input.b.x), any(vec4<bool>(true, true, true, false)), u_input.b.x, global3[_wgslsmith_index_u32(8218u, 24u)]))) <= 1f;
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, func_2(1u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, -229f)))), 3845i, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, -165f, 496f, 2188f)), global4[_wgslsmith_index_u32(~1u, 31u)]))), abs(u_input.b));
    var var_1 = u_input.c;
    global2 = _wgslsmith_div_f32(1227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1878f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -332f))))));
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, -128f, -492f, 1367f) + vec4<f32>(1988f, -328f, 755f, -973f)) * vec4<f32>(921f, -442f, -585f, -915f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2564f, -414f, 1290f, 147f) * vec4<f32>(-123f, 793f, 893f, -633f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, -625f, 171f, -212f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, -2274f, 640f, -461f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1194f, 642f, 1253f, 1091f), vec4<f32>(845f, 1000f, 555f, 330f), vec4<bool>(false, true, true, false))))))), Struct_1(var_0, !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, true), select(false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f * 720f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.zyx);
}

