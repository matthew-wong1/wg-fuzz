struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = min(u_input.a, ~firstLeadingBit(reverseBits(arg_0.a.a.x)));
    let var_1 = all(select(!vec3<bool>(arg_0.d && false, arg_0.d, true), vec3<bool>(true, select(arg_0.d, arg_0.a.b.x, false), all(vec2<bool>(false, true))), !arg_0.c));
    var var_2 = arg_1;
    let var_3 = max(_wgslsmith_sub_i32(-min(0i, _wgslsmith_add_i32(1i, -1i)), firstLeadingBit(24172i)), reverseBits(~(~1i)));
    var_2 = arg_1;
    return -max(_wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i, 0i, 0i) & vec3<i32>(var_3, var_3, var_3)), vec3<i32>(1i, min(var_3, -2147483647i), 2147483647i ^ var_3)), abs(-select(vec3<i32>(var_3, 6835i, 18367i), vec3<i32>(13031i, 0i, 29988i), arg_0.a.b.wxy)));
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(853f, -357f, 1510f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1256f, -414f, -1000f))), !vec3<bool>(arg_1, false, arg_1))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -372f, var_0.x))))), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(945f, -1473f) - var_0.x) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -1492f))), var_0.x)));
    var var_1 = u_input.a;
    let var_2 = var_0.x;
    var var_3 = func_3(Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(u_input.a, 55350u), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 8909u))), vec4<bool>(all(vec2<bool>(true, arg_1)), arg_1, true, true), u_input.a >> (1u % 32u), var_0.x, ~1497u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.a), abs(vec2<u32>(u_input.a, u_input.a))), ~reverseBits(vec2<u32>(u_input.a, 22645u))), !arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2052f, 924f, var_0.x, var_0.x))))));
    return any(vec2<bool>(!arg_1, arg_1));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = -abs(~(~min(vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x), vec4<i32>(-2781i, -1246i, arg_0.x, arg_0.x))));
    let var_1 = select(_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(0i, _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(2147483647i, var_0.x, -2147483647i, var_0.x)), var_0.x & arg_0.x, var_0.x)) | vec4<i32>(arg_0.x, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), var_0.wy) >> (arg_2.b.x % 32u), -_wgslsmith_clamp_i32(-2147483647i, arg_0.x, 0i)), var_0, func_2(var_0.x, false) && (any(arg_2.a.b.yxw) & arg_1));
    var var_2 = Struct_1(vec3<u32>(u_input.a, u_input.a, countOneBits(u_input.a)), arg_2.a.b, abs(arg_2.b.x), arg_2.a.d, arg_2.b.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), var_2.d))), 1049f);
    var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * 1000f)), var_2.d)));
    return _wgslsmith_sub_i32(var_0.x, ~(-27948i));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3.e;
    let var_1 = min(vec3<i32>(arg_0.a, arg_0.c.x & 1i, ~2147483647i), _wgslsmith_clamp_vec3_i32(-(~(-vec3<i32>(arg_0.b, -3920i, arg_0.a))), -vec3<i32>(arg_0.b, 9402i, 27943i), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-20587i, arg_0.b, 44425i)), vec3<i32>(-1i, arg_0.a, arg_0.b), vec3<i32>(0i, arg_0.a, arg_0.c.x)), vec3<i32>(2147483647i, arg_0.a, func_1(vec3<i32>(arg_0.b, 2147483647i, -4485i), true, arg_2)))));
    let var_2 = Struct_3(_wgslsmith_mod_i32(arg_0.c.x, _wgslsmith_dot_vec3_i32(var_1, ~var_1)), -1i, var_1.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.d, arg_0.d.x, 605f, -750f), vec4<f32>(-673f, 164f, arg_3.d, 777f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(536f, arg_0.d.x, -465f, 351f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, -680f, -1000f, arg_3.d) - arg_0.d))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.d - vec4<f32>(-940f, arg_2.a.d, arg_3.d, 404f)))), vec4<f32>(-685f, _wgslsmith_f_op_f32(sign(-552f)), _wgslsmith_div_f32(-1217f, 1341f), _wgslsmith_f_op_f32(select(arg_2.a.d, -1252f, false)))))));
    var var_3 = min(var_2.c ^ ~(-vec2<i32>(var_1.x, var_2.c.x)), -((vec2<i32>(2147483647i, arg_0.b) | var_1.yz) ^ vec2<i32>(9305i, var_1.x))) << (arg_3.a.yy % vec2<u32>(32u));
    var var_4 = select(arg_3.b.xyw, vec3<bool>(arg_2.d & (!arg_2.a.b.x && arg_1), func_2(-48669i | arg_0.a, true), arg_2.c), arg_1);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1503f);
    var var_1 = func_4(Struct_3(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-6730i, 20209i, 5771i)), vec3<i32>(reverseBits(60391i), select(18992i, 0i, false), 2147483647i)), vec2<i32>(~(-18874i), func_1(countOneBits(vec3<i32>(1i, 2147483647i, 34119i)), true, Struct_2(Struct_1(vec3<u32>(u_input.a, 29418u, u_input.a), vec4<bool>(true, false, false, true), 0u, -372f, u_input.a), vec2<u32>(u_input.a, u_input.a), true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(904f, -925f, 1223f, -189f) - vec4<f32>(-169f, 1000f, 474f, 359f))))), true || !(!func_2(1i, true)), Struct_2(Struct_1(~abs(vec3<u32>(u_input.a, u_input.a, 60282u)), vec4<bool>(true, true, true, true), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(f32(-1f) * -557f))), u_input.a), ~(~(~vec2<u32>(u_input.a, 106657u))), false, true), Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(50383u, 9669u, u_input.a) >> (vec3<u32>(1u, 6363u, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 9388u), vec3<u32>(u_input.a, 1u, 4294967295u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(31942u < u_input.a, true, true, true), true), _wgslsmith_mod_u32(0u, 27969u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(11638u, 25596u), vec2<u32>(0u, u_input.a)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(945f)) - 1f) - 1430f), abs(_wgslsmith_add_u32(~u_input.a, u_input.a & u_input.a))));
    let var_2 = func_4(Struct_3(-1i, -2147483647i, ~vec2<i32>(1i, 1i) << (~(var_1.a.a.xx | vec2<u32>(u_input.a, var_1.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, var_1.a.d, var_1.a.d, var_1.a.d))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(648f, -1379f, var_1.a.d, var_1.a.d) - vec4<f32>(var_1.a.d, var_1.a.d, 737f, 1598f)))))), false, func_4(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-27204i, -3520i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -25065i), vec2<i32>(-42664i, 37001i))), -2147483647i << (~var_1.b.x % 32u), vec2<i32>(-2147483647i, ~2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.d, 441f, 2815f, var_1.a.d), vec4<f32>(-912f, 1335f, -1729f, 682f), select(vec4<bool>(true, true, false, var_1.d), vec4<bool>(true, false, false, var_1.a.b.x), var_1.a.b)))), func_4(Struct_3(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-1i, -63990i)), firstTrailingBit(vec2<i32>(0i, 10815i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, 349f, var_1.a.d, -431f))), any(!var_1.a.b.xw), func_4(Struct_3(-26309i, -9492i, vec2<i32>(0i, 1i), vec4<f32>(var_1.a.d, var_1.a.d, 111f, var_1.a.d)), !var_1.c, Struct_2(var_1.a, vec2<u32>(u_input.a, var_1.a.e), var_1.c, var_1.d), Struct_1(vec3<u32>(0u, 30020u, 1415u), var_1.a.b, var_1.a.e, -1000f, var_1.b.x)), func_4(Struct_3(-1i, -27575i, vec2<i32>(-21183i, 2147483647i), vec4<f32>(var_1.a.d, -2037f, 920f, -1077f)), !var_1.d, func_4(Struct_3(2147483647i, 83372i, vec2<i32>(-72175i, -2147483647i), vec4<f32>(var_1.a.d, var_1.a.d, 323f, 1068f)), var_1.d, Struct_2(var_1.a, var_1.b, false, false), var_1.a), var_1.a).a).a.b.x, Struct_2(var_1.a, var_1.b, true, _wgslsmith_f_op_f32(f32(-1f) * -161f) < var_1.a.d), func_4(Struct_3(0i, _wgslsmith_clamp_i32(-26873i, 22468i, 26352i), ~vec2<i32>(-2147483647i, 47934i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, var_1.a.d, var_1.a.d, var_1.a.d) - vec4<f32>(-189f, var_1.a.d, var_1.a.d, var_1.a.d))), true, Struct_2(var_1.a, select(var_1.b, var_1.b, true), !var_1.d, false), Struct_1(var_1.a.a, select(vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(false, var_1.c, var_1.d, var_1.d), false), 16559u, _wgslsmith_div_f32(var_1.a.d, var_1.a.d), ~var_1.a.a.x)).a), func_4(Struct_3(1i, ~2147483647i, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 3576i), vec2<i32>(-2147483647i, 40533i)), reverseBits(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1655f, var_1.a.d, 1000f, 1895f))))), true, func_4(Struct_3(-1i, -5556i << (var_1.a.c % 32u), vec2<i32>(-55872i, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2660f, 430f, var_1.a.d) + vec4<f32>(799f, -893f, -1402f, var_1.a.d))), 35552u != (u_input.a >> (4294967295u % 32u)), func_4(Struct_3(0i, 3990i, vec2<i32>(-21490i, 2147483647i), vec4<f32>(var_1.a.d, var_1.a.d, -1047f, 986f)), true, func_4(Struct_3(-1i, -4328i, vec2<i32>(-2147483647i, 0i), vec4<f32>(var_1.a.d, 281f, var_1.a.d, 1455f)), var_1.c, Struct_2(var_1.a, vec2<u32>(49646u, u_input.a), false, true), Struct_1(vec3<u32>(0u, 4294967295u, var_1.a.e), vec4<bool>(var_1.d, true, true, var_1.a.b.x), 4294967295u, var_1.a.d, 5575u)), var_1.a), func_4(Struct_3(0i, -1i, vec2<i32>(1i, 2147483647i), vec4<f32>(-2457f, -2416f, var_1.a.d, -1120f)), var_1.c, func_4(Struct_3(-562i, -11278i, vec2<i32>(-13593i, 9597i), vec4<f32>(var_1.a.d, var_1.a.d, 181f, var_1.a.d)), true, Struct_2(Struct_1(var_1.a.a, vec4<bool>(true, var_1.d, false, true), u_input.a, var_1.a.d, u_input.a), vec2<u32>(0u, 0u), true, var_1.a.b.x), var_1.a), Struct_1(vec3<u32>(4294967295u, u_input.a, 2448u), var_1.a.b, u_input.a, var_1.a.d, 4294967295u)).a), func_4(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(7744i, 2147483647i), vec2<i32>(0i, -1i)), i32(-1i) * -1i, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(13455i, -26689i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1564f, var_1.a.d, var_1.a.d, 1032f))), ~u_input.a > reverseBits(28574u), func_4(Struct_3(-14109i, 11962i, vec2<i32>(32906i, 0i), vec4<f32>(var_1.a.d, 416f, 1961f, -2251f)), false, func_4(Struct_3(2147483647i, 23920i, vec2<i32>(-1i, 2147483647i), vec4<f32>(465f, -754f, -2075f, 1316f)), var_1.a.b.x, Struct_2(Struct_1(var_1.a.a, var_1.a.b, u_input.a, 1140f, 0u), var_1.a.a.zz, var_1.c, var_1.a.b.x), Struct_1(var_1.a.a, var_1.a.b, 11054u, var_1.a.d, var_1.b.x)), var_1.a), Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u), !vec4<bool>(var_1.d, false, var_1.c, var_1.a.b.x), ~1317u, var_1.a.d, 1u)).a).a);
    var_1 = func_4(Struct_3(abs(countOneBits(~(-56549i))), -2147483647i, firstLeadingBit(vec2<i32>(1i, 0i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2882f, var_2.a.d, 1000f, var_1.a.d) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.d, var_1.a.d, -1412f, 2726f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, var_1.a.d, var_2.a.d, var_2.a.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1426f, var_1.a.d, 1746f, 955f)), var_2.d)), false))), 48283u >= (abs(var_2.a.e >> (var_1.b.x % 32u)) << (~(57427u << (var_2.a.c % 32u)) % 32u)), func_4(Struct_3(_wgslsmith_mult_i32(~(-38987i), max(-49184i, -25338i)), _wgslsmith_clamp_i32(1i, select(0i, 3840i, false), -2147483647i), countOneBits(-vec2<i32>(5205i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, var_1.a.d, var_1.a.d, var_2.a.d)))), var_2.a.b.x, Struct_2(Struct_1(countOneBits(var_2.a.a), func_4(Struct_3(27271i, 0i, vec2<i32>(-2147483647i, -1i), vec4<f32>(var_1.a.d, var_2.a.d, var_1.a.d, var_2.a.d)), false, Struct_2(Struct_1(vec3<u32>(42100u, 0u, u_input.a), vec4<bool>(true, false, var_1.c, false), u_input.a, -377f, u_input.a), var_1.b, var_2.a.b.x, true), Struct_1(var_1.a.a, var_1.a.b, 4294967295u, var_1.a.d, 4294967295u)).a.b, 1u, _wgslsmith_f_op_f32(-var_2.a.d), u_input.a), var_1.a.a.xy, var_1.c, var_2.c), Struct_1(vec3<u32>(countOneBits(u_input.a), _wgslsmith_mult_u32(0u, var_2.b.x), reverseBits(var_1.b.x)), !select(var_2.a.b, vec4<bool>(false, false, var_1.c, false), var_1.d), var_1.a.e, var_1.a.d, ~0u)), Struct_1(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.c, 51411u, var_1.b.x) ^ var_1.a.a, ~var_2.a.a)), vec4<bool>(false, var_2.a.b.x, select(any(vec3<bool>(var_1.a.b.x, false, false)), all(vec4<bool>(var_1.a.b.x, var_2.a.b.x, false, false)), true), true), 4294967295u, _wgslsmith_div_f32(var_1.a.d, var_2.a.d), 36909u));
    let var_3 = Struct_4(func_4(Struct_3(min(~38148i, 1i), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, 40273i), -22659i), ~vec2<i32>(-15576i, -18138i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a.d, -135f, var_2.a.d, var_1.a.d)))), var_1.a.b.x, func_4(Struct_3(~1i, i32(-1i) * -31657i, vec2<i32>(-1i, -2147483647i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.d, var_2.a.d, 237f, -570f)))), var_1.a.b.x, Struct_2(var_1.a, vec2<u32>(var_1.b.x, 41207u), var_1.c, var_2.c), var_1.a), var_2.a), vec4<u32>(~firstTrailingBit(u_input.a), var_1.b.x, firstTrailingBit(1u), reverseBits(countOneBits(var_1.a.c))));
    var var_4 = Struct_1(var_1.a.a, select(!vec4<bool>(var_2.c, false, all(vec2<bool>(true, var_1.a.b.x)), var_3.a.c), !select(var_1.a.b, select(vec4<bool>(var_1.d, true, true, var_1.c), var_2.a.b, vec4<bool>(true, var_2.c, var_3.a.a.b.x, true)), vec4<bool>(var_1.c, false, var_2.d, false)), all(var_1.a.b.xz)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(119f)), var_1.a.d))), max(~_wgslsmith_sub_u32(var_3.b.x | u_input.a, ~var_3.a.a.c), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.x, ((1i << (~u_input.a % 32u)) << ((~u_input.a << (_wgslsmith_mod_u32(var_3.b.x, 2333u) % 32u)) % 32u)) & func_1(-vec3<i32>(-45117i, -66846i, -1i), select(var_2.a.b.x & true, var_1.a.b.x, true), func_4(Struct_3(56958i, -2147483647i, vec2<i32>(1i, 54958i), vec4<f32>(-788f, -1452f, -782f, var_4.d)), false, Struct_2(Struct_1(vec3<u32>(1u, u_input.a, var_4.c), var_1.a.b, 7576u, -1537f, 38079u), vec2<u32>(var_2.a.e, 8462u), false, var_3.a.a.b.x), Struct_1(vec3<u32>(var_3.b.x, u_input.a, 4294967295u), var_1.a.b, var_1.b.x, var_2.a.d, var_1.b.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1552f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - 1238f), _wgslsmith_f_op_f32(select(-976f, var_3.a.a.d, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(698f, -2499f))))));
}

