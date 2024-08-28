struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -1000f, 1i, Struct_3(vec3<u32>(5545u, 0u, 0u), Struct_1(vec2<f32>(1000f, -1000f), true, vec4<i32>(38986i, 1i, -14073i, 0i), 1i), vec2<f32>(293f, -686f), vec3<i32>(-1i, -1i, 2147483647i), 2044f), Struct_2(114183u, Struct_1(vec2<f32>(-921f, -1757f), false, vec4<i32>(1i, -25723i, 13525i, -64856i), -13172i), Struct_1(vec2<f32>(-488f, -1000f), true, vec4<i32>(1i, -48129i, -1i, i32(-2147483648)), -51036i), Struct_1(vec2<f32>(1427f, -423f), false, vec4<i32>(-1i, 47182i, -1i, 11923i), 8486i)));

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(37752u, 0u), vec2<u32>(4294967295u, 80056u), vec2<u32>(552u, 1u), vec2<u32>(0u, 9126u), vec2<u32>(0u, 2383u), vec2<u32>(69857u, 10095u), vec2<u32>(6475u, 51486u), vec2<u32>(4294967295u, 11418u), vec2<u32>(5580u, 7561u), vec2<u32>(1202u, 8500u), vec2<u32>(55708u, 0u), vec2<u32>(1u, 55134u), vec2<u32>(4294967295u, 58292u), vec2<u32>(64628u, 69058u), vec2<u32>(1u, 2327u), vec2<u32>(4294967295u, 10306u), vec2<u32>(45695u, 0u), vec2<u32>(4294967295u, 44470u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(64601u, 0u), vec2<u32>(14584u, 27671u), vec2<u32>(8085u, 0u), vec2<u32>(94345u, 4294967295u), vec2<u32>(42727u, 80349u), vec2<u32>(71338u, 67111u));

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1544i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-7019i, -10026i), vec2<i32>(-18327i, -1i), vec2<i32>(55163i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, 16061i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(abs(arg_2.e.b.a.x));
    let var_2 = vec4<u32>(4294967295u, countOneBits(~countOneBits(~arg_2.a.x)), _wgslsmith_add_u32(~(~max(u_input.a, arg_2.a.x)), countOneBits(select(_wgslsmith_mult_u32(0u, 36079u), 1u, true))), 69724u);
    var_1 = _wgslsmith_f_op_f32(-arg_0);
    global0 = arg_2;
    return vec4<u32>(max(_wgslsmith_dot_vec4_u32(arg_2.a, ~vec4<u32>(global0.d.a.x, 24527u, u_input.a, arg_1.a.x)), 37198u), 11269u, arg_1.a.x, 19483u) | select(vec4<u32>(global0.d.a.x, abs(4294967295u), 1u, 27619u) | ~(~arg_2.a), select(~select(var_2, var_2, vec4<bool>(false, false, true, var_0)), min(vec4<u32>(1u, 56661u, 1u, 4294967295u) >> (global0.a % vec4<u32>(32u)), var_2), true), arg_2.e.b.b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_4 {
    global2 = array<vec2<i32>, 8>();
    let var_0 = 24245i;
    let var_1 = Struct_4(func_3(global0.e.d.a.x, global0.d, arg_0), _wgslsmith_f_op_f32(trunc(909f)), 13184i, arg_0.d, Struct_2(arg_3.a, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_f32(abs(arg_1.a.x)) != -1522f, vec4<i32>(arg_1.c.x, _wgslsmith_mult_i32(2147483647i, arg_1.d), 36012i, abs(arg_0.d.b.c.x)), _wgslsmith_div_i32(-2147483647i, var_0)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(-1163f)), _wgslsmith_f_op_f32(-arg_0.d.e)), arg_0.d.b.b, abs(~arg_1.c), _wgslsmith_dot_vec2_i32(arg_3.c.c.yy, arg_0.e.b.c.wy) & firstLeadingBit(global0.e.d.d)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(660f * arg_0.b), _wgslsmith_f_op_f32(arg_0.d.c.x * arg_0.b)), arg_1.b, countOneBits(~vec4<i32>(arg_0.d.d.x, 2147483647i, -6771i, 0i)), select(select(var_0, arg_1.d, arg_0.d.b.b), firstTrailingBit(arg_3.d.d), true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.e.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b)))), _wgslsmith_div_f32(global0.e.d.a.x, global0.d.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(911f, 648f, arg_1.b))))) * -687f));
    global1 = array<vec2<u32>, 25>();
    return Struct_4(vec4<u32>(60066u, ~(var_1.e.a & 1u) ^ _wgslsmith_clamp_u32(arg_0.e.a | 12078u, _wgslsmith_add_u32(12097u, 1u), reverseBits(arg_3.a)), 16831u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.d.a.x & 18617u, ~3440u), abs(var_1.a.x) & 22256u)), 1069f, select(var_1.e.b.c.x & ~0i, -31249i, var_1.d.b.b) | -7065i, Struct_3(global0.a.xyx, arg_1, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1411f, _wgslsmith_f_op_f32(-arg_0.d.e)), arg_1.a)), var_1.e.d.c.zww ^ vec3<i32>(-8281i, 73914i, 0i), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)))), Struct_2(~_wgslsmith_add_u32(var_1.d.a.x, ~1u), var_1.d.b, global0.e.b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, 596f)), !arg_3.c.b, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, 0i, global0.c), arg_1.c)), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_3.d.c.x, arg_0.d.d.x), var_0 >> (var_1.a.x % 32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = global0.e.b.b;
    var var_1 = vec2<u32>(firstTrailingBit(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1 ^ 0u, arg_0.a.x, countOneBits(arg_0.e.a), abs(global0.e.a)), arg_0.a)) ^ ~(~vec2<u32>(arg_0.e.a, 4294967295u));
    var var_2 = ~17472u;
    global0 = arg_0;
    var_2 = ~max(abs(func_3(global0.e.c.a.x, Struct_3(global0.d.a, Struct_1(vec2<f32>(163f, 791f), true, global0.d.b.c, arg_0.c), vec2<f32>(arg_0.d.c.x, arg_0.e.d.a.x), arg_2.c.c.wzy, -866f), arg_0).x) >> (~u_input.a % 32u), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.a.x) * arg_2.b.a.x), _wgslsmith_f_op_f32(-global0.e.c.a.x)))) - arg_2.b.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global2 = array<vec2<i32>, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.b.a.x, -2812f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.x * 1719f)), _wgslsmith_f_op_f32(func_4(func_2(Struct_4(global0.a, -1004f, 46560i, global0.d, Struct_2(10864u, Struct_1(global0.d.c, true, arg_0.d.c, 2147483647i), Struct_1(vec2<f32>(global0.b, arg_0.d.a.x), true, global0.e.b.c, 2147483647i), Struct_1(global0.e.c.a, true, arg_0.b.c, 474i))), Struct_1(arg_0.b.a, true, arg_0.b.c, arg_0.c.c.x), vec3<u32>(4294967295u, 0u, 14014u), global0.e), global0.a.x, global0.e, global0.d.b.c.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.b.a.x, arg_0.d.a.x, -270f, -371f) - vec4<f32>(global0.b, global0.d.e, 1462f, -251f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, -233f, 411f, -1520f) - vec4<f32>(-798f, arg_0.d.a.x, 644f, 2389f))))));
    var var_1 = Struct_5(17217i & arg_0.b.c.x, true, func_3(_wgslsmith_f_op_f32(-global0.d.c.x), Struct_3(~func_2(Struct_4(vec4<u32>(7644u, arg_0.a, arg_0.a, 171u), -390f, global0.e.b.d, Struct_3(vec3<u32>(44368u, global0.e.a, u_input.a), Struct_1(vec2<f32>(997f, var_0.x), false, arg_0.b.c, -2147483647i), arg_0.d.a, arg_0.b.c.wzz, -238f), Struct_2(43830u, arg_0.b, global0.d.b, Struct_1(var_0.zx, arg_0.c.b, arg_0.d.c, arg_0.d.c.x))), arg_0.b, vec3<u32>(u_input.a, u_input.a, arg_0.a), arg_0).a.xyw, func_2(Struct_4(vec4<u32>(arg_0.a, u_input.a, u_input.a, 27968u), var_0.x, 1359i, global0.d, global0.e), arg_0.b, _wgslsmith_add_vec3_u32(vec3<u32>(62646u, 0u, 18107u), vec3<u32>(0u, arg_0.a, 42849u)), Struct_2(arg_0.a, Struct_1(arg_0.c.a, true, vec4<i32>(global0.d.d.x, arg_0.b.c.x, -2147483647i, global0.d.b.c.x), global0.d.b.d), global0.e.d, Struct_1(arg_0.c.a, true, vec4<i32>(0i, -33044i, arg_0.c.c.x, arg_0.d.c.x), -1i))).d.b, _wgslsmith_f_op_vec2_f32(sign(arg_0.b.a)), ~(-vec3<i32>(1i, global0.e.d.c.x, arg_0.d.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - global0.e.d.a.x), _wgslsmith_f_op_f32(select(170f, 394f, true)))), Struct_4(~(~vec4<u32>(u_input.a, arg_0.a, 0u, u_input.a)), 1326f, _wgslsmith_div_i32(-2147483647i, global0.d.d.x >> (80183u % 32u)), Struct_3(global0.a.xzy, arg_0.d, vec2<f32>(var_0.x, arg_0.b.a.x), -arg_0.b.c.zzx, -1548f), arg_0)).x);
    var_1 = Struct_5(-57816i, arg_0.b.b, 7952u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(global0.e.d.a.x - _wgslsmith_f_op_f32(arg_0.d.a.x + -744f)), -166f);
    return func_2(func_2(Struct_4(vec4<u32>(45352u, var_1.c, 67778u, 4294967295u) >> (select(vec4<u32>(10495u, global0.e.a, 81268u, var_1.c), vec4<u32>(30947u, 1u, 4294967295u, 25782u), vec4<bool>(true, false, arg_0.c.b, global0.e.b.b)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(1035f - -956f), arg_0.c.c.x, func_2(Struct_4(global0.a, 411f, global0.e.b.d, Struct_3(vec3<u32>(4294967295u, 1u, u_input.a), global0.e.b, vec2<f32>(-1053f, -704f), vec3<i32>(1i, -2147483647i, global0.d.d.x), var_0.x), arg_0), arg_0.c, vec3<u32>(3763u, 0u, global0.e.a), func_2(Struct_4(global0.a, arg_0.d.a.x, 15984i, global0.d, Struct_2(4294967295u, arg_0.b, Struct_1(vec2<f32>(var_2.x, -187f), arg_0.d.b, vec4<i32>(0i, -2147483647i, arg_1.x, 1i), 10181i), Struct_1(global0.d.b.a, false, global0.d.b.c, arg_1.x))), global0.d.b, vec3<u32>(1u, u_input.a, global0.e.a), Struct_2(11331u, Struct_1(arg_0.b.a, global0.d.b.b, global0.d.b.c, global0.d.d.x), arg_0.d, global0.e.c)).e).d, arg_0), Struct_1(var_0.yw, all(vec3<bool>(true, false, true)), global0.e.d.c, global0.d.d.x), vec3<u32>(global0.e.a, func_3(-546f, global0.d, Struct_4(vec4<u32>(19377u, arg_0.a, 10492u, global0.e.a), global0.e.c.a.x, var_1.a, global0.d, Struct_2(global0.a.x, global0.d.b, arg_0.c, Struct_1(global0.d.c, true, vec4<i32>(7452i, 1i, global0.e.b.d, 15116i), global0.d.d.x)))).x, _wgslsmith_mult_u32(22163u, select(global0.d.a.x, 57418u, global0.e.c.b))), Struct_2(var_1.c, global0.d.b, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.b.a + vec2<f32>(1000f, arg_0.b.a.x)), any(vec3<bool>(var_1.b, global0.e.b.b, global0.e.c.b)), _wgslsmith_div_vec4_i32(global0.e.c.c, global0.e.d.c), firstTrailingBit(var_1.a)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-282f, 755f), vec2<f32>(1150f, -3174f), var_1.b)), true, -global0.d.b.c, -1i))), func_2(Struct_4(~_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(global0.d.a.x, 56630u, global0.d.a.x, 49237u)), _wgslsmith_f_op_f32(-var_2.x), -8481i, Struct_3(vec3<u32>(53334u, 3569u, arg_0.a) & vec3<u32>(60576u, arg_0.a, global0.d.a.x), arg_0.c, arg_0.c.a, arg_1, _wgslsmith_f_op_f32(var_2.x + global0.b)), Struct_2(_wgslsmith_clamp_u32(1u, 68346u, 27593u), Struct_1(arg_0.b.a, true, global0.d.b.c, 1i), Struct_1(global0.e.d.a, global0.e.b.b, global0.e.c.c, var_1.a), Struct_1(vec2<f32>(arg_0.b.a.x, arg_0.c.a.x), var_1.b, vec4<i32>(var_1.a, -12137i, -11615i, -12610i), 22963i))), global0.e.b, vec3<u32>(4294967295u << (~global0.d.a.x % 32u), var_1.c, var_1.c), arg_0).e.b, ~(~(~vec3<u32>(4294967295u, 4294967295u, global0.e.a))) ^ ~(~_wgslsmith_add_vec3_u32(global0.a.xwz, vec3<u32>(var_1.c, u_input.a, global0.a.x))), arg_0).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(13913u, global0.e.d, Struct_1(_wgslsmith_f_op_vec2_f32(global0.d.c * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-127f, global0.e.c.a.x)))), !global0.d.b.b, global0.e.d.c, abs(-3802i)), global0.e.d), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -43939i, global0.e.b.c.x), -select(global0.d.d, _wgslsmith_sub_vec3_i32(vec3<i32>(1943i, 1i, global0.d.d.x), global0.d.b.c.wxz), vec3<bool>(false, true, global0.e.b.b))));
    var var_1 = global0.e.c.b;
    global0 = Struct_4(vec4<u32>(_wgslsmith_sub_u32(abs(~u_input.a), 43183u), reverseBits(_wgslsmith_clamp_u32(global0.d.a.x, reverseBits(4294967295u), ~65941u)), ~global0.a.x, abs(u_input.a)), var_0.d.a.x, ~global0.c, func_2(Struct_4(abs(select(vec4<u32>(u_input.a, 0u, u_input.a, 0u), global0.a, global0.d.b.b)), var_0.b.a.x, 49562i, global0.d, global0.e), global0.e.d, global0.d.a, func_2(func_2(func_2(Struct_4(vec4<u32>(1u, 47224u, 1u, 11949u), -464f, 1i, Struct_3(global0.d.a, Struct_1(vec2<f32>(var_0.d.a.x, 316f), global0.d.b.b, var_0.b.c, global0.e.d.d), vec2<f32>(var_0.c.a.x, var_0.d.a.x), vec3<i32>(global0.c, var_0.d.c.x, var_0.d.d), -353f), global0.e), Struct_1(vec2<f32>(156f, global0.d.e), global0.e.d.b, vec4<i32>(-1i, -2147483647i, var_0.b.c.x, var_0.d.c.x), -7997i), vec3<u32>(1u, 3347u, var_0.a), global0.e), global0.e.c, ~vec3<u32>(1u, 29288u, global0.a.x), Struct_2(73660u, Struct_1(var_0.b.a, global0.e.d.b, vec4<i32>(1i, global0.e.c.d, -2147483647i, var_0.c.d), global0.c), global0.e.d, global0.e.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, global0.b)), 467f == global0.d.e, vec4<i32>(var_0.b.c.x, -50443i, var_0.d.d, var_0.d.d), _wgslsmith_sub_i32(5810i, 1i)), vec3<u32>(u_input.a, 17245u, _wgslsmith_dot_vec3_u32(global0.d.a, vec3<u32>(var_0.a, var_0.a, 66130u))), Struct_2(global0.a.x, Struct_1(vec2<f32>(276f, 112f), var_0.c.b, global0.d.b.c, -4356i), func_1(global0.e, vec3<i32>(-7204i, 27441i, var_0.d.d)).b, Struct_1(vec2<f32>(var_0.c.a.x, var_0.d.a.x), true, vec4<i32>(-3675i, 11363i, global0.d.d.x, var_0.b.d), global0.e.c.d))).e).d, global0.e);
    global0 = Struct_4(min(countOneBits((global0.a << (vec4<u32>(83545u, 1u, u_input.a, var_0.a) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(global0.e.a, u_input.a, global0.e.a, var_0.a), global0.a)), countOneBits(global0.a)), _wgslsmith_f_op_f32(1563f * 1411f), var_0.d.c.x, func_2(Struct_4(~global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.a.x))), ~36253i, global0.d, global0.e), func_2(func_2(func_2(Struct_4(global0.a, 563f, global0.d.b.d, global0.d, Struct_2(var_0.a, global0.d.b, var_0.b, Struct_1(var_0.d.a, true, vec4<i32>(1i, -2027i, 25518i, var_0.b.c.x), global0.c))), var_0.b, vec3<u32>(u_input.a, 0u, global0.d.a.x), Struct_2(1u, Struct_1(var_0.d.a, false, global0.d.b.c, -34747i), Struct_1(vec2<f32>(global0.b, 179f), false, global0.d.b.c, 23519i), Struct_1(vec2<f32>(global0.d.e, global0.b), var_0.d.b, vec4<i32>(var_0.b.c.x, 2147483647i, 5545i, 15567i), var_0.c.d))), func_1(global0.e, global0.e.c.c.wwy).c, abs(vec3<u32>(var_0.a, 41167u, 4294967295u)), func_1(Struct_2(0u, Struct_1(var_0.c.a, true, global0.d.b.c, var_0.d.d), var_0.b, Struct_1(global0.d.c, true, var_0.c.c, -24493i)), global0.e.b.c.zxw)), func_2(Struct_4(global0.a, 311f, var_0.c.c.x, global0.d, global0.e), Struct_1(global0.e.d.a, true, var_0.c.c, global0.d.d.x), ~global0.a.wzy, Struct_2(35769u, var_0.d, Struct_1(var_0.b.a, true, vec4<i32>(0i, -26708i, 10503i, 2147483647i), -2147483647i), var_0.b)).e.d, vec3<u32>(0u >> (global0.a.x % 32u), 48673u, 64083u >> (0u % 32u)), func_2(Struct_4(vec4<u32>(2513u, u_input.a, 30108u, 0u), -532f, 1i, global0.d, global0.e), Struct_1(global0.d.c, global0.d.b.b, var_0.b.c, global0.d.b.d), vec3<u32>(global0.d.a.x, 0u, var_0.a), func_2(Struct_4(global0.a, global0.e.b.a.x, 39196i, Struct_3(vec3<u32>(u_input.a, 1u, u_input.a), var_0.b, global0.e.c.a, vec3<i32>(var_0.b.c.x, var_0.c.d, var_0.d.c.x), -492f), global0.e), Struct_1(vec2<f32>(var_0.d.a.x, -539f), true, global0.d.b.c, 32950i), vec3<u32>(var_0.a, 16965u, 852u), Struct_2(global0.e.a, Struct_1(global0.d.b.a, true, vec4<i32>(37724i, global0.e.b.d, var_0.d.d, var_0.c.c.x), -21760i), Struct_1(vec2<f32>(global0.d.b.a.x, var_0.c.a.x), var_0.d.b, global0.d.b.c, -1i), global0.d.b)).e).e).d.b, ~_wgslsmith_mod_vec3_u32(global0.a.wxz ^ global0.a.zxy, select(global0.a.wyy, vec3<u32>(4294967295u, 4294967295u, 67240u), vec3<bool>(var_0.c.b, var_0.d.b, var_0.d.b))), func_1(global0.e, var_0.b.c.zxz)).d, global0.e);
    let var_2 = global0.e.b;
    let var_3 = any(!select(vec4<bool>(false, true, true, var_2.b || false), vec4<bool>(true, true, true, !var_2.b), vec4<bool>(var_2.b, var_0.b.b, var_2.b, -269f > global0.d.c.x)));
    global0 = func_2(func_2(func_2(Struct_4(firstTrailingBit(global0.a), _wgslsmith_f_op_f32(trunc(global0.e.b.a.x)), var_0.d.d, func_2(Struct_4(global0.a, -1014f, var_0.c.d, global0.d, global0.e), Struct_1(var_2.a, var_2.b, vec4<i32>(var_2.d, -1316i, -60584i, -42898i), var_0.b.d), vec3<u32>(global0.a.x, 29856u, 11234u), Struct_2(0u, Struct_1(vec2<f32>(-627f, 1887f), var_3, vec4<i32>(global0.c, -2147483647i, global0.d.b.c.x, -2147483647i), global0.c), global0.d.b, var_0.d)).d, global0.e), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.d.a.x, 489f) * vec2<f32>(global0.d.c.x, global0.e.c.a.x)), var_0.a <= u_input.a, var_2.c, global0.e.d.c.x), vec3<u32>(~u_input.a, global0.e.a | global0.a.x, 10994u), Struct_2(1u, func_1(Struct_2(33819u, Struct_1(vec2<f32>(-1666f, var_0.c.a.x), var_2.b, vec4<i32>(var_2.d, 4335i, global0.c, 8023i), -2147483647i), Struct_1(vec2<f32>(var_2.a.x, global0.e.b.a.x), true, var_0.d.c, -2147483647i), global0.d.b), vec3<i32>(global0.e.c.d, 0i, -8884i)).c, func_2(Struct_4(vec4<u32>(33277u, 4294967295u, u_input.a, var_0.a), -1088f, -2147483647i, Struct_3(vec3<u32>(58250u, 0u, u_input.a), Struct_1(var_2.a, true, vec4<i32>(var_0.d.d, 3680i, 10489i, -26443i), 24980i), vec2<f32>(-814f, var_0.b.a.x), var_0.b.c.wyw, global0.e.b.a.x), global0.e), var_0.d, vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(115763u, global0.e.c, var_0.c, var_0.b)).e.b, var_0.d)), var_0.c, ~_wgslsmith_mult_vec3_u32(global0.a.zyx >> (global0.d.a % vec3<u32>(32u)), global0.d.a), Struct_2(4294967295u, func_2(Struct_4(vec4<u32>(4294967295u, 0u, 29346u, global0.a.x), 791f, 2147483647i, global0.d, Struct_2(u_input.a, Struct_1(var_2.a, var_0.c.b, global0.e.c.c, 3571i), Struct_1(global0.e.b.a, true, vec4<i32>(-19446i, 2147483647i, var_2.d, var_0.d.d), 0i), Struct_1(vec2<f32>(-1542f, var_2.a.x), global0.e.c.b, global0.d.b.c, 76935i))), func_1(global0.e, vec3<i32>(1i, var_2.c.x, 1i)).c, ~global0.a.yyw, func_1(Struct_2(u_input.a, global0.e.d, Struct_1(global0.e.b.a, true, vec4<i32>(var_0.d.d, var_2.d, 21423i, var_2.d), global0.d.b.d), var_0.d), vec3<i32>(-2147483647i, var_0.d.d, 1i))).d.b, func_2(func_2(Struct_4(global0.a, var_2.a.x, 1i, Struct_3(global0.a.wxw, global0.e.d, vec2<f32>(var_0.b.a.x, var_0.d.a.x), vec3<i32>(-1i, -32195i, global0.d.b.d), -1789f), global0.e), global0.d.b, vec3<u32>(global0.a.x, u_input.a, 4294967295u), Struct_2(global0.e.a, Struct_1(vec2<f32>(var_2.a.x, 2746f), true, vec4<i32>(var_0.c.c.x, 1i, -18017i, var_2.c.x), var_0.b.c.x), global0.d.b, global0.d.b)), func_2(Struct_4(vec4<u32>(global0.d.a.x, 4294967295u, u_input.a, 66420u), -1000f, 16341i, Struct_3(global0.d.a, Struct_1(var_2.a, var_2.b, vec4<i32>(61429i, global0.c, -1i, global0.d.d.x), 1i), var_0.c.a, global0.e.b.c.yzx, var_2.a.x), Struct_2(var_0.a, var_0.c, global0.d.b, global0.e.d)), global0.d.b, vec3<u32>(0u, 27758u, 4294967295u), Struct_2(4294967295u, global0.e.c, var_0.c, var_0.d)).e.b, global0.d.a, global0.e).d.b, var_0.b)), Struct_1(vec2<f32>(var_0.c.a.x, var_2.a.x), var_0.b.b && (_wgslsmith_f_op_f32(-466f + global0.b) != 1950f), -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global0.e.c.c, global0.e.d.c), vec4<i32>(var_0.c.d, -19989i, var_0.d.d, 20576i)), -2147483647i), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(global0.a.x, min(var_0.a, 1u), 77057u)), reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 61025u, 37482u), global0.d.a))), Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, u_input.a, u_input.a, var_0.a), global0.a, global0.a)), ~1u), var_0.d, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, var_0.c.a.x)), _wgslsmith_f_op_f32(select(-422f, var_2.a.x, false)) != 588f, var_0.c.c, -firstTrailingBit(global0.e.c.c.x)), func_2(Struct_4(global0.a, global0.b, var_0.d.d, global0.d, func_2(Struct_4(global0.a, 593f, 60231i, Struct_3(global0.a.xwz, Struct_1(var_0.d.a, var_0.b.b, vec4<i32>(-1i, -81187i, var_0.b.c.x, 1i), -7290i), var_2.a, vec3<i32>(52595i, var_0.b.d, var_2.d), global0.d.c.x), Struct_2(24570u, Struct_1(global0.d.b.a, true, vec4<i32>(var_0.b.c.x, var_0.b.d, var_0.c.d, global0.d.b.c.x), var_0.b.d), Struct_1(var_0.c.a, var_2.b, vec4<i32>(-2147483647i, 2147483647i, -45769i, var_2.c.x), var_2.d), Struct_1(global0.d.c, true, vec4<i32>(var_2.c.x, 1i, global0.c, -60676i), global0.c))), var_0.b, global0.d.a, Struct_2(31482u, Struct_1(var_2.a, false, vec4<i32>(var_2.d, 18836i, -2147483647i, var_2.c.x), -20517i), Struct_1(vec2<f32>(1058f, 181f), global0.d.b.b, var_0.d.c, global0.d.b.c.x), var_0.d)).e), var_0.d, _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_0.a, 1u, u_input.a), global0.a.zxw), global0.a.zxz), global0.e).e.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_2(_wgslsmith_sub_u32(1u, ~global0.d.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.d.c), false, vec4<i32>(-1440i, 88726i, 17111i, -12936i), countOneBits(global0.d.b.c.x)), Struct_1(var_2.a, true, -global0.e.c.c, -var_2.d), var_0.b), ~(-(vec3<i32>(var_2.c.x, global0.e.c.d, global0.c) >> (global0.a.wyy % vec3<u32>(32u))))).d.d, var_2.c.x);
}

