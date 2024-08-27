struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(vec2<u32>(1u, ~global1.x), 1i, reverseBits(_wgslsmith_mult_vec2_i32(global0.b.xz, vec2<i32>(global0.b.x, -333i)) ^ abs(firstTrailingBit(vec2<i32>(1i, 25588i)))), Struct_1(~vec2<i32>(_wgslsmith_add_i32(global0.a.x, u_input.b), i32(-1i) * -1i), _wgslsmith_sub_vec3_i32(global0.b, (vec3<i32>(u_input.b, global0.a.x, -33988i) >> (vec3<u32>(global1.x, u_input.c.x, 54354u) % vec3<u32>(32u))) | ~global0.b)));
    let var_1 = select(vec2<bool>(all(vec2<bool>(true, var_0.a.x == var_0.a.x)), !all(vec4<bool>(true, true, true, true)) | any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))), vec2<bool>(var_0.a.x > var_0.a.x, any(vec3<bool>(false, true, true)))), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec2<bool>(false && (-global0.a.x < -16660i), select(false, true, 0i >= global0.a.x)));
    let var_2 = var_0.d;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, var_2.a.x), select(~(-2147483647i), abs(~u_input.b << (abs(0u) % 32u)), var_1.x));
    global1 = abs(firstTrailingBit(vec4<u32>(4213u, global1.x, global1.x, 61823u >> (u_input.a.x % 32u)))) & firstTrailingBit(vec4<u32>(abs(~0u), _wgslsmith_clamp_u32(~38477u, abs(44614u), _wgslsmith_mult_u32(global1.x, 4294967295u)), firstTrailingBit(~11246u), u_input.a.x));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-248f - -433f), _wgslsmith_f_op_f32(1768f - -740f))) * -358f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-757f))), -1018f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, -542f, 1125f, 277f) * vec4<f32>(-448f, 340f, -640f, -1339f)), vec4<f32>(1634f, -959f, -1655f, 694f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, 1263f, 300f, -884f) * vec4<f32>(1682f, -251f, 391f, 831f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_1 = Struct_1(global0.a, global0.b);
    global1 = reverseBits(~(~vec4<u32>(1u, ~7318u, 0u, u_input.c.x & 4294967295u)));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(arg_0.x), arg_1);
    let var_3 = Struct_2(vec2<u32>(~4294967295u, 0u), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(global0.b, vec3<i32>(-12356i, global0.a.x, arg_0.x)), ~firstLeadingBit(global0.a.x)) << (u_input.c.x % 32u), -var_1.b.yy & vec2<i32>(var_1.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.a, global0.b.zx), 44666i)), Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i), var_1.a & var_1.a)), abs(vec3<i32>(-1i << (global1.x % 32u), _wgslsmith_add_i32(-4718i, global0.b.x), var_1.a.x))));
    return (firstTrailingBit(u_input.a.x) & _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~41712u, var_3.a.x), u_input.c.x, _wgslsmith_dot_vec2_u32(var_3.a, global1.zy))) << (var_3.a.x % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<u32>(countOneBits(u_input.c.x), ~arg_2.e.a.x, arg_0.x, arg_0.x ^ _wgslsmith_mod_u32(func_2(select(vec3<i32>(arg_2.d.c.x, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, -30829i), arg_2.b.yxy), -12844i), _wgslsmith_mod_u32(arg_0.x, 27576u) >> (_wgslsmith_div_u32(0u, u_input.a.x) % 32u)));
    let var_1 = countOneBits(firstTrailingBit(~arg_0));
    let var_2 = global0.b;
    var var_3 = abs(~(-22142i));
    let var_4 = _wgslsmith_div_i32(global0.a.x, min(i32(-1i) * -30009i, 1i));
    return arg_2.d.d;
}

fn func_1() -> vec4<u32> {
    global0 = func_4(~(vec4<u32>(_wgslsmith_mod_u32(8602u, u_input.a.x), func_2(global0.b, 5146i), 2499u, func_2(vec3<i32>(-21788i, 50107i, global0.b.x), global0.b.x)) ^ (firstLeadingBit(vec4<u32>(u_input.c.x, global1.x, u_input.a.x, u_input.a.x)) & ~vec4<u32>(u_input.c.x, global1.x, 26527u, 1841u))), 1194f, Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(23904i), firstTrailingBit(-1i)), 1i), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1351f, 301f, 1315f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(2275f, -564f, true)), -491f, -248f)), Struct_2(~(u_input.a.xy << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))), 43333i, vec2<i32>(_wgslsmith_add_i32(global0.b.x, -2147483647i), 1i), Struct_1(vec2<i32>(55885i, 15822i), ~global0.b)), Struct_2(vec2<u32>(min(0u, u_input.a.x), ~u_input.a.x), max(countOneBits(u_input.b), max(u_input.b, -1i)), vec2<i32>(1i >> (global1.x % 32u), -51117i), Struct_1(global0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, global0.a.x, u_input.b), global0.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -1858f)));
    global1 = vec4<u32>(~u_input.a.x, ~(~global1.x), 1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yz, u_input.c.xx), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), global1.zy)), min(firstLeadingBit(global1.x), abs(u_input.a.x)), u_input.a.x), max(countOneBits(~0u), global1.x)));
    let var_0 = select(true, select(_wgslsmith_dot_vec3_u32(~vec3<u32>(28570u, u_input.a.x, 11025u), abs(global1.wyy)) >= ~(~global1.x), true, !(firstLeadingBit(u_input.a.x) != u_input.a.x)), all(vec2<bool>(false, all(vec2<bool>(true, true)))) && false);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(949f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(923f, -1030f, var_0)) - _wgslsmith_f_op_f32(-1719f + -396f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), 1f, _wgslsmith_div_f32(461f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-810f, 397f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1523f, -899f, 1000f, -580f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, -1843f, -1000f, -1168f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1079f, -1801f, 1067f, 376f)))))));
    let var_2 = -534f;
    return firstLeadingBit(~_wgslsmith_mult_vec4_u32(~vec4<u32>(118790u, 83120u, 24889u, u_input.a.x), vec4<u32>(global1.x, 32422u, 0u, 1u) ^ vec4<u32>(global1.x, u_input.a.x, global1.x, 4294967295u))) & ~abs(vec4<u32>(countOneBits(0u), ~1u, ~global1.x, select(4294967295u, 45701u, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ((_wgslsmith_mult_vec4_u32(func_1(), ~vec4<u32>(5700u, 0u, u_input.a.x, global1.x)) ^ ((vec4<u32>(global1.x, 25583u, u_input.a.x, global1.x) << (vec4<u32>(u_input.a.x, 1u, 83204u, 4294967295u) % vec4<u32>(32u))) & vec4<u32>(11822u, 4294967295u, u_input.a.x, 4294967295u))) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4373u, global1.x, u_input.a.x, 5337u), firstTrailingBit(vec4<u32>(9587u, 4294967295u, u_input.a.x, 4294967295u))), u_input.c.x >> (_wgslsmith_sub_u32(global1.x, global1.x) % 32u), u_input.c.x, 24854u)) << (func_1() % vec4<u32>(32u));
    global0 = func_4(~((~vec4<u32>(u_input.c.x, 58643u, global1.x, 0u) >> (firstTrailingBit(vec4<u32>(global1.x, 41489u, 75181u, global1.x)) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.a.x, global1.x, 1u, 1u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1299f))))), 529f)), Struct_3(31709i, !vec4<bool>(true, true, all(vec2<bool>(false, false)), true), vec3<f32>(1f, 1f, 1f), Struct_2(vec2<u32>(global1.x, 0u), select(_wgslsmith_add_i32(u_input.b, 0i), u_input.b, true), vec2<i32>(-u_input.b, func_4(vec4<u32>(1u, 24183u, 4294967295u, 1u), 742f, Struct_3(u_input.b, vec4<bool>(true, false, false, true), vec3<f32>(1000f, -2135f, -139f), Struct_2(u_input.a.yz, global0.b.x, global0.b.yy, Struct_1(global0.a, global0.b)), Struct_2(vec2<u32>(global1.x, u_input.a.x), 9317i, global0.a, Struct_1(global0.a, vec3<i32>(u_input.b, global0.b.x, global0.b.x)))), 1000f).b.x), Struct_1(vec2<i32>(5095i, 3810i), global0.b)), Struct_2(select(u_input.c.xz, ~global1.wz, vec2<bool>(true, true)), 1i, vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), global0.b.x), Struct_1(vec2<i32>(global0.a.x, -57138i), countOneBits(vec3<i32>(u_input.b, -1i, global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(558f, 2368f) * -848f))));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3()).x, -1189f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = Struct_3(_wgslsmith_div_i32(-6791i << (~(~u_input.a.x) % 32u), abs(-firstLeadingBit(0i))), vec4<bool>(true, all(vec3<bool>(true, true, true)), !(!select(false, true, true)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3()).xzy * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-701f, -680f, 358f) * vec3<f32>(607f, 167f, -369f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(335f, -889f, -963f) + vec3<f32>(-584f, -929f, -575f)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))))), Struct_2(vec2<u32>(global1.x, u_input.c.x), -_wgslsmith_mult_i32(u_input.b, min(u_input.b, 9917i)), ~global0.a, Struct_1(vec2<i32>(abs(23804i), 2147483647i), _wgslsmith_sub_vec3_i32(global0.b, vec3<i32>(11439i, 0i, global0.a.x)) >> (select(vec3<u32>(u_input.a.x, global1.x, u_input.a.x), vec3<u32>(4294967295u, 33836u, global1.x), vec3<bool>(true, false, false)) % vec3<u32>(32u)))), Struct_2(countOneBits(global1.zx) | vec2<u32>(global1.x, ~1u), ~(global0.a.x >> (global1.x % 32u)), global0.b.xy, func_4(min(vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.a.x), ~vec4<u32>(11426u, global1.x, global1.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), Struct_3(-global0.a.x, vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1492f, -776f, 1000f)), Struct_2(vec2<u32>(u_input.c.x, 4294967295u), u_input.b, vec2<i32>(u_input.b, u_input.b), Struct_1(vec2<i32>(31982i, u_input.b), vec3<i32>(global0.a.x, 30778i, 24436i))), Struct_2(vec2<u32>(global1.x, 78536u), u_input.b, vec2<i32>(-1i, u_input.b), Struct_1(vec2<i32>(-1i, u_input.b), global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -651f))));
    global1 = abs(~vec4<u32>(~(~103083u), global1.x, global1.x, var_1.e.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, -26611i, var_1.e.c.x, var_1.d.c.x), vec4<i32>(-2147483647i, 21516i, -1935i, global0.b.x)), vec4<i32>(global0.a.x, -1i, 3950i, 2147483647i)), _wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~global1.zy, var_1.d.a), select(6209u, 1u, any(vec4<bool>(var_1.b.x, var_1.b.x, false, true)))), 0u), global1.x);
}

