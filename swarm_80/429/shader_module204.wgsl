struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 918f, arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = -24461i;
    var var_1 = ~min(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 22028u))) > reverseBits(1u);
    let var_2 = !any(select(select(select(vec2<bool>(arg_0.c, arg_0.a.x), arg_0.a.xy, arg_0.c), !arg_3.a.xz, true), !select(vec2<bool>(true, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_3.a.x), arg_0.b.x), select(select(arg_0.b.wy, arg_0.b.zy, true), vec2<bool>(true, true), vec2<bool>(arg_0.b.x, true))));
    var var_3 = true;
    var var_4 = all(vec3<bool>(any(select(!arg_0.b, vec4<bool>(var_2, var_2, var_2, arg_3.b.x), true)), all(select(select(vec4<bool>(false, arg_0.b.x, false, arg_0.a.x), arg_3.b, var_2), select(arg_0.b, vec4<bool>(false, false, false, false), false), any(vec2<bool>(arg_3.a.x, arg_0.b.x)))), any(vec3<bool>(true, false, all(vec3<bool>(true, var_2, arg_0.c))))));
    return 30825u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec4<bool>(_wgslsmith_f_op_f32(-3295f * -703f) == _wgslsmith_f_op_f32(round(arg_0.x)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), true, true), vec4<bool>(false, false, func_3(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), true), arg_0, vec4<f32>(1573f, 1000f, 1811f, arg_0.x), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), false)) < 104299u, true), vec4<bool>(true, true, true, true)), false);
    let var_1 = any(vec4<bool>(u_input.a <= _wgslsmith_add_i32(~u_input.a, u_input.a), !var_0.c, !(var_0.a.x && var_0.a.x), false));
    var var_2 = var_0.b.xx;
    global0 = min(-53189i, ~2147483647i);
    var var_3 = Struct_1(select(select(select(!var_0.b.yzz, var_0.b.zxx, var_0.c), select(var_0.b.xxw, select(var_0.a, var_0.b.wxy, vec3<bool>(false, true, var_2.x)), true), any(!vec4<bool>(true, true, var_0.c, var_0.c))), vec3<bool>(any(vec3<bool>(var_0.a.x, true, false)), var_0.c, !select(var_2.x, var_2.x, false)), var_0.b.zyz), var_0.b, true);
    return Struct_1(!var_0.b.yxx, vec4<bool>(true, false, any(vec4<bool>(-1145f < arg_0.x, var_0.b.x, var_1, false)), false), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(1175f + -736f), 372f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(850f, Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, true), false)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -672f), var_0)).x;
    let var_2 = Struct_1(vec3<bool>(any(vec2<bool>(var_0.c, true)), var_0.c, var_0.a.x | !var_0.c), vec4<bool>(var_0.c, true, (u_input.a << (0u % 32u)) > _wgslsmith_dot_vec3_i32(-vec3<i32>(-14115i, -6424i, -21526i), vec3<i32>(22167i, u_input.a, 0i)), var_0.c), true);
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-1600f)), 1f, _wgslsmith_f_op_f32(round(-391f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-317f, 989f, -483f) + vec3<f32>(-848f, -745f, 684f)), vec3<bool>(var_2.c, var_2.c, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1057f, 1616f, 204f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1294f, 276f, -828f) - vec3<f32>(222f, 1324f, 491f))) * vec3<f32>(_wgslsmith_f_op_f32(-1000f - -420f), 731f, -1133f))));
    let var_4 = select(u_input.a, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 2147483647i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(56318i, u_input.a, 25300i), vec3<i32>(u_input.a, u_input.a, u_input.a))), -(~u_input.a), -u_input.a), true);
    var var_5 = _wgslsmith_div_f32(-1422f, -1260f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(u_input.a, var_4)), ~(~vec2<i32>(-9101i, u_input.a)), var_2.a.xx), vec2<i32>(0i, max(-28874i, var_4))), vec3<f32>(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f - 291f) - _wgslsmith_f_op_f32(f32(-1f) * -647f))), _wgslsmith_f_op_f32(1f * 1575f)), ~vec3<u32>(_wgslsmith_sub_u32(4666u, 1u), max(1u, firstTrailingBit(68673u)), ~(~0u)), ~(-vec4<i32>(u_input.a, var_4, var_4, var_4)) ^ vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(12331i), -780i), var_4, var_4, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_4, var_4, u_input.a), -vec3<i32>(var_4, -8415i, 2147483647i))));
}

