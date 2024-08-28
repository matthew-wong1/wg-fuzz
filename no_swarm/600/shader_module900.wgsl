struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, 4294967295u, Struct_1(vec4<i32>(i32(-2147483648), -8584i, 2147483647i, 72208i), false, vec2<i32>(-50747i, 69407i), -210f, -1i), 46638u, 56193i);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec4<i32>(0i, 0i, 2147483647i, 1i), true, vec2<i32>(649i, 30750i), -1283f, 1i)), Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, -4541i, -1i), false, vec2<i32>(-1i, 0i), 658f, -4899i)), Struct_2(Struct_1(vec4<i32>(-38100i, 13627i, 19250i, 641i), true, vec2<i32>(58224i, 0i), 2065f, 30354i)), Struct_2(Struct_1(vec4<i32>(-26723i, i32(-2147483648), 0i, 0i), true, vec2<i32>(-8917i, -1i), 1000f, 0i)), Struct_2(Struct_1(vec4<i32>(1i, 1i, -18861i, -15308i), false, vec2<i32>(-1i, i32(-2147483648)), 468f, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-1i, -34862i, 0i, -3847i), true, vec2<i32>(-16176i, -1i), 1108f, -2661i)), Struct_2(Struct_1(vec4<i32>(6677i, -36304i, 1i, 34207i), true, vec2<i32>(i32(-2147483648), -1i), 2337f, -1i)), Struct_2(Struct_1(vec4<i32>(14601i, 0i, -46392i, -1i), false, vec2<i32>(-53136i, -10185i), -693f, 2147483647i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 18636i), true, vec2<i32>(-14176i, i32(-2147483648)), -1000f, 0i)), Struct_2(Struct_1(vec4<i32>(9786i, 50614i, 5980i, i32(-2147483648)), false, vec2<i32>(1i, 2147483647i), -535f, 12341i)), Struct_2(Struct_1(vec4<i32>(3967i, -3249i, -6745i, i32(-2147483648)), false, vec2<i32>(2147483647i, 9326i), -1401f, 1i)), Struct_2(Struct_1(vec4<i32>(-6202i, -4590i, 1i, i32(-2147483648)), true, vec2<i32>(58503i, -1i), -850f, 0i)), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), -428i, 1i), false, vec2<i32>(1i, 33251i), 2477f, -1116i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -31066i, 1i, 24272i), true, vec2<i32>(27714i, -1i), 1472f, 1i)), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, i32(-2147483648), 0i), false, vec2<i32>(-51296i, -34539i), 712f, -71929i)), Struct_2(Struct_1(vec4<i32>(-5983i, 1i, 0i, i32(-2147483648)), true, vec2<i32>(0i, 14687i), -440f, 2147483647i)), Struct_2(Struct_1(vec4<i32>(1i, 1i, -27047i, -10578i), false, vec2<i32>(-1i, 31057i), 727f, -10561i)), Struct_2(Struct_1(vec4<i32>(1570i, 2147483647i, -55764i, 0i), false, vec2<i32>(-1i, -42135i), -192f, 2147483647i)), Struct_2(Struct_1(vec4<i32>(33008i, -6924i, i32(-2147483648), -24634i), true, vec2<i32>(0i, -25634i), -1912f, -41312i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -17815i, -36433i), true, vec2<i32>(1i, -1i), 886f, 2147483647i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 3639i, 1i, 0i), false, vec2<i32>(i32(-2147483648), -14791i), -229f, 1i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -7632i, 1i, -24775i), true, vec2<i32>(1i, -3226i), 167f, 2147483647i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, 23742i, 1i), false, vec2<i32>(0i, 46140i), 1438f, -5416i)), Struct_2(Struct_1(vec4<i32>(-24238i, 2147483647i, 0i, 55591i), false, vec2<i32>(72857i, 1i), -1451f, 24182i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 8126i, 3610i), false, vec2<i32>(59280i, -1i), -1129f, -57771i)), Struct_2(Struct_1(vec4<i32>(-17770i, 1187i, 0i, i32(-2147483648)), true, vec2<i32>(-42356i, 0i), -3554f, 2916i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_5 {
    var var_0 = global0.c;
    let var_1 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(12597u, 4294967295u, 32735u, 9907u), u_input.b ^ vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 10014u, arg_0.x, u_input.c.x), vec4<u32>(1u, 29168u, arg_0.x, 7598u)), global0.d) <= _wgslsmith_sub_u32(arg_0.x, _wgslsmith_add_u32(62484u << (arg_0.x % 32u), 4294967295u)), max(~abs(4294967295u >> (0u % 32u)), 1u), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 33005i, var_0.a.x, 1i), vec4<i32>(global0.c.a.x, -36871i, -21949i, var_0.a.x)), global0.c.a | global0.c.a), vec4<i32>(global0.e, u_input.a, firstLeadingBit(u_input.a), 0i ^ var_0.e), global0.c.a), false, countOneBits(var_0.c), global0.c.d, u_input.a), 47783u, -1i);
    var var_2 = var_0.a.xyw;
    var var_3 = _wgslsmith_f_op_f32(-1169f * var_0.d);
    var_0 = global0.c;
    return Struct_5(u_input.a, false, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-40911i, u_input.a, var_1.e) ^ var_1.c.a.zxy, var_1.c.a.yzw), -2147483647i), 1i, global0.c.a.x));
}

fn func_3(arg_0: Struct_5) -> Struct_1 {
    let var_0 = !(false || global0.c.b);
    let var_1 = Struct_3(global0.c.a.x > ~_wgslsmith_clamp_i32(global0.c.e, 31655i, 13564i), ~(~(~0u)), global0.c, 7304u, countOneBits(18946i));
    global1 = array<Struct_2, 26>();
    var var_2 = -global0.c.c.x <= 0i;
    var var_3 = u_input.b;
    return Struct_1(-_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -13426i, -16505i, u_input.a)), vec4<i32>(-57764i, _wgslsmith_add_i32(var_1.c.c.x, 2147483647i), global0.c.e, -1i)), var_1.c.b || any(!select(vec2<bool>(false, false), vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.b))), ~min(vec2<i32>(51341i, _wgslsmith_add_i32(2147483647i, 0i)), var_1.c.a.wx), _wgslsmith_f_op_f32(-var_1.c.d), _wgslsmith_div_i32(abs(global0.c.a.x), -_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, global0.c.e, -10838i), -var_1.c.a.yzw)));
}

fn func_1() -> Struct_5 {
    var var_0 = func_3(func_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 59575u), ~global0.b), ~(~4294967295u), abs(u_input.b.x)), _wgslsmith_mult_i32(~_wgslsmith_add_i32(-2147483647i, global0.c.e), firstLeadingBit(global0.e << (0u % 32u)))));
    let var_1 = -var_0.a.xw;
    let var_2 = Struct_4(_wgslsmith_sub_vec4_i32((global0.c.a & global0.c.a) & global0.c.a, firstLeadingBit(-vec4<i32>(2147483647i, u_input.a, 59114i, 2147483647i))) << (u_input.b % vec4<u32>(32u)));
    global0 = Struct_3(abs(_wgslsmith_dot_vec2_i32(~global0.c.c, min(global0.c.c, var_2.a.wy))) <= -(_wgslsmith_mod_i32(u_input.a, 2147483647i) >> (firstTrailingBit(32583u) % 32u)), global0.b, global0.c, ~(~4294967295u), -70976i);
    var var_3 = Struct_2(Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_2.a.x, 12015i, var_2.a.x), vec4<i32>(1i, 15482i, -16952i, -9178i) << (u_input.b % vec4<u32>(32u))), any(vec2<bool>(true, any(vec4<bool>(true, global0.a, global0.a, var_0.b)))), _wgslsmith_mult_vec2_i32(-var_0.a.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_0.a.x), vec2<i32>(var_2.a.x, var_1.x))), _wgslsmith_f_op_f32(-674f - global0.c.d), ~global0.e >> (u_input.d.x % 32u)));
    return Struct_5(firstLeadingBit(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.a.yxx, vec3<i32>(u_input.a, -2147483647i, -11798i)), vec3<i32>(-48750i, u_input.a, var_0.e))), var_0.b, -vec3<i32>(_wgslsmith_add_i32(1i, abs(global0.e)), 2147483647i, var_2.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> Struct_5 {
    global1 = array<Struct_2, 26>();
    let var_0 = -532f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1411f, _wgslsmith_f_op_f32(-827f * global0.c.d)));
    var var_2 = global0.a & true;
    global0 = Struct_3(global0.a, min(global0.b & 4294967295u, select(~firstTrailingBit(4294967295u), u_input.c.x, true)), Struct_1(arg_0.a, arg_2.b, vec2<i32>(abs(func_1().c.x), -3646i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_3(arg_2).d))), -(~1i)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(33140u, u_input.d.x, u_input.b.x << (5260u % 32u)), ~(vec3<u32>(21860u, u_input.c.x, u_input.b.x) << (vec3<u32>(global0.b, global0.d, 4294967295u) % vec3<u32>(32u))))), global0.c.a.x);
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_4) -> Struct_4 {
    global0 = Struct_3(global0.c.b, 0u, Struct_1((vec4<i32>(-1i) * -arg_0.a) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(global0.d, 4294967295u, global0.b)), ~23858u, 32073u, 7878u) % vec4<u32>(32u)), !(_wgslsmith_mod_i32(-1i, global0.e) < -8856i), -_wgslsmith_add_vec2_i32(arg_0.a.yx, vec2<i32>(-11283i, -1i)) ^ -max(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-32972i, -42491i)), _wgslsmith_f_op_f32(-1182f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1000f, 701f, global0.a)), global0.c.d))), _wgslsmith_dot_vec4_i32(arg_2.a, global0.c.a >> (~u_input.b % vec4<u32>(32u)))), max(~(~firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 50899u)), u_input.b.yx)), u_input.a);
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    let var_0 = !select(select(vec4<bool>(true, true, true, func_2(u_input.b.yyx, arg_1.a).b), vec4<bool>(all(vec4<bool>(arg_1.b, arg_1.b, true, true)), any(vec3<bool>(global0.a, global0.c.b, true)), !global0.c.b, arg_1.b), !(!vec4<bool>(false, false, global0.c.b, false))), select(!vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(any(vec4<bool>(arg_1.b, false, true, global0.c.b)), true, true, true), vec4<bool>(-22877i >= arg_2.a.x, global0.a, 0i > arg_2.a.x, arg_1.b || arg_1.b)), vec4<bool>(arg_1.b, arg_1.b, true, global0.c.b || select(global0.a, false, false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.d))), _wgslsmith_f_op_f32(-global0.c.d), global0.c.d) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.d, global0.c.d, global0.c.d))))) + vec3<f32>(-1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.d))), global0.c.d));
    return Struct_4(abs(min(vec4<i32>(_wgslsmith_add_i32(-24039i, u_input.a), global0.c.a.x, func_3(Struct_5(1124i, true, vec3<i32>(0i, arg_1.a, arg_0.a.x))).e, -arg_2.a.x), vec4<i32>(_wgslsmith_sub_i32(1i, -6412i), _wgslsmith_dot_vec3_i32(arg_1.c, arg_2.a.wwx), global0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(84872i, 2147483647i, arg_1.c.x, global0.e), vec4<i32>(-2147483647i, u_input.a, 2147483647i, 41787i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_add_i32(global0.c.c.x, max(_wgslsmith_mult_i32(u_input.a, 0i), -30794i)), true, countOneBits(vec3<i32>(-32945i, ~0i, -20336i)));
    var var_1 = !vec3<bool>(select(global0.a, true, 796f > global0.c.d), any(select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(global0.c.b, false, false, global0.a), vec4<bool>(global0.c.b, false, global0.c.b, false))) & var_0.b, true);
    var var_2 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(u_input.b.xyw, u_input.b.www, var_1.x), min(u_input.b.zyz, u_input.b.xwy)), _wgslsmith_mult_vec3_u32(u_input.b.xzy, vec3<u32>(0u, global0.d, u_input.b.x)) >> (vec3<u32>(u_input.c.x, global0.d, u_input.d.x) % vec3<u32>(32u))), global0.d));
    var var_3 = func_5(Struct_4(-global0.c.a), func_4(Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global0.c.a, vec4<i32>(-17561i, 2147483647i, u_input.a, 0i)), firstTrailingBit(vec4<i32>(-1i, 3906i, 26842i, u_input.a)))), true, func_1()), Struct_4(_wgslsmith_mod_vec4_i32(~global0.c.a, select(vec4<i32>(var_0.a, global0.e, 2147483647i, 63368i), ~global0.c.a, var_1.x != true))));
    let var_4 = func_3(func_4(func_5(Struct_4(-var_3.a), Struct_5(var_0.c.x, !global0.a, func_5(Struct_4(vec4<i32>(global0.c.a.x, -2147483647i, 1i, 36867i)), Struct_5(var_3.a.x, false, vec3<i32>(global0.e, global0.e, 1i)), Struct_4(vec4<i32>(global0.c.e, -1i, var_0.c.x, -34312i))).a.zxy), func_5(Struct_4(vec4<i32>(46230i, 0i, u_input.a, u_input.a)), Struct_5(22540i, true, vec3<i32>(var_0.c.x, 8026i, -23868i)), func_5(Struct_4(vec4<i32>(var_0.c.x, -13823i, global0.c.c.x, u_input.a)), Struct_5(var_3.a.x, true, var_0.c), Struct_4(var_3.a)))), func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, 56034u), u_input.b.zxw), -47551i).b == (true & any(vec2<bool>(global0.a, var_0.b))), func_2(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.wwx, vec3<u32>(u_input.c.x, 4294967295u, 0u)), 586u & u_input.c.x), _wgslsmith_add_i32(-44992i, -23809i))));
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1878f, var_4.d), vec2<f32>(global0.c.d, 1971f), var_1.yz)), vec2<f32>(var_4.d, var_4.d)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d, -1051f) - vec2<f32>(457f, -1091f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d, -996f) - vec2<f32>(var_4.d, var_4.d))))));
}

