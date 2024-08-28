struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, 0i);

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - 465f) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(global1.a.x + -513f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1346f)) - _wgslsmith_f_op_f32(var_0.x - arg_1.a.a.x));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(-arg_1.a.a.x)), _wgslsmith_f_op_f32(-arg_0)), 1146f, -895f, _wgslsmith_f_op_f32(round(arg_1.a.a.x))));
    let var_3 = arg_1;
    var var_4 = var_3.a;
    return !select(var_3.d.xyy, !select(!vec3<bool>(true, var_3.d.x, false), vec3<bool>(true, arg_1.d.x, var_3.c.x), var_3.d.wxy), var_3.d.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> bool {
    global1 = arg_2.a;
    global0 = -reverseBits(select(abs(abs(u_input.a.www)), u_input.a.wxw, !any(vec4<bool>(arg_3.x, true, true, arg_2.d.x))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(global1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * arg_2.a.a) + _wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(1270f, arg_0.x, arg_0.x, arg_0.x)))) + vec4<f32>(_wgslsmith_f_op_f32(761f + _wgslsmith_f_op_f32(f32(-1f) * -1423f)), -870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(502f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(arg_2.a.a * vec4<f32>(315f, var_0.a.x, arg_0.x, -250f)))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-691f)), -965f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-846f)), _wgslsmith_f_op_f32(global1.a.x - 669f)))), !arg_3.x));
    return !arg_3.x;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.yw)), global1.a.wy, true)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1451f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 726f) - arg_0.a.xy))))));
    let var_1 = select(select(vec3<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), !(u_input.d >= -1i)), vec3<bool>(true, _wgslsmith_mult_i32(global0.x, u_input.a.x) > _wgslsmith_clamp_i32(global0.x, -8162i, 0i), true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), false)), vec3<bool>(true, true, false), vec3<bool>(func_4(_wgslsmith_f_op_vec3_f32(step(arg_0.a.xxw, vec3<f32>(arg_0.a.x, 1000f, arg_0.a.x))), countOneBits(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(25731u, 0u, 1u, u_input.b), vec4<bool>(true, false, true, false))), Struct_2(Struct_1(vec4<f32>(global1.a.x, -702f, global1.a.x, global1.a.x)), select(vec3<u32>(36757u, u_input.b, 29636u), vec3<u32>(18743u, u_input.b, 94050u), false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false)), func_3(arg_0.a.x, Struct_2(Struct_1(vec4<f32>(var_0.x, 547f, var_0.x, -2082f)), vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<bool>(true, true), vec4<bool>(true, false, false, false)))), false, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, global1.a.x), global1.a.x)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))) - vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-global1.a.x)), -1816f));
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_div_f32(-2755f, global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * -565f) - _wgslsmith_f_op_f32(round(-702f))), global1.a.x, _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(select(global1.a.x, -525f, var_1.x))))), _wgslsmith_add_vec3_u32(min(vec3<u32>(1112u, 1u, u_input.b) & ~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 0u, u_input.b)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(11079u, u_input.b, u_input.b))), var_1.yy, vec4<bool>(false, select(false, var_1.x, true), true, !(global1.a.x != _wgslsmith_f_op_f32(step(-1000f, global1.a.x)))));
    global1 = arg_0;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.a.a))), var_3.b, !vec2<bool>(true, u_input.b >= u_input.b), select(var_3.d, select(!select(vec4<bool>(false, var_3.c.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_3.c.x), true), var_3.d, !var_3.d), select(var_3.d, !(!var_3.d), vec4<bool>(true, var_1.x, 307f != var_0.x, true))));
}

fn func_5(arg_0: Struct_2) -> f32 {
    global0 = abs(~vec3<i32>(-20679i, global0.x, countOneBits(_wgslsmith_mod_i32(u_input.a.x, -2665i))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), -238f, global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -366f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(Struct_1(vec4<f32>(var_0.x, -920f, var_0.x, 675f))).a.a.x), var_0.x)) - _wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f + -1296f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.x)) - func_2(arg_0.a).a.a.x), true))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_0.a.a.x) + 285f);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2469f * _wgslsmith_f_op_f32(f32(-1f) * -497f))));
}

fn func_1() -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(Struct_1(global1.a))))), -1349f, _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - global1.a.x))));
    var var_1 = firstTrailingBit(countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), ~vec3<u32>(4294967295u, 1u, u_input.b)), abs(vec3<u32>(32623u, u_input.b, 0u)) ^ vec3<u32>(u_input.b, u_input.b, u_input.b))));
    var var_2 = vec3<f32>(271f, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1191f)));
    var_2 = global1.a.zyz;
    let var_3 = vec4<bool>(var_2.x != func_2(func_2(Struct_1(vec4<f32>(var_2.x, -354f, var_2.x, var_2.x))).a).a.a.x, !(!(!(u_input.b <= u_input.b))), !all(vec3<bool>(true, true, true)), any(!vec4<bool>(any(vec2<bool>(true, true)), true, true, false)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-2147483647i, _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.d, ~u_input.c), _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, 2147483647i, 557i, u_input.a.x), abs(u_input.a))), _wgslsmith_mult_i32(u_input.d, _wgslsmith_sub_i32(u_input.c, 41399i)), firstLeadingBit(~(-global0.x)));
    global0 = vec3<i32>(i32(-1i) * -1i, select(-firstTrailingBit(var_0.x), ~abs(u_input.d), true) | global0.x, u_input.a.x);
    var var_1 = Struct_1(global1.a);
    let var_2 = select(!(!vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true)), vec3<bool>(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), (~u_input.c < _wgslsmith_add_i32(u_input.a.x, -1i)) | true, all(vec2<bool>(true, func_1()))), true);
    let var_3 = true;
    var var_4 = func_2(func_2(Struct_1(var_1.a)).a);
    var var_5 = var_4.a;
    global0 = vec3<i32>(-1i) * -reverseBits(vec3<i32>(countOneBits(14484i), 2147483647i, 268i | global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(min(u_input.d, _wgslsmith_div_i32(u_input.d, var_0.x)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-22137i, 2147483647i), -17979i & var_0.x)), 687f, var_0.x, u_input.a.x, 30306i);
}

