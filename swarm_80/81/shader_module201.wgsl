struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<i32, 32>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-1057f, 256f, 310f, 376f), -16102i, -153f, vec3<f32>(314f, -698f, -2215f), 64753u), Struct_1(vec4<f32>(130f, 919f, -715f, -1000f), 2559i, 497f, vec3<f32>(-550f, -1730f, -478f), 4294967295u), Struct_1(vec4<f32>(1504f, -130f, -362f, 1210f), -1i, 1000f, vec3<f32>(-626f, -852f, 1879f), 106906u), Struct_1(vec4<f32>(-1874f, -1375f, -1290f, 1197f), -1i, 820f, vec3<f32>(-1090f, 887f, -1000f), 1u), Struct_1(vec4<f32>(151f, -798f, -2394f, -459f), 38004i, 1000f, vec3<f32>(1352f, 291f, -216f), 0u), Struct_1(vec4<f32>(582f, -439f, -2070f, -2065f), -1i, -785f, vec3<f32>(-1574f, 2108f, 171f), 0u), Struct_1(vec4<f32>(-349f, 1607f, 1342f, -1140f), i32(-2147483648), -847f, vec3<f32>(-364f, 761f, 172f), 83563u), Struct_1(vec4<f32>(1585f, 123f, -999f, 473f), 4729i, 162f, vec3<f32>(-261f, 243f, 1174f), 13564u), Struct_1(vec4<f32>(-770f, 418f, -968f, 618f), -26162i, -945f, vec3<f32>(853f, -519f, 1260f), 38920u), Struct_1(vec4<f32>(345f, 549f, -1020f, 705f), 4428i, 727f, vec3<f32>(907f, -1387f, -241f), 33102u), Struct_1(vec4<f32>(624f, 1272f, -875f, -943f), -21150i, -507f, vec3<f32>(-179f, 1282f, -418f), 73384u), Struct_1(vec4<f32>(-1344f, 321f, 1325f, 144f), i32(-2147483648), 576f, vec3<f32>(115f, 413f, -864f), 108801u), Struct_1(vec4<f32>(-1000f, 606f, 1000f, -214f), 24414i, 875f, vec3<f32>(177f, -1245f, 904f), 27418u), Struct_1(vec4<f32>(329f, -690f, 642f, 1184f), 32987i, -142f, vec3<f32>(-420f, -1000f, -672f), 4294967295u), Struct_1(vec4<f32>(-1000f, -2086f, 1000f, -1000f), 0i, 141f, vec3<f32>(-685f, 110f, 918f), 4294967295u), Struct_1(vec4<f32>(1000f, 1872f, -1311f, 303f), -21842i, 546f, vec3<f32>(1249f, 1071f, -206f), 0u), Struct_1(vec4<f32>(-1048f, -1018f, -360f, 1708f), i32(-2147483648), 158f, vec3<f32>(-857f, 189f, -2382f), 0u), Struct_1(vec4<f32>(178f, 143f, 536f, -244f), -1i, 1000f, vec3<f32>(367f, 738f, -765f), 30176u), Struct_1(vec4<f32>(463f, -1161f, 1388f, -693f), 0i, -627f, vec3<f32>(-332f, -440f, 844f), 57005u), Struct_1(vec4<f32>(-133f, -537f, 1122f, 1000f), 40939i, 319f, vec3<f32>(-704f, -375f, -643f), 33554u), Struct_1(vec4<f32>(124f, -181f, 573f, -590f), 27530i, -1303f, vec3<f32>(445f, -653f, 1549f), 0u), Struct_1(vec4<f32>(-2073f, 704f, 1000f, -1209f), 44499i, 532f, vec3<f32>(232f, 284f, -584f), 4294967295u), Struct_1(vec4<f32>(549f, -376f, 1625f, 368f), 1i, -1255f, vec3<f32>(1000f, -1122f, 2087f), 8178u), Struct_1(vec4<f32>(-1000f, -1209f, -1194f, -1000f), 1i, -729f, vec3<f32>(1371f, 1324f, -2420f), 1u), Struct_1(vec4<f32>(-1103f, -1000f, 942f, 228f), 2147483647i, -394f, vec3<f32>(1000f, -181f, 334f), 10508u), Struct_1(vec4<f32>(-1152f, 1700f, -300f, 793f), -1i, 2089f, vec3<f32>(-328f, 398f, 585f), 112298u), Struct_1(vec4<f32>(-268f, 2329f, -1000f, 814f), -13732i, -927f, vec3<f32>(-373f, -372f, 945f), 2326u), Struct_1(vec4<f32>(-821f, 508f, 1536f, -326f), 10038i, -1161f, vec3<f32>(-328f, 234f, -418f), 37859u), Struct_1(vec4<f32>(-822f, 837f, -593f, -337f), -35891i, 1488f, vec3<f32>(-3046f, -1877f, 1227f), 0u));

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 31804u);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(270f, 200f, 704f, -1360f), 18476i, 1488f, vec3<f32>(-1736f, -1210f, -938f), 11208u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 29>();
    var var_0 = vec4<i32>(-1i) * -(~abs(vec4<i32>(u_input.e.x, 1i, 17116i, arg_1.b)) << (vec4<u32>(~1u, 46491u, abs(u_input.d.x), firstLeadingBit(global0[_wgslsmith_index_u32(0u, 10u)])) % vec4<u32>(32u)));
    let var_1 = abs(1u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.a))), -_wgslsmith_mult_i32(~(~arg_1.b), _wgslsmith_add_i32(arg_1.b, global4.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1263f - 1374f) + arg_1.d.x) * _wgslsmith_f_op_f32(min(1612f, _wgslsmith_div_f32(arg_1.c, arg_1.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.zxz * arg_1.d) * arg_1.d) + global4.a.yzw)), ~abs(_wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), global0[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x, true), 10u)])));
    global3 = u_input.d.xz;
    return select(vec4<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)), var_1 >= global3.x, all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), all(vec3<bool>(true, select(false, false, true), all(vec3<bool>(false, true, true))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, 1422f > global4.d.x, true, any(vec3<bool>(false, false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), true | any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<u32, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(arg_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, -1384f, -816f, arg_1.a.x) - global4.a))))), arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.d.x, 182f, true)) * _wgslsmith_div_f32(global4.c, _wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-2346f, global4.a.x), -813f, _wgslsmith_f_op_f32(trunc(-1382f)))), ~63016u);
    var_0 = arg_1;
    let var_1 = select(arg_3.xxz, select(!(!arg_3.yyw), !vec3<bool>(true, true, all(arg_3.xzz)), !all(func_3(u_input.c.x, global2[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.c, -197f)) + _wgslsmith_f_op_f32(trunc(-280f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1371f + -1000f)))));
    var var_2 = abs(((~(-2147483647i) ^ max(u_input.b, var_0.b)) & (_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global3.x, 32u)], 0i) >> (7196u % 32u))) | ~firstTrailingBit(0i));
    return vec3<bool>(func_3(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(8963i, -2147483647i, arg_1.b, global4.b), vec4<i32>(0i, 46503i, 10515i, arg_2.x))), global2[_wgslsmith_index_u32(~(~(global0[_wgslsmith_index_u32(arg_0, 10u)] & u_input.d.x)), 29u)]).x, func_3(-(~global1[_wgslsmith_index_u32(u_input.a, 32u)]), arg_1).x || select(true, !(var_1.x != arg_3.x), _wgslsmith_dot_vec4_i32(arg_2, arg_2) <= (i32(-1i) * -2147483647i)), all(arg_3));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = select(~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, global4.e), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(1099u, 10u)], global0[_wgslsmith_index_u32(global4.e, 10u)], global4.e), vec4<u32>(global0[_wgslsmith_index_u32(global4.e, 10u)], global4.e, 1u, u_input.d.x))), _wgslsmith_mod_u32(global4.e, 28209u)), select(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(global4.e, 10u)]), vec3<u32>(global3.x, u_input.d.x, global3.x), vec3<bool>(true, false, true)), ~vec3<u32>(global0[_wgslsmith_index_u32(global4.e, 10u)], global0[_wgslsmith_index_u32(u_input.d.x, 10u)], global4.e)), ~(vec3<u32>(4741u, 0u, 41394u) ^ vec3<u32>(1u, global3.x, global4.e)) & u_input.d, any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 32u)] <= u_input.c.x, true, true))), !select(func_2(reverseBits(1u), Struct_1(vec4<f32>(1270f, global4.c, global4.d.x, global4.c), 7621i, 2680f, vec3<f32>(arg_0, global4.c, arg_0), global0[_wgslsmith_index_u32(global4.e, 10u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global4.b, 0i, -16121i), vec4<i32>(u_input.e.x, arg_1, global4.b, 1i)), vec4<bool>(false, true, false, false)), func_3(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 32u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4294967295u, global3.x), 29u)]).zzy, func_3(-u_input.c.x, Struct_1(vec4<f32>(arg_0, global4.a.x, arg_0, 750f), 1i, global4.c, global4.d, u_input.d.x)).xxw));
    global2 = array<Struct_1, 29>();
    global1 = array<i32, 32>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(617f, global4.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d.x * 1060f) * _wgslsmith_f_op_f32(-global4.c))))));
    global3 = reverseBits(max(min(var_0.xz, ~countOneBits(vec2<u32>(3549u, 4294967295u))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(20216u, u_input.a), ~u_input.d.zz)));
    return Struct_1(vec4<f32>(global4.c, _wgslsmith_f_op_f32(ceil(802f)), global4.d.x, -1475f), arg_1, arg_0, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1426f, global4.c))), global4.a.zzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global4.a.wxw)) - global4.d)), global4.e);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(select(~global4.e, abs(select(global3.x, 5767u, false)) << (4294967295u % 32u), true), 10u)], 1u);
    let var_1 = u_input.a;
    let var_2 = vec4<bool>(false, var_1 <= firstLeadingBit(_wgslsmith_mod_u32(1u << (arg_2.e % 32u), ~global3.x)), true, all(vec3<bool>(true, true, true)));
    let var_3 = Struct_1(vec4<f32>(1322f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(239f + -521f)))), _wgslsmith_f_op_f32(643f * _wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -458f)), ~60767i, 592f, vec3<f32>(global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c)))), -727f), 0u);
    let var_4 = global1[_wgslsmith_index_u32(0u, 32u)];
    return select(vec4<bool>(any(var_2.xxx), var_2.x, true || select(all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), false, var_2.x), false), !select(var_2, !var_2, arg_2.c <= global4.d.x), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, arg_1 != arg_0.x), var_2, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    global3 = max(u_input.d.yy, _wgslsmith_div_vec2_u32(u_input.d.yz, vec2<u32>(3331u, min(u_input.d.x, 77213u)))) >> (~u_input.d.zx % vec2<u32>(32u));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global4.a, global4.a, func_4(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.e.xy, vec2<i32>(u_input.e.x, u_input.b)), -18660i, func_1(global4.d.x, u_input.c.x)))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(~global0[_wgslsmith_index_u32(4294967295u, 10u)]), 10u)], 32u)] >> (89550u % 32u), -790f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.d * _wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, 1363f, global4.a.x), global4.d)) + vec3<f32>(1033f, -203f, _wgslsmith_f_op_f32(827f - global4.c))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - 1f), _wgslsmith_f_op_f32(f32(-1f) * -547f), global4.a.x)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(select(global3.x, global4.e, false), global0[_wgslsmith_index_u32(47493u, 10u)] >> (8810u % 32u), ~u_input.d.x, _wgslsmith_mod_u32(global4.e, global4.e)), reverseBits(~vec4<u32>(95u, u_input.d.x, 4294967295u, global3.x))), _wgslsmith_mod_u32(43560u, (global0[_wgslsmith_index_u32(global4.e, 10u)] | global4.e) & ~global0[_wgslsmith_index_u32(28915u, 10u)]), true));
    let var_1 = true;
    global4 = Struct_1(global4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(10564i | ~global4.b, _wgslsmith_add_i32(global4.b, global1[_wgslsmith_index_u32(~2219u, 32u)]), 1i, u_input.b), _wgslsmith_mult_vec4_i32(min(-vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(global3.x, 32u)], global4.b, global4.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.e.x, global4.b), vec4<i32>(global1[_wgslsmith_index_u32(0u, 32u)], var_0.b, global4.b, global1[_wgslsmith_index_u32(var_0.e, 32u)]))), -(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(var_0.e, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(19618u, 32u)]) | vec4<i32>(-13639i, global1[_wgslsmith_index_u32(var_0.e, 32u)], global4.b, 1i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))))))), _wgslsmith_f_op_vec3_f32(trunc(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.d.x))), _wgslsmith_sub_i32(-10903i, u_input.b >> (16745u % 32u))).d)), reverseBits(41010u) ^ (global0[_wgslsmith_index_u32(var_0.e | ~var_0.e, 10u)] | 1u));
    let var_2 = Struct_1(var_0.a, -41126i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, var_0.d.x))), _wgslsmith_f_op_f32(-global4.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.d), _wgslsmith_div_vec3_f32(var_0.d, global4.a.wxx)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-891f, var_0.d.x, 601f))))), _wgslsmith_mod_u32(u_input.a, abs(~4294967295u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), global1[_wgslsmith_index_u32(31620u, 32u)], var_2.d.x, _wgslsmith_f_op_vec3_f32(-var_0.d), _wgslsmith_div_u32(global4.e, ~u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(948f, _wgslsmith_f_op_f32(abs(894f)), global4.d.x, var_2.c), var_2.c, vec4<u32>(~(global4.e ^ countOneBits(var_2.e)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.e, var_0.e) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4.e), vec2<u32>(global4.e, var_3.e)) % 32u), (var_2.e ^ var_0.e) ^ global0[_wgslsmith_index_u32(~var_0.e, 10u)]), ~_wgslsmith_mod_u32(reverseBits(76564u), ~1113u), 27557u), 2089f);
}

