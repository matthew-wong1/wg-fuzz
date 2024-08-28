struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = -1000f;
    var var_0 = _wgslsmith_f_op_f32(floor(1000f));
    var_0 = 1000f;
    var var_1 = -53902i;
    var var_2 = u_input.a.x;
    return -1400f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1;
    global0 = arg_1.d;
    let var_1 = var_0.d;
    global0 = var_1;
    global0 = arg_1.d;
    return Struct_1(-countOneBits(0i), arg_1.b, abs((arg_1.c ^ arg_1.c) << (vec4<u32>(arg_1.b, 43132u, arg_1.b, u_input.c.x) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(max(-2147483647i, var_0.a), firstTrailingBit(arg_1.c.x), u_input.a.x, u_input.a.x), var_0.c & -var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i)) + var_0.d) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.d, -419f), _wgslsmith_f_op_f32(func_3(-51018i))))))), vec2<u32>(~(~u_input.c.x << (var_0.b % 32u)), 34656u));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(abs(_wgslsmith_mult_i32(28565i, countOneBits(-1i))), _wgslsmith_clamp_u32(arg_0.b, countOneBits(~(~u_input.c.x)), ~u_input.c.x), vec4<i32>(-max(_wgslsmith_dot_vec3_i32(arg_0.c.wyz, vec3<i32>(14370i, u_input.a.x, -35663i)), -1i), u_input.b.x, -51699i, -1i), -581f, ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), ~(~arg_0.e.x)));
    var var_1 = arg_0.e;
    var_1 = _wgslsmith_clamp_vec2_u32(~(vec2<u32>(var_1.x, u_input.c.x) & ~var_0.e), firstLeadingBit(vec2<u32>(73946u, ~4294967295u)), vec2<u32>(abs(~66107u), 1u));
    return !(!select(vec3<bool>(-2147483647i >= var_0.c.x, select(false, true, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(arg_2.x + 419f);
    let var_0 = arg_2.x;
    var var_1 = Struct_1(14265i, ~(~u_input.c.x), _wgslsmith_add_vec4_i32(-(~vec4<i32>(-1i, -53477i, u_input.b.x, 2246i)), -max(~vec4<i32>(u_input.a.x, u_input.b.x, -16310i, -14446i), vec4<i32>(u_input.a.x, u_input.a.x, 24176i, -1i))), -139f, countOneBits(select(firstLeadingBit(~u_input.c.yy), abs(min(u_input.c.xx, u_input.c.yz)), select(arg_3.x & arg_3.x, 0i >= u_input.a.x, all(vec3<bool>(arg_3.x, false, false))))));
    var_1 = Struct_1(~_wgslsmith_mod_i32(-14156i, _wgslsmith_div_i32(func_2(arg_3, Struct_1(var_1.a, var_1.b, vec4<i32>(-11168i, var_1.c.x, var_1.a, u_input.a.x), 1324f, vec2<u32>(var_1.b, u_input.c.x)), true).c.x, var_1.c.x)), 41725u, abs(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(var_1.c, var_1.c, vec4<i32>(u_input.a.x, u_input.a.x, var_1.c.x, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + 1815f)), ~(~(_wgslsmith_div_vec2_u32(u_input.c.zy, vec2<u32>(arg_1, u_input.c.x)) ^ func_2(vec3<bool>(arg_0, arg_0, arg_3.x), Struct_1(-1i, 0u, var_1.c, -1178f, vec2<u32>(29423u, var_1.e.x)), arg_3.x).e)));
    var var_2 = vec3<u32>(countOneBits(arg_1), 30039u, u_input.c.x);
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(-13505i, reverseBits(min(countOneBits(u_input.c.x) ^ abs(arg_1.b), abs(36137u))), arg_0.c, _wgslsmith_f_op_f32(func_5(all(vec2<bool>(true, 0i != arg_0.a)), _wgslsmith_mod_u32(~(~u_input.c.x), u_input.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-305f, 358f)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_2.d * -1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d, arg_0.d, 609f), vec3<f32>(135f, arg_2.d, 418f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(394f, arg_0.d, 409f))))), select(vec3<bool>(any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, false, true, true)), false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), func_4(func_2(vec3<bool>(false, false, true), arg_2, false))))), vec2<u32>(~countOneBits(u_input.c.x), ~abs(arg_2.e.x)) | u_input.c.zx);
    var var_1 = min(u_input.c, u_input.c);
    global0 = arg_0.d;
    let var_2 = vec4<f32>(-198f, arg_1.d, _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1900f + var_0.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1150f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(all(vec3<bool>(true, false, true)), 35264u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1633f, 536f, -961f), vec3<f32>(-1336f, -391f, -694f), false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), 373f)));
    var_0 = arg_0;
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-867f, 299f)) - _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b.x, u_input.c.x, vec4<i32>(-50515i, 1i, u_input.a.x, 3044i), 1048f, vec2<u32>(8237u, u_input.c.x)), Struct_1(-1196i, 37925u, vec4<i32>(0i, u_input.b.x, u_input.a.x, u_input.b.x), -548f, vec2<u32>(u_input.c.x, u_input.c.x)), Struct_1(-74867i, 1u, vec4<i32>(u_input.b.x, -1i, 9591i, u_input.a.x), 1189f, vec2<u32>(u_input.c.x, u_input.c.x))))) + 448f) + 818f));
    global0 = 1131f;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(208f, _wgslsmith_div_f32(-1026f, 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -512f), vec2<f32>(471f, -2055f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(868f, 1368f))), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(401f, -1201f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-722f, 220f) + vec2<f32>(510f, -1641f))), !func_4(Struct_1(u_input.b.x, u_input.c.x, vec4<i32>(-28810i, -1524i, u_input.a.x, -1i), -814f, u_input.c.zx)).zx))));
    var var_1 = _wgslsmith_clamp_vec2_u32(func_2(vec3<bool>(!func_4(Struct_1(u_input.b.x, u_input.c.x, vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x), var_0.x, u_input.c.xx)).x, true, true), Struct_1(abs(countOneBits(u_input.a.x)), min(1u ^ u_input.c.x, u_input.c.x), vec4<i32>(-1i, u_input.a.x << (u_input.c.x % 32u), u_input.a.x, -2147483647i), _wgslsmith_f_op_f32(var_0.x - var_0.x), u_input.c.yy), true).e, vec2<u32>(_wgslsmith_div_u32(37560u, _wgslsmith_mod_u32(~u_input.c.x, ~4294967295u)), _wgslsmith_div_u32(u_input.c.x, select(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 0u), true))), ~abs(vec2<u32>(65790u, firstTrailingBit(u_input.c.x))));
    let var_2 = func_2(func_4(func_2(vec3<bool>(var_0.x <= 1823f, true, all(vec3<bool>(true, false, false))), Struct_1(-18149i, _wgslsmith_mult_u32(var_1.x, 66759u), _wgslsmith_div_vec4_i32(vec4<i32>(-18537i, u_input.b.x, 33166i, 1i), vec4<i32>(u_input.b.x, -1i, -2998i, u_input.a.x)), _wgslsmith_f_op_f32(-var_0.x), u_input.c.yz), !(37558u > var_1.x))), Struct_1(countOneBits(-u_input.b.x), max(~74679u, u_input.c.x), -_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, 17415i, 1i, 416i), -vec4<i32>(-36262i, u_input.b.x, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1351f, _wgslsmith_f_op_f32(round(-243f))))), firstLeadingBit(u_input.c.xy)), false);
    let var_3 = func_4(Struct_1(~max(-27474i, _wgslsmith_add_i32(var_2.c.x, u_input.b.x)), _wgslsmith_mult_u32(var_2.b, max(1u, ~u_input.c.x)), -(~var_2.c | var_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1465f * var_2.d) * var_0.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(87053u, var_2.e.x), var_2.e) >> (firstLeadingBit(~var_2.e) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-588f, vec2<f32>(var_0.x, var_0.x), countOneBits(_wgslsmith_mod_i32(~_wgslsmith_add_i32(var_2.c.x, u_input.a.x), abs(~u_input.b.x))), var_2.c.x);
}

