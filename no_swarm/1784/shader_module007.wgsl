struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(vec4<u32>(69341u, 4984u, 4294967295u, 1179u), vec4<f32>(-666f, -2161f, 142f, 814f), Struct_1(372f, vec3<f32>(255f, 649f, 367f), true), vec4<bool>(true, false, false, true)), Struct_5(vec4<u32>(1u, 19317u, 0u, 34693u), vec4<f32>(-588f, 1850f, 1000f, 1379f), Struct_1(-1000f, vec3<f32>(341f, 1004f, 1048f), true), vec4<bool>(false, true, true, false)), Struct_5(vec4<u32>(24871u, 57966u, 23250u, 4294967295u), vec4<f32>(1061f, 145f, 2036f, -1176f), Struct_1(-1494f, vec3<f32>(1000f, -156f, 776f), true), vec4<bool>(true, true, false, true)), Struct_5(vec4<u32>(4294967295u, 4294967295u, 36763u, 21075u), vec4<f32>(2410f, -895f, 420f, 514f), Struct_1(-593f, vec3<f32>(-1259f, 1347f, -782f), true), vec4<bool>(false, true, true, false)), Struct_5(vec4<u32>(38991u, 28012u, 54433u, 0u), vec4<f32>(1389f, -1000f, 769f, -106f), Struct_1(955f, vec3<f32>(-630f, 742f, -863f), false), vec4<bool>(false, true, true, false)), Struct_5(vec4<u32>(4294967295u, 51964u, 60631u, 4294967295u), vec4<f32>(-1650f, -721f, 348f, 2241f), Struct_1(300f, vec3<f32>(1000f, -528f, 1156f), true), vec4<bool>(false, true, true, true)), Struct_5(vec4<u32>(88580u, 1u, 44029u, 71995u), vec4<f32>(-147f, 1393f, -1620f, 647f), Struct_1(968f, vec3<f32>(983f, 1390f, 1913f), true), vec4<bool>(true, true, false, false)), Struct_5(vec4<u32>(0u, 4294967295u, 4038u, 1u), vec4<f32>(-953f, 160f, -978f, 281f), Struct_1(220f, vec3<f32>(-474f, -718f, -430f), false), vec4<bool>(true, true, false, false)), Struct_5(vec4<u32>(113232u, 24604u, 18388u, 0u), vec4<f32>(1134f, -1817f, -1311f, 553f), Struct_1(363f, vec3<f32>(860f, -117f, 856f), false), vec4<bool>(true, true, false, false)), Struct_5(vec4<u32>(36928u, 17247u, 85743u, 0u), vec4<f32>(-465f, 848f, -1080f, -1121f), Struct_1(210f, vec3<f32>(-221f, 1290f, 138f), false), vec4<bool>(false, false, false, false)), Struct_5(vec4<u32>(1u, 0u, 0u, 0u), vec4<f32>(273f, 1000f, -415f, 1000f), Struct_1(1000f, vec3<f32>(537f, -314f, 664f), true), vec4<bool>(false, false, true, false)), Struct_5(vec4<u32>(4294967295u, 4294967295u, 8893u, 55289u), vec4<f32>(-1000f, 661f, -842f, -1000f), Struct_1(1718f, vec3<f32>(1015f, 610f, 1249f), true), vec4<bool>(false, false, false, true)), Struct_5(vec4<u32>(1u, 6571u, 4294967295u, 4294967295u), vec4<f32>(-639f, -1593f, 1047f, 1858f), Struct_1(-748f, vec3<f32>(-740f, 176f, -1154f), false), vec4<bool>(true, true, true, true)), Struct_5(vec4<u32>(4294967295u, 59067u, 0u, 4294967295u), vec4<f32>(2132f, -1000f, -224f, -1000f), Struct_1(1745f, vec3<f32>(-1413f, 550f, 1251f), true), vec4<bool>(false, true, true, true)), Struct_5(vec4<u32>(0u, 1u, 15563u, 494u), vec4<f32>(-177f, -1213f, -603f, 234f), Struct_1(524f, vec3<f32>(-1047f, 636f, -865f), true), vec4<bool>(false, true, true, true)));

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(Struct_1(-650f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-235f, 299f, -483f) - vec3<f32>(218f, -1000f, -1872f)))), any(vec4<bool>(true, global1.x, global1.x, global1.x))), _wgslsmith_sub_i32(max(countOneBits(-230i), _wgslsmith_div_i32(1i, -5143i)), -(i32(-1i) * -1i)), firstLeadingBit(~abs(vec3<u32>(arg_0.x, arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1957f)) * _wgslsmith_f_op_f32(365f * _wgslsmith_f_op_f32(round(1045f)))), Struct_2(any(vec2<bool>(true, false)), Struct_1(-699f, _wgslsmith_f_op_vec3_f32(vec3<f32>(2217f, -186f, -180f) + vec3<f32>(-1000f, -1220f, -1562f)), 2295u < arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) * -879f), Struct_1(_wgslsmith_f_op_f32(round(-559f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, 2150f, -232f)), global1.x))), select(global2[_wgslsmith_index_u32(~(~arg_1), 16u)], global2[_wgslsmith_index_u32(arg_1, 16u)], true), Struct_2(false, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2204f - -1637f), 383f), vec3<f32>(1f, 1f, 1f), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-638f + 457f))) - -172f), Struct_1(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-616f, 309f, 723f)), false & !global1.x)), u_input.d.x);
    var var_1 = ~13278u;
    global0 = array<Struct_5, 15>();
    var var_2 = !select(!select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, global1.x, false, global1.x), select(vec4<bool>(var_0.b.x, global1.x, var_0.c.b.c, true), vec4<bool>(true, true, global1.x, true), true)), !select(select(vec4<bool>(true, false, true, var_0.a.e.b.c), vec4<bool>(false, global1.x, var_0.a.a.c, false), vec4<bool>(global1.x, false, false, false)), select(vec4<bool>(var_0.c.a, var_0.a.e.a, global1.x, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, true), false), select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(var_0.b.x, global1.x, global1.x, false), false)), global1.x);
    let var_3 = Struct_2(!(false && all(select(vec2<bool>(global1.x, var_0.c.d.c), vec2<bool>(false, true), vec2<bool>(true, global1.x)))), var_0.c.b, _wgslsmith_f_op_f32(max(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(f32(-1f) * -188f)))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), var_0.a.a.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.b.x, -736f, 304f))) * var_0.c.b.b), all(select(select(global2[_wgslsmith_index_u32(4294967295u, 16u)], var_0.b, var_0.b.x), select(vec2<bool>(true, var_2.x), global2[_wgslsmith_index_u32(96779u, 16u)], var_0.b.x), global2[_wgslsmith_index_u32(1u, 16u)]))));
    return select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b, var_0.d), u_input.d.yy << (var_0.a.c.zy % vec2<u32>(32u))) != u_input.d.x, any(var_0.b), !var_2.x, var_2.x), !(!select(select(vec4<bool>(var_2.x, true, var_0.a.e.d.c, global1.x), vec4<bool>(global1.x, true, var_3.a, var_2.x), false), vec4<bool>(global1.x, false, false, var_3.d.c), vec4<bool>(global1.x, var_2.x, var_3.b.c, var_3.d.c))), vec4<bool>(!var_2.x, any(var_2.yzz), all(select(var_2.xyx, vec3<bool>(false, true, false), vec3<bool>(var_3.a, var_3.a, true))) | all(vec3<bool>(true, true, true)), false));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> vec4<bool> {
    global1 = vec2<bool>(_wgslsmith_mult_u32(u_input.c, u_input.c) != _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.a.x, 1u, 1u, 23790u), firstLeadingBit(vec4<u32>(arg_1.a.x, 1u, 8862u, 31748u)), arg_1.d), vec4<u32>(0u, 4294967295u, 0u, 27460u)), any(func_3(arg_1.a.xzw, 11224u)));
    var var_0 = arg_1.a.x;
    let var_1 = Struct_2(false, arg_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) * _wgslsmith_f_op_f32(arg_1.c.a + arg_1.b.x)), _wgslsmith_f_op_f32(min(arg_1.c.b.x, arg_1.b.x))), arg_1.c.b.x)), Struct_1(_wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b.zyz + arg_1.c.b)))), (any(arg_1.d.zxw) && arg_1.d.x) & any(arg_1.d.yw)));
    var var_2 = -_wgslsmith_add_i32(arg_2, arg_2);
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_1.b.x, var_1.d.a)), arg_1.b.x)), _wgslsmith_f_op_vec3_f32(step(var_1.d.b, _wgslsmith_f_op_vec3_f32(var_1.d.b + vec3<f32>(arg_1.b.x, 1627f, var_1.c)))), !(!arg_1.c.c)), -3229i, vec3<u32>(10994u, arg_1.a.x, u_input.a), arg_1.b.x, var_1), vec2<bool>(all(!vec3<bool>(arg_0, arg_1.d.x, arg_0)) & true, arg_0), var_1, _wgslsmith_dot_vec3_i32(u_input.d, -reverseBits(firstLeadingBit(vec3<i32>(-2147483647i, arg_2, -25931i)))));
    return vec4<bool>(false, any(select(arg_1.d.xyy, arg_1.d.yyx, !arg_1.d.yxy)), global1.x, all(!select(vec2<bool>(var_3.a.a.c, var_1.a), var_3.b, var_1.d.c)) | all(!var_3.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> vec3<u32> {
    var var_0 = (-vec2<i32>(arg_1, u_input.d.x) >> (select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 2421u), vec2<u32>(0u, u_input.b), vec2<u32>(4145u, u_input.e)), select(vec2<u32>(u_input.c, 0u) >> (vec2<u32>(4013u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(7130u, 83493u), !vec2<bool>(true, global1.x)), arg_0) % vec2<u32>(32u))) & ~_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_3), vec2<i32>(-34732i, -5975i));
    return ~(~(~vec3<u32>(u_input.a, ~u_input.e, ~u_input.b)));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(func_4(select(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.e, 16u)], false), u_input.d.x & 23518i, func_2(true, global0[_wgslsmith_index_u32(0u, 15u)], u_input.d.x), max(38654i, u_input.d.x))), min((vec3<u32>(4294967295u, 4294967295u, 4294967295u) << (vec3<u32>(u_input.b, u_input.e, u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 13162u), vec3<u32>(1u, u_input.e, u_input.b)) % vec3<u32>(32u)), ~abs(vec3<u32>(u_input.a, 1u, 3419u))));
    let var_1 = any(select(!(!select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(false, global1.x, true, true), global1.x)), func_3(var_0 & abs(vec3<u32>(29616u, var_0.x, var_0.x)), 38576u), !select(select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(false, true, true, false), vec4<bool>(global1.x, true, true, false)), !vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(false, true, true, global1.x))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-977f)) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -424f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-506f, _wgslsmith_div_f32(-1912f, -109f))))), 1038f));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-549f, -868f) * -1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1416f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-890f, 1508f, -1484f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, 1000f, -621f))))), var_1), select(u_input.d.x, _wgslsmith_mod_i32(select(u_input.d.x, i32(-1i) * -15112i, all(vec4<bool>(var_1, true, false, false))), abs(u_input.d.x)), false), _wgslsmith_div_vec3_u32(~(~var_0), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.a, 14399u), vec3<u32>(28304u, u_input.e, 35744u)) ^ (vec3<u32>(var_0.x, u_input.b, u_input.b) & vec3<u32>(0u, var_0.x, 4294967295u)), vec3<u32>(select(0u, var_0.x, false), u_input.e, ~77539u), select(true, var_1, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)), Struct_2(!(false && (var_1 && global1.x)), Struct_1(_wgslsmith_f_op_f32(-187f + 1876f), vec3<f32>(-617f, _wgslsmith_f_op_f32(select(-1289f, -276f, false)), _wgslsmith_div_f32(-814f, -678f)), var_0.x > 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-203f, -1658f)) + _wgslsmith_f_op_f32(trunc(-1272f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(537f)) - _wgslsmith_div_f32(-1000f, 1010f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(506f, 590f, -192f) + vec3<f32>(-212f, 1065f, 532f))), global1.x & (global1.x | global1.x))));
    global0 = array<Struct_5, 15>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_3.e.d.b.xy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.a.b.yy) - _wgslsmith_f_op_vec2_f32(var_3.e.b.b.zz + vec2<f32>(var_3.e.c, var_3.d)))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(var_3.e.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.d))), var_3.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-631f * -573f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(331f, var_3.a.b.x, var_3.e.c, 1172f), vec4<f32>(1807f, 953f, -560f, var_3.e.b.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.b.x, 208f, 1000f, 1235f))), false))))), u_input.d.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

