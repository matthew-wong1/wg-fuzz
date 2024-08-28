struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(vec4<f32>(-1159f, 876f, 109f, -239f), 326f)), Struct_2(vec2<i32>(2147483647i, 4021i), Struct_1(vec4<f32>(-2236f, 1919f, 218f, 2745f), -249f)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec4<f32>(524f, 1000f, 1175f, -367f), -852f)), Struct_2(vec2<i32>(0i, 0i), Struct_1(vec4<f32>(830f, 520f, 515f, 704f), 1385f)), Struct_2(vec2<i32>(29509i, -1i), Struct_1(vec4<f32>(-1504f, -670f, -132f, 1000f), 156f)), Struct_2(vec2<i32>(-74108i, 2147483647i), Struct_1(vec4<f32>(-2073f, -238f, 1000f, 418f), 740f)), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec4<f32>(-1281f, 465f, -1234f, 1637f), 1405f)), Struct_2(vec2<i32>(1i, 17609i), Struct_1(vec4<f32>(469f, 201f, -1086f, 234f), 314f)), Struct_2(vec2<i32>(-1i, 4273i), Struct_1(vec4<f32>(1895f, -247f, -589f, 493f), -1032f)), Struct_2(vec2<i32>(18119i, -40077i), Struct_1(vec4<f32>(480f, 678f, 566f, 509f), -1036f)), Struct_2(vec2<i32>(1i, -50321i), Struct_1(vec4<f32>(1000f, -1000f, 628f, -1472f), -438f)), Struct_2(vec2<i32>(-56880i, -13732i), Struct_1(vec4<f32>(-150f, -1000f, 1625f, 941f), -1035f)), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(vec4<f32>(732f, -1000f, -235f, 723f), -443f)), Struct_2(vec2<i32>(-46760i, 22649i), Struct_1(vec4<f32>(1645f, -620f, 1000f, 470f), -1221f)), Struct_2(vec2<i32>(7267i, -19820i), Struct_1(vec4<f32>(-1355f, 834f, -1487f, 1835f), -1698f)), Struct_2(vec2<i32>(-28227i, 45369i), Struct_1(vec4<f32>(-621f, 1510f, 1689f, 2020f), 352f)));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(-652f, -516f, -101f, -311f), 1361f), Struct_1(vec4<f32>(1478f, -452f, 525f, -1026f), -2013f), Struct_1(vec4<f32>(447f, 2194f, 684f, 662f), -665f), Struct_1(vec4<f32>(-108f, 620f, -276f, 1694f), -1019f), Struct_1(vec4<f32>(-1336f, -2125f, 1000f, 1767f), 310f), Struct_1(vec4<f32>(1000f, 938f, 156f, 947f), -1649f), Struct_1(vec4<f32>(-459f, -1053f, -1000f, 531f), 443f), Struct_1(vec4<f32>(-562f, -3257f, 196f, -308f), -435f), Struct_1(vec4<f32>(-1000f, 988f, 377f, 230f), 1291f), Struct_1(vec4<f32>(1490f, -1954f, -1425f, -661f), 1649f), Struct_1(vec4<f32>(-506f, 476f, 978f, -387f), 194f), Struct_1(vec4<f32>(1703f, 402f, -505f, -186f), 297f), Struct_1(vec4<f32>(-1143f, -1328f, -1423f, -550f), -3368f), Struct_1(vec4<f32>(172f, 1943f, -261f, 867f), -768f), Struct_1(vec4<f32>(863f, -290f, -303f, 880f), -1024f), Struct_1(vec4<f32>(-2445f, -831f, 820f, 235f), -781f), Struct_1(vec4<f32>(-549f, -1134f, -416f, -1440f), -369f), Struct_1(vec4<f32>(540f, 237f, -726f, 833f), -179f), Struct_1(vec4<f32>(-1000f, -291f, 1059f, -158f), -377f), Struct_1(vec4<f32>(-649f, 377f, -663f, 956f), -120f), Struct_1(vec4<f32>(625f, 287f, 293f, 567f), 1000f), Struct_1(vec4<f32>(-1027f, -458f, -1261f, 339f), 379f), Struct_1(vec4<f32>(1482f, 1334f, -517f, -1117f), 1000f), Struct_1(vec4<f32>(-1054f, 328f, 291f, 1066f), 1319f), Struct_1(vec4<f32>(885f, -1435f, 754f, -577f), 379f), Struct_1(vec4<f32>(-134f, -1022f, 1283f, -1395f), -690f), Struct_1(vec4<f32>(-1281f, 1052f, 764f, 1000f), -1141f));

var<private> global3: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1899f, -2202f), vec2<f32>(-269f, 1000f), vec2<f32>(-771f, 987f), vec2<f32>(354f, -937f), vec2<f32>(-1763f, 1055f), vec2<f32>(1406f, 220f), vec2<f32>(1000f, 625f), vec2<f32>(-1000f, -132f), vec2<f32>(-1424f, 281f), vec2<f32>(2049f, 1000f), vec2<f32>(527f, -1071f), vec2<f32>(-831f, -139f), vec2<f32>(1214f, 1185f), vec2<f32>(-558f, -269f), vec2<f32>(1565f, -2229f), vec2<f32>(-941f, 1132f), vec2<f32>(-2932f, -348f), vec2<f32>(464f, -959f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = select(!vec3<bool>(!any(vec2<bool>(false, true)), true, all(vec4<bool>(true, true, false, true))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), abs(reverseBits(0u)) <= ~(4294967295u >> (u_input.d.x % 32u))), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, false, false)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 27u)];
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.b));
    var var_3 = Struct_2(-(~(~(vec2<i32>(-2147483647i, arg_2) & u_input.c.yx))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_1.b, arg_3.x, arg_3.x))) + _wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(arg_3.x, 566f, 893f, arg_3.x))), _wgslsmith_f_op_f32(-arg_3.x)));
    var_0 = !vec3<bool>(true, var_1.a.x <= _wgslsmith_div_f32(var_3.b.a.x, _wgslsmith_f_op_f32(1161f + var_1.b)), !var_0.x);
    return ~(-vec2<i32>(var_3.a.x, -24308i));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    global3 = array<vec2<f32>, 18>();
    var var_0 = Struct_3(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(223f * 2513f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)))))), Struct_2(vec2<i32>(_wgslsmith_add_i32(-26695i, -u_input.a), _wgslsmith_sub_i32(-48566i, i32(-1i) * -1i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1393f, 1462f, 1127f, 616f) + vec4<f32>(-474f, -1000f, -351f, 959f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(686f, 583f, -183f, 1592f), vec4<f32>(1183f, 401f, -1258f, -2694f), true))), 1058f)), -arg_1.zy);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.b.a.x * 578f))))), Struct_2(vec2<i32>(~(var_0.d.x >> (arg_0.x % 32u)), arg_1.x), Struct_1(var_0.c.b.a, 1f)), func_3(max(abs(vec3<u32>(u_input.b.x, u_input.d.x, arg_0.x)), u_input.d), -vec4<i32>(~21153i, ~u_input.a, -5768i << (arg_0.x % 32u), ~arg_1.x), -18667i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.c.b.a))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.c.b.a))))));
    let var_1 = Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.c.b.a.x, var_0.c.b.b)))))), Struct_2(u_input.c.yy, Struct_1(var_0.c.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.b.a.x - 755f), var_0.c.b.a.x))), ~(-select(arg_1.xx, ~vec2<i32>(arg_1.x, arg_1.x), !vec2<bool>(true, var_0.a))));
    let var_2 = var_1;
    return u_input.d.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = reverseBits(vec4<u32>(u_input.d.x << (0u % 32u), min(abs(u_input.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(33042u, 29147u, 0u), vec3<u32>(78618u, 41876u, u_input.d.x)), 1u >> (~u_input.b.x % 32u)), _wgslsmith_clamp_u32(func_2(firstLeadingBit(vec3<u32>(1u, u_input.d.x, 4294967295u)), ~u_input.c.yyy), ~26784u, u_input.b.x), 47200u));
    var var_1 = Struct_3(false, -875f, Struct_2(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.c.x, 2147483647i)) >> (var_0.yy % vec2<u32>(32u)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.a - vec4<f32>(arg_2.b.b, -310f, arg_0.a.x, arg_2.b.b)), arg_2.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-952f - arg_2.b.a.x), arg_0.a.x))), -max(_wgslsmith_clamp_vec2_i32(arg_3, -vec2<i32>(2147483647i, u_input.c.x), select(arg_2.a, vec2<i32>(arg_1, u_input.c.x), true)), countOneBits(_wgslsmith_add_vec2_i32(u_input.c.ww, vec2<i32>(u_input.a, -3750i)))));
    var var_2 = _wgslsmith_f_op_f32(460f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_2.b.a.x)), -1095f));
    var var_3 = select(any(select(!vec4<bool>(var_1.a, true, var_1.a, var_1.a), !select(vec4<bool>(var_1.a, var_1.a, true, false), vec4<bool>(true, var_1.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, true, true)), var_1.a)), -962f <= arg_2.b.b, false);
    var_1 = Struct_3(!all(select(vec2<bool>(true, var_1.a), vec2<bool>(false, false), var_1.a)) | all(vec2<bool>(!var_1.a, var_1.a)), arg_0.a.x, arg_2, ~u_input.c.ww << (u_input.b.xz % vec2<u32>(32u)));
    return select(-vec3<i32>(-(~1i), abs(arg_3.x), i32(-1i) * -11636i), select(countOneBits(select(u_input.c.zyz, vec3<i32>(2147483647i, arg_3.x, 1i), 1i < arg_1)), vec3<i32>(reverseBits(1i), arg_2.a.x, 1i), var_1.c.a.x > var_1.d.x), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(245f * 132f)) <= _wgslsmith_f_op_f32(arg_0.a.x + var_1.c.b.a.x), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = vec4<i32>(1i, -(~(~2147483647i)) | ((-u_input.c.x ^ _wgslsmith_dot_vec2_i32(arg_1.zx, vec2<i32>(-23286i, 2147483647i))) & u_input.a), _wgslsmith_dot_vec4_i32(u_input.c, ~vec4<i32>(arg_1.x, arg_2, 4296i, arg_2 << (48838u % 32u))), i32(-1i) * -arg_1.x);
    global1 = array<Struct_2, 7>();
    let var_1 = u_input.b;
    let var_2 = var_1.xz;
    var var_3 = Struct_3(any(!(!arg_0)) || all(select(vec4<bool>(false, arg_0.x, arg_0.x, false), select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))))), global0[_wgslsmith_index_u32(u_input.d.x | ~select(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 35551u), vec2<u32>(140973u, 0u)), arg_0.x & true), 16u)], arg_1.zy);
    return global1[_wgslsmith_index_u32(~u_input.d.x, 7u)];
}

fn func_5(arg_0: Struct_3) -> u32 {
    global1 = array<Struct_2, 7>();
    global3 = array<vec2<f32>, 18>();
    let var_0 = false & arg_0.a;
    var var_1 = func_3(u_input.d, _wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(0i, arg_0.d.x, 1i, u_input.c.x)), u_input.c)), u_input.a, arg_0.c.b.a).x;
    global2 = array<Struct_1, 27>();
    return 113430u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)), _wgslsmith_f_op_f32(sign(-441f)), -874f)), _wgslsmith_f_op_f32(step(-619f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f - _wgslsmith_f_op_f32(f32(-1f) * -1922f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1437f * -1306f), _wgslsmith_f_op_f32(step(1364f, -1300f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.b) * vec2<f32>(var_0.b, _wgslsmith_f_op_f32(var_0.b - -1302f)));
    global0 = array<Struct_2, 16>();
    var var_2 = func_5(Struct_3(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), -668f, func_4(vec2<bool>(false, false), ~func_1(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], vec2<i32>(u_input.c.x, u_input.a)), u_input.c.x), vec2<i32>(u_input.a, u_input.c.x)));
    var var_3 = Struct_3(all(vec2<bool>(false, all(vec3<bool>(true, true, false)))), 952f, global0[_wgslsmith_index_u32(1u, 16u)], reverseBits(reverseBits(vec2<i32>(~32085i, func_4(vec2<bool>(true, false), vec3<i32>(u_input.c.x, -24077i, 2147483647i), u_input.a).a.x))));
    let var_4 = select(select(select(!(!vec4<bool>(var_3.a, false, var_3.a, var_3.a)), vec4<bool>(var_3.a, true, true, any(vec3<bool>(var_3.a, var_3.a, var_3.a))), !(!vec4<bool>(true, false, var_3.a, false))), vec4<bool>(var_3.a, var_3.a, !all(vec4<bool>(false, true, var_3.a, var_3.a)), true), false), !(!select(select(vec4<bool>(false, var_3.a, var_3.a, var_3.a), vec4<bool>(true, false, true, true), vec4<bool>(var_3.a, false, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_3.a, true, true), vec4<bool>(var_3.a, var_3.a, true, var_3.a)), !var_3.a)), vec4<bool>(var_3.a, all(!vec4<bool>(var_3.a, false, false, false)), !(_wgslsmith_f_op_f32(-var_0.b) < _wgslsmith_f_op_f32(exp2(var_1.x))), u_input.d.x <= u_input.b.x));
    var var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.a), -u_input.c, u_input.b.x);
}

