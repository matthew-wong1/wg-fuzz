struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 37359i, 34029i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = select(min(u_input.d, countOneBits(~u_input.d)) << (~vec3<u32>(1u, 101431u, u_input.c) % vec3<u32>(32u)), ~(-select(vec3<i32>(0i, global0.x, -16939i), vec3<i32>(-49100i, global0.x, u_input.d.x), any(vec4<bool>(false, false, false, false)))), select(!(!select(false, false, false)), true, !(true && all(vec2<bool>(false, true)))));
    let var_0 = vec3<i32>(arg_0.a.a.x, _wgslsmith_sub_i32(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2233i, -14465i, global0.x) | vec4<i32>(global0.x, u_input.a.x, 50392i, 0i), vec4<i32>(u_input.e, -3227i, 1i, arg_0.a.b)) | _wgslsmith_clamp_i32(~(-30774i), i32(-1i) * -23697i, -1i)), u_input.d.x);
    global0 = vec3<i32>(select(arg_0.a.b, var_0.x, !(select(true, false, false) == true)), 27493i, u_input.a.x);
    var var_1 = _wgslsmith_mod_u32(119323u, ~u_input.b.x);
    var var_2 = 1414f;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global0.x), u_input.d.xx ^ vec2<i32>(global0.x, u_input.e)), max(vec2<i32>(u_input.d.x, u_input.a.x) << (arg_1.yz % vec2<u32>(32u)), global0.zx), vec2<bool>(arg_0.x, arg_0.x)), 2147483647i, -global0.x));
    global0 = _wgslsmith_add_vec3_i32(min(abs(u_input.d), vec3<i32>(var_0.a.b, global0.x, var_0.a.a.x)), -vec3<i32>(-2147483647i, -2576i, ~_wgslsmith_div_i32(1i, u_input.d.x)));
    let var_1 = Struct_2(Struct_1(vec2<i32>(2147483647i, u_input.e), 1i, 5745i));
    var var_2 = Struct_1(firstLeadingBit(~(-vec2<i32>(0i, 0i))), var_0.a.b, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.a.x, -2147483647i, 0i)), u_input.d), ~7268i));
    global0 = u_input.d;
    return ~(-u_input.d);
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    let var_0 = arg_0.a;
    global0 = func_4(vec3<bool>(all(select(!vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), func_3(arg_0))), true, arg_1), max(~u_input.b, abs(u_input.b)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1998f, 211f, 676f, -331f), vec4<f32>(289f, -658f, -980f, -338f))))), vec4<f32>(1f, -884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f * 568f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-190f)), -384f, _wgslsmith_f_op_f32(trunc(1000f)), -982f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 492f, 1000f, -541f)), vec4<f32>(_wgslsmith_f_op_f32(1578f - -449f), _wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_f_op_f32(f32(-1f) * -387f), 816f), true && arg_1)))));
    let var_3 = Struct_1(select(reverseBits(~global0.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.c, select(-34734i, 18981i, false)), -arg_0.a.a), all(vec2<bool>(true, true))), 34558i & abs(max(35326i, u_input.d.x) | (var_1.a.b << (u_input.c % 32u))), ~var_0.a.x);
    return select(vec3<bool>(any(!select(vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_1, true, true, false), true)), false, arg_1), select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), arg_1), vec3<bool>(arg_1, true, false || arg_1), vec3<bool>(true, true, true)), vec3<bool>(false, func_3(var_1), arg_1), false), any(!(!vec4<bool>(arg_1, arg_1, arg_1, false))));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(step(-1380f, 155f));
    let var_1 = func_2(Struct_2(Struct_1(global0.zx, global0.x, i32(-1i) * -u_input.d.x)), !any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), false)));
    var var_2 = Struct_2(Struct_1(u_input.a, ~(i32(-1i) * -global0.x), u_input.a.x));
    let var_3 = Struct_2(var_2.a);
    global0 = u_input.d;
    return vec3<i32>(0i, -2147483647i, var_3.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -min(u_input.d, u_input.d);
    global0 = _wgslsmith_mod_vec3_i32(u_input.d, abs((u_input.d | vec3<i32>(2147483647i, -27130i, -2147483647i)) & func_1()));
    let var_0 = _wgslsmith_dot_vec2_i32(~global0.xy, reverseBits(~(-(~global0.xz))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-201f, -1170f, -645f, 1000f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-629f, -1418f, 822f, 222f))))), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(175f, -962f)), _wgslsmith_f_op_f32(sign(-561f)))) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1559f), !vec4<bool>(select(false, false, false) && func_3(Struct_2(Struct_1(u_input.d.yx, var_0, -24478i))), !select(false, false, false), true, !any(vec3<bool>(true, false, false)))));
    global0 = firstLeadingBit(vec3<i32>(global0.x << (14805u % 32u), ~1i, abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(-6146i, u_input.d.x), _wgslsmith_div_i32(0i, -10433i)))));
    var var_2 = Struct_1(countOneBits(vec2<i32>(44219i, max(60361i, ~(-1i)))), -1i, var_0);
    var var_3 = 19342u;
    let x = u_input.a;
    s_output = StorageBuffer(-2791i, ~(~u_input.b.x), _wgslsmith_dot_vec2_i32(global0.xx, -select(var_2.a, vec2<i32>(global0.x, -12699i), false)) | -17421i, var_1.x, 0u);
}

