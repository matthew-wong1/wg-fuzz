struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(12563u, select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), abs(u_input.a)), max(i32(-1i) * -1i, -26421i), ~u_input.a.x, -(-(-13193i << (1u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.ywx) % 32u)), vec2<i32>(-1i >> (u_input.a.x % 32u), -53408i));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(689f, -615f, true)), -1136f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(833f)))), _wgslsmith_div_f32(294f, 450f));
    var var_2 = abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstTrailingBit(~var_0.a.d)), abs(vec4<u32>(~4294967295u, ~0u, 0u, 0u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_1.x, 275f, var_1.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(431f, var_1.x, var_1.x, 1052f), vec4<f32>(var_1.x, 453f, 2862f, var_1.x), var_0.a.c.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-258f)), -1406f, _wgslsmith_f_op_f32(floor(-521f)), var_1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1845f, 377f, 762f, var_1.x), vec4<f32>(-585f, var_1.x, var_1.x, var_1.x))))));
    let var_4 = vec2<bool>(any(vec4<bool>(false, any(!vec2<bool>(var_0.a.b.x, false)), var_0.a.c.x, var_0.a.c.x)), var_0.a.c.x);
    return var_1.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec3<bool>(!(~min(0u, 4294967295u) != _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, arg_1.a.a.d), arg_3.x)), arg_1.a.a.b.x, false);
    let var_1 = -arg_1.a.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(arg_0 + arg_0))), _wgslsmith_f_op_vec3_f32(-arg_0)));
    var var_3 = arg_1.a.a.b.zy;
    let var_4 = 725f;
    return 32345i;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(arg_0, func_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), Struct_3(Struct_2(arg_0, 1i, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0.a), vec3<u32>(0u, 26190u, u_input.a.x)), max(41322i, -2147483647i), vec2<i32>(-19782i, -2233i)), select(vec2<bool>(true, false), select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.b.yy, arg_0.b.x), !vec2<bool>(true, arg_0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), Struct_1(12525u, arg_0.b, vec3<bool>(select(false, arg_0.c.x, arg_0.b.x), arg_0.b.x, arg_0.c.x), ~vec4<u32>(1u, 4294967295u, 5664u, arg_0.a)), min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, arg_0.d.x), vec2<u32>(u_input.a.x, arg_0.d.x)), ~14475u), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 30574u), 4294967295u >> (0u % 32u)))), 0u, _wgslsmith_mod_i32(-1i, ~_wgslsmith_div_i32(~(-34408i), 1i)), ~firstTrailingBit(abs(vec2<i32>(0i, -22631i)) >> (u_input.a.zx % vec2<u32>(32u))));
    var var_1 = Struct_2(arg_0, ~var_0.e.x, 4294967295u, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-var_0.d, _wgslsmith_clamp_i32(var_0.b, 2474i, var_0.b), var_0.e.x), var_0.e.x) >> (u_input.a.x % 32u), vec2<i32>(~(-1i), min(-_wgslsmith_sub_i32(0i, -31030i), var_0.e.x)));
    let var_2 = var_0.a;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_u32(~var_1.c, var_1.c, ~1u), select(vec3<bool>(false, var_1.a.b.x, var_2.c.x), select(var_1.a.c, vec3<bool>(var_2.c.x, true, arg_0.b.x), arg_0.c), select(vec3<bool>(var_2.c.x, var_2.c.x, var_0.a.c.x), vec3<bool>(var_0.a.b.x, true, true), vec3<bool>(var_1.a.c.x, var_2.c.x, true))), !var_2.c, firstTrailingBit(arg_0.d | var_0.a.d)), -var_1.d, ~_wgslsmith_dot_vec3_u32(arg_0.d.xzz, var_2.d.yzz << (var_1.a.d.yxz % vec3<u32>(32u))), -var_1.d, vec2<i32>(-36138i, var_0.b)), select(select(select(var_0.a.c.yz, select(vec2<bool>(var_0.a.b.x, false), var_1.a.b.zy, false), !vec2<bool>(var_0.a.c.x, var_1.a.b.x)), vec2<bool>(var_2.c.x, true), arg_0.b.x), vec2<bool>(!all(vec2<bool>(false, true)), arg_0.c.x), !(!(!arg_0.b.zy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(134f + 1350f)), -702f)), _wgslsmith_div_f32(-1489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) + -1975f)));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_2 * arg_2);
    let var_1 = select(u_input.a.yxy, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(53976u, 0u), arg_0, u_input.a.x), 1u, select(_wgslsmith_add_u32(1u, arg_1.a.c), _wgslsmith_add_u32(arg_0, 0u), arg_1.b.x)) << (arg_1.a.a.d.zxw % vec3<u32>(32u)), all(arg_1.a.a.c.xx));
    var var_2 = Struct_1(~94026u, func_2(Struct_1(var_1.x, vec3<bool>(arg_1.a.d >= 1i, true, false), func_2(arg_1.a.a).a.a.b, (arg_1.a.a.d ^ vec4<u32>(0u, 41373u, var_1.x, 0u)) >> (vec4<u32>(u_input.a.x, 19732u, u_input.a.x, arg_0) % vec4<u32>(32u)))).a.a.b, !arg_1.a.a.b, func_2(Struct_1(max(abs(arg_0), ~38505u), func_2(Struct_1(var_1.x, vec3<bool>(arg_1.a.a.b.x, arg_1.b.x, false), vec3<bool>(arg_1.b.x, arg_1.a.a.c.x, false), u_input.a)).a.a.b, func_2(arg_1.a.a).a.a.c, vec4<u32>(16129u, firstLeadingBit(arg_1.a.c), _wgslsmith_add_u32(27780u, arg_1.a.c), 1u))).a.a.d);
    let var_3 = _wgslsmith_mult_vec3_i32(-max(vec3<i32>(-2147483647i, min(arg_1.a.b, arg_1.a.d), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.d, -1i), arg_1.a.e)), vec3<i32>(~arg_1.a.b, 1i, 77538i)), _wgslsmith_mult_vec3_i32((vec3<i32>(1i, arg_1.a.b, -7853i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, var_1.x, 0u), vec3<u32>(var_2.d.x, 1u, 69359u)) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(~vec3<i32>(22939i, 1i, 0i), ~vec3<i32>(-42288i, arg_1.a.d, -9048i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.a.b, 56999i, arg_1.a.d)), firstTrailingBit(vec3<i32>(1i, arg_1.a.b, arg_1.a.e.x))) | vec3<i32>(~arg_1.a.b, min(1i, arg_1.a.b), arg_1.a.e.x)));
    var var_4 = arg_1;
    return func_2(var_4.a.a).a.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + 1047f)), -745f, _wgslsmith_f_op_f32(-2217f - _wgslsmith_div_f32(-676f, 946f)), 109f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -441f, 394f, 488f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(339f, -164f, -1513f, -100f), vec4<f32>(-1000f, 342f, 1812f, 671f), false)), arg_0.a.c.x | arg_1.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1804f, -668f, -1049f) * vec4<f32>(-807f, 1546f, 2231f, 351f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-463f, 1432f, 969f, -1875f), _wgslsmith_div_vec4_f32(vec4<f32>(1469f, -123f, -1485f, -204f), vec4<f32>(462f, -1224f, -1065f, 1383f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, -290f, -764f, 323f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 1644f, 620f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, -1040f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 252f, var_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1000f, -360f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, 229f, 370f, 425f), true)), true)))));
    var var_1 = func_2(Struct_1(arg_0.a.a, arg_0.a.b, arg_1.c, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1.a, 4294967295u), ~vec4<u32>(arg_0.a.d.x, arg_1.a, arg_1.d.x, arg_0.c), countOneBits(vec4<u32>(u_input.a.x, arg_1.d.x, arg_1.d.x, arg_0.a.d.x)))))).a.a.b;
    var_1 = select(vec3<bool>(func_2(arg_0.a).c >= _wgslsmith_f_op_f32(f32(-1f) * -1649f), func_2(func_5(~arg_1.d.x, Struct_3(arg_0, var_1.zx, 1000f, -372f), _wgslsmith_f_op_vec2_f32(var_0.yw - vec2<f32>(var_0.x, 918f)))).b.x, any(select(arg_1.b, arg_1.c, arg_0.a.c.x))), arg_0.a.c, !var_1.x);
    var_1 = select(arg_1.c, func_2(arg_0.a).a.a.c, !func_2(arg_1).a.a.b);
    return func_2(arg_0.a);
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>) -> vec2<i32> {
    let var_0 = select(vec4<bool>(true, all(!func_2(Struct_1(arg_0.a.c, arg_0.a.a.b, vec3<bool>(true, true, arg_2.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, 45194u))).a.a.b.xx), func_6(Struct_2(func_2(arg_0.a.a).a.a, arg_0.a.b, _wgslsmith_mult_u32(4294967295u, u_input.a.x), 1i, _wgslsmith_div_vec2_i32(arg_0.a.e, arg_0.a.e)), arg_0.a.a, arg_2.x).a.a.b.x, arg_0.a.a.c.x), select(!select(select(vec4<bool>(arg_0.b.x, true, arg_2.x, arg_2.x), vec4<bool>(false, false, true, false), vec4<bool>(arg_2.x, arg_2.x, arg_0.a.a.b.x, arg_0.a.a.b.x)), !vec4<bool>(false, arg_0.b.x, arg_2.x, arg_2.x), !vec4<bool>(true, arg_2.x, false, true)), vec4<bool>(all(arg_0.a.a.c), select(arg_2.x, true, arg_0.b.x), func_5(~13436u, func_6(Struct_2(arg_0.a.a, arg_0.a.b, u_input.a.x, 2147483647i, vec2<i32>(arg_0.a.d, -32413i)), arg_0.a.a, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2007f, arg_0.c) + vec2<f32>(552f, arg_0.d))).c.x, true), !arg_2.x), func_6(func_6(arg_0.a, Struct_1(~arg_1, !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), !arg_2, ~u_input.a), !all(vec4<bool>(arg_2.x, arg_0.b.x, false, arg_2.x))).a, func_2(Struct_1(arg_0.a.c, func_6(Struct_2(Struct_1(8341u, vec3<bool>(arg_0.a.a.c.x, arg_2.x, true), vec3<bool>(arg_2.x, arg_0.b.x, false), u_input.a), 0i, 34490u, 0i, arg_0.a.e), arg_0.a.a, arg_0.b.x).a.a.b, func_6(arg_0.a, Struct_1(3987u, vec3<bool>(false, arg_0.a.a.b.x, arg_2.x), arg_2, vec4<u32>(334u, 46871u, arg_1, u_input.a.x)), true).a.a.c, firstLeadingBit(arg_0.a.a.d))).a.a, arg_0.a.d == arg_0.a.e.x).a.a.b.x);
    return _wgslsmith_div_vec2_i32(vec2<i32>(~countOneBits(_wgslsmith_add_i32(arg_0.a.d, arg_0.a.e.x)), ~countOneBits(func_4(vec3<f32>(arg_0.c, -354f, arg_0.d), Struct_3(arg_0.a, vec2<bool>(var_0.x, false), 627f, arg_0.c), arg_0.a.a, u_input.a.yz))), min(vec2<i32>(-21452i, ~(2147483647i << (arg_1 % 32u))), -vec2<i32>(~arg_0.a.b, arg_0.a.b << (u_input.a.x % 32u))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_7(func_6(Struct_2(func_5(4294967295u ^ u_input.a.x, func_2(Struct_1(0u, vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, true), vec4<u32>(78185u, 0u, 59885u, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, -210f) * vec2<f32>(110f, 1000f))), _wgslsmith_mult_i32(func_4(vec3<f32>(289f, -380f, -570f), Struct_3(Struct_2(Struct_1(u_input.a.x, vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, false), u_input.a), 14663i, 10806u, -10237i, vec2<i32>(1i, 2147483647i)), vec2<bool>(arg_0, true), 1015f, -136f), Struct_1(u_input.a.x, vec3<bool>(false, false, false), vec3<bool>(true, false, false), u_input.a), vec2<u32>(u_input.a.x, 1u)), _wgslsmith_add_i32(1i, -2147483647i)), 41835u, ~(-1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-6590i, 9170i), vec2<i32>(-2147483647i, 44421i))), Struct_1(reverseBits(25350u), func_2(Struct_1(u_input.a.x, vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec4<u32>(250u, u_input.a.x, 22189u, u_input.a.x))).a.a.b, !vec3<bool>(true, arg_0, arg_0), max(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), u_input.a)), false), _wgslsmith_mod_u32(u_input.a.x, 1u), !vec3<bool>(true || arg_0, arg_0, false));
    let var_1 = vec2<i32>(reverseBits(_wgslsmith_sub_i32(-13830i >> (1u % 32u), var_0.x & var_0.x)), ~_wgslsmith_sub_i32(~9241i, select(var_0.x, var_0.x, true))) >> (func_6(Struct_2(func_6(Struct_2(Struct_1(4294967295u, vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, true), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), var_0.x, 37194u, -44519i, vec2<i32>(var_0.x, -2147483647i)), func_2(Struct_1(u_input.a.x, vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, arg_0), u_input.a)).a.a, false).a.a, -11547i, 4294967295u, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 1i), vec3<i32>(-2147483647i, 39048i, -3622i)), -vec3<i32>(-21773i, 1i, var_0.x)), vec2<i32>(var_0.x, var_0.x)), Struct_1(abs(~4294967295u), select(vec3<bool>(arg_0, false, arg_0), func_5(1u, Struct_3(Struct_2(Struct_1(u_input.a.x, vec3<bool>(true, arg_0, false), vec3<bool>(true, true, false), u_input.a), 7674i, u_input.a.x, 0i, vec2<i32>(1651i, 8232i)), vec2<bool>(true, false), 709f, -386f), vec2<f32>(-2394f, 875f)).c, vec3<bool>(true, true, true)), !func_2(Struct_1(u_input.a.x, vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0), vec4<u32>(u_input.a.x, 11350u, 4294967295u, u_input.a.x))).a.a.c, func_6(Struct_2(Struct_1(u_input.a.x, vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true), u_input.a), var_0.x, 4294967295u, -1i, var_0), func_5(u_input.a.x, Struct_3(Struct_2(Struct_1(u_input.a.x, vec3<bool>(false, arg_0, true), vec3<bool>(false, true, arg_0), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), var_0.x, 1179u, var_0.x, vec2<i32>(1i, -10035i)), vec2<bool>(false, arg_0), -653f, -726f), vec2<f32>(-878f, -720f)), arg_0).a.a.d), true).a.a.d.yz % vec2<u32>(32u));
    var var_2 = vec2<i32>(var_1.x, var_1.x);
    var var_3 = ~(~1999u);
    var_2 = vec2<i32>(-var_2.x, var_1.x) | -(~var_0);
    return func_2(Struct_1(96666u, !(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), true)), !(!(!vec3<bool>(arg_0, arg_0, false))), _wgslsmith_div_vec4_u32(u_input.a, ~countOneBits(u_input.a))));
}

fn func_8(arg_0: Struct_3, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = !func_5(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, arg_0.a.a.a, u_input.a.x)), select(u_input.a.ywx, select(vec3<u32>(arg_0.a.a.d.x, 0u, 14702u), vec3<u32>(1u, arg_1.x, arg_0.a.c), true), func_5(arg_1.x, arg_0, vec2<f32>(607f, 2140f)).b)), func_2(func_1(func_2(arg_0.a.a).a.a.b.x).a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(716f, arg_0.c) + vec2<f32>(572f, arg_0.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.d, -933f)))))).b;
    var var_1 = arg_0.a.a;
    var_1 = func_5(_wgslsmith_add_u32(func_2(func_5(70585u, Struct_3(arg_0.a, var_0.yz, 1599f, 491f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1366f, arg_0.c) * vec2<f32>(arg_0.d, 973f)))).a.c, ~arg_0.a.c), Struct_3(func_6(Struct_2(arg_0.a.a, arg_0.a.b, 8387u, 0i, arg_0.a.e), Struct_1(var_1.a, vec3<bool>(true, var_0.x, false), func_2(Struct_1(1u, vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec4<u32>(3911u, 4294967295u, 106343u, 1u))).a.a.b, vec4<u32>(65992u, arg_0.a.c, var_1.a, var_1.a)), func_5(~u_input.a.x, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(627f, -699f))).b.x).a, func_6(Struct_2(func_2(Struct_1(arg_1.x, var_1.c, var_0, vec4<u32>(var_1.a, 14338u, 4294967295u, u_input.a.x))).a.a, abs(-2147483647i), _wgslsmith_sub_u32(4294967295u, 4294967295u), min(arg_0.a.b, 2147483647i), -arg_0.a.e), arg_0.a.a, !(!arg_0.a.a.c.x)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-546f)) * arg_0.d), _wgslsmith_f_op_f32(646f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1603f, arg_0.d)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.d, arg_0.c)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.d, 844f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d + -374f), _wgslsmith_f_op_f32(exp2(arg_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 134f) - vec2<f32>(-1000f, -1015f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, 1179f)))))));
    let var_2 = Struct_2(arg_0.a.a, arg_0.a.d, u_input.a.x, max((~arg_0.a.b | -2147483647i) << (52281u % 32u), 1i), vec2<i32>(arg_0.a.b, arg_0.a.e.x));
    var var_3 = arg_0;
    return func_5(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_3.a.a.d, u_input.a, func_5(21236u, arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(578f, 1413f) + vec2<f32>(var_3.d, 1635f))).d), countOneBits(arg_0.a.a.d)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(trunc(2651f)), arg_0.d)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_1(true), ~firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_1 = u_input.a.x;
    var var_2 = select(vec4<bool>(all(var_0), all(func_8(func_2(Struct_1(0u, vec3<bool>(var_0.x, false, true), var_0, vec4<u32>(u_input.a.x, 21262u, 0u, 0u))), ~u_input.a.yww)), var_0.x, var_0.x), vec4<bool>(func_5(_wgslsmith_mult_u32(0u, 72846u), Struct_3(func_1(var_0.x).a, func_5(u_input.a.x, Struct_3(Struct_2(Struct_1(47149u, vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), u_input.a), 8268i, u_input.a.x, -1i, vec2<i32>(23456i, 0i)), vec2<bool>(true, false), -1917f, -1825f), vec2<f32>(-1588f, -891f)).c.yz, -505f, -1000f), vec2<f32>(-972f, _wgslsmith_f_op_f32(659f * -539f))).c.x, false, var_0.x, false), vec4<bool>(true != var_0.x, var_0.x, var_0.x, var_0.x));
    let var_3 = Struct_2(Struct_1(max((u_input.a.x ^ u_input.a.x) >> (12504u % 32u), ~(~u_input.a.x)), var_0, !(!var_0), vec4<u32>(~0u >> (u_input.a.x % 32u), _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_sub_u32(57002u, 1u)), 38689u, u_input.a.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(~(-8651i), -76053i, ~(-1i), i32(-1i) * -10864i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(55816i, -2147483647i), vec2<i32>(3985i, -56352i)), 1i, -1i, 1i)), _wgslsmith_div_u32(u_input.a.x, ~min(~1u, 74348u)), -min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -24459i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 45665i))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -2147483647i), 0i)), vec2<i32>(-54622i, 2147483647i));
    let var_4 = func_6(func_6(func_1(var_0.x & var_3.a.c.x).a, func_1(!var_2.x & var_3.a.c.x).a.a, var_3.a.c.x).a, func_1(true).a.a, all(!(!select(var_0, var_3.a.c, var_2.wzx))));
    var_2 = select(vec4<bool>(true, func_2(Struct_1(~var_4.a.a.d.x, vec3<bool>(var_4.b.x, false, true), !var_0, _wgslsmith_sub_vec4_u32(vec4<u32>(7686u, 16569u, 4294967295u, var_4.a.a.d.x), vec4<u32>(76189u, var_4.a.a.d.x, 4294967295u, var_4.a.c)))).a.a.c.x, all(!vec2<bool>(false, var_0.x)), _wgslsmith_mod_u32(u_input.a.x, func_5(u_input.a.x, var_4, vec2<f32>(502f, var_4.c)).a) > 12968u), !vec4<bool>(all(vec4<bool>(true, var_3.a.c.x, var_0.x, var_0.x)), true & var_3.a.b.x, _wgslsmith_f_op_f32(exp2(var_4.d)) < _wgslsmith_f_op_f32(step(var_4.c, var_4.d)), true), vec4<bool>(!(!(-9208i >= var_4.a.e.x)), !func_1(false).a.a.b.x | select(!var_3.a.b.x, true && var_2.x, var_3.a.c.x), var_4.a.a.c.x, !var_2.x));
    var_2 = !vec4<bool>(true, any(vec3<bool>(select(var_2.x, false, var_4.a.a.b.x), !var_2.x, true)), func_5(reverseBits(~var_4.a.c), func_6(Struct_2(var_4.a.a, var_3.d, 54991u, 0i, var_4.a.e), var_4.a.a, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.c, -1000f))))).c.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c) - var_4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -708f)))))), ~(~_wgslsmith_mod_u32(92492u, 20137u)) ^ _wgslsmith_dot_vec3_u32(~(~vec3<u32>(39794u, 138424u, 10610u)), abs(var_3.a.d.ywx)), max(var_4.a.b, -51383i), 13149u);
}

