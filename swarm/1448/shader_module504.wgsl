struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> bool {
    global0 = array<vec4<f32>, 3>();
    var var_0 = Struct_1(arg_1.xzz, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, vec2<f32>(-1000f, arg_3.x))))), select(select(select(select(arg_1.xyz, vec3<bool>(true, arg_1.x, false), vec3<bool>(false, false, arg_2.x)), select(arg_1.xyx, arg_1.wxw, false), arg_1.wyz), vec3<bool>(!arg_2.x, arg_1.x & true, true), arg_1.x && true), select(vec3<bool>(true, arg_2.x, !arg_2.x), select(select(arg_1.yyz, arg_1.wzw, arg_1.wxw), arg_1.wwz, !arg_1.x), arg_1.ywz), arg_1.wzx), ~abs(select(~vec3<u32>(4294967295u, 1u, 59778u), firstTrailingBit(vec3<u32>(10636u, 48994u, 0u)), arg_1.zzx)));
    var_0 = Struct_1(var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, -20558i, _wgslsmith_add_i32(select(1i, 2147483647i, var_0.a.x), ~var_0.b.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, -17796i), ~u_input.a.x)), var_0.b), arg_3.xz, vec3<bool>(arg_2.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.e.x, 1u), 0u) <= 17835u, !arg_2.x && arg_1.x), abs(~(min(vec3<u32>(var_0.e.x, 16126u, var_0.e.x), vec3<u32>(1u, 4294967295u, var_0.e.x)) << (~var_0.e % vec3<u32>(32u)))));
    var var_1 = select(vec4<bool>((-2147483647i >> (~var_0.e.x % 32u)) <= _wgslsmith_sub_i32(2785i, abs(var_0.b.x)), false, true, select(true, true, var_0.a.x & !var_0.a.x)), arg_1, arg_1.x);
    var var_2 = Struct_1(select(select(vec3<bool>(all(var_0.d.zy), false, var_1.x), arg_1.zyy, select(select(arg_1.yzy, vec3<bool>(true, false, arg_2.x), var_0.d), select(var_1.ywy, arg_1.xyz, arg_1.xzy), var_0.d)), arg_1.yyx, true), -vec4<i32>(-117457i, 2147483647i, _wgslsmith_div_i32(firstLeadingBit(-2147483647i), 1i), firstLeadingBit(-u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_0.x) - vec2<f32>(var_0.c.x, arg_0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(409f, arg_0.x), arg_3.zy), var_0.a.yx)) - vec2<f32>(_wgslsmith_f_op_f32(floor(340f)), _wgslsmith_f_op_f32(458f + var_0.c.x)))), arg_1.xzw, vec3<u32>(var_0.e.x, var_0.e.x, 4294967295u) ^ vec3<u32>(0u, var_0.e.x, _wgslsmith_sub_u32(48091u, 17809u)));
    return arg_1.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(!(!(!arg_2.a)), arg_2.d, select(!arg_2.a, vec3<bool>(all(arg_2.a), true, -2147483647i >= arg_2.b.x), true)), -u_input.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1649f, 1161f)))), vec2<f32>(287f, _wgslsmith_f_op_f32(min(215f, arg_2.c.x))), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2.c.x))), select(!vec4<bool>(arg_2.d.x, arg_0, arg_2.a.x, arg_2.d.x), !vec4<bool>(false, arg_0, false, false), arg_2.a.x), arg_2.d.yx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, arg_2.c.x, arg_1)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-358f, 174f, -746f))))))), select(arg_2.d, select(arg_2.d, arg_2.a, arg_2.d), arg_2.a), ~vec3<u32>(~abs(21849u), abs(69767u), 0u));
    var_0 = Struct_1(arg_2.a, ~(-vec4<i32>(_wgslsmith_add_i32(2147483647i, -44545i), -u_input.a.x, -32832i, -u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-245f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2.c.x, 105f)), var_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1))))))), arg_2.d, vec3<u32>((_wgslsmith_mult_u32(var_0.e.x, 30950u) & arg_2.e.x) ^ 6614u, firstLeadingBit(arg_2.e.x), arg_2.e.x));
    var_0 = Struct_1(vec3<bool>(arg_0, false, true == (~1u == reverseBits(var_0.e.x))), select(var_0.b, ~(~(~vec4<i32>(-1i, -27846i, 2147483647i, 2147483647i))), !select(vec4<bool>(var_0.a.x, false, true, arg_2.d.x), select(vec4<bool>(arg_2.a.x, false, false, true), vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, false), vec4<bool>(false, true, arg_0, false)), !vec4<bool>(var_0.a.x, arg_0, false, var_0.a.x))), arg_2.c, select(select(!vec3<bool>(var_0.d.x, true, true), select(select(vec3<bool>(true, arg_2.a.x, arg_2.d.x), arg_2.d, var_0.d.x), vec3<bool>(var_0.d.x, arg_2.a.x, false), any(vec4<bool>(arg_0, var_0.d.x, true, false))), !arg_2.d), var_0.d, false), arg_2.e);
    let var_1 = vec4<f32>(-312f, var_0.c.x, _wgslsmith_f_op_f32(arg_1 + -666f), _wgslsmith_f_op_f32(-arg_1));
    global0 = array<vec4<f32>, 3>();
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec4<f32>, 3>();
    global0 = array<vec4<f32>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-863f, arg_0.c.x, 386f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(125f, -294f, -1377f) * vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c.x, 1692f))), arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.c.x, arg_0.c.x, -1000f), vec3<f32>(879f, -1098f, arg_0.c.x))) * vec3<f32>(arg_0.c.x, -1000f, arg_0.c.x)))))));
    global0 = array<vec4<f32>, 3>();
    let var_1 = 1084f;
    return vec3<u32>(~9486u, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.e.x, 36468u) & ~4294967295u, ~54545u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, 4294967295u)), vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.e.x)), _wgslsmith_add_u32(func_2(true, var_0.x, Struct_1(vec3<bool>(arg_0.a.x, true, false), vec4<i32>(-2147483647i, -1i, -11832i, -2147483647i), vec2<f32>(var_1, 366f), vec3<bool>(true, true, arg_0.a.x), vec3<u32>(arg_0.e.x, 8828u, arg_0.e.x))).e.x, ~arg_0.e.x)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.e.x), arg_0.e.xy))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(vec3<bool>(any(vec3<bool>(false, true, arg_1.d.x)), false, _wgslsmith_dot_vec2_u32(arg_1.e.zy, vec2<u32>(24473u, 93840u)) >= 0u), !vec3<bool>(false, arg_1.d.x | arg_1.d.x, false), true), select(u_input.a, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-24369i, 32048i, arg_1.b.x, -23150i), ~vec4<i32>(19409i, u_input.a.x, arg_1.b.x, arg_1.b.x)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1.e.x, arg_1.e.x, arg_0)), vec3<u32>(arg_1.e.x, arg_1.e.x, arg_1.e.x)) > (~arg_0 ^ ~arg_1.e.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.x * -1000f), _wgslsmith_div_f32(1616f, -789f))))), select(!arg_1.d, select(select(select(arg_1.a, vec3<bool>(arg_1.a.x, true, false), arg_1.a), arg_1.d, true), arg_1.a, vec3<bool>(true, true, true)), vec3<bool>(all(!vec2<bool>(false, arg_1.a.x)), !(!arg_1.a.x), arg_1.d.x)), arg_1.e);
    global0 = array<vec4<f32>, 3>();
    let var_1 = !select(!(!vec4<bool>(var_0.a.x, false, arg_1.d.x, true)), vec4<bool>(any(select(arg_1.d.zz, arg_1.a.xx, var_0.d.yy)), true, !var_0.a.x, true), !arg_1.d.x);
    var_0 = Struct_1(select(!(!var_0.a), arg_1.d, var_1.x), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, 2259f) * vec2<f32>(-783f, 390f)))))), func_2(true, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(arg_1.c.x - var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, arg_1.c.x)))), func_2(true, _wgslsmith_f_op_f32(round(1322f)), arg_1)).a, firstTrailingBit(arg_1.e));
    global0 = array<vec4<f32>, 3>();
    return func_2(select(any(vec4<bool>(!var_1.x, var_0.d.x, arg_1.d.x, true)), (var_0.a.x == all(vec2<bool>(true, false))) & true, arg_1.e.x <= arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-375f + arg_1.c.x) - _wgslsmith_f_op_f32(arg_1.c.x * var_0.c.x)) * -1343f)), Struct_1(vec3<bool>(true, !(90669u > arg_0), var_1.x != false), var_0.b & vec4<i32>(_wgslsmith_mult_i32(var_0.b.x, -31336i), var_0.b.x ^ 20829i, -558i, ~(-2147483647i)), vec2<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(729f)))), vec3<bool>(select(true, false, true), func_2(false || var_0.a.x, _wgslsmith_f_op_f32(select(arg_1.c.x, var_0.c.x, false)), Struct_1(var_1.zwz, vec4<i32>(var_0.b.x, -45218i, 0i, arg_1.b.x), var_0.c, vec3<bool>(true, true, false), arg_1.e)).d.x, !all(arg_1.d.zx)), vec3<u32>(select(arg_1.e.x, ~arg_1.e.x, any(vec2<bool>(var_0.a.x, arg_1.d.x))), 58840u, 0u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 48106u), arg_0.wy), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_0.x, 4294967295u))));
    var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.e.zz, _wgslsmith_mult_vec2_u32(~arg_0.wz, vec2<u32>(arg_2.e.x, arg_0.x)) << (vec2<u32>(4294967295u, abs(11026u)) % vec2<u32>(32u))), vec2<u32>(~(~(~arg_2.e.x)), ~_wgslsmith_clamp_u32(arg_0.x & arg_2.e.x, 0u & var_0.x, 42261u)));
    var var_1 = reverseBits(vec4<u32>(arg_2.e.x, var_0.x, _wgslsmith_div_u32(4294967295u, 1u), countOneBits(4294967295u >> (arg_0.x % 32u))));
    let var_2 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(12908u, 67175u, 10880u), ~vec3<u32>(0u, 0u, abs(arg_2.e.x))), Struct_1(!select(arg_2.d, vec3<bool>(arg_2.d.x, false, arg_2.d.x), !vec3<bool>(false, arg_1.x, arg_2.a.x)), vec4<i32>(~_wgslsmith_dot_vec4_i32(arg_2.b, arg_2.b), _wgslsmith_sub_i32(-1i, -28963i), -1i, u_input.a.x | (u_input.a.x >> (arg_0.x % 32u))), _wgslsmith_f_op_vec2_f32(-arg_2.c), arg_2.a, _wgslsmith_clamp_vec3_u32(func_4(func_2(true, -1516f, Struct_1(vec3<bool>(true, arg_2.a.x, true), arg_2.b, arg_2.c, arg_2.d, var_1.xzw))), vec3<u32>(~1u, _wgslsmith_mod_u32(arg_0.x, var_1.x), arg_0.x | 47024u), ~vec3<u32>(1u, var_0.x, 21214u))));
    var_0 = ~vec2<u32>(~arg_2.e.x, ~var_1.x);
    return vec3<u32>(max(abs(~arg_2.e.x), func_4(func_2(-876i != u_input.a.x, 1f, Struct_1(arg_2.d, vec4<i32>(u_input.a.x, u_input.a.x, arg_2.b.x, 0i), vec2<f32>(-1552f, 348f), var_2.d, vec3<u32>(36804u, var_1.x, var_1.x)))).x), var_2.e.x, abs(arg_0.x << (~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(1u, 4294967295u, 1u, var_2.e.x)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(floor(1000f)), true, true));
    var_0 = !vec3<bool>(var_0.x, true, true);
    let var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-959f, -200f))));
    var var_2 = !select(!select(!vec4<bool>(var_0.x, false, false, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), var_0.x || false), !vec4<bool>(false, true & var_0.x, var_0.x, true), false);
    global0 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(func_1(vec4<u32>(23175u, 0u, 52935u, 1u), var_2.xy, Struct_1(vec3<bool>(false, true, true), vec4<i32>(-1i, 0i, u_input.a.x, -2147483647i), vec2<f32>(var_1, 1019f), var_2.zzx, vec3<u32>(64661u, 0u, 1u))), reverseBits(vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(max(_wgslsmith_add_u32(0u, 55347u), _wgslsmith_div_u32(1u, 31733u)), 10055u, 1u)));
}

