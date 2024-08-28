struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(7494i, 54003i, -82982i);

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(1665f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    global0 = _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(max(50093i, global0.x), i32(-1i) * -2147483647i, max(-12577i, -1i)) | vec3<i32>(global0.x, ~3503i, -global0.x)), min(-firstLeadingBit(-vec3<i32>(-51078i, 19418i, global0.x)), vec3<i32>(1i, global0.x, -global0.x) & min(vec3<i32>(global0.x, global0.x, 1i), vec3<i32>(global0.x, global0.x, global0.x) | vec3<i32>(global0.x, -4498i, 0i))));
    var var_0 = all(vec2<bool>(!select(true, 0i <= global0.x, true), true));
    var var_1 = max(~u_input.c.xyw, vec3<u32>(u_input.b.x, u_input.c.x, u_input.a.x) >> (~u_input.c.yxw % vec3<u32>(32u)));
    var_1 = ~select(~vec3<u32>(var_1.x ^ 30138u, var_1.x | var_1.x, firstTrailingBit(u_input.b.x)), firstTrailingBit(~(~u_input.a)), true);
    var var_2 = Struct_4(reverseBits(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-524f)) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(1161f, -1194f, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1667f + 1320f) * _wgslsmith_f_op_f32(min(602f, 1122f))))))), -vec4<i32>(_wgslsmith_clamp_i32(~global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 31105i), global0.yy), global0.x), 0i, abs(_wgslsmith_div_i32(1i, -229i)), _wgslsmith_add_i32(~global0.x, _wgslsmith_mod_i32(-2147483647i, global0.x))));
    return _wgslsmith_clamp_vec4_i32(reverseBits(var_2.c), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(-4010i, 2147483647i), -27730i, firstLeadingBit(-24919i), global0.x), select(countOneBits(select(var_2.c, var_2.c, vec4<bool>(false, false, true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<i32>(-26261i, 0i, 2147483647i, -2147483647i)) ^ var_2.c, vec4<bool>(false, any(vec3<bool>(false, false, false)), -288f < var_2.b, true))), _wgslsmith_add_vec4_i32(select(max(vec4<i32>(-33831i, var_2.c.x, var_2.a, var_2.c.x), firstLeadingBit(vec4<i32>(var_2.a, -29125i, 0i, -45979i))), vec4<i32>(1i, 2147483647i, var_2.a, firstTrailingBit(-2147483647i)), true), var_2.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    global1 = array<Struct_5, 1>();
    global0 = _wgslsmith_mod_vec3_i32(firstLeadingBit(-(arg_1.c.yzx >> (u_input.a % vec3<u32>(32u)))), ~abs(~select(vec3<i32>(arg_2.c.x, 24615i, 1i), arg_2.c.yyy, vec3<bool>(true, false, false))));
    var var_0 = Struct_2(-2147483647i, Struct_1(1i, _wgslsmith_f_op_f32(round(420f))));
    let var_1 = vec2<bool>(all(vec3<bool>(any(vec4<bool>(true, true, true, true)), -1321f <= _wgslsmith_f_op_f32(-var_0.b.b), any(vec2<bool>(true, true)) | true)), all(vec2<bool>(!all(vec4<bool>(false, false, true, true)), true)));
    let var_2 = !select(vec4<bool>(true, var_1.x, var_1.x, true), !select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(false, var_1.x, true, false), false), any(vec3<bool>(var_1.x, var_1.x, false))), !vec4<bool>(all(vec2<bool>(var_1.x, true)), true, var_1.x, !var_1.x));
    return (arg_0.x >> ((_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.c.x), 4294967295u) & 25305u) % 32u)) < (arg_2.c.x & 17186i);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    var var_0 = false;
    var_0 = arg_0;
    global0 = _wgslsmith_div_vec3_i32(vec3<i32>(-(~(~(-2147483647i))), 0i, (68924i << ((u_input.c.x << (u_input.c.x % 32u)) % 32u)) << (~u_input.b.x % 32u)), ~_wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, -42879i, global0.x), vec3<i32>(-1i, global0.x, -27811i)), ~abs(vec3<i32>(arg_1, 0i, -1i))));
    var var_1 = ~u_input.a.xx;
    let var_2 = vec4<bool>(arg_0, arg_0, func_4(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 49598i, global0.x, global0.x), func_3()), Struct_4(reverseBits(94010i | global0.x), 577f, _wgslsmith_add_vec4_i32(~vec4<i32>(16459i, 13649i, -2147483647i, global0.x), vec4<i32>(arg_1, arg_1, -44825i, global0.x))), Struct_4(global0.x, -1538f, _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 14415i, 1i, global0.x) >> (vec4<u32>(var_1.x, var_1.x, u_input.a.x, var_1.x) % vec4<u32>(32u)), vec4<i32>(global0.x, global0.x, 2147483647i, -15665i) | vec4<i32>(17293i, 1i, 14423i, 2147483647i)))), arg_0);
    return _wgslsmith_clamp_i32(~(-1i ^ func_3().x), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(0i << (var_1.x % 32u), ~14021i), -18529i), abs(~36001i));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_5 {
    global1 = array<Struct_5, 1>();
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-215f)))));
    global1 = array<Struct_5, 1>();
    let var_1 = ~1i;
    let var_2 = Struct_4(func_2(true, global0.x & 0i, vec4<f32>(var_0.a, 1294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) * _wgslsmith_f_op_f32(min(var_0.a, var_0.a))), var_0.a)), 1000f, vec4<i32>(var_1, _wgslsmith_div_i32(-7481i, -16470i), -func_3().x, 1i));
    return Struct_5(_wgslsmith_f_op_f32(-var_0.a));
}

fn func_5(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_5 {
    var var_0 = Struct_2(arg_3.a, Struct_1(global0.x, _wgslsmith_f_op_f32(-arg_0.a)));
    global0 = firstTrailingBit(vec3<i32>((_wgslsmith_mult_i32(var_0.a, 2147483647i) >> (~0u % 32u)) | arg_3.a, -1i, abs(-9536i)));
    let var_1 = ~(~min(vec3<i32>(func_2(false, 0i, vec4<f32>(arg_3.b, -2391f, -155f, arg_0.a)), global0.x ^ arg_3.a, 43814i), -(~vec3<i32>(-2147483647i, 42005i, 1i))));
    global1 = array<Struct_5, 1>();
    var var_2 = vec4<f32>(-1138f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -1545f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_div_f32(arg_3.b, arg_2.x))), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_1.x)), _wgslsmith_f_op_f32(ceil(arg_1.x))))), var_0.b.b)));
    return Struct_5(_wgslsmith_div_f32(744f, arg_2.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: f32, arg_3: u32) -> vec2<f32> {
    let var_0 = max(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 0i), global0.yx), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-266i, global0.x), global0.xx), ~global0.xy)) & global0.x, global0.x);
    global1 = array<Struct_5, 1>();
    global1 = array<Struct_5, 1>();
    var var_1 = arg_0;
    var var_2 = !select(any(!(!arg_0)), true, any(!arg_0));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * 619f) * _wgslsmith_f_op_f32(arg_1.a + arg_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -1966f) + arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, _wgslsmith_f_op_f32(f32(-1f) * -410f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-612f, 1811f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(596f, 595f) * vec2<f32>(-1851f, 1697f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(vec4<bool>(true, true, true, true), func_5(func_1(true, false), vec2<f32>(-761f, 183f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-623f, 555f, 869f, 2071f))), Struct_1(1i, 1664f)), func_5(func_1(false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, 137f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1989f, -1095f, 1000f, -1031f), vec4<f32>(1798f, 903f, -837f, 801f), vec4<bool>(false, true, true, false))), Struct_1(0i, -359f)).a, 4294967295u)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1853f)));
    global0 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(func_3().x, 48537i, -global0.x)), global0.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(2147483647i, global0.x, global0.x)), abs(vec3<i32>(global0.x, 616i, 24349i))), 0i));
    var var_1 = Struct_4(_wgslsmith_div_i32(global0.x, global0.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(Struct_5(var_0.x), var_0, vec4<f32>(var_0.x, -3190f, 695f, var_0.x), Struct_1(58043i, var_0.x)).a) * _wgslsmith_div_f32(var_0.x, -894f))), vec4<i32>(-36005i, _wgslsmith_mult_i32(-global0.x, global0.x), countOneBits(~firstLeadingBit(27707i)), min(1i, ~(-22572i)) << (~min(u_input.c.x, 0u) % 32u)));
    var var_2 = max(func_3().x, -global0.x);
    let var_3 = Struct_5(433f);
    global1 = array<Struct_5, 1>();
    var_1 = Struct_4(0i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a + var_0.x), -1000f)), ~vec4<i32>(-_wgslsmith_mod_i32(var_1.c.x, global0.x), -1i, _wgslsmith_mult_i32(-15107i, -61094i), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(func_3().x ^ var_1.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(559f, -676f, 540f), vec3<f32>(-117f, var_1.b, var_3.a)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 383f, var_0.x), vec3<f32>(-565f, -2510f, var_3.a), vec3<bool>(false, true, false))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 120f, 1183f), vec3<f32>(-1151f, var_3.a, 409f))))) * vec3<f32>(_wgslsmith_div_f32(var_1.b, var_3.a), var_1.b, -2175f)));
}

