struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(1u, vec4<f32>(-1335f, -695f, 1081f, -830f)), Struct_3(14683u, vec4<f32>(-1138f, 1219f, -412f, 1182f)), Struct_3(12935u, vec4<f32>(780f, -1109f, -528f, 1000f)), Struct_3(10409u, vec4<f32>(1326f, -1000f, -177f, -1162f)), Struct_3(4294967295u, vec4<f32>(1098f, -519f, -605f, 145f)), Struct_3(1u, vec4<f32>(812f, 1000f, 1028f, 806f)), Struct_3(4294967295u, vec4<f32>(1123f, 2170f, -1000f, 839f)), Struct_3(144540u, vec4<f32>(-1000f, -1388f, 234f, -1081f)), Struct_3(41564u, vec4<f32>(1000f, 1453f, 949f, -542f)), Struct_3(0u, vec4<f32>(-543f, -433f, 140f, 989f)), Struct_3(4294967295u, vec4<f32>(-515f, 540f, -218f, 796f)), Struct_3(4294967295u, vec4<f32>(-1000f, 1438f, 1013f, -231f)), Struct_3(1448u, vec4<f32>(1087f, -642f, 164f, 232f)), Struct_3(36369u, vec4<f32>(1000f, 217f, 349f, 353f)), Struct_3(153921u, vec4<f32>(-1186f, 149f, 562f, 726f)), Struct_3(4294967295u, vec4<f32>(1955f, -1056f, 122f, 954f)));

var<private> global1: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(-22185i, 2554i, 1i, -17895i), vec3<i32>(-56950i, -34145i, -1i)), Struct_1(vec4<i32>(-10281i, -77157i, 1i, -1i), vec3<i32>(0i, -1797i, 0i)), Struct_1(vec4<i32>(38287i, 1i, 2147483647i, -22774i), vec3<i32>(-1i, 2147483647i, -15704i)), Struct_1(vec4<i32>(-58781i, -21331i, 74044i, 11421i), vec3<i32>(10324i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(0i, 7473i, 33827i, 2147483647i), vec3<i32>(2147483647i, 0i, 0i)), Struct_1(vec4<i32>(15014i, 0i, 1i, 27575i), vec3<i32>(0i, 88518i, -1i)), Struct_1(vec4<i32>(-49471i, i32(-2147483648), 2147483647i, -41873i), vec3<i32>(2147483647i, 2147483647i, 10913i)), Struct_1(vec4<i32>(0i, 26730i, 1i, -17546i), vec3<i32>(5130i, 0i, 7455i)), Struct_1(vec4<i32>(-1i, 0i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), 707i, 34859i)), Struct_1(vec4<i32>(-1i, 20715i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-16824i, 24071i, 1561i)), Struct_1(vec4<i32>(1i, 0i, 42829i, i32(-2147483648)), vec3<i32>(-37666i, -56362i, 16352i)), Struct_1(vec4<i32>(59964i, 41521i, 24446i, 1i), vec3<i32>(-27864i, 15026i, -15253i)), Struct_1(vec4<i32>(-55844i, 50314i, -1i, 8164i), vec3<i32>(2147483647i, 6262i, 15810i)), Struct_1(vec4<i32>(31963i, -70293i, -24829i, 5206i), vec3<i32>(0i, 1i, -1i)), Struct_1(vec4<i32>(2147483647i, -1i, 1i, 12903i), vec3<i32>(14477i, -1i, 28615i)), Struct_1(vec4<i32>(-8325i, -1i, 1i, 1i), vec3<i32>(2147483647i, -39489i, i32(-2147483648))), Struct_1(vec4<i32>(0i, 1i, 1924i, 10080i), vec3<i32>(2147483647i, -8805i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 35185i, 10850i, -2634i), vec3<i32>(0i, -5759i, 16270i)), Struct_1(vec4<i32>(0i, -1i, -2619i, 2147483647i), vec3<i32>(1i, 2147483647i, -4289i)), Struct_1(vec4<i32>(-1i, 62311i, -5116i, 7880i), vec3<i32>(2147483647i, 1i, i32(-2147483648))));

var<private> global4: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec3<f32>(-900f, 138f, -251f), true), Struct_4(vec3<f32>(2401f, -361f, -777f), false), Struct_4(vec3<f32>(1000f, -1818f, 1492f), false), Struct_4(vec3<f32>(-1554f, -620f, -219f), true), Struct_4(vec3<f32>(976f, -1022f, -1844f), false), Struct_4(vec3<f32>(668f, -1647f, 2072f), false), Struct_4(vec3<f32>(1631f, -1000f, -1245f), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, -705f) * _wgslsmith_div_vec2_f32(vec2<f32>(528f, -220f), vec2<f32>(-119f, -1300f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(351f, -1117f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, -756f))))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1614f);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1738f, -467f) * vec2<f32>(var_0, 765f))), _wgslsmith_f_op_vec2_f32(func_3(-5631i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, var_0) + vec2<f32>(537f, var_0)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(575f, 1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_0), vec2<f32>(649f, -1210f))), global2.a.a.x < global2.a.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-298f, 366f) * _wgslsmith_div_vec2_f32(vec2<f32>(-701f, var_0), vec2<f32>(-673f, -1255f)))), vec2<bool>(false, _wgslsmith_f_op_vec2_f32(func_3(3199i)).x != var_0)))));
    var var_2 = Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.a.a.x, global2.a.a.x, global2.a.b.x) & abs(global2.a.a), global2.a.a), vec3<i32>(~(-12435i), -firstLeadingBit(global2.a.b.x), _wgslsmith_add_i32(-1i, ~_wgslsmith_add_i32(2147483647i, -33896i))));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyz, u_input.a.xww ^ vec3<u32>(global1.x, 4294967295u, 0u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b), 4294967295u)), countOneBits(_wgslsmith_mult_u32(0u, global1.x)) ^ 1u, ~abs(global1.x << (u_input.b % 32u))), u_input.a.xxz);
    global3 = array<Struct_1, 20>();
    return 1u;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_2(global2.a, !vec3<bool>(global2.b.x, global2.b.x, (global1.x > 15943u) || global2.b.x));
    var var_1 = ~func_2();
    let var_2 = select(_wgslsmith_div_vec3_i32(-(vec3<i32>(-8653i, -18114i, var_0.a.b.x) ^ vec3<i32>(1i, -14264i, -2147483647i)), -vec3<i32>(-15486i, global2.a.b.x, var_0.a.a.x)) << (vec3<u32>(1u, firstTrailingBit(select(global1.x, 0u, var_0.b.x)), _wgslsmith_sub_u32(abs(46865u), 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(min(global2.a.b.x, 6273i), select(-26336i, 25771i, false), global2.a.a.x), var_0.a.a.xwx ^ ~global2.a.a.yxy), vec3<i32>(global2.a.a.x, 54893i, ~(global2.a.b.x & global2.a.b.x))), any(global2.b.yz));
    var_1 = _wgslsmith_sub_u32(func_2(), ~func_2());
    var var_3 = vec3<f32>(341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-33892i)).x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1262f + _wgslsmith_f_op_f32(163f * -384f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -780f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1271f) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.x, -1482f), var_3.x, true))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(972f, 1350f) + _wgslsmith_f_op_f32(-var_3.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(var_3.x + 463f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 7>();
    global4 = array<Struct_4, 7>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-534f, 834f, -835f, 248f), vec4<f32>(-1089f, -798f, -988f, 2035f))) - vec4<f32>(-632f, 1585f, 1141f, 1400f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1067f, 1057f, 1849f, -124f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, -892f, 471f, -509f)), vec4<f32>(864f, -658f, -1082f, -2152f), global2.b.x | false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, _wgslsmith_f_op_f32(func_1(u_input.a)), -382f, _wgslsmith_f_op_f32(f32(-1f) * -1732f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, -209f, -921f, -2262f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2799f, 908f, 349f, 122f), vec4<f32>(431f, 789f, -308f, 1152f), vec4<bool>(false, global2.b.x, false, global2.b.x)))))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.b >> (max(4294967295u, ~func_2()) % 32u), 20u)];
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.x))))))), -(reverseBits(global2.a.b.x | 19048i) >> (12045u % 32u)), 1u, vec3<i32>(_wgslsmith_add_i32(~0i, global2.a.b.x), _wgslsmith_div_i32(-1i, 1i), _wgslsmith_mod_i32(var_1.a.x, -42432i)));
}

