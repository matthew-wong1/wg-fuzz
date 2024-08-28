struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_1.a.a.c.c.x;
    let var_2 = Struct_2(!var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.a.zx) * _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.e.a.xx))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e.d.a.x, -632f)))), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-41107i, -16654i, var_0.a.a.c.c.x, arg_1.a.e.c.c.x) & var_0.a.a.c.c, vec4<i32>(0i, var_0.a.d.c.c.x, abs(-1i), 1i))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 105207u, _wgslsmith_mult_u32(arg_1.a.d.c.d.x, 1u), arg_2.x ^ arg_2.x), vec4<u32>(arg_2.x, ~arg_2.x, 21391u, 14256u | var_0.a.a.c.d.x), ~vec4<u32>(65774u, 4294967295u, var_0.a.a.c.d.x, 6320u)), arg_1.a.a.c.e);
    var var_3 = ~var_1;
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.d.a.x)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, 276f, arg_1), vec4<f32>(arg_1, -2362f, arg_1, 1411f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 662f, arg_1, 2611f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1032f, 1820f, arg_1) * vec4<f32>(1199f, 159f, 815f, arg_1)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -1229f))))))), !vec4<bool>(all(vec2<bool>(false, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true, true), Struct_2(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(1579f * _wgslsmith_f_op_f32(-arg_1)), arg_1), firstTrailingBit(vec4<i32>(-2147483647i ^ arg_2, _wgslsmith_add_i32(arg_0, -94010i), -57043i, abs(arg_2))), vec4<u32>(1u << (1u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(66985u, 76729u), ~vec2<u32>(58121u, 0u)), 1u, firstTrailingBit(1u)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, -567f))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(932f, arg_1, arg_1), vec3<f32>(-2088f, arg_1, arg_1), false))), true))), !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), !any(vec3<bool>(false, false, false))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.c.e.a.x, 666f, 928f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + var_0.c.e.a.x))))), !var_0.b, Struct_2(select(!(!var_0.c.a), select(vec2<bool>(false, var_0.e.x), select(vec2<bool>(var_0.e.x, var_0.e.x), vec2<bool>(var_0.b.x, var_0.e.x), var_0.c.a), vec2<bool>(var_0.b.x, var_0.b.x)), vec2<bool>(var_0.b.x, false)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-411f, var_0.d.a.x), var_0.d.a.zz, false)))), var_0.c.c, min(~vec4<u32>(0u, 54339u, 1u, var_0.c.d.x), vec4<u32>(0u, _wgslsmith_add_u32(32911u, var_0.c.d.x), 4294967295u, var_0.c.d.x)), Struct_1(vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(758f)), _wgslsmith_f_op_f32(-154f * -320f)))), Struct_1(vec3<f32>(-267f, var_0.d.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(arg_1 - var_0.c.b.x))))), !select(vec3<bool>(59736i >= var_0.c.c.x, var_0.e.x, var_0.b.x), vec3<bool>(var_0.b.x, !var_0.c.a.x, var_0.d.a.x >= 1706f), !var_0.b.zww));
    var_0 = Struct_3(var_0.a, var_0.b, Struct_2(var_0.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.e.a.yx)))), var_0.c.c, ~reverseBits(~vec4<u32>(var_0.c.d.x, 1u, 1u, 4294967295u)), var_0.c.e), var_0.c.e, vec3<bool>(var_0.c.a.x, var_0.b.x, any(select(vec3<bool>(var_0.b.x, false, var_0.c.a.x), !vec3<bool>(var_0.c.a.x, true, true), !var_0.b.wzy))));
    var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2401f, -227f, arg_1, arg_1))) + _wgslsmith_f_op_vec4_f32(floor(var_0.a))), vec4<f32>(-1625f, 422f, var_0.c.e.a.x, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - _wgslsmith_f_op_f32(sign(var_0.d.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1922f), _wgslsmith_f_op_f32(step(174f, 1377f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-130f, -514f, var_0.e.x)), arg_1)))), !var_0.b, var_0.c, Struct_1(var_0.c.e.a), vec3<bool>(false, any(select(vec2<bool>(var_0.c.a.x, false), vec2<bool>(false, true), all(vec4<bool>(var_0.c.a.x, true, true, true)))), var_0.e.x));
    var_0 = Struct_3(vec4<f32>(1448f, var_0.a.x, _wgslsmith_f_op_f32(var_0.d.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(553f, arg_1))), -2156f), !(!vec4<bool>(!var_0.e.x, !var_0.e.x, !var_0.c.a.x, all(var_0.c.a))), Struct_2(var_0.b.zz, _wgslsmith_f_op_vec2_f32(max(var_0.c.b, vec2<f32>(_wgslsmith_f_op_f32(func_2(646f, Struct_5(Struct_4(Struct_3(var_0.a, var_0.b, Struct_2(vec2<bool>(var_0.b.x, var_0.c.a.x), vec2<f32>(var_0.d.a.x, -2101f), vec4<i32>(arg_2, 8464i, -6495i, 267i), vec4<u32>(0u, var_0.c.d.x, 46191u, 4294967295u), var_0.c.e), Struct_1(var_0.d.a), var_0.b.zxz), var_0.b, var_0.c.c.zwz, Struct_3(vec4<f32>(-517f, 766f, var_0.a.x, var_0.d.a.x), var_0.b, Struct_2(vec2<bool>(var_0.c.a.x, true), vec2<f32>(arg_1, -1358f), vec4<i32>(1635i, 17519i, u_input.a, 0i), vec4<u32>(27806u, var_0.c.d.x, 0u, var_0.c.d.x), var_0.d), Struct_1(vec3<f32>(458f, arg_1, -248f)), var_0.e), Struct_3(vec4<f32>(arg_1, var_0.a.x, var_0.a.x, 814f), var_0.b, var_0.c, Struct_1(vec3<f32>(var_0.d.a.x, 545f, var_0.d.a.x)), var_0.b.wxx)), vec2<bool>(var_0.e.x, var_0.c.a.x)), vec2<u32>(33648u, var_0.c.d.x))), _wgslsmith_f_op_f32(var_0.d.a.x - var_0.c.b.x)))), ~vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(u_input.a, arg_0)), u_input.a, 1i), (~vec4<u32>(4294967295u, 1u, 68613u, var_0.c.d.x) << (var_0.c.d % vec4<u32>(32u))) & vec4<u32>(firstLeadingBit(var_0.c.d.x), ~var_0.c.d.x, _wgslsmith_div_u32(0u, 6327u), ~var_0.c.d.x), var_0.c.e), var_0.d, !(!vec3<bool>(select(true, true, var_0.b.x), true, any(vec3<bool>(false, true, var_0.c.a.x)))));
    return ~arg_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.wyy;
    var var_1 = u_input.b;
    var_1 = _wgslsmith_clamp_i32(~u_input.b, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 22483i, u_input.b), vec4<i32>(u_input.a, 0i, u_input.b, u_input.b)), func_3(0i, _wgslsmith_f_op_f32(func_2(816f, Struct_5(Struct_4(Struct_3(vec4<f32>(-824f, -2604f, -918f, -1342f), arg_0, Struct_2(arg_0.xz, vec2<f32>(1379f, -447f), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.b), vec4<u32>(0u, 1u, 44620u, 135976u), Struct_1(vec3<f32>(1566f, 131f, 1000f))), Struct_1(vec3<f32>(-1456f, 1115f, 107f)), arg_0.zyx), vec4<bool>(arg_1.x, true, arg_1.x, var_0.x), vec3<i32>(u_input.b, u_input.a, -44346i), Struct_3(vec4<f32>(668f, -364f, -832f, 2411f), arg_0, Struct_2(vec2<bool>(false, arg_1.x), vec2<f32>(1147f, -1229f), vec4<i32>(0i, u_input.a, u_input.a, 43465i), vec4<u32>(20075u, 2792u, 33797u, 3037u), Struct_1(vec3<f32>(354f, 1523f, 1000f))), Struct_1(vec3<f32>(-120f, 826f, -710f)), arg_0.www), Struct_3(vec4<f32>(-950f, 638f, -190f, -672f), vec4<bool>(arg_1.x, false, var_0.x, true), Struct_2(vec2<bool>(var_0.x, arg_1.x), vec2<f32>(-1060f, 986f), vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.a), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(1000f, 1017f, -716f))), Struct_1(vec3<f32>(-713f, -877f, 1000f)), vec3<bool>(arg_0.x, var_0.x, arg_1.x))), vec2<bool>(arg_0.x, arg_0.x)), vec2<u32>(1u, 3755u))), -2147483647i), -31303i), ~(~select(u_input.b, u_input.b, true)));
    let var_2 = !arg_0.www;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(484f, -787f, 222f, -1172f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(972f, 1480f, 1294f, 665f) - vec4<f32>(313f, 349f, -631f, 986f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, -181f, 566f, -798f)))), !(36718i != u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1169f, -1166f, 1170f, -1447f)))))))), vec4<bool>(!arg_0.x, !(_wgslsmith_dot_vec2_i32(vec2<i32>(1960i, u_input.b), vec2<i32>(1i, -2147483647i)) <= -1i), arg_0.x & all(var_2), true || any(select(var_2, arg_0.yyz, arg_1.x))), Struct_2(select(var_2.xy, !(!var_2.zy), all(!arg_0.yy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1131f, -2076f)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, -32338i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 36711i, 41036i, 2147483647i), firstTrailingBit(vec4<i32>(u_input.a, 0i, 12859i, u_input.b)))), max(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 1u >> (1u % 32u), 1u, firstLeadingBit(17341u)), ~(~vec4<u32>(2383u, 31776u, 1u, 1u))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(109f, 1825f, 501f) + vec3<f32>(-543f, -280f, -1163f)))), Struct_1(vec3<f32>(314f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1320f - 1454f))), -478f)), select(arg_0.xzz, !vec3<bool>(arg_1.x, true, all(arg_1)), !var_0.x));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1549f * _wgslsmith_f_op_f32(713f - var_3.d.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(320f * -280f))), -1818f, 1000f));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = !(!all(vec3<bool>(any(vec3<bool>(true, false, true)), true, true)));
    var var_1 = vec4<bool>(any(!vec3<bool>(true, all(vec2<bool>(var_0, var_0)), u_input.a == 10049i)), any(vec4<bool>(false, true, false || all(vec2<bool>(var_0, true)), false)), var_0, true);
    let var_2 = Struct_2(var_1.yy, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, arg_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1123f)) * arg_0.a.x), _wgslsmith_f_op_f32(270f + _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))))), vec4<i32>(u_input.a, 1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, 0i, u_input.a >> (36277u % 32u), u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-625i, u_input.b, 32512i, 1i) | vec4<i32>(-2147483647i, u_input.b, -37924i, u_input.b), ~vec4<i32>(u_input.a, -1i, 39404i, 12146i)))), ~vec4<u32>(97505u, _wgslsmith_mult_u32(66078u, select(0u, 113766u, var_0)), firstTrailingBit(0u) & ~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(69019u, 34243u, 73085u, 4294967295u), ~vec4<u32>(74082u, 35482u, 16091u, 26975u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))));
    let var_3 = select(var_2.d.yz, select(~(~var_2.d.xy >> (_wgslsmith_sub_vec2_u32(var_2.d.zy, vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec2<u32>(~2282u, _wgslsmith_add_u32(min(4294967295u, 1u), var_2.d.x ^ 1u)), all(!var_1.yyx)), var_1.x);
    var_1 = !vec4<bool>((_wgslsmith_clamp_i32(u_input.b, 32332i, u_input.a) > abs(u_input.b)) & any(var_1.yyw), true, !select(var_0, all(vec2<bool>(var_2.a.x, true)), any(vec3<bool>(var_0, var_1.x, false))), !all(!var_2.a));
    return ~_wgslsmith_mod_u32(var_2.d.x, _wgslsmith_sub_u32(14350u, _wgslsmith_dot_vec3_u32(var_2.d.wwx, var_2.d.zwy)) ^ ~var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(1u, abs(func_4(func_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false))))), 4294967295u, ~4294967295u | ~firstTrailingBit(max(0u, 0u)));
    var var_1 = _wgslsmith_f_op_f32(min(-1480f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(275f, Struct_5(Struct_4(Struct_3(vec4<f32>(1228f, -1821f, -320f, 341f), vec4<bool>(false, false, true, false), Struct_2(vec2<bool>(false, false), vec2<f32>(421f, 279f), vec4<i32>(u_input.b, u_input.b, 23071i, 0i), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec3<f32>(149f, -582f, 401f))), Struct_1(vec3<f32>(-225f, -804f, 444f)), vec3<bool>(true, true, true)), vec4<bool>(true, false, true, true), vec3<i32>(u_input.a, 11193i, 29775i), Struct_3(vec4<f32>(-260f, -109f, -118f, 1199f), vec4<bool>(true, false, false, false), Struct_2(vec2<bool>(false, true), vec2<f32>(-267f, -683f), vec4<i32>(u_input.b, -1i, 0i, u_input.b), vec4<u32>(var_0.x, var_0.x, 144250u, 49985u), Struct_1(vec3<f32>(-1425f, 251f, 1519f))), Struct_1(vec3<f32>(-795f, -512f, -471f)), vec3<bool>(true, true, false)), Struct_3(vec4<f32>(-761f, -299f, -120f, 504f), vec4<bool>(false, true, false, false), Struct_2(vec2<bool>(false, true), vec2<f32>(-370f, -398f), vec4<i32>(31730i, -15984i, u_input.a, u_input.b), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_1(vec3<f32>(-1492f, 2175f, 779f))), Struct_1(vec3<f32>(-1913f, -263f, 581f)), vec3<bool>(true, false, false))), vec2<bool>(false, false)), var_0.zy)) * -1034f), 428f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(-393f * -458f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1805f, 1095f)) * 2587f)));
    var var_2 = Struct_2(select(vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, false, true, true))), vec2<bool>(true, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(abs(-1260f)), _wgslsmith_f_op_f32(f32(-1f) * -548f))))), vec4<i32>(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 39314i), vec2<i32>(u_input.b, 1179i), vec2<i32>(u_input.a, -22582i)), _wgslsmith_mod_vec2_i32(vec2<i32>(11648i, 8639i), vec2<i32>(-19011i, 27737i)))), 1i, -u_input.a, 58926i), ~abs(vec4<u32>(4294967295u, 29587u, 4294967295u, var_0.x)) | abs(vec4<u32>(firstLeadingBit(1677u), 36288u, var_0.x, 0u)), func_1(vec4<bool>(true, true, true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), vec2<bool>(true, true))));
    let var_3 = firstTrailingBit(_wgslsmith_add_u32(1u, 31152u));
    var var_4 = Struct_5(Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(242f, var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(var_2.b.x, -574f, 510f, var_2.e.a.x), vec4<bool>(var_2.a.x, false, false, false)))), vec4<bool>(true, -434f > var_2.e.a.x, var_2.b.x >= var_2.e.a.x, var_2.a.x), Struct_2(vec2<bool>(var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec2_f32(-var_2.b), vec4<i32>(1i, 1i, 7810i, u_input.a), vec4<u32>(55842u, 28003u, var_3, 1u), var_2.e), var_2.e, select(vec3<bool>(false, false, true), !vec3<bool>(true, true, var_2.a.x), var_2.a.x)), !select(!vec4<bool>(false, false, false, var_2.a.x), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), select(vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, false, var_2.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-18425i), 1i, 14068i), abs(vec3<i32>(0i, u_input.b, var_2.c.x) & vec3<i32>(0i, var_2.c.x, var_2.c.x)), vec3<i32>(u_input.a << (var_2.d.x % 32u), abs(-25448i), var_2.c.x)), Struct_3(vec4<f32>(-247f, var_2.b.x, _wgslsmith_f_op_f32(func_2(-733f, Struct_5(Struct_4(Struct_3(vec4<f32>(var_2.b.x, var_2.b.x, var_2.e.a.x, 256f), vec4<bool>(false, var_2.a.x, var_2.a.x, false), Struct_2(vec2<bool>(var_2.a.x, true), var_2.b, vec4<i32>(var_2.c.x, u_input.b, -23778i, -1i), vec4<u32>(var_2.d.x, 103703u, 4294967295u, 0u), Struct_1(vec3<f32>(var_2.e.a.x, var_2.e.a.x, var_2.b.x))), Struct_1(vec3<f32>(-865f, var_2.e.a.x, -595f)), vec3<bool>(true, var_2.a.x, var_2.a.x)), vec4<bool>(true, false, false, var_2.a.x), var_2.c.zyx, Struct_3(vec4<f32>(var_2.e.a.x, -1211f, var_2.b.x, var_2.b.x), vec4<bool>(false, var_2.a.x, false, false), Struct_2(vec2<bool>(true, false), vec2<f32>(-314f, var_2.e.a.x), var_2.c, var_2.d, Struct_1(var_2.e.a)), Struct_1(vec3<f32>(-367f, -619f, var_2.e.a.x)), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), Struct_3(vec4<f32>(var_2.e.a.x, var_2.b.x, var_2.e.a.x, 830f), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true), Struct_2(var_2.a, var_2.b, var_2.c, var_2.d, Struct_1(vec3<f32>(var_2.b.x, 1305f, var_2.b.x))), Struct_1(var_2.e.a), vec3<bool>(var_2.a.x, var_2.a.x, true))), var_2.a), var_2.d.xz)), _wgslsmith_f_op_f32(f32(-1f) * -1258f)), !(!vec4<bool>(false, false, false, var_2.a.x)), Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.e.a.x, -541f))), vec4<i32>(var_2.c.x, 28747i, var_2.c.x, 11437i), var_2.d, func_1(vec4<bool>(var_2.a.x, true, true, false), vec2<bool>(false, var_2.a.x))), var_2.e, select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_2.a.x, true), vec3<bool>(false, false, false), vec3<bool>(false, var_2.a.x, var_2.a.x)), false)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.x, var_2.b.x, var_2.e.a.x, 851f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, var_2.e.a.x, 769f, 1109f))), vec4<bool>(true, false, true, !var_2.a.x), Struct_2(vec2<bool>(var_2.a.x, false), var_2.e.a.xx, vec4<i32>(u_input.a, -32279i, u_input.a, var_2.c.x) | var_2.c, ~vec4<u32>(var_2.d.x, 17975u, 19458u, var_0.x), var_2.e), Struct_1(_wgslsmith_f_op_vec3_f32(var_2.e.a - var_2.e.a)), select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(true, false, var_2.a.x), vec3<bool>(var_2.a.x, true, var_2.a.x))))), !vec2<bool>(true, any(vec4<bool>(var_2.a.x, var_2.a.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, -var_4.a.a.c.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.b.x, -562f, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_2.e.a, var_2.e.a))))) * var_4.a.e.a.yzw), ~(-var_4.a.e.c.c.wzx ^ ~(~vec3<i32>(u_input.a, -19676i, var_4.a.e.c.c.x))));
}

