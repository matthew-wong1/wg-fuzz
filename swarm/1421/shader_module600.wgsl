struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.c.x - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(sign(-2092f)))), global0.b);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global0.a.x), u_input.a.zx);
    var var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -384f), global0.b.c, !select(!global0.b.d, !global0.b.d, !vec4<bool>(true, global0.b.d.x, global0.b.d.x, true)));
    let var_2 = all(global0.b.d);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.b.b) * global0.b.c)));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(145f * 1620f) * _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-1835f - -530f))), global0.b);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.c.x + global0.a.x), 953f))), Struct_1(~(-2147483647i), global0.a.x, vec2<f32>(_wgslsmith_div_f32(-907f, _wgslsmith_div_f32(global0.b.c.x, global0.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 485f)), global0.b.d));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, var_0.a.x)) - var_0.a))), Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, var_0.b.a) ^ countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 33794i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.a, -42513i), vec2<i32>(global0.b.a, -4623i)))), 344f, vec2<f32>(-1460f, global0.a.x), vec4<bool>(any(!global0.b.d), !(global0.a.x < -227f), false, true)));
    let var_1 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(257f, 831f), var_0.b.b)), Struct_1(-54197i, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3()))), select(vec4<bool>(true, true, 0u <= u_input.d.x, u_input.d.x >= 1407u), !vec4<bool>(var_0.b.d.x, var_0.b.d.x, false, true), !select(var_0.b.d, global0.b.d, vec4<bool>(global0.b.d.x, global0.b.d.x, global0.b.d.x, var_0.b.d.x)))));
    return select(select(global0.b.d, select(var_0.b.d, vec4<bool>(all(vec2<bool>(false, var_0.b.d.x)), true, select(global0.b.d.x, false, true), true), true), any(select(select(vec2<bool>(false, global0.b.d.x), global0.b.d.xx, vec2<bool>(true, false)), !var_0.b.d.xy, !var_0.b.d.x))), select(select(select(vec4<bool>(global0.b.d.x, var_1, true, var_0.b.d.x), !global0.b.d, vec4<bool>(var_1, global0.b.d.x, var_1, true)), select(!vec4<bool>(true, true, var_0.b.d.x, var_1), vec4<bool>(true, true, false, global0.b.d.x), global0.b.d.x), vec4<bool>(true, var_1, 14502i == global0.b.a, all(vec2<bool>(true, var_1)))), vec4<bool>(!(!var_1), !var_0.b.d.x, true, !(global0.b.d.x && var_0.b.d.x)), select(global0.b.d, !(!global0.b.d), var_1)), any(!select(!vec2<bool>(true, var_1), !var_0.b.d.zw, true)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(global0.b.c, Struct_1(min(247i, _wgslsmith_mod_i32(firstTrailingBit(u_input.e), i32(-1i) * -12789i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a.x)), 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_vec2_f32(-global0.b.c)))), func_2()));
    global0 = var_0;
    global0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1188f, _wgslsmith_f_op_f32(-var_0.a.x), any(global0.b.d.yx))), _wgslsmith_f_op_f32(-global0.b.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c.x, -690f) - vec2<f32>(-144f, var_0.b.b))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.b.c, var_0.a, global0.b.d.x)), vec2<f32>(-1000f, var_0.b.b))))), Struct_1(global0.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.b.b)), _wgslsmith_f_op_f32(723f * global0.a.x))), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(abs(global0.a.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, _wgslsmith_div_f32(global0.b.b, 741f))), vec4<bool>(all(vec4<bool>(false, var_0.b.d.x, var_0.b.d.x, false)), _wgslsmith_f_op_f32(min(-253f, var_0.a.x)) < _wgslsmith_f_op_f32(sign(global0.b.b)), true, global0.b.d.x)));
    global0 = Struct_2(var_0.b.c, Struct_1(global0.b.a, 1f, _wgslsmith_f_op_vec2_f32(-var_0.b.c), var_0.b.d));
    global0 = var_0;
    return global0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(false, any(arg_0.d.yxx), all(arg_1.b.d.zxw) == (u_input.a.x < (~u_input.d.x ^ max(63274u, 4294967295u))));
    var_0 = vec3<bool>((i32(-1i) * -13883i) == (_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(global0.b.a, u_input.c, arg_1.b.a)), arg_1.b.a) & -6923i), (global0.b.c.x < _wgslsmith_div_f32(arg_1.a.x, arg_1.b.b)) | false, arg_1.b.d.x & var_0.x);
    var var_1 = !(!func_2().x);
    var var_2 = global0.b.d.wwx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(global0.a.x - 1165f)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_add_i32(countOneBits(u_input.e) | _wgslsmith_mult_i32(global0.b.a, 17742i), global0.b.a), global0.a.x, vec2<f32>(_wgslsmith_f_op_f32(func_1()), 1000f), func_2()), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.b, -942f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.b.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + global0.a), vec2<bool>(true, false))), global0.b));
    var_0 = func_4(var_0.b, func_4(func_4(func_4(var_0.b, func_4(global0.b, Struct_2(global0.a, var_0.b))).b, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1002f, -704f) - vec2<f32>(var_0.b.b, global0.b.c.x)), Struct_1(-2147483647i, var_0.b.b, vec2<f32>(-313f, -1279f), global0.b.d))).b, Struct_2(_wgslsmith_div_vec2_f32(global0.b.c, _wgslsmith_f_op_vec2_f32(-global0.a)), Struct_1(u_input.b, _wgslsmith_f_op_f32(926f - 1000f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(976f, -1453f))), vec4<bool>(global0.b.d.x, global0.b.d.x, var_0.b.d.x, true)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b)) - -1000f))), 1f, func_4(func_4(func_4(Struct_1(39556i, 1507f, global0.a, var_0.b.d), Struct_2(var_0.a, Struct_1(global0.b.a, -480f, var_0.b.c, var_0.b.d))).b, Struct_2(global0.a, global0.b)).b, func_4(Struct_1(var_0.b.a, _wgslsmith_f_op_f32(trunc(-955f)), _wgslsmith_f_op_vec2_f32(-var_0.a), func_2()), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.c.x, -949f))), Struct_1(global0.b.a, var_0.a.x, vec2<f32>(-1802f, var_0.b.c.x), global0.b.d)))).b.b, -914f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    let var_3 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(-vec3<i32>(-15094i, -9003i, 30192i), -vec3<i32>(var_0.b.a, -2147483647i, u_input.b), false)) & ~select(vec3<i32>(global0.b.a, 6846i, 17952i), vec3<i32>(-38003i, -27586i, -2147483647i) | vec3<i32>(0i, u_input.e, global0.b.a), var_0.b.d.wyy), 4294967295u, vec3<i32>(global0.b.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, global0.b.a, 62389i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.a, var_0.b.a, global0.b.a, u_input.e), vec4<i32>(var_0.b.a, -41132i, u_input.e, global0.b.a), vec4<i32>(6045i, 1i, u_input.c, 12559i)), max(vec4<i32>(-2147483647i, u_input.b, 2147483647i, u_input.e), vec4<i32>(-34742i, -9150i, 0i, var_0.b.a))), -(vec4<i32>(var_0.b.a, global0.b.a, -1i, 2803i) ^ vec4<i32>(-36009i, var_0.b.a, -2147483647i, -1i))), -24746i));
}

