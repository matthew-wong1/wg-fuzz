struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = abs(~vec4<u32>(abs(firstTrailingBit(45220u)), _wgslsmith_clamp_u32(1u, firstTrailingBit(17602u), ~51222u), 1u, 1u));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.c)), arg_0), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, global0.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(532f + global0.a.x))))), select(vec3<bool>(global0.d.x, false, !any(global0.d)), vec3<bool>(true, !global0.d.x, all(vec4<bool>(false, false, global0.e, global0.d.x))), select(global0.d, select(!vec3<bool>(global0.e, global0.d.x, global0.e), global0.d, !global0.d.x), !global0.d.x)), true);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, global0.d.xx)) * vec2<f32>(1000f, -113f)))), countOneBits(_wgslsmith_sub_vec4_i32(~global0.b, global0.b >> (select(vec4<u32>(32488u, var_0.x, 0u, 6040u), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), global0.d.x) % vec4<u32>(32u)))), 1283f, !vec3<bool>(global0.e, all(vec2<bool>(true, global0.d.x)), any(select(vec4<bool>(true, global0.e, global0.d.x, false), vec4<bool>(false, global0.d.x, true, global0.d.x), vec4<bool>(false, false, false, false)))), any(vec3<bool>(true, true & (global0.d.x && true), _wgslsmith_f_op_f32(global0.c + -596f) <= _wgslsmith_f_op_f32(floor(587f)))));
    return _wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_div_vec2_f32(vec2<f32>(1019f, global0.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = -arg_0;
    global0 = arg_3;
    global0 = Struct_1(vec2<f32>(545f, arg_3.c), ~(~(~(vec4<i32>(u_input.b, 0i, arg_3.b.x, arg_1.b.x) >> (vec4<u32>(0u, 0u, 0u, 70725u) % vec4<u32>(32u))))), arg_1.a.x, !(!vec3<bool>(false, true, select(true, global0.d.x, false))), global0.d.x);
    return _wgslsmith_f_op_f32(-global0.c);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), countOneBits((reverseBits(global0.b) << (vec4<u32>(1u, 95284u, 7971u, 0u) % vec4<u32>(32u))) & vec4<i32>(~2147483647i, -22315i, _wgslsmith_dot_vec2_i32(global0.b.yw, global0.b.zy), u_input.a)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_i32(-(~global0.b.yx), max(countOneBits(global0.b.zz), global0.b.xz)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_0)), _wgslsmith_f_op_vec2_f32(global0.a - global0.a), global0.d.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, u_input.b, global0.b.x, 1i), abs(vec4<i32>(global0.b.x, global0.b.x, -54637i, 2147483647i))), _wgslsmith_f_op_f32(-1f), global0.d, any(vec4<bool>(true, true, false, global0.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 396f, global0.e))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) * vec2<f32>(global0.c, -337f)), -global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(396f + 917f))), vec3<bool>(global0.e, true, global0.d.x & false), false))), select(vec3<bool>(true, global0.d.x, false), vec3<bool>(any(!global0.d), true, (359f == arg_0) || (global0.e && global0.d.x)), !select(select(global0.d, global0.d, vec3<bool>(global0.e, true, false)), vec3<bool>(false, global0.e, global0.e), vec3<bool>(false, global0.e, global0.d.x))), all(select(global0.d.xy, !(!global0.d.zz), vec2<bool>(any(vec4<bool>(global0.d.x, true, true, true)), any(vec3<bool>(global0.d.x, false, global0.d.x))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-484f)).x) + global0.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -372f)) * global0.a) + global0.a) + vec2<f32>(global0.a.x, -442f)), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, u_input.c, 2147483647i, global0.b.x)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~(vec4<i32>(global0.b.x, 2147483647i, -2147483647i, u_input.b) | vec4<i32>(u_input.c, 1i, -1i, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -915f), vec3<bool>(_wgslsmith_f_op_f32(268f * -1639f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))), true, select(false, global0.d.x & (-1301f > global0.c), !global0.e)), !((false || (global0.d.x & global0.e)) == (all(vec3<bool>(false, global0.e, true)) & all(global0.d.yz))));
    var var_2 = ~(~reverseBits(min(1u, ~30437u)));
    var var_3 = var_1;
    return Struct_1(global0.a, ~var_3.b, global0.c, global0.d, true | global0.e);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a - global0.a), _wgslsmith_f_op_vec2_f32(floor(global0.a)))))), ~global0.b, 583f, vec3<bool>(true, true, !(global0.d.x || true)), arg_1.b.e);
    global0 = arg_1.b;
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) + _wgslsmith_f_op_f32(func_4(vec2<i32>(var_0.b.b.x, 1i), Struct_1(vec2<f32>(854f, arg_1.b.a.x), var_0.a.b, -367f, vec3<bool>(global0.d.x, arg_1.a.e, false), arg_1.b.e), global0.a.x, arg_1.b))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1713f + _wgslsmith_f_op_f32(-arg_1.a.a.x)), global0.c, true))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(219f).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1261f - 1142f)), 2469f));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -668f)), global0.b & vec4<i32>(4511i, global0.b.x, global0.b.x, _wgslsmith_dot_vec4_i32(global0.b, global0.b)), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), global0.d, !any(vec4<bool>(arg_3.x, arg_3.x, true, global0.e))), func_2(_wgslsmith_f_op_f32(select(-1108f, -328f, any(vec4<bool>(false, arg_3.x, true, true)) & true))), _wgslsmith_div_u32(629u ^ (_wgslsmith_dot_vec2_u32(arg_1, arg_1) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, 89331u), vec4<u32>(arg_1.x, 49862u, 0u, 5352u)) % 32u)), _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(max(arg_1.x, arg_1.x), arg_1.x))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a * global0.a)), _wgslsmith_sub_vec4_i32(select(~var_0.b.b, vec4<i32>(~(-28927i), _wgslsmith_add_i32(-39262i, 67144i), var_0.a.b.x >> (var_0.c % 32u), ~u_input.c), !(!vec4<bool>(var_0.a.d.x, false, var_0.b.d.x, arg_3.x))), global0.b << (abs(vec4<u32>(1u, 37857u, 0u, 186u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, global0.a.x)))), !(!select(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(false, arg_3.x, var_0.a.d.x), true)), false);
    var var_1 = (_wgslsmith_div_vec3_i32(~vec3<i32>(global0.b.x, -32029i, 1i), func_2(_wgslsmith_f_op_f32(var_0.b.c - var_0.b.c)).b.xxz) ^ global0.b.wzw) << (vec3<u32>(_wgslsmith_add_u32(reverseBits(1u << (1u % 32u)), var_0.c), firstLeadingBit(0u), firstLeadingBit(reverseBits(~47572u))) % vec3<u32>(32u));
    let var_2 = Struct_2(var_0.a, Struct_1(var_0.a.a, -_wgslsmith_mult_vec4_i32(vec4<i32>(-42435i, -20553i, u_input.a, -2147483647i), select(global0.b, var_0.b.b, vec4<bool>(global0.e, global0.e, global0.e, false))), _wgslsmith_f_op_f32(min(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) + _wgslsmith_f_op_f32(f32(-1f) * -1265f)))), vec3<bool>(var_0.c < arg_1.x, func_2(958f).e, var_0.b.e), abs(func_2(global0.a.x).b.x) != -2147483647i), var_0.c);
    let var_3 = 1261f;
    return -338f;
}

fn func_1() -> vec2<f32> {
    var var_0 = global0.c;
    var_0 = _wgslsmith_f_op_f32(func_6(global0.b.xw, _wgslsmith_mod_vec2_u32(select(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(9548u, 37906u), vec2<u32>(0u, 4294967295u))), select(global0.d.xx, vec2<bool>(false, true), global0.d.xz)), countOneBits(~vec2<u32>(0u, 1u))), _wgslsmith_f_op_vec3_f32(func_5(-482f, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, -280f) + vec2<f32>(global0.c, 1967f)), global0.b, _wgslsmith_f_op_f32(abs(global0.a.x)), global0.d, true), func_2(global0.c), ~_wgslsmith_clamp_u32(1u, 1u, 113677u)))), !(!global0.d)));
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-287f + _wgslsmith_div_f32(-1000f, global0.c)))) * 432f));
    var var_2 = 17253u;
    let var_3 = Struct_2(func_2(_wgslsmith_div_f32(772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f * 1000f) + 1638f) + 652f)), ~(~0u));
    return vec2<f32>(var_3.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - func_2(global0.a.x).a), global0.b, -726f, func_2(1344f).d, true);
    global0 = func_2(func_2(1112f).a.x);
    global0 = func_2(global0.a.x);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-249f, -280f)))), _wgslsmith_mult_vec4_i32(countOneBits(func_2(-1000f).b), global0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(func_2(_wgslsmith_f_op_f32(func_4(global0.b.xx, var_0, var_0.a.x, var_0))).a.x)))), vec3<bool>(true, false, var_0.e), var_0.e);
    global0 = Struct_1(var_0.a, vec4<i32>(u_input.a, global0.b.x, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(-2147483647i, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x, 2147483647i, u_input.c) & var_0.b.zyw, _wgslsmith_clamp_vec3_i32(vec3<i32>(-79311i, -845i, 0i), global0.b.zzw, vec3<i32>(global0.b.x, u_input.c, global0.b.x)))), _wgslsmith_div_i32(abs(abs(33735i)), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(153f, Struct_2(Struct_1(global0.a, vec4<i32>(var_0.b.x, global0.b.x, 1i, u_input.c), var_0.c, vec3<bool>(global0.d.x, global0.e, true), false), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), var_0.b, -245f, vec3<bool>(false, false, global0.d.x), false), 1u))).x * -1000f), Struct_2(var_0, var_0, ~53210u))).x), vec3<bool>(true, any(vec2<bool>(false, true)), true), global0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c, global0.a.x), global0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), true))));
}

