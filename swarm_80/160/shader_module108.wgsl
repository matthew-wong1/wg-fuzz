struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<f32>(116f, 1531f), vec3<f32>(417f, 1144f, 1248f), vec4<bool>(true, true, false, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_1(vec2<bool>(((global0.a.x & false) && false) || false, global0.a.x), vec2<f32>(_wgslsmith_f_op_f32(step(234f, 1408f)), -510f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 198f, arg_0.x))), u_input.c.x > 1i))), !select(global0.d, select(global0.d, vec4<bool>(global0.d.x, global0.d.x, true, true), vec4<bool>(global0.a.x, global0.d.x, global0.d.x, true)), vec4<bool>(all(vec4<bool>(global0.a.x, global0.a.x, global0.d.x, global0.a.x)), 1u > u_input.b, all(vec4<bool>(global0.a.x, global0.d.x, false, true)), global0.a.x)));
    var var_1 = vec3<u32>(68356u, u_input.b & ~53472u, firstLeadingBit(~(~(~1u))));
    var_0 = Struct_1(var_0.d.xz, vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1083f) + _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-818f - 902f), _wgslsmith_f_op_f32(-var_0.c.x)))))), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(517f - _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -386f)))), 822f), select(vec4<bool>(all(!vec4<bool>(false, var_0.d.x, var_0.d.x, true)), var_0.a.x, true, var_0.d.x), vec4<bool>(any(vec2<bool>(false, true)), true, any(!var_0.d.yyz), _wgslsmith_f_op_f32(sign(global0.c.x)) < _wgslsmith_f_op_f32(-460f - var_0.b.x)), vec4<bool>((var_0.d.x | true) & true, true, (true | var_0.d.x) && false, true)));
    var_1 = ~(~vec3<u32>(_wgslsmith_sub_u32(u_input.b, var_1.x | 36427u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 1u), _wgslsmith_div_vec2_u32(var_1.xz, vec2<u32>(0u, var_1.x))), ~var_1.x));
    global0 = Struct_1(vec2<bool>(false, global0.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c.yz - arg_0.wz) - vec2<f32>(1129f, 771f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.zy, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1114f, global0.b.x)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, vec3<bool>(true, global0.d.x, false))) - _wgslsmith_f_op_vec3_f32(exp2(var_0.c))) * vec3<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(ceil(777f)), _wgslsmith_f_op_f32(arg_0.x + var_0.c.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, 1485f, -1285f), _wgslsmith_f_op_vec3_f32(max(global0.c, vec3<f32>(global0.b.x, -702f, var_0.c.x))))))))), !select(vec4<bool>(global0.a.x, var_0.d.x, all(vec3<bool>(var_0.a.x, var_0.a.x, global0.d.x)), -1i == u_input.c.x), vec4<bool>(true, all(global0.d.zy), false, var_0.a.x || false), true));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + arg_0.x), _wgslsmith_f_op_f32(-1f), -590f) * global0.c), vec3<f32>(var_0.c.x, _wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -2228f))), global0.c.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-525f))));
    global0 = Struct_1(vec2<bool>((1u != u_input.b) || true, -278f != _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, arg_2.b.x) + vec2<f32>(1000f, 2099f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 - -1087f), 1482f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1042f) + vec2<f32>(global0.c.x, global0.b.x)) - vec2<f32>(439f, arg_0.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, global0.b.x, global0.b.x, arg_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-563f, global0.c.x, arg_1.c.x))))), _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1076f, var_0, arg_1.c.x, -1563f))).x, arg_0.x, 1517f)))), global0.d);
    let var_1 = (u_input.c.zy & -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10712i, -1i), u_input.a), u_input.c.x)) | u_input.c.yy;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.b.x, -1010f)), global0.b.x, 1f, _wgslsmith_f_op_f32(arg_0.x + -338f)))).x + _wgslsmith_f_op_f32(sign(arg_1.c.x)))));
    var var_3 = Struct_1(!arg_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, global0.b.x) - arg_0.zx) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.x, arg_1.c.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1599f, 493f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(-1525f))))), vec4<bool>(any(vec3<bool>(arg_2.a.x && arg_1.a.x, select(arg_2.a.x, global0.a.x, true), u_input.a.x < var_1.x)), arg_2.a.x && !(var_1.x <= var_1.x), false, !all(vec3<bool>(arg_1.d.x, false, true))));
    return _wgslsmith_f_op_f32(abs(-287f));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = Struct_1(vec2<bool>(global0.a.x, true || (max(u_input.c.x, -22614i) > abs(u_input.c.x))), _wgslsmith_f_op_vec2_f32(floor(global0.c.yz)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_0.b.x, 310f, -1020f), arg_0, Struct_1(vec2<bool>(true, true), vec2<f32>(global0.c.x, arg_0.b.x), arg_0.c, global0.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-380f, -618f) * -1132f), _wgslsmith_f_op_f32(-668f * _wgslsmith_f_op_f32(-arg_0.b.x))), global0.c), select(vec4<bool>(!(-179f == arg_0.c.x), true, !arg_0.d.x, !(false || global0.d.x)), select(!vec4<bool>(true, arg_0.a.x, false, false), select(!arg_0.d, select(vec4<bool>(arg_0.d.x, false, true, false), vec4<bool>(false, arg_0.d.x, false, global0.a.x), vec4<bool>(true, arg_0.d.x, false, global0.d.x)), select(global0.d, vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.d.x, false), arg_0.d)), (arg_0.a.x == arg_0.a.x) & (global0.d.x == global0.a.x)), vec4<bool>(true, true, global0.a.x, true)));
    global0 = arg_0;
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b, 1u, ~1u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b & 24809u, u_input.b), u_input.b), _wgslsmith_sub_u32(u_input.b, ~u_input.b), 1u), ~vec3<u32>(u_input.b, 4294967295u, ~27175u) ^ vec3<u32>(~(~u_input.b), 90113u, u_input.b));
    let var_2 = global0.b.x;
    return global0.a;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global0 = Struct_1(vec2<bool>(arg_2, arg_2), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, global0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-301f, global0.b.x), _wgslsmith_f_op_vec2_f32(-global0.c.yz), vec2<bool>(arg_1.x, true))) * vec2<f32>(global0.c.x, -1000f))), vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1270f - global0.c.x))), _wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(abs(423f))), select(select(global0.d, select(select(global0.d, vec4<bool>(true, false, arg_1.x, true), false), select(global0.d, global0.d, false), global0.d), global0.d.x), vec4<bool>(false, !arg_1.x, arg_1.x, global0.d.x), !arg_1.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global0.c);
    let var_1 = Struct_1(!vec2<bool>((arg_1.x || global0.a.x) == !arg_2, 53123i <= (-2147483647i & arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x)))) * _wgslsmith_f_op_vec2_f32(var_0.xx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yx) + _wgslsmith_f_op_vec2_f32(global0.b * var_0.zx)))), vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-global0.c), Struct_1(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_2, arg_1.x), arg_1.x), vec2<f32>(var_0.x, -1119f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(852f, 1933f, global0.c.x)), vec4<bool>(arg_2, false, false, arg_2)), Struct_1(vec2<bool>(arg_2, global0.d.x), vec2<f32>(-1000f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 220f, 920f)), select(global0.d, global0.d, global0.d)))), _wgslsmith_f_op_f32(-var_0.x), var_0.x), vec4<bool>(false, global0.a.x, false, true));
    var var_2 = Struct_1(vec2<bool>(any(select(vec4<bool>(arg_2, arg_1.x, var_1.d.x, arg_2), vec4<bool>(global0.a.x, arg_2, var_1.a.x, global0.a.x), var_1.d.x)) || global0.d.x, false), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -161f))) - _wgslsmith_f_op_vec2_f32(round(var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, global0.b.x, -1182f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(var_0.x, global0.b.x, var_0.x, 1092f))))), !global0.d);
    var_2 = var_1;
    return ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 36478u, u_input.b, u_input.b)) >> ((~u_input.b & (4294967295u << (u_input.b % 32u))) % 32u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(global0.d.ww, global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(105f, global0.c.x, 724f)) * _wgslsmith_f_op_vec3_f32(global0.c - global0.c))), vec3<bool>(true, true, true))), vec4<bool>(true, !(36195i <= (u_input.a.x | u_input.a.x)), all(global0.d.wz), global0.a.x));
    global0 = Struct_1(global0.d.yz, _wgslsmith_div_vec2_f32(global0.c.xx, _wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1093f, global0.b.x, -265f, global0.c.x))))).yz, all(!global0.d.xzw)))), global0.c, vec4<bool>(_wgslsmith_dot_vec3_u32(arg_0 & vec3<u32>(arg_1.x, u_input.b, arg_1.x), ~arg_0) == ~(arg_0.x ^ 34863u), false, true, any(!global0.d.yxx)));
    var var_0 = arg_1.x;
    var_0 = arg_1.x;
    var var_1 = global0.a.x;
    return Struct_1(select(!global0.d.yx, vec2<bool>(global0.a.x, -56935i >= -u_input.a.x), all(global0.d.yw)), global0.c.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, global0.b.x, global0.c.x), _wgslsmith_f_op_vec3_f32(-global0.c)) - global0.c) - global0.c), vec4<bool>(all(!(!vec4<bool>(false, true, global0.d.x, global0.d.x))), !(!any(global0.d)), !any(select(vec2<bool>(true, global0.d.x), global0.d.zz, true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), arg_1), abs(u_input.b)) >= (arg_1.x | 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~4294967295u);
    var var_1 = func_5(_wgslsmith_add_vec3_u32(max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 64376u, 58640u), vec3<u32>(u_input.b, 45413u, 4294967295u)), reverseBits(u_input.b), u_input.b), vec3<u32>(countOneBits(var_0), u_input.b << (1u % 32u), _wgslsmith_mult_u32(var_0, var_0))), vec3<u32>(func_4(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), func_1(Struct_1(global0.d.xz, vec2<f32>(global0.c.x, global0.c.x), vec3<f32>(global0.b.x, global0.b.x, global0.c.x), vec4<bool>(global0.d.x, false, global0.d.x, global0.d.x))), global0.a.x), u_input.b, 1u)), ~(~reverseBits(vec2<u32>(u_input.b, 4294967295u))) ^ ~(~vec2<u32>(var_0, 0u)));
    var var_2 = (select(abs(~vec2<u32>(u_input.b, u_input.b)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(var_0, u_input.b))), false) & _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, 4294967295u), vec2<u32>(~41682u, max(14097u, 4294967295u)))) << (vec2<u32>(~0u, 5177u) % vec2<u32>(32u));
    var_1 = func_5(vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(var_2.x, var_2.x, reverseBits(u_input.b)), ~4294967295u), _wgslsmith_div_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(1u, var_2.x)) & firstTrailingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(~u_input.b, var_0), all(select(vec3<bool>(true, var_1.a.x, false), global0.d.zyz, global0.a.x))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 27879u), vec2<u32>(u_input.b, 0u)), ~(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u))))));
    var var_3 = func_5(vec3<u32>(var_0 << (~var_0 % 32u), var_0, firstLeadingBit(abs(var_0) >> (_wgslsmith_sub_u32(var_0, var_2.x) % 32u))), vec2<u32>(min(33700u, u_input.b), ~(~4294967295u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-func_5(vec3<u32>(u_input.b, 1u, u_input.b), vec2<u32>(var_0, 1u)).b.x), _wgslsmith_f_op_f32(f32(-1f) * -369f), 1f, var_1.c.x), vec4<f32>(-753f, global0.b.x, -490f, var_1.c.x), true));
    var var_5 = u_input.d;
    let var_6 = func_5(~(vec3<u32>(max(var_0, 1u), 33911u ^ var_0, 4294967295u) ^ vec3<u32>(0u, ~u_input.b, ~u_input.b)), max(_wgslsmith_add_vec2_u32(~vec2<u32>(var_2.x, 15318u), abs(vec2<u32>(var_2.x, 45987u))), vec2<u32>(reverseBits(31790u), _wgslsmith_div_u32(var_0, 15180u))) & ~reverseBits(vec2<u32>(1u, 0u)));
    var var_7 = -u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(~min(u_input.c.x, 0i)), abs(~_wgslsmith_mult_i32(u_input.a.x, 1i)), -u_input.a.x, select(u_input.d, countOneBits(u_input.d), global0.a.x)), _wgslsmith_f_op_f32(1082f + 1000f), _wgslsmith_f_op_f32(-var_1.c.x));
}

