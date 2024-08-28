struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<i32, 1> = array<i32, 1>(11907i);

var<private> global1: vec2<f32> = vec2<f32>(251f, 684f);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(134f, 1041f, 2341f), i32(-2147483648), vec3<u32>(1u, 21455u, 8795u), false), Struct_1(vec3<f32>(-1000f, -419f, -395f), 23022i, vec3<u32>(4020u, 1u, 25992u), true), Struct_1(vec3<f32>(-1672f, 826f, 1000f), 2147483647i, vec3<u32>(27667u, 0u, 79317u), true), Struct_1(vec3<f32>(580f, 315f, -1000f), 5000i, vec3<u32>(0u, 35391u, 10876u), true), Struct_1(vec3<f32>(590f, -351f, 350f), 1i, vec3<u32>(1u, 0u, 49232u), true), Struct_1(vec3<f32>(-524f, -1442f, 1660f), 1i, vec3<u32>(1u, 4294967295u, 35337u), false), Struct_1(vec3<f32>(1072f, -561f, 137f), i32(-2147483648), vec3<u32>(66288u, 49745u, 4294967295u), true), Struct_1(vec3<f32>(-445f, -277f, -600f), 2147483647i, vec3<u32>(18016u, 63725u, 0u), true), Struct_1(vec3<f32>(280f, 386f, 787f), -39805i, vec3<u32>(0u, 4294967295u, 4294967295u), false), Struct_1(vec3<f32>(-148f, 1138f, -358f), 64618i, vec3<u32>(0u, 25130u, 0u), true), Struct_1(vec3<f32>(782f, 1995f, 737f), 0i, vec3<u32>(47378u, 0u, 1u), true), Struct_1(vec3<f32>(-350f, -828f, 613f), 0i, vec3<u32>(32040u, 41894u, 4294967295u), false), Struct_1(vec3<f32>(695f, -1890f, -1229f), 2147483647i, vec3<u32>(4294967295u, 1u, 43550u), false), Struct_1(vec3<f32>(-320f, -745f, -1377f), -76251i, vec3<u32>(0u, 66882u, 21730u), true), Struct_1(vec3<f32>(-147f, -1811f, -664f), 1i, vec3<u32>(53094u, 0u, 0u), false));

var<private> global3: array<vec2<bool>, 28>;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<f32>(-594f, -821f, -1029f), -843i, vec3<u32>(1u, 1u, 4294967295u), false), Struct_1(vec3<f32>(-170f, 129f, 802f), -46336i, vec3<u32>(20494u, 1u, 45836u), true), Struct_1(vec3<f32>(1327f, 513f, 1475f), 2147483647i, vec3<u32>(4196u, 1u, 1u), true), Struct_1(vec3<f32>(-887f, 695f, -682f), -1i, vec3<u32>(0u, 10726u, 46356u), false), Struct_1(vec3<f32>(290f, 1199f, 825f), 0i, vec3<u32>(0u, 4294967295u, 72911u), false), Struct_1(vec3<f32>(-303f, 1605f, 1564f), 0i, vec3<u32>(0u, 1u, 3155u), true), Struct_1(vec3<f32>(1281f, -601f, -879f), 1i, vec3<u32>(15134u, 20066u, 1u), false), Struct_1(vec3<f32>(751f, -1442f, -440f), 0i, vec3<u32>(1u, 19244u, 0u), true), Struct_1(vec3<f32>(681f, 133f, 358f), -36792i, vec3<u32>(30350u, 4294967295u, 9627u), true), Struct_1(vec3<f32>(-154f, 212f, 330f), -2431i, vec3<u32>(4294967295u, 19192u, 68554u), true), Struct_1(vec3<f32>(-1550f, -683f, 511f), 17499i, vec3<u32>(4294967295u, 1u, 27174u), true), Struct_1(vec3<f32>(781f, 1241f, 1144f), -22483i, vec3<u32>(2374u, 86997u, 27004u), false), Struct_1(vec3<f32>(979f, 762f, -1370f), 10525i, vec3<u32>(75194u, 4294967295u, 87045u), true), Struct_1(vec3<f32>(-1539f, -128f, 1078f), i32(-2147483648), vec3<u32>(30329u, 11347u, 91798u), true), Struct_1(vec3<f32>(-1000f, 320f, 528f), 27295i, vec3<u32>(0u, 0u, 1u), true), Struct_1(vec3<f32>(562f, -227f, 672f), 6335i, vec3<u32>(4294967295u, 27516u, 8292u), true), Struct_1(vec3<f32>(-635f, -2194f, 1000f), 28140i, vec3<u32>(50254u, 0u, 35906u), true), Struct_1(vec3<f32>(1501f, -526f, 537f), 5677i, vec3<u32>(8252u, 2296u, 1u), true), Struct_1(vec3<f32>(1048f, 721f, 772f), 1i, vec3<u32>(33484u, 7588u, 39427u), true), Struct_1(vec3<f32>(542f, 426f, 1804f), -10367i, vec3<u32>(16728u, 25954u, 23149u), false), Struct_1(vec3<f32>(896f, -1000f, 158f), 14424i, vec3<u32>(67031u, 4369u, 4294967295u), false), Struct_1(vec3<f32>(1851f, 880f, 1062f), -22962i, vec3<u32>(1u, 0u, 4294967295u), true), Struct_1(vec3<f32>(1351f, -465f, -1000f), i32(-2147483648), vec3<u32>(1u, 101415u, 19978u), false), Struct_1(vec3<f32>(884f, 137f, -671f), 2909i, vec3<u32>(37975u, 41562u, 4294967295u), true), Struct_1(vec3<f32>(-1556f, -730f, 589f), 2147483647i, vec3<u32>(4294967295u, 4294967295u, 1u), true), Struct_1(vec3<f32>(1457f, 1742f, -1000f), -12381i, vec3<u32>(1u, 23100u, 22491u), false), Struct_1(vec3<f32>(-1558f, 310f, -163f), 41961i, vec3<u32>(45803u, 1u, 53936u), true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.a.xz)))) * arg_1.a.xz);
    global0 = array<i32, 1>();
    var var_0 = arg_2;
    let var_1 = vec3<f32>(arg_1.a.x, -1231f, 661f);
    global3 = array<vec2<bool>, 28>();
    return select(!select(vec4<bool>(!arg_0.x, global1.x != arg_1.a.x, all(vec2<bool>(arg_1.d, false)), true), !select(vec4<bool>(arg_1.d, true, false, arg_0.x), vec4<bool>(arg_1.d, arg_1.d, false, false), false), arg_1.d), !vec4<bool>(!(false || arg_0.x), firstTrailingBit(arg_1.c.x) <= 4294967295u, arg_0.x, all(select(vec2<bool>(true, true), vec2<bool>(arg_1.d, true), false))), arg_1.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    global3 = array<vec2<bool>, 28>();
    var var_0 = select(!func_3(!select(global3[_wgslsmith_index_u32(19076u, 28u)], vec2<bool>(true, true), arg_2.d), global4[_wgslsmith_index_u32(arg_2.c.x, 27u)], u_input.d.xxz), !(!(!(!vec4<bool>(arg_2.d, true, arg_2.d, false)))), min(~(~u_input.a.x), _wgslsmith_clamp_u32(arg_2.c.x, u_input.a.x, arg_2.c.x) >> (4294967295u % 32u)) < ~((u_input.a.x | arg_2.c.x) << (3684u % 32u)));
    var var_1 = arg_2.d;
    var var_2 = u_input.d.yz;
    var var_3 = u_input.d;
    return !vec4<bool>(true, var_0.x, func_3(func_3(!vec2<bool>(true, var_0.x), Struct_1(arg_2.a, u_input.d.x, vec3<u32>(1u, u_input.a.x, arg_2.c.x), false), _wgslsmith_sub_vec3_i32(var_3.www, var_3.wzx)).yw, global4[_wgslsmith_index_u32(~arg_2.c.x, 27u)], vec3<i32>(countOneBits(var_3.x), 2147483647i, arg_2.b)).x, false);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec4<f32> {
    let var_0 = any(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3, arg_1.x, -1273f, -1000f), vec4<f32>(-1000f, -893f, global1.x, arg_2)))) - vec4<f32>(arg_2, _wgslsmith_f_op_f32(sign(-2510f)), -1360f, 1713f)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 14930u, 47002u)), u_input.a.x), 27u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1310f, global1.x, 1000f) + arg_1) + vec3<f32>(arg_1.x, arg_3, global1.x))))));
    global2 = array<Struct_1, 15>();
    global1 = arg_1.zx;
    let var_1 = arg_0;
    let var_2 = ~4294967295u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1942f, arg_1.x, -589f, -824f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, -460f, -165f, -1673f))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))), -937f, _wgslsmith_div_f32(global1.x, 368f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-392f - _wgslsmith_div_f32(arg_2, arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1113f, _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(global1.x, global1.x)), vec2<f32>(711f, global1.x))), 0i != global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u)]))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(func_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 213f, global1.x)))), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x))))))));
    let var_1 = var_0.x;
    var var_2 = global4[_wgslsmith_index_u32(~4294967295u, 27u)];
    var var_3 = vec2<i32>(1i, 11373i);
    var_2 = Struct_1(vec3<f32>(-938f, var_0.x, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f), global1.x))), u_input.b, max(_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(var_2.c, vec3<u32>(68508u, 89572u, 0u))), ~firstLeadingBit(vec3<u32>(36470u, 22496u, 81642u))), vec3<u32>(52341u, reverseBits(var_2.c.x | 39365u), firstTrailingBit(var_2.c.x >> (var_2.c.x % 32u)))), !(!(var_0.x == global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.wyy));
}

