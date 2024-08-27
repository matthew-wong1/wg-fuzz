struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(431f, -1019f, -582f), vec3<f32>(-679f, 503f, -723f), vec3<f32>(435f, -265f, 1000f), vec3<f32>(-596f, 528f, 1732f), vec3<f32>(1616f, 152f, 319f), vec3<f32>(-1000f, -116f, 1067f), vec3<f32>(-539f, 1000f, 407f), vec3<f32>(-400f, 818f, -1000f), vec3<f32>(-735f, 787f, 566f), vec3<f32>(1231f, 1454f, -398f), vec3<f32>(714f, -214f, 2062f), vec3<f32>(-737f, 731f, -232f), vec3<f32>(1412f, -2297f, 222f), vec3<f32>(-811f, 1047f, -254f), vec3<f32>(-130f, 1121f, 123f), vec3<f32>(-595f, -2324f, 461f), vec3<f32>(-222f, -387f, -983f), vec3<f32>(1147f, -1083f, -845f), vec3<f32>(1104f, -1647f, -447f));

var<private> global1: vec4<f32> = vec4<f32>(494f, -222f, 428f, 331f);

var<private> global2: i32 = 0i;

var<private> global3: vec2<f32> = vec2<f32>(-367f, 1324f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 32106i, u_input.c) & vec3<i32>(2147483647i, -2241i, u_input.c), reverseBits(vec3<i32>(29112i, u_input.b, 90303i))) ^ vec3<i32>(-_wgslsmith_div_i32(u_input.d, 1i), _wgslsmith_mult_i32(-46321i, u_input.d), abs(-1599i) & _wgslsmith_mod_i32(-8228i, u_input.d)));
    var var_1 = Struct_2(Struct_1(var_0.x, -reverseBits(_wgslsmith_div_vec2_i32(var_0.xy, vec2<i32>(u_input.d, u_input.d))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(false, false, true) || (global1.x > global3.x)), vec2<bool>(false, false), min(vec3<u32>(reverseBits(u_input.a.x), 1u, ~1u), reverseBits(u_input.e.xxz))));
    var var_2 = ~max(u_input.a.x, u_input.a.x);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1134f - global3.x)), -467f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f + global1.x))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global3.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1472f, -1000f, -825f, -299f)))))));
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1672f), _wgslsmith_f_op_f32(950f - _wgslsmith_f_op_f32(abs(2788f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(648f, -869f), vec2<f32>(652f, global3.x)), _wgslsmith_f_op_vec2_f32(sign(global1.yw)))))))));
    return select(!select(!(!vec3<bool>(false, var_1.a.c.x, false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.a.c.x, var_1.a.d.x), var_1.a.d.x), var_0.x > max(-2147483647i, var_1.a.b.x)), vec3<bool>(!(var_1.a.d.x && true) & !var_1.a.d.x, var_1.a.d.x, min(u_input.e.x, 1u) < _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), var_1.a.e.x, countOneBits(4294967295u))), -249f < global1.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = true;
    var var_1 = !all(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), all(vec3<bool>(false, true, var_0))), vec3<bool>(true, true, false), select(vec3<bool>(var_0, var_0, false), select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0), var_0), func_3())));
    var var_2 = Struct_1(arg_1, select(min(vec2<i32>(1i, u_input.b), vec2<i32>(arg_1, -61993i)) | select(vec2<i32>(u_input.d, 0i), vec2<i32>(arg_1, u_input.c), var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(u_input.b, 46946i)), !(!vec2<bool>(false, var_0))) & vec2<i32>(2147483647i, 0i), func_3().yy, select(select(vec2<bool>(var_0 | false, false), !(!vec2<bool>(var_0, var_0)), any(vec2<bool>(false, var_0))), vec2<bool>(!all(vec3<bool>(var_0, var_0, false)), true), var_0), vec3<u32>(1u << (arg_0 % 32u), u_input.e.x, select(min(17224u & u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(73504u, u_input.e.x), vec2<u32>(18465u, 1u))), ~18753u, true)));
    let var_3 = _wgslsmith_div_vec4_u32((vec4<u32>(u_input.a.x, arg_0, 7986u, _wgslsmith_sub_u32(var_2.e.x, 0u)) << (vec4<u32>(1u, _wgslsmith_mod_u32(arg_0, arg_0), _wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(arg_0, 0u)), arg_0) % vec4<u32>(32u))) ^ u_input.e, ~u_input.e);
    global0 = array<vec3<f32>, 19>();
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: f32) -> vec4<f32> {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1071f, arg_2.x) + arg_2.yy)) - arg_2.zx))) - vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -238f)));
    var var_0 = u_input.b < (u_input.c >> (19016u % 32u));
    global2 = reverseBits(1i);
    let var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    global2 = u_input.d;
    return arg_2;
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    global0 = array<vec3<f32>, 19>();
    var var_0 = Struct_1(firstLeadingBit(2147483647i), vec2<i32>(1i, u_input.d), func_3().zz, !select(vec2<bool>(true, true), func_3().xz, abs(24932u) <= abs(u_input.e.x)), arg_0.xyy | vec3<u32>(arg_0.x, ~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, 71281u)), ~(~13531u)));
    var_0 = Struct_1(var_0.a, select(-countOneBits(vec2<i32>(0i, u_input.d)), ~vec2<i32>(~var_0.b.x, ~var_0.a), var_0.d.x || (!var_0.c.x && true)), var_0.d, var_0.d, ~((arg_0.wzy ^ vec3<u32>(u_input.e.x, arg_0.x, arg_0.x)) ^ vec3<u32>(countOneBits(arg_0.x), ~62408u, u_input.a.x)));
    var var_1 = arg_0.wyw;
    var var_2 = arg_2.x;
    return select(!select(select(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(false, true, var_0.c.x), true), !vec3<bool>(true, var_0.c.x, true), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.c.x)), select(!(!select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(var_0.c.x, true, false), vec3<bool>(false, true, false))), !select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.d.x, true, var_0.c.x), vec3<bool>(var_0.d.x, var_0.d.x, var_0.c.x)), !vec3<bool>(true, false, var_0.c.x), vec3<bool>(false, false, var_0.c.x)), var_0.c.x), func_3());
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: u32) -> vec3<bool> {
    var var_0 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var_0 = func_5(u_input.e, arg_1, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(func_2(42349u, -22643i << (0u % 32u)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, u_input.b, 5268i, u_input.d), -vec4<i32>(-22776i, arg_0.x, 4398i, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-127f, global1.x, 157f, -1024f), vec4<f32>(443f, -484f, global1.x, arg_1), vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(790f + -117f), _wgslsmith_f_op_f32(f32(-1f) * -1772f), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(879f, global3.x, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(-279f, arg_1))) - _wgslsmith_f_op_f32(floor(global3.x))), -258f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1310f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), 1859f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(reverseBits(7878u), firstTrailingBit(vec4<i32>(u_input.c, arg_2, arg_0.x, arg_2)), _wgslsmith_f_op_vec4_f32(var_1 + vec4<f32>(-349f, arg_1, -2007f, arg_1)), 219f)).x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-502f, _wgslsmith_f_op_f32(-global1.x)))), -1000f)));
    var var_3 = Struct_2(Struct_1(31628i, arg_0, vec2<bool>(!var_0.x, select(func_5(vec4<u32>(1u, 1u, 8522u, u_input.e.x), var_2, vec4<f32>(-1186f, -293f, global3.x, global3.x)).x, var_0.x, false)), vec2<bool>(true, true), vec3<u32>(firstLeadingBit(~16436u), arg_3, arg_3)));
    return func_5(firstTrailingBit(abs(vec4<u32>(var_3.a.e.x, _wgslsmith_mult_u32(45762u, var_3.a.e.x), _wgslsmith_dot_vec3_u32(var_3.a.e, var_3.a.e), select(7483u, arg_3, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec4_f32(var_1, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_1)), _wgslsmith_f_op_vec4_f32(-var_1), vec4<bool>(false, true, var_3.a.c.x, var_0.x))), vec4<f32>(var_2, _wgslsmith_f_op_f32(step(global3.x, var_2)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(-920f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 19>();
    var var_0 = vec2<bool>(all(func_1(vec2<i32>(-11890i << (u_input.e.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(17954i, u_input.d), vec2<i32>(u_input.b, 7208i))), global3.x, ~_wgslsmith_div_i32(u_input.b, -8715i), u_input.a.x)), any(!func_3().yx));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -660f, 456f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1412f, -1000f)))));
    var var_1 = Struct_2(Struct_1(~1i, min(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 22881i), vec2<i32>(13531i, -21344i)), select(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-8641i, u_input.d), true)) & (-vec2<i32>(61906i, -24724i) << (_wgslsmith_mod_vec2_u32(u_input.e.xx, vec2<u32>(u_input.e.x, u_input.a.x)) % vec2<u32>(32u))), vec2<bool>(true, !(var_0.x | true)), vec2<bool>(true, select(any(vec2<bool>(true, true)), func_5(vec4<u32>(28830u, u_input.e.x, u_input.a.x, 8055u), 948f, vec4<f32>(-261f, -1975f, global3.x, global1.x)).x, u_input.a.x <= 44215u)), u_input.a));
    let var_2 = Struct_1(u_input.c, -vec2<i32>(-(u_input.d << (4294967295u % 32u)), u_input.d), select(select(!var_1.a.c, vec2<bool>(false, true), -var_1.a.a != _wgslsmith_sub_i32(-21709i, 9693i)), !vec2<bool>(u_input.a.x > 4294967295u, !var_1.a.c.x), var_0.x), !var_1.a.c, _wgslsmith_clamp_vec3_u32(~(var_1.a.e | u_input.a) & var_1.a.e, vec3<u32>(abs(u_input.e.x), ~0u, u_input.a.x & 10132u), vec3<u32>(u_input.a.x, 41125u, var_1.a.e.x)));
    var var_3 = vec3<i32>(-2147483647i, countOneBits(-max(-1i, var_2.a)), -53137i) | vec3<i32>(39888i >> (~(~1u) % 32u), -var_1.a.b.x, 1i);
    let var_4 = vec3<i32>(var_1.a.a, abs(firstLeadingBit(select(-var_2.a, 1i, 1u <= u_input.e.x))), -1209i);
    var_3 = _wgslsmith_div_vec3_i32(~(-vec3<i32>(var_2.b.x, 1i, ~var_3.x)), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.a.a) << (u_input.a.yx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_3.yx, vec2<i32>(0i, -1899i))), var_2.a, var_1.a.b.x >> (81563u % 32u))));
    let var_5 = vec2<bool>(any(!(!func_5(vec4<u32>(var_2.e.x, 0u, 4294967295u, u_input.e.x), 999f, vec4<f32>(-100f, -1302f, global3.x, 103f)))), any(!select(select(vec4<bool>(false, false, false, var_2.d.x), vec4<bool>(false, false, false, true), vec4<bool>(var_1.a.c.x, var_2.c.x, var_0.x, true)), vec4<bool>(var_2.d.x, true, false, var_2.c.x), var_0.x && var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(90992u, reverseBits(var_2.e), abs(-abs(select(var_3.zy, var_3.yy, true))), 0i, _wgslsmith_f_op_vec2_f32(-global1.xw));
}

