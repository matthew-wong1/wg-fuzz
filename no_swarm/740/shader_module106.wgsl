struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(true, false, 15027i, vec4<f32>(1753f, 1081f, 895f, -1019f)), Struct_1(true, false, -17383i, vec4<f32>(-713f, -791f, -798f, -779f)), vec3<u32>(4294967295u, 19316u, 1u)), Struct_2(Struct_1(true, true, -24528i, vec4<f32>(-614f, -1042f, -668f, 135f)), Struct_1(false, false, -29252i, vec4<f32>(-2050f, 428f, -545f, -1698f)), vec3<u32>(4948u, 1u, 1u)), Struct_2(Struct_1(false, true, 2147483647i, vec4<f32>(1421f, -491f, 589f, 213f)), Struct_1(false, true, -21853i, vec4<f32>(-626f, 261f, 1013f, -810f)), vec3<u32>(1u, 1u, 4294967295u)), Struct_2(Struct_1(false, true, 9473i, vec4<f32>(-428f, -478f, 483f, 566f)), Struct_1(true, true, 37324i, vec4<f32>(-1268f, 779f, 1781f, 1000f)), vec3<u32>(1u, 15156u, 17501u)), Struct_2(Struct_1(false, false, i32(-2147483648), vec4<f32>(-369f, -1114f, 686f, -868f)), Struct_1(false, false, -1i, vec4<f32>(701f, 1000f, 529f, 435f)), vec3<u32>(1u, 4294967295u, 72811u)), Struct_2(Struct_1(true, false, i32(-2147483648), vec4<f32>(989f, 1031f, -346f, 1090f)), Struct_1(false, false, 31037i, vec4<f32>(-809f, 100f, 1649f, -1616f)), vec3<u32>(14017u, 67176u, 0u)), Struct_2(Struct_1(false, false, 2147483647i, vec4<f32>(334f, 184f, 138f, 2290f)), Struct_1(true, false, 19538i, vec4<f32>(477f, 301f, -1000f, 2110f)), vec3<u32>(4294967295u, 120997u, 0u)), Struct_2(Struct_1(true, false, -35127i, vec4<f32>(376f, -703f, 460f, 797f)), Struct_1(false, false, 3575i, vec4<f32>(-1000f, 1902f, 1218f, 1593f)), vec3<u32>(4294967295u, 925u, 1u)), Struct_2(Struct_1(false, true, 22894i, vec4<f32>(663f, -921f, 584f, -1030f)), Struct_1(false, true, 42090i, vec4<f32>(-1109f, -405f, 555f, 333f)), vec3<u32>(72560u, 22916u, 4294967295u)), Struct_2(Struct_1(true, true, 23096i, vec4<f32>(213f, 482f, 151f, -120f)), Struct_1(false, false, 1i, vec4<f32>(812f, -433f, -964f, -182f)), vec3<u32>(4294967295u, 21421u, 42858u)), Struct_2(Struct_1(false, false, 6095i, vec4<f32>(-1000f, 1485f, -1000f, -177f)), Struct_1(false, false, 3034i, vec4<f32>(-1000f, -1187f, -1221f, -759f)), vec3<u32>(4294967295u, 0u, 11521u)), Struct_2(Struct_1(false, false, 2147483647i, vec4<f32>(353f, 1257f, -475f, 411f)), Struct_1(true, true, -1i, vec4<f32>(-187f, -651f, -586f, 1534f)), vec3<u32>(20159u, 967u, 25493u)), Struct_2(Struct_1(true, false, 2147483647i, vec4<f32>(-998f, -551f, 406f, -187f)), Struct_1(false, false, -7040i, vec4<f32>(-1333f, 1502f, -203f, 183f)), vec3<u32>(0u, 5617u, 0u)), Struct_2(Struct_1(true, true, 17048i, vec4<f32>(1000f, -1069f, -268f, 420f)), Struct_1(false, true, i32(-2147483648), vec4<f32>(493f, 227f, -973f, -577f)), vec3<u32>(26964u, 0u, 43952u)), Struct_2(Struct_1(false, true, -4529i, vec4<f32>(-306f, -901f, 694f, -2452f)), Struct_1(false, true, 1i, vec4<f32>(-685f, 367f, 2376f, 1000f)), vec3<u32>(0u, 34952u, 94215u)), Struct_2(Struct_1(true, true, 1i, vec4<f32>(-185f, -893f, -685f, 271f)), Struct_1(true, true, 2147483647i, vec4<f32>(426f, 673f, -777f, 681f)), vec3<u32>(21324u, 0u, 25454u)), Struct_2(Struct_1(false, false, -1i, vec4<f32>(995f, 936f, -343f, -545f)), Struct_1(false, false, 6321i, vec4<f32>(1329f, -1221f, 1153f, -1436f)), vec3<u32>(4294967295u, 58319u, 4294967295u)), Struct_2(Struct_1(false, true, -19861i, vec4<f32>(186f, 416f, 1397f, 872f)), Struct_1(false, false, -1i, vec4<f32>(2443f, 706f, -744f, -488f)), vec3<u32>(1u, 74733u, 26488u)), Struct_2(Struct_1(false, true, i32(-2147483648), vec4<f32>(998f, -2389f, -1415f, 635f)), Struct_1(false, true, -1i, vec4<f32>(292f, 1087f, -361f, 697f)), vec3<u32>(0u, 3967u, 4294967295u)));

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global2: array<Struct_4, 21>;

var<private> global3: array<f32, 18> = array<f32, 18>(-376f, 2743f, -1556f, 233f, -484f, 199f, -294f, -1159f, 465f, 139f, -1027f, -863f, -778f, 1655f, -165f, -452f, -146f, 1000f);

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = !global4.yzw;
    var_0 = Struct_2(Struct_1(true, global4.x || (10791u == _wgslsmith_add_u32(var_0.c.x, var_0.c.x)), _wgslsmith_add_i32(-var_0.b.c, var_0.a.c), vec4<f32>(-282f, 215f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(511f)), -120f)), var_0.a.d.x)), Struct_1(any(!vec2<bool>(var_0.b.a, global4.x)), false, global1.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.a.d)))), vec3<u32>(var_0.c.x, _wgslsmith_add_u32(firstTrailingBit(var_0.c.x >> (10873u % 32u)), 3493u), 12256u));
    global1 = firstLeadingBit(u_input.d);
    var var_2 = select(!vec4<bool>(true, true, !(var_0.b.c == 1i), var_0.a.a), select(!select(!vec4<bool>(false, var_0.a.a, true, true), select(vec4<bool>(true, var_1.x, global4.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), var_1.x), vec4<bool>(global4.x, var_0.a.a, var_1.x, false)), select(vec4<bool>(true, true, true && global4.x, 829f <= var_0.b.d.x), vec4<bool>(u_input.b.x > 1u, true, 49306u < var_0.c.x, true), any(vec2<bool>(var_1.x, false))), vec4<bool>(true, var_1.x, true, false)), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)) != true, select(any(global4.xyy), !(global4.x || global4.x), false)));
    return vec2<i32>(-1i, -38156i);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_4, 21>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x), arg_2.d.x))), arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f * _wgslsmith_f_op_f32(sign(arg_2.d.x))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_f32(f32(-1f) * -473f)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 18u)])))), -1391f)));
    global0 = array<Struct_2, 19>();
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(func_3(), _wgslsmith_div_vec2_i32(-u_input.d, select(u_input.d, u_input.d, true))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.d.x, 23404i, 25550i, -827i) & vec4<i32>(arg_2.c, 2147483647i, global1.x, arg_2.c)), vec4<i32>(1i, 36691i >> (u_input.a % 32u), 8466i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), global3[_wgslsmith_index_u32(u_input.c, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f))))), _wgslsmith_add_u32(u_input.c, firstTrailingBit(33746u)));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = u_input.a;
    global2 = array<Struct_4, 21>();
    let var_1 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(0i | arg_1.b.c), abs(arg_1.b.c) & -44564i), u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(47154u, 18u)])), -259f, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x, 0u, u_input.a, 31279u), vec4<u32>(1u, 1u, u_input.a, 45880u)), ~vec4<u32>(arg_1.c.x, u_input.c, u_input.c, u_input.c))), 18u)]), 1u);
    var var_2 = arg_0;
    let var_3 = arg_1;
    return (func_2(!select(vec4<bool>(true, arg_1.a.a, true, var_3.a.a), vec4<bool>(var_2.a, var_2.a, true, false), vec4<bool>(arg_0.a, global4.x, var_2.b, global4.x)), var_2.d.x, var_3.a).c >> ((4294967295u | ~min(var_3.c.x, 4294967295u)) % 32u)) != func_2(select(select(select(vec4<bool>(var_3.b.a, true, arg_1.b.a, arg_1.a.a), vec4<bool>(true, arg_1.b.a, true, var_3.a.a), true), !vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), true), select(select(vec4<bool>(var_2.a, false, false, arg_0.b), vec4<bool>(var_3.b.a, var_3.b.b, true, arg_0.a), vec4<bool>(true, true, arg_0.a, false)), select(vec4<bool>(var_3.a.b, true, true, var_2.b), vec4<bool>(arg_0.a, arg_1.b.a, true, global4.x), vec4<bool>(arg_1.b.b, var_2.a, false, true)), select(vec4<bool>(arg_0.a, true, arg_1.a.a, arg_0.a), vec4<bool>(true, var_2.b, true, false), var_3.b.b)), vec4<bool>(!var_3.b.b, arg_1.a.b, true, any(vec4<bool>(false, var_2.b, true, var_3.b.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))), func_2(select(vec4<bool>(true, var_3.b.b, true, true), !vec4<bool>(var_2.b, var_3.b.a, arg_0.a, false), vec4<bool>(arg_0.b, true, arg_1.a.b, true)), 203f, Struct_1(false, arg_1.b.a, _wgslsmith_mod_i32(var_3.b.c, -1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1780f, arg_0.d.x, -289f, var_3.b.d.x))))).c;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global4 = !vec4<bool>(global4.x, func_4(func_2(vec4<bool>(global4.x, global4.x, global4.x, global4.x), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(585u, 18u)])), Struct_1(global4.x, global4.x, 0i, vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 18u)], global3[_wgslsmith_index_u32(arg_0.x, 18u)], -1761f, 1240f))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, arg_0.x), 19u)]), global4.x, false);
    let var_0 = arg_0.x >> (~u_input.c % 32u);
    var var_1 = select(vec4<i32>(32140i, -35725i, -19005i, -1695i), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 781i, 2147483647i, global1.x), vec4<i32>(u_input.d.x, global1.x, u_input.d.x, 1i)), vec4<i32>(37502i, -28908i, 0i, u_input.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 1i, u_input.d.x, global1.x), vec4<i32>(49448i, 1i, 0i, u_input.d.x))), ~vec4<i32>(1i, global1.x, global1.x, -2147483647i) & vec4<i32>(1i, global1.x, u_input.d.x, global1.x), !global4.x), !vec4<bool>(true, 39819i == global1.x, any(vec3<bool>(global4.x, global4.x, global4.x)), true | global4.x)) & vec4<i32>(~global1.x, _wgslsmith_mult_i32(~max(1i, u_input.d.x), ~_wgslsmith_div_i32(-13352i, u_input.d.x)), 80i >> (~(~0u) % 32u), func_3().x);
    var var_2 = -vec4<i32>(u_input.d.x, 2364i, i32(-1i) * -global1.x, -2191i);
    var var_3 = Struct_3(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.wx, select(vec2<i32>(1i, u_input.d.x) << (arg_0.wy % vec2<u32>(32u)), vec2<i32>(global1.x, var_1.x), global4.wy), vec2<i32>(~17871i, 2147483647i)), -vec2<i32>(var_2.x, -2147483647i) ^ var_1.zx, vec2<i32>(countOneBits(var_1.x), firstLeadingBit(global1.x) ^ _wgslsmith_mult_i32(global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-689f)))), global3[_wgslsmith_index_u32(u_input.c, 18u)], _wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-709f, global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(37157u, 18u)]), vec3<f32>(923f, global3[_wgslsmith_index_u32(arg_0.x, 18u)], 518f)))), -_wgslsmith_sub_i32(51780i, -1i) >= var_2.x)), ~(~(~(~45436u))));
    return reverseBits(reverseBits(0i));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    let var_0 = firstTrailingBit(abs(vec3<u32>(firstTrailingBit(~arg_1.b), 33181u, ~arg_2.c)));
    let var_1 = vec3<i32>(-reverseBits(u_input.d.x), _wgslsmith_mod_i32(reverseBits(arg_0.x), u_input.d.x), u_input.d.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.c | arg_2.c, 18u)] + 1294f), _wgslsmith_f_op_f32(f32(-1f) * -1440f), arg_2.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(arg_2.c, 18u)]))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_f_op_f32(step(arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_div_f32(arg_2.b.x, -1565f)), vec4<f32>(global3[_wgslsmith_index_u32(arg_1.b, 18u)], _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(17042u, 18u)])), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(76817u, 18u)]))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), global3[_wgslsmith_index_u32(~firstTrailingBit(7791u), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-333f))), arg_2.b.x)));
    var var_3 = countOneBits(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 1i, var_1.x, global1.x), vec4<i32>(global1.x, global1.x, -17790i, -33901i)), -select(vec4<i32>(-1i, 1i, -13606i, arg_0.x), vec4<i32>(1i, 30037i, 0i, var_1.x), arg_3))) & _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(2147483647i, -2147483647i, arg_2.a.x, u_input.d.x), vec4<i32>(-3477i, global1.x, arg_2.a.x, 1708i)) >> (_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(arg_2.c, u_input.b.x, var_0.x, 4294967295u)) % vec4<u32>(32u)), select(vec4<i32>(-1i, 1i, 0i, arg_0.x) >> (u_input.b % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-6501i, -1i, -1i, 8632i)), !vec4<bool>(true, arg_3, arg_3, false))), -(abs(vec4<i32>(-2336i, 1i, var_1.x, arg_0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, 41173u, arg_1.b, arg_2.c), vec4<u32>(1u, arg_1.b, 1u, 4294967295u), u_input.b) % vec4<u32>(32u))));
    var var_4 = func_2(vec4<bool>(global4.x, func_2(vec4<bool>(u_input.a < u_input.a, true, func_2(vec4<bool>(arg_3, global4.x, false, true), arg_2.b.x, Struct_1(true, false, 5215i, vec4<f32>(1422f, -370f, arg_2.b.x, var_2.x))).b, any(vec4<bool>(global4.x, true, true, global4.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 18u)]))), func_2(vec4<bool>(true, true, false, true), -917f, func_2(vec4<bool>(false, global4.x, false, true), global3[_wgslsmith_index_u32(62379u, 18u)], Struct_1(global4.x, false, -24778i, vec4<f32>(arg_2.b.x, 964f, 1071f, -1032f))))).a, arg_3, arg_3), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.b, 18u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.c, 18u)]) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(floor(arg_2.b.x)))))), func_2(!select(!vec4<bool>(global4.x, false, arg_3, true), select(vec4<bool>(arg_3, global4.x, arg_3, false), vec4<bool>(true, arg_3, false, global4.x), true), true), 846f, func_2(select(vec4<bool>(false, global4.x, global4.x, false), select(vec4<bool>(arg_3, false, true, true), vec4<bool>(arg_3, false, false, global4.x), vec4<bool>(arg_3, arg_3, false, arg_3)), vec4<bool>(true, arg_3, global4.x, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - -827f))), Struct_1(true, 2147483647i == global1.x, -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 209f, -1000f, global3[_wgslsmith_index_u32(var_0.x, 18u)]) + var_2)))));
    return select(select(!select(vec4<bool>(var_4.b, false, false, false), !vec4<bool>(global4.x, true, false, var_4.a), vec4<bool>(arg_3, var_4.a, false, arg_3)), select(select(select(vec4<bool>(true, true, global4.x, false), vec4<bool>(true, arg_3, true, var_4.b), vec4<bool>(arg_3, false, arg_3, true)), vec4<bool>(var_4.b, global4.x, true, false), !vec4<bool>(true, false, global4.x, false)), !(!vec4<bool>(var_4.a, global4.x, global4.x, global4.x)), arg_3), true), !vec4<bool>(any(global4.yww), !global4.x == true, var_4.a, true), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(firstLeadingBit(~(-2147483647i)), firstTrailingBit(u_input.d.x | -_wgslsmith_add_i32(u_input.d.x, global1.x)));
    let var_0 = 4294967295u;
    let var_1 = select(!(!select(vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(true, true, global4.x, global4.x), true)), func_5(vec2<i32>(func_1(vec4<u32>(u_input.c, 0u, u_input.b.x, u_input.c)), abs(~11912i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~1u, abs(0u)), min(4294967295u, u_input.c) ^ 31356u), 21u)], Struct_3(u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1083f, 1164f, global3[_wgslsmith_index_u32(0u, 18u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(16209u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(var_0, 18u)]))), var_0), true), vec4<bool>(true, true, !all(vec4<bool>(global4.x, global4.x, false, true)) == (_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 18u)]) != _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24728u, 18u)] - 1076f)), global4.x));
    let var_2 = Struct_1(func_5(-select(vec2<i32>(u_input.d.x, 12270i), u_input.d, vec2<bool>(var_1.x, true)), global2[_wgslsmith_index_u32(1483u, 21u)], Struct_3(-vec2<i32>(global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-908f, -1534f, global3[_wgslsmith_index_u32(0u, 18u)])), ~0u), false).x || false, -(reverseBits(global1.x) >> (_wgslsmith_mult_u32(1u, 1u) % 32u)) < firstLeadingBit(global1.x), -(-(~u_input.d.x) & -44805i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(var_0, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], 258f))))));
    global2 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~select(_wgslsmith_div_u32(9195u, 1u), u_input.b.x, var_1.x), min(_wgslsmith_mult_i32(func_3().x, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c, u_input.d.x), vec2<i32>(u_input.d.x, global1.x))), 0i));
}

