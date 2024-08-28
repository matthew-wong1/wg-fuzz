struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: vec4<i32>;

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = Struct_3(vec3<bool>(any(vec3<bool>(any(vec2<bool>(true, arg_0.x)), 1i <= global2.x, any(arg_0))), all(!global0.c), global0.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.c.yz)) + _wgslsmith_f_op_vec2_f32(global3.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -997f) * global0.b)))), !select(global0.c, select(select(arg_0.yxw, vec3<bool>(global0.d.d, false, true), vec3<bool>(false, arg_0.x, true)), !arg_0.xzx, all(global0.a)), arg_0.zxw), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.d.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, 683f))), _wgslsmith_div_vec2_f32(vec2<f32>(-820f, global0.b.x), vec2<f32>(global0.d.a.x, global0.b.x)), select(global0.c.zx, arg_0.yz, arg_0.zx))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.yyy)), !arg_0.x, u_input.b.x), 63651i);
    let var_1 = !arg_0;
    let var_2 = -32780i;
    var var_3 = Struct_2(arg_0.zx, Struct_1(global0.b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1113f))), -1082f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global3.xzw))), (firstLeadingBit(13474u) & u_input.b.x) <= firstTrailingBit(u_input.a), 1u));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1291f))), 757f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_3.b.a.x, var_3.b.b.x, true)))), -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.b.x, global0.d.c.x, 297f, 651f)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-654f, var_0.b.x, -842f, -265f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.x, -264f, global0.d.b.x, -1322f), vec4<f32>(var_0.b.x, 1023f, var_3.b.b.x, -209f)))))), false | var_1.x)));
    return vec2<f32>(var_0.b.x, global3.x);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    global0 = Struct_3(vec3<bool>(!(arg_2.x == u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(985f, global0.d.c.x)) < global0.b.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -345f))), global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(select(global0.d.a.x, global3.x, global0.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, false, global0.d.d, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.x, global0.d.a.x, -1000f) - global3.wzx))), global3.wzz)), false, select(_wgslsmith_div_u32(1u, 1u), 0u, true)), arg_3);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global0.b.x)))));
    var var_1 = -210f;
    let var_2 = Struct_3(vec3<bool>(all(global0.c), false, global0.d.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.d.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1487f + -220f), -953f))), global0.c, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.wz + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1594f, 230f), global0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b))), vec2<f32>(515f, global0.b.x), global3.xyy, global0.a.x, arg_2.x), abs(arg_0));
    global2 = reverseBits(-countOneBits(~(~vec4<i32>(12821i, -1i, global2.x, global2.x))));
    return global0.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = arg_0.d;
    var var_1 = all(!arg_0.c.xy);
    global3 = vec4<f32>(-2348f, arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(-554f - global0.d.b.x))) * var_0.a.x), 635f);
    let var_2 = -3093i;
    let var_3 = Struct_2(select(vec2<bool>(arg_2.a.x, all(!vec4<bool>(arg_0.a.x, false, true, arg_0.c.x))), vec2<bool>(arg_3, _wgslsmith_mod_i32(-2147483647i, arg_2.e) <= 0i), arg_1.d), var_0);
    return Struct_2(!arg_2.c.yy, global0.d);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, 4576i, -25041i, global2.x) >> ((vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, arg_1.b.e) | vec4<u32>(0u, arg_1.b.e, 22399u, 4294967295u)) % vec4<u32>(32u))) ^ vec4<i32>(-53719i, global2.x, _wgslsmith_mult_i32(global2.x, 0i), ~global2.x), vec4<i32>(2920i, global2.x, global0.e, _wgslsmith_dot_vec2_i32(global2.xz, min(vec2<i32>(-55619i, 2147483647i), global2.zz)))), ~8469i);
    let var_1 = Struct_1(global0.d.c.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(162f, global0.b.x) + vec2<f32>(global0.d.c.x, -448f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-496f, 963f, 326f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, arg_1.b.b.x, arg_0) * global0.d.c)))) * global3.yxy), all(!vec4<bool>(any(arg_2), true, true, !global0.d.d)), _wgslsmith_add_u32(_wgslsmith_div_u32(72209u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 18426u, 1u, arg_3.x) ^ vec4<u32>(1u, 1u, 4294967295u, u_input.b.x), vec4<u32>(0u, 1u, arg_1.b.e, arg_1.b.e))), 0u));
    global2 = ~(~((~vec4<i32>(global2.x, global2.x, global2.x, global0.e) & (vec4<i32>(2147483647i, global2.x, global2.x, global2.x) | vec4<i32>(1i, -13040i, -1i, global0.e))) >> ((~vec4<u32>(42818u, arg_3.x, var_1.e, var_1.e) ^ abs(vec4<u32>(0u, global0.d.e, arg_3.x, 56232u))) % vec4<u32>(32u))));
    let var_2 = Struct_3(arg_2.xww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -325f), 1f), vec2<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(-global0.b.x))))), select(select(vec3<bool>(select(var_1.d, arg_2.x, var_1.d), select(arg_2.x, arg_2.x, false), true || var_1.d), !(!global0.a), any(arg_2) == arg_2.x), arg_2.xwz, global0.c), func_4(Struct_3(select(global0.a, vec3<bool>(true, true, true), arg_2.xwy), _wgslsmith_f_op_vec2_f32(arg_1.b.c.yy - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, global0.d.c.x)))), global0.a, arg_1.b, var_0.x ^ -var_0.x), arg_1.b, Struct_3(vec3<bool>(arg_1.b.d, any(vec3<bool>(global0.a.x, true, true)), global0.a.x), _wgslsmith_f_op_vec2_f32(-arg_1.b.b), select(vec3<bool>(false, var_1.d, global0.c.x), !vec3<bool>(false, global0.c.x, false), vec3<bool>(arg_2.x, false, false)), func_4(Struct_3(vec3<bool>(false, false, arg_1.b.d), vec2<f32>(-1000f, global3.x), arg_2.xyy, Struct_1(vec2<f32>(var_1.b.x, arg_1.b.c.x), vec2<f32>(914f, global3.x), vec3<f32>(-1362f, -271f, 649f), true, global0.d.e), 2147483647i), arg_1.b, Struct_3(vec3<bool>(false, arg_1.b.d, true), vec2<f32>(-1331f, arg_1.b.a.x), vec3<bool>(global0.a.x, false, true), Struct_1(var_1.c.zz, vec2<f32>(arg_1.b.b.x, global3.x), global3.xxz, false, 75812u), var_0.x), true).b, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 34862i, -2147483647i), -global2.zwy) == firstTrailingBit(-53807i)).b, 59508i);
    var var_3 = func_4(Struct_3(!arg_2.ywz, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), arg_0))), vec3<bool>(false, !var_2.d.d && true, func_4(var_2, func_4(Struct_3(vec3<bool>(global0.d.d, arg_2.x, false), arg_1.b.c.zx, global0.c, Struct_1(vec2<f32>(arg_1.b.b.x, 780f), arg_1.b.c.xx, arg_1.b.c, arg_1.b.d, u_input.b.x), -11434i), global0.d, Struct_3(vec3<bool>(false, arg_2.x, global0.d.d), vec2<f32>(534f, 1097f), arg_2.zyy, arg_1.b, -25798i), arg_2.x).b, Struct_3(var_2.c, var_1.b, vec3<bool>(true, global0.a.x, var_2.c.x), global0.d, var_0.x), false || arg_1.a.x).b.d), global0.d, max(firstTrailingBit(-2147483647i), abs(select(-33446i, 1i, global0.c.x)))), Struct_1(_wgslsmith_div_vec2_f32(var_2.d.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(186f, arg_1.b.c.x), vec2<f32>(var_1.c.x, -1000f)))), arg_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.zyx) * _wgslsmith_f_op_vec3_f32(exp2(arg_1.b.c))), any(vec3<bool>(any(var_2.a), true || arg_1.b.d, true)), 24116u), Struct_3(vec3<bool>(any(arg_2) && true, global0.c.x, any(!vec3<bool>(false, false, arg_1.b.d))), var_1.a, select(vec3<bool>(!arg_2.x, any(vec3<bool>(arg_2.x, global0.c.x, global0.a.x)), arg_2.x), select(var_2.c, global0.a, !var_2.d.d), select(global0.c, !var_2.c, global0.d.d)), global0.d, 1i), false);
    return var_3.b;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(arg_2, _wgslsmith_div_u32(28779u, 40445u), ~arg_1.e, 0u) >> (~min(vec4<u32>(u_input.b.x, 1u, 1u, 1u) ^ vec4<u32>(0u, arg_2, u_input.a, 4294967295u), countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, arg_1.e))) % vec4<u32>(32u));
    var var_1 = !(!(!vec3<bool>(true, true, arg_0 == arg_1.b.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a, global3.zy) - _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.d.a.x, -240f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1526f, -1000f)) - vec2<f32>(global0.d.c.x, arg_1.c.x)), vec2<bool>(func_4(Struct_3(global0.c, global3.zy, global0.a, arg_1, 22268i), Struct_1(global0.b, arg_1.a, vec3<f32>(-154f, -466f, arg_0), global0.c.x, global0.d.e), Struct_3(global0.a, vec2<f32>(-417f, global3.x), global0.c, Struct_1(arg_1.c.yx, vec2<f32>(global0.d.a.x, arg_1.a.x), vec3<f32>(453f, -1197f, arg_1.b.x), true, arg_2), 10242i), true).b.d, var_1.x))), _wgslsmith_f_op_vec2_f32(func_3(!(!vec4<bool>(arg_1.d, arg_1.d, global0.d.d, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, -680f) * global3.zz), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1299f)), var_0.x < ~arg_1.e))), _wgslsmith_f_op_vec3_f32(arg_1.c * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.c), arg_1.c, vec3<bool>(arg_1.c.x > 1561f, any(vec4<bool>(true, var_1.x, var_1.x, true)), arg_1.d)))), func_2(-abs(global2.x), vec2<i32>(global0.e, min(firstLeadingBit(global0.e), firstTrailingBit(global2.x))), vec4<u32>(_wgslsmith_div_u32(~4294967295u, 4294967295u), func_2(-global0.e, global2.wx, min(vec4<u32>(u_input.b.x, arg_1.e, var_0.x, 1u), vec4<u32>(26631u, 29502u, u_input.b.x, var_0.x)), countOneBits(global0.e)).e, 4294967295u, ~(~29344u)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), global2.xy ^ global2.xy), 1i, any(select(vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(false, arg_1.d, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, arg_1.d))))).d, arg_1.e);
    var var_3 = Struct_2(!var_1.xx, var_2);
    var var_4 = global2.zx;
    return Struct_1(var_3.b.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b.a.x))) * _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, false, var_2.d, false))).x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(459f, 1000f) * -240f), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-430f - -969f)))))), true, func_4(Struct_3(!global0.a, global3.wx, select(vec3<bool>(true, true, true), !global0.a, select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_3.b.d), global0.a)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.x, arg_1.c.x), arg_1.a, var_1.zx)), global3.wy, global0.d.c, false, u_input.a), -(~global0.e)), func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1302f * -749f), var_3.b.c.x)), func_4(Struct_3(vec3<bool>(global0.c.x, arg_1.d, true), vec2<f32>(-235f, var_3.b.b.x), global0.c, Struct_1(vec2<f32>(-172f, 1393f), arg_1.c.xx, vec3<f32>(arg_1.b.x, arg_1.a.x, arg_1.b.x), false, u_input.b.x), 10251i), var_2, Struct_3(global0.a, vec2<f32>(963f, 639f), vec3<bool>(var_2.d, true, true), var_2, global0.e), func_4(Struct_3(global0.a, vec2<f32>(2019f, -1222f), vec3<bool>(true, var_1.x, arg_1.d), Struct_1(vec2<f32>(var_2.a.x, -996f), var_2.b, global0.d.c, arg_1.d, arg_2), global2.x), Struct_1(global3.wy, arg_1.c.yx, var_3.b.c, false, arg_2), Struct_3(vec3<bool>(global0.a.x, false, false), vec2<f32>(global3.x, -302f), vec3<bool>(true, false, var_1.x), global0.d, global0.e), var_1.x).b.d), vec4<bool>(false, func_2(var_4.x, vec2<i32>(50734i, 0i), vec4<u32>(0u, arg_1.e, 106484u, var_0.x), -1i).d, all(vec3<bool>(arg_1.d, global0.a.x, true)), func_4(Struct_3(global0.c, vec2<f32>(-1504f, -516f), vec3<bool>(arg_1.d, false, var_2.d), Struct_1(vec2<f32>(global3.x, 1449f), vec2<f32>(var_3.b.c.x, -312f), var_3.b.c, false, 0u), 15428i), Struct_1(var_2.c.yy, vec2<f32>(var_3.b.b.x, 262f), vec3<f32>(global3.x, arg_0, 190f), false, u_input.a), Struct_3(global0.a, vec2<f32>(-1741f, global0.d.b.x), vec3<bool>(var_1.x, false, false), Struct_1(vec2<f32>(var_2.b.x, 1386f), vec2<f32>(486f, -1278f), var_3.b.c, true, 4294967295u), global2.x), var_3.a.x).a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.e, var_2.e), var_0.xw << (vec2<u32>(34992u, 4294967295u) % vec2<u32>(32u)), max(vec2<u32>(4294967295u, var_2.e), u_input.b))), Struct_3(select(vec3<bool>(true, false, global0.a.x), global0.c, vec3<bool>(false, var_2.d, true)), arg_1.a, global0.a, func_2(4449i, global2.zy, vec4<u32>(15115u, arg_2, global0.d.e, arg_2) ^ vec4<u32>(var_0.x, 0u, 6675u, arg_2), var_4.x | var_4.x), _wgslsmith_dot_vec2_i32(global2.xw, -global2.xz)), var_2.d).b.e);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = func_6(_wgslsmith_f_op_f32(1038f * 1f), func_5(_wgslsmith_f_op_f32(-880f * arg_1.b.x), func_4(Struct_3(vec3<bool>(global0.d.d, false, arg_1.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, arg_1.c.x)), !global0.c, func_2(global0.e, global2.yy, vec4<u32>(global0.d.e, arg_1.e, global0.d.e, 50671u), global2.x), 25720i), arg_1, Struct_3(select(vec3<bool>(false, global0.d.d, global0.a.x), vec3<bool>(false, arg_1.d, arg_1.d), global0.c), arg_1.c.yz, global0.a, func_2(global0.e, vec2<i32>(global2.x, arg_0.x), vec4<u32>(u_input.a, 11402u, 3328u, 0u), global2.x), -global2.x), any(vec2<bool>(false, arg_1.d)) | true), select(vec4<bool>(global0.c.x, arg_1.d, global2.x != global0.e, arg_1.d), select(vec4<bool>(false, true, true, arg_1.d), vec4<bool>(false, true, false, arg_1.d), !vec4<bool>(true, true, true, global0.c.x)), !(arg_1.d != false)), firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(70474u, 0u), u_input.b))), max(_wgslsmith_div_u32(24775u, 5285u), _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 27403u), vec3<u32>(0u, 60710u, u_input.a)), 18355u)));
    global0 = Struct_3(select(select(global0.c, vec3<bool>(func_4(Struct_3(global0.c, vec2<f32>(-762f, global3.x), vec3<bool>(global0.a.x, var_0.d, true), global0.d, 2147483647i), global0.d, Struct_3(global0.a, arg_1.a, vec3<bool>(true, false, false), Struct_1(vec2<f32>(var_0.c.x, var_0.a.x), var_0.a, global0.d.c, false, u_input.b.x), global0.e), true).b.d, false, !global0.c.x), global0.c), vec3<bool>(select(global0.e, global2.x, true) > (arg_0.x ^ 0i), var_0.d, select(true, global2.x < 1i, true)), select((107612u == global0.d.e) || true, true, arg_1.d)), _wgslsmith_f_op_vec2_f32(func_3(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.d, true, var_0.d, true), true)))), select(global0.c, global0.c, global0.a), arg_1, 1i);
    global1 = var_0.b.x;
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.d.e, var_0.e), func_4(Struct_3(vec3<bool>(global0.a.x, global0.d.d, global0.a.x), vec2<f32>(-1120f, arg_1.b.x), vec3<bool>(false, true, true), Struct_1(vec2<f32>(global0.b.x, global0.b.x), global0.d.b, arg_1.c, false, 1u), -14983i), Struct_1(vec2<f32>(-609f, var_0.a.x), arg_1.c.zz, var_0.c, var_0.d, 65856u), Struct_3(global0.a, arg_1.b, global0.c, global0.d, 1i), global0.c.x).b.e, global0.d.e >> (arg_1.e % 32u)), ~1u, func_4(Struct_3(global0.a, vec2<f32>(arg_1.a.x, -1000f), vec3<bool>(global0.a.x, false, false), Struct_1(global0.d.c.zx, vec2<f32>(-1203f, 180f), vec3<f32>(-1954f, 1000f, var_0.a.x), false, 21060u), arg_0.x), global0.d, Struct_3(vec3<bool>(true, global0.d.d, arg_1.d), global3.xz, global0.a, global0.d, global2.x), true).b.e, 27459u), vec4<u32>(32641u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.e, var_0.e), vec3<u32>(u_input.b.x, 0u, global0.d.e) | vec3<u32>(1u, 4294967295u, 0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.e, 0u, arg_1.e), vec3<u32>(arg_1.e, 4294967295u, arg_1.e)), vec3<u32>(u_input.a, u_input.b.x, var_0.e)), 1u), max(~vec4<u32>(global0.d.e, 50523u, arg_1.e, 4294967295u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.e, 37253u, 0u), vec4<u32>(arg_1.e, 2193u, 1u, u_input.b.x)))), ~(~(vec4<u32>(arg_1.e, global0.d.e, 1u, 23235u) << (vec4<u32>(var_0.e, 8776u, var_0.e, 20473u) % vec4<u32>(32u))) << (vec4<u32>(~50537u, var_0.e << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(10266u, arg_1.e), u_input.b), arg_1.e) % vec4<u32>(32u))));
    let var_2 = arg_0;
    return max(global2.x, _wgslsmith_dot_vec3_i32(global2.zzy, ~vec3<i32>(global0.e, var_2.x & 16882i, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.zz;
    var var_1 = true;
    let var_2 = vec4<i32>(global0.e, func_1(global2.zy, global0.d), -2147483647i >> (firstLeadingBit(~(~94040u)) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(min(select(8829i, 1i, true), -global0.e), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, global2.x, 1i), ~(-3471i)), abs(2147483647i), ~(~global0.e)), ~min(~vec4<i32>(2147483647i, global2.x, global0.e, 9020i), ~vec4<i32>(global0.e, global2.x, -1i, global2.x))));
    var var_3 = ~(~vec4<u32>(~global0.d.e, abs(u_input.b.x), ~66242u, func_4(Struct_3(vec3<bool>(false, var_0.x, false), vec2<f32>(global3.x, global0.b.x), vec3<bool>(true, true, global0.d.d), Struct_1(vec2<f32>(390f, -839f), global0.b, vec3<f32>(-1170f, 1019f, 1240f), global0.c.x, u_input.a), 2147483647i), global0.d, Struct_3(global0.c, vec2<f32>(881f, global3.x), vec3<bool>(true, false, global0.d.d), global0.d, 2147483647i), global0.c.x).b.e)) >> ((_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.d.e, global0.d.e, 4294967295u, u_input.b.x), select(vec4<u32>(1u, global0.d.e, 39561u, 30067u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, global0.d.e, 34345u), vec4<u32>(1u, 0u, 1930u, u_input.b.x)), vec4<bool>(true, true, true, true))) & vec4<u32>(u_input.a, u_input.b.x, u_input.a, global0.d.e)) % vec4<u32>(32u));
    let var_4 = _wgslsmith_div_f32(global3.x, global3.x);
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(771f, global0.d.b.x), -2591f)), _wgslsmith_f_op_f32(global0.d.b.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f * global0.d.b.x))), _wgslsmith_f_op_f32(-688f + global3.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global3.x, 772f, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.d.c.x, 1070f, global3.x) + vec4<f32>(global3.x, -108f, -627f, -649f))))))));
    var var_6 = Struct_3(!vec3<bool>(func_6(global3.x, Struct_1(vec2<f32>(274f, var_5.x), vec2<f32>(-1041f, 1000f), vec3<f32>(-425f, 1086f, -280f), var_0.x, 33097u), global0.d.e ^ 9431u).d, var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_5.x, _wgslsmith_f_op_f32(trunc(global0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.yz * _wgslsmith_f_op_vec2_f32(ceil(var_5.ww))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_5.wx, var_5.zw, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(var_0.x, false, var_0.x, true))).x)) > global3.x)), vec3<bool>(!global0.c.x, all(!(!vec4<bool>(false, var_0.x, true, true))), false), func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1072f, 702f, false))), _wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, false, var_0.x, true)))).x), global0.d, func_6(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d, global0.d.e << (52837u % 32u)).e ^ func_5(_wgslsmith_f_op_f32(1239f * global3.x), Struct_2(global0.a.xx, global0.d), vec4<bool>(true, true, true, true), u_input.b).e), func_1(select(~select(global2.xx, vec2<i32>(global2.x, 1i), global0.a.zx), firstLeadingBit(var_2.ww), true), func_6(var_5.x, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(944f, -379f))), vec2<f32>(-692f, -1563f), global0.d.c, global0.d.d, func_4(Struct_3(vec3<bool>(var_0.x, false, var_0.x), vec2<f32>(global3.x, global0.d.a.x), global0.c, global0.d, var_2.x), global0.d, Struct_3(vec3<bool>(global0.a.x, global0.a.x, true), vec2<f32>(1935f, -2144f), vec3<bool>(global0.d.d, true, var_0.x), global0.d, var_2.x), global0.a.x).b.e), func_4(Struct_3(global0.a, vec2<f32>(980f, global3.x), vec3<bool>(global0.a.x, true, var_0.x), Struct_1(global0.d.c.zy, var_5.zy, vec3<f32>(global0.b.x, global0.b.x, global0.d.c.x), true, 47083u), -1i), Struct_1(vec2<f32>(322f, -1243f), global0.d.c.zz, global3.wwx, false, 4294967295u), Struct_3(vec3<bool>(true, false, true), vec2<f32>(2179f, 160f), vec3<bool>(global0.d.d, false, var_0.x), Struct_1(var_5.wx, var_5.wy, global0.d.c, false, 0u), global2.x), !var_0.x).b.e)));
    var var_7 = global0.e;
    let var_8 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-483f)) - global0.d.c.x) + _wgslsmith_f_op_f32(-var_4));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_3.zwz, var_3.wyx, all(vec2<bool>(global0.c.x, var_0.x && true))));
}

