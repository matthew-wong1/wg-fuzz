struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(65291u, Struct_1(vec2<bool>(false, false), vec2<f32>(851f, 1000f)), -1i, Struct_1(vec2<bool>(false, true), vec2<f32>(-1000f, -732f))), Struct_2(78217u, Struct_1(vec2<bool>(true, true), vec2<f32>(-1418f, -176f)), 2147483647i, Struct_1(vec2<bool>(true, true), vec2<f32>(1000f, 1167f))), Struct_2(1u, Struct_1(vec2<bool>(true, false), vec2<f32>(-476f, 1343f)), -83418i, Struct_1(vec2<bool>(false, true), vec2<f32>(-888f, 569f))), Struct_2(51208u, Struct_1(vec2<bool>(true, false), vec2<f32>(1005f, 865f)), -23116i, Struct_1(vec2<bool>(false, true), vec2<f32>(-1679f, -445f))), Struct_2(91222u, Struct_1(vec2<bool>(false, false), vec2<f32>(659f, -1641f)), 7215i, Struct_1(vec2<bool>(true, false), vec2<f32>(-353f, -960f))), Struct_2(21397u, Struct_1(vec2<bool>(true, false), vec2<f32>(-1501f, -1942f)), -1560i, Struct_1(vec2<bool>(false, true), vec2<f32>(1648f, -390f))), Struct_2(47118u, Struct_1(vec2<bool>(false, true), vec2<f32>(-351f, -894f)), -14346i, Struct_1(vec2<bool>(true, true), vec2<f32>(-1090f, 518f))), Struct_2(20455u, Struct_1(vec2<bool>(false, true), vec2<f32>(1096f, -212f)), 2147483647i, Struct_1(vec2<bool>(false, true), vec2<f32>(-619f, 284f))), Struct_2(0u, Struct_1(vec2<bool>(true, false), vec2<f32>(-1056f, -240f)), 0i, Struct_1(vec2<bool>(true, false), vec2<f32>(1000f, -1049f))), Struct_2(32521u, Struct_1(vec2<bool>(true, true), vec2<f32>(1626f, -818f)), -30115i, Struct_1(vec2<bool>(true, false), vec2<f32>(-303f, 1532f))), Struct_2(0u, Struct_1(vec2<bool>(false, false), vec2<f32>(734f, -2051f)), 4754i, Struct_1(vec2<bool>(true, true), vec2<f32>(-1578f, -3110f))), Struct_2(4320u, Struct_1(vec2<bool>(false, true), vec2<f32>(838f, -1339f)), -4029i, Struct_1(vec2<bool>(false, false), vec2<f32>(-965f, -393f))), Struct_2(47694u, Struct_1(vec2<bool>(false, false), vec2<f32>(929f, 1000f)), 0i, Struct_1(vec2<bool>(true, false), vec2<f32>(-718f, 1651f))), Struct_2(1u, Struct_1(vec2<bool>(true, true), vec2<f32>(-1050f, 425f)), 2147483647i, Struct_1(vec2<bool>(false, true), vec2<f32>(-477f, -967f))), Struct_2(4294967295u, Struct_1(vec2<bool>(false, true), vec2<f32>(1522f, -1838f)), -41334i, Struct_1(vec2<bool>(false, true), vec2<f32>(305f, -659f))), Struct_2(1u, Struct_1(vec2<bool>(false, false), vec2<f32>(-1558f, -1124f)), 1i, Struct_1(vec2<bool>(true, true), vec2<f32>(602f, -236f))), Struct_2(4294967295u, Struct_1(vec2<bool>(true, false), vec2<f32>(227f, -508f)), -9309i, Struct_1(vec2<bool>(true, false), vec2<f32>(-620f, 748f))), Struct_2(12081u, Struct_1(vec2<bool>(false, true), vec2<f32>(-134f, 336f)), 6415i, Struct_1(vec2<bool>(true, false), vec2<f32>(-1508f, -2539f))), Struct_2(42642u, Struct_1(vec2<bool>(false, true), vec2<f32>(-2563f, -582f)), 36745i, Struct_1(vec2<bool>(false, true), vec2<f32>(1826f, -436f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(!(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), vec4<bool>(false, false, false, true), !vec4<bool>(true, true, arg_0.a.x, arg_0.a.x))));
    let var_1 = vec4<bool>(arg_0.a.x, !global0.a.x, all(var_0.a), var_0.a.x & var_0.a.x);
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), ~u_input.b);
    var var_3 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(global0.b.x * -160f) > _wgslsmith_div_f32(global0.b.x, -1869f), !all(vec3<bool>(global0.a.x, false, arg_0.a.x))), var_1.yz, vec2<bool>((false && var_0.a.x) | all(vec2<bool>(true, true)), select(24592i > u_input.d, var_1.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1818f, global0.b.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), global0.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.x))))));
    global1 = array<Struct_2, 19>();
    return select(select(!(!select(global0.a, arg_0.a, vec2<bool>(true, var_1.x))), global0.a, var_3.a.x), vec2<bool>(true, true), var_0.a.wx);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> vec2<bool> {
    return select(select(global0.a, select(select(vec2<bool>(true, arg_2.x), global0.a, true), func_3(Struct_1(vec2<bool>(arg_2.x, arg_2.x), global0.b)), arg_2.x), any(select(arg_2, arg_2, !arg_2.x))), select(arg_2.xx, arg_2.yy, vec2<bool>(!(!arg_2.x), any(select(arg_2.xy, vec2<bool>(global0.a.x, false), global0.a.x)))), arg_2.yy);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(~arg_1, ~arg_1), Struct_1(global0.a, global0.b), arg_2.x, Struct_1(func_2(arg_1.x, firstTrailingBit(arg_2.x) << (firstTrailingBit(u_input.b.x) % 32u), !select(vec3<bool>(true, arg_0.x, true), vec3<bool>(false, false, true), vec3<bool>(arg_0.x, true, false))), vec2<f32>(221f, global0.b.x)));
    var var_1 = abs(vec4<i32>(select(firstLeadingBit(_wgslsmith_div_i32(arg_2.x, -19429i)), _wgslsmith_add_i32(firstTrailingBit(-2147483647i), 13643i), false), ~(~2147483647i), -1i, var_0.c));
    var var_2 = ~abs(reverseBits(arg_1.x));
    var var_3 = Struct_3(vec4<bool>(select(false, !arg_0.x, all(!vec4<bool>(var_0.d.a.x, false, false, false))), var_0.d.a.x, true, var_0.b.a.x));
    var var_4 = vec2<u32>(6622u, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(42179u, 1u, max(abs(arg_1.x), abs(21914u)))));
    return Struct_3(select(select(var_3.a, vec4<bool>(arg_0.x, !var_0.b.a.x, all(vec3<bool>(var_0.d.a.x, var_0.b.a.x, true)), !global0.a.x), !all(vec2<bool>(var_0.b.a.x, arg_0.x))), vec4<bool>(arg_0.x, (false || global0.a.x) || all(vec4<bool>(var_0.d.a.x, var_3.a.x, var_3.a.x, arg_0.x)), true, true), var_3.a));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_3) -> vec3<u32> {
    global0 = Struct_1(vec2<bool>(global0.a.x, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1247f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(global0.b.x, -548f)) * global0.b)) * _wgslsmith_f_op_vec2_f32(global0.b * arg_2.b.b)));
    let var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))) + 587f);
    var var_2 = func_4(func_2(35969u, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2857i, var_0), u_input.a)), vec3<bool>(global0.a.x, arg_2.b.a.x, arg_3.a.x)), u_input.c.yy, select(~((vec2<i32>(2147483647i, arg_2.c) ^ u_input.a.xz) ^ ~vec2<i32>(-52991i, 1i)), firstLeadingBit(u_input.a.xy), true));
    var var_3 = _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.c.x, ~(u_input.b.x << (4294967295u % 32u)), u_input.c.x, ~max(arg_2.a, arg_2.a)), ~u_input.b), _wgslsmith_mult_vec4_u32(~min(u_input.b, u_input.b), vec4<u32>(countOneBits(~1u), _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.zx) << (max(u_input.c.x, 0u) % 32u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 14501u), 0u)));
    return _wgslsmith_sub_vec3_u32(~(~(u_input.c ^ var_3.xww)), vec3<u32>(~_wgslsmith_add_u32(4294967295u, arg_2.a), countOneBits(u_input.c.x) ^ max(0u, var_3.x), ~(~21976u))) & select(~var_3.zxz, ~_wgslsmith_add_vec3_u32(~var_3.zzy, ~u_input.c), select(arg_3.a.ywz, vec3<bool>(true, arg_1.x || false, select(false, arg_1.x, global0.a.x)), vec3<bool>(true || global0.a.x, func_3(Struct_1(var_2.a.wy, vec2<f32>(-1895f, -184f))).x, all(vec4<bool>(arg_2.b.a.x, arg_1.x, false, arg_1.x)))));
}

fn func_5(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    global0 = Struct_1(vec2<bool>(true, true), global0.b);
    var var_0 = Struct_1(func_4(global0.a, u_input.b.wy, abs(min(u_input.a.zz >> (vec2<u32>(arg_0, 28895u) % vec2<u32>(32u)), u_input.a.xz))).a.wx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -1000f) + _wgslsmith_f_op_vec2_f32(-global0.b)));
    var var_1 = _wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(2147483647i, -29980i, 0i)) << (arg_1 % vec3<u32>(32u)), -(~vec3<i32>(-1i, -2147483647i, 0i) << (~min(vec3<u32>(arg_1.x, 77274u, 0u), vec3<u32>(17635u, 34984u, arg_0)) % vec3<u32>(32u))));
    var_0 = Struct_1(!select(!var_0.a, func_3(Struct_1(global0.a, vec2<f32>(global0.b.x, var_0.b.x))), any(select(vec4<bool>(true, global0.a.x, global0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(var_0.a.x, global0.a.x, false, global0.a.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -232f))), var_0.b));
    var var_2 = ~u_input.c;
    return Struct_3(!select(vec4<bool>(true, global0.a.x & false, true, false), vec4<bool>(true, true == global0.a.x, true, all(vec3<bool>(true, var_0.a.x, var_0.a.x))), !vec4<bool>(false, true, true, var_0.a.x)));
}

fn func_6(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.c.yx;
    global0 = Struct_1(arg_0.a.wz, _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(573f, -1159f)));
    return reverseBits(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_6(func_5(firstLeadingBit(41173u), ~func_1(2147483647i, vec2<bool>(global0.a.x, global0.a.x), Struct_2(100500u, Struct_1(global0.a, vec2<f32>(1793f, -386f)), 1i, Struct_1(vec2<bool>(global0.a.x, false), vec2<f32>(global0.b.x, 601f))), Struct_3(vec4<bool>(false, true, global0.a.x, true))))), u_input.b.x, 1u);
    let var_1 = Struct_1(vec2<bool>(false, global0.a.x & true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)) - global0.b) - vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, false)) + _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x))))));
    global1 = array<Struct_2, 19>();
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-620f, _wgslsmith_f_op_f32(f32(-1f) * -124f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, var_1.b.x, -1304f, 377f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 425f, global0.b.x, global0.b.x)), true)))))), ~20019u >> (func_6(func_4(global0.a, firstTrailingBit(var_0.xy), select(u_input.a.yy, u_input.a.xx, global0.a.x))) % 32u));
}

