struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-11051i, vec4<u32>(15850u, 0u, 67538u, 4294967295u), 4294967295u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    global0 = arg_2;
    let var_0 = i32(-1i) * -30321i;
    var var_1 = vec3<i32>(reverseBits(arg_1.a.a), _wgslsmith_mult_i32(var_0, 2147483647i), -68991i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(global0.a.a, min(reverseBits(u_input.d), _wgslsmith_mod_i32(2147483647i, -45816i))), global0.a.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~arg_2.a.b.zwy, u_input.b ^ arg_2.a.b.zwz), 41430u)));
    global0 = Struct_2(Struct_1(select(~var_1.x, arg_2.a.a, true), vec4<u32>(~arg_1.a.b.x, 18171u ^ u_input.b.x, global0.a.b.x & global0.a.b.x, var_2.a.b.x >> (11146u % 32u)) ^ vec4<u32>(var_2.a.b.x >> (arg_2.a.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a.b.x), arg_2.a.b.xz), ~1u, ~40345u), ~max(u_input.b.x >> (92633u % 32u), _wgslsmith_mult_u32(u_input.b.x, var_2.a.c))));
    return vec2<bool>(false, u_input.b.x > (~arg_1.a.c & 4294967295u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = arg_1.x;
    var_0 = true;
    let var_1 = Struct_3(Struct_2(global0.a), ~6788i, arg_3 == _wgslsmith_f_op_f32(1464f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(abs(-462f)))));
    let var_2 = 824f;
    var var_3 = var_2;
    return -1i;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = !all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), false));
    global0 = Struct_2(Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global0.a.a), vec2<i32>(-2147483647i, global0.a.a))) << (u_input.b.x % 32u), vec4<u32>(global0.a.c, max(u_input.b.x, ~global0.a.b.x), _wgslsmith_mod_u32(~8501u, select(global0.a.c, 0u, false)), 32834u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~u_input.b.x)));
    var_0 = select(false, arg_0 > -678f, func_4(select(vec2<bool>(false, true), func_3(vec3<f32>(1020f, arg_0, -941f), Struct_2(global0.a), Struct_2(Struct_1(2270i, vec4<u32>(global0.a.c, 1u, global0.a.c, u_input.b.x), 1u))), any(vec3<bool>(false, true, false))), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), (global0.a.a & u_input.c.x) << (global0.a.b.x % 32u), arg_0) <= u_input.a.x);
    var_0 = select(true, false, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2854f, arg_0) + vec2<f32>(203f, arg_0)), select(vec2<bool>(false, false), vec2<bool>(true, true), false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1000f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(-1237f)), 323f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1567f - arg_0)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2159f))))));
    return Struct_1(-1i, ~(~global0.a.b ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a.c, u_input.b.x, u_input.b.x), global0.a.b)), 1u);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    let var_0 = u_input.c.wy | ~firstLeadingBit(_wgslsmith_mult_vec2_i32(~u_input.c.zx, ~u_input.a.yx));
    global0 = Struct_2(global0.a);
    var var_1 = vec2<i32>(-11197i, 10095i);
    var var_2 = Struct_4(1u, -2147483647i, Struct_3(Struct_2(Struct_1(~1i, ~vec4<u32>(arg_0.b.x, 20282u, 0u, 0u), _wgslsmith_add_u32(u_input.b.x, arg_0.b.x))), 1i, true), arg_1);
    global0 = Struct_2(var_2.c.a.a);
    return -1i;
}

fn func_6(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(572f, -631f)))))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1407f)));
    global0 = Struct_2(func_2(var_0.x));
    let var_1 = -u_input.c.yxz;
    let var_2 = !select(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))) & false, true, ~_wgslsmith_mod_i32(var_1.x, 0i) != -15978i);
    var var_3 = Struct_1(global0.a.a, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~global0.a.b, vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(global0.a.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.a.b.x, 0u, u_input.b.x)), 1u), ~global0.a.b), func_2(_wgslsmith_f_op_f32(f32(-1f) * -942f)).b), ~((firstLeadingBit(75901u) ^ u_input.b.x) & abs(u_input.b.x)));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    var var_0 = vec2<f32>(1268f, -1332f);
    let var_1 = !(!select(select(!vec4<bool>(false, true, arg_1.d, true), vec4<bool>(true, arg_1.c.c, arg_0, arg_0), all(vec3<bool>(false, arg_1.d, false))), select(select(vec4<bool>(false, true, true, arg_0), vec4<bool>(true, arg_0, true, arg_0), false), !vec4<bool>(arg_1.d, true, arg_0, true), true), !vec4<bool>(arg_1.d, arg_1.c.c, true, true)));
    var var_2 = Struct_3(arg_1.c.a, ~1i, var_1.x && all(!vec4<bool>(var_1.x, arg_1.c.c, arg_1.c.c, var_1.x)));
    let var_3 = _wgslsmith_add_i32((var_2.b >> (1u % 32u)) & global0.a.a, _wgslsmith_clamp_i32(arg_1.b, arg_1.c.a.a.a, func_6(u_input.c.wz, func_5(func_2(var_0.x), !arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    let var_4 = var_1.zx;
    return Struct_1((-(~9944i) | global0.a.a) ^ (-8250i | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1005i, var_3) ^ u_input.a.wxx, _wgslsmith_div_vec3_i32(u_input.c.yyz, u_input.c.yxy))), (firstTrailingBit(_wgslsmith_add_vec4_u32(var_2.a.a.b, vec4<u32>(22697u, 4294967295u, 4042u, 46027u))) & arg_1.c.a.a.b) << (~firstLeadingBit(~vec4<u32>(var_2.a.a.c, arg_1.a, arg_1.a, 1u)) % vec4<u32>(32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(0u, var_2.a.a.c, 0u), vec3<u32>(5025u, arg_1.a, u_input.b.x), var_2.c)), ~arg_1.c.a.a.b.xxy), ~_wgslsmith_mod_u32(u_input.b.x, arg_1.c.a.a.b.x)));
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-912f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-712f, 699f)), _wgslsmith_f_op_f32(max(363f, 1576f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_f32(max(-160f, 1851f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1989f, 1000f, -1752f, 1139f) + vec4<f32>(-1631f, -1759f, -903f, 1524f))))))));
    let var_1 = ~_wgslsmith_add_vec3_u32(u_input.b, firstLeadingBit(vec3<u32>(46015u, arg_2.a.a.c, _wgslsmith_mult_u32(9255u, arg_2.a.a.c))));
    let var_2 = Struct_1(-(~func_4(arg_0, !vec3<bool>(arg_2.c, arg_0.x, arg_2.c), arg_1.a, var_0.x)), _wgslsmith_add_vec4_u32(arg_1.b << (arg_1.b % vec4<u32>(32u)), arg_1.b), u_input.b.x);
    let var_3 = func_1(!arg_0.x, Struct_4(~arg_2.a.a.c, i32(-1i) * -(arg_1.a & u_input.d), Struct_3(arg_2.a, _wgslsmith_add_i32(-arg_1.a, u_input.a.x), all(func_3(vec3<f32>(var_0.x, 1782f, 633f), Struct_2(global0.a), arg_2.a))), all(select(vec2<bool>(false, arg_2.c), vec2<bool>(true, true), arg_2.c)) || arg_0.x), _wgslsmith_mod_i32(~(-2147483647i), global0.a.a)).b.x;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1427f, var_0.x, -157f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, -180f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1565f, var_0.x, 2423f, var_0.x) - vec4<f32>(-1379f, 315f, 344f, -969f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-558f, _wgslsmith_f_op_f32(-1000f - -1647f), _wgslsmith_f_op_f32(277f + var_0.x), 420f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1072f) * vec4<f32>(var_0.x, var_0.x, -259f, 1517f)))), arg_2.c))));
    return arg_2.a;
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(442f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -974f))))))));
    var var_1 = min(global0.a.c, 30184u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, 670f, var_0.x, 552f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -2004f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -1000f, -749f, var_0.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1009f, -260f, -1531f, var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), -612f, _wgslsmith_f_op_f32(f32(-1f) * -345f), 163f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(466f, var_0.x, -1000f, 1364f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -1103f, -1469f, 1605f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 449f));
    var var_4 = select(!select(vec4<bool>(false, false, func_3(var_2.yxz, arg_1.a, arg_1.a).x, arg_1.c), !select(vec4<bool>(true, arg_1.c, arg_1.c, false), vec4<bool>(false, arg_1.c, arg_1.c, false), vec4<bool>(arg_1.c, true, arg_1.c, true)), !select(vec4<bool>(true, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(true, arg_1.c, arg_1.c, false), true)), vec4<bool>(u_input.a.x <= firstLeadingBit(_wgslsmith_add_i32(2147483647i, -16292i)), false, any(!select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.c), vec2<bool>(arg_1.c, false))), arg_1.c), arg_1.c);
    return arg_1.a.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_8(vec4<i32>(-2147483647i, 1i, -global0.a.a, ~(-1i)), Struct_3(func_7(vec2<bool>(true, true), func_1(true, Struct_4(global0.a.b.x, u_input.c.x, Struct_3(Struct_2(Struct_1(-1i, global0.a.b, global0.a.b.x)), global0.a.a, false), false), -13686i), Struct_3(Struct_2(global0.a), global0.a.a, true)), ~(2147483647i >> (global0.a.c % 32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<bool>(true, any(vec3<bool>(false, true, false)) != true), select(vec3<bool>(all(vec2<bool>(false, true)), true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), true), _wgslsmith_div_i32(-_wgslsmith_clamp_i32(-1i, -2147483647i, u_input.a.x), func_5(func_2(-375f), true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -618f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-245f, -222f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-813f)) * 422f)))), u_input.b.x, 1i | (func_2(_wgslsmith_f_op_f32(-346f * 185f)).a ^ func_7(vec2<bool>(true, false), func_2(755f), Struct_3(Struct_2(Struct_1(global0.a.a, vec4<u32>(32663u, 1u, u_input.b.x, 86287u), 12029u)), 78996i, true)).a.a));
}

