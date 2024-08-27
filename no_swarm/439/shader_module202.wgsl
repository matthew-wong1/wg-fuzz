struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global0 = arg_0.a;
    return u_input.b.yxx & ~(~(~u_input.b.wxy >> (vec3<u32>(31253u, u_input.b.x, 4294967295u) % vec3<u32>(32u))));
}

fn func_4(arg_0: u32) -> i32 {
    global0 = Struct_1(global0.a, true);
    let var_0 = -u_input.c;
    global0 = Struct_1(true, all(!(!vec3<bool>(global0.b, true, true))));
    let var_1 = Struct_1(all(vec3<bool>(false, global0.b | all(vec2<bool>(false, false)), true)), global0.b);
    let var_2 = -_wgslsmith_add_vec4_i32(firstTrailingBit(-(~vec4<i32>(var_0, u_input.c, u_input.c, -39204i))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, var_0, -2147483647i) | vec4<i32>(-23416i, 2147483647i, 0i, 1i), firstLeadingBit(vec4<i32>(-1i, -40266i, -4290i, u_input.c))) & (~vec4<i32>(0i, u_input.c, 39081i, -1i) << (~vec4<u32>(arg_0, 26429u, 0u, 4294967295u) % vec4<u32>(32u))));
    return _wgslsmith_div_i32(-40031i, _wgslsmith_div_i32(-2147483647i, -33685i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(!global0.b, false);
    let var_0 = func_4(~_wgslsmith_dot_vec3_u32(~countOneBits(u_input.b.wxx), func_3(Struct_3(Struct_1(global0.b, false), -222f, Struct_1(false, true), Struct_2(-641f, 78638u, vec2<f32>(106f, -761f), arg_0, vec4<f32>(109f, 189f, 1517f, -374f)), vec4<i32>(-1167i, 0i, u_input.c, u_input.c)))));
    global0 = Struct_1(true, any(select(!vec4<bool>(global0.b, false, global0.a, global0.b), !(!vec4<bool>(false, global0.b, false, false)), global0.b && !global0.b)));
    let var_1 = Struct_4(func_3(Struct_3(Struct_1(all(vec4<bool>(false, false, global0.a, global0.a)), 0u <= arg_0), _wgslsmith_f_op_f32(select(-1961f, _wgslsmith_f_op_f32(-421f * 260f), select(global0.b, global0.a, global0.b))), Struct_1(true, global0.a), Struct_2(_wgslsmith_f_op_f32(830f - 797f), 69953u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(753f, -136f), vec2<f32>(688f, 128f))), u_input.b.x, _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1174f, 1455f, 341f), vec4<f32>(-1849f, 220f, 166f, -575f))), firstLeadingBit(select(vec4<i32>(10988i, u_input.c, var_0, 1i), vec4<i32>(u_input.c, 25441i, var_0, var_0), false)))).zz, vec2<bool>(false, !(!select(global0.a, global0.b, global0.a))), !(!(!(!vec4<bool>(false, global0.b, true, false)))), vec2<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_3(Struct_1(false, global0.a), -309f, Struct_1(false, true), Struct_2(-140f, 4294967295u, vec2<f32>(-1000f, 117f), arg_0, vec4<f32>(-1427f, -950f, 924f, 478f)), vec4<i32>(1423i, u_input.c, var_0, -24498i))).xx >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), u_input.b.xx), func_3(Struct_3(Struct_1(true, global0.a), -946f, Struct_1(global0.b, false), Struct_2(162f, u_input.a.x, vec2<f32>(-2045f, 316f), u_input.a.x, vec4<f32>(-1798f, -737f, 2597f, -1016f)), vec4<i32>(var_0, -29962i, 1i, 2147483647i))).x), Struct_1(false, global0.a));
    var var_2 = func_3(Struct_3(var_1.e, _wgslsmith_f_op_f32(sign(-1000f)), var_1.e, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_div_u32(57547u, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(-251f, 1144f) - vec2<f32>(-2161f, 409f)), arg_0, vec4<f32>(-326f, 1030f, 824f, 768f)), ~vec4<i32>(1i, -32017i, -2147483647i, 20636i))).x != ~arg_0;
    return var_1.e;
}

fn func_1() -> f32 {
    global0 = func_2(u_input.a.x);
    let var_0 = max(select(~(~(~vec2<u32>(1u, u_input.b.x))), max(~vec2<u32>(u_input.b.x, 1u), vec2<u32>(~u_input.a.x, ~u_input.a.x)), !global0.a), ~(~u_input.a));
    var var_1 = vec3<bool>(~(-18996i) <= (-_wgslsmith_div_i32(u_input.c, u_input.c) | -1i), true, global0.a);
    global0 = func_2(_wgslsmith_add_u32(func_3(Struct_3(Struct_1(false, global0.a), -985f, Struct_1(var_1.x, var_1.x), Struct_2(634f, 48975u, vec2<f32>(-478f, 471f), 0u, vec4<f32>(-512f, 958f, -523f, 651f)), vec4<i32>(-1i, u_input.c, -1i, u_input.c))).x, ~1u));
    global0 = func_2(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x)), u_input.b));
    return -1072f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -1000f), u_input.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(507f, -1000f)))))), u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(167f, -921f, -1191f, 1511f), vec4<f32>(-484f, -1539f, -150f, -1271f))))))));
    let var_2 = 1u;
    var var_3 = func_2(select(_wgslsmith_add_u32(countOneBits(4294967295u), firstLeadingBit(3641u)), var_1.d, true) & 7746u);
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, -1218f, _wgslsmith_f_op_f32(abs(var_1.c.x)))));
    var var_5 = select(select(select(vec3<bool>(all(vec2<bool>(var_3.b, true)), true, all(vec2<bool>(var_3.a, var_3.b))), !(!vec3<bool>(false, var_3.a, false)), select(select(vec3<bool>(true, global0.b, false), vec3<bool>(var_3.b, global0.b, global0.b), false), vec3<bool>(var_3.b, true, false), !var_3.a)), vec3<bool>(all(vec4<bool>(true, global0.a, true, true)), _wgslsmith_f_op_f32(sign(var_4.x)) <= _wgslsmith_f_op_f32(ceil(var_1.e.x)), global0.b), select(select(select(vec3<bool>(global0.b, var_3.a, var_3.a), vec3<bool>(var_3.a, false, var_3.a), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), var_0 < var_0), select(vec3<bool>(global0.a, false, true), !vec3<bool>(var_3.b, global0.b, false), vec3<bool>(false, var_3.b, global0.a)), !vec3<bool>(true, false, var_3.b))), vec3<bool>(!(func_4(var_1.b) != ~(-2147483647i)), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), var_4.x < 1083f))), true);
    let var_6 = vec2<bool>(any(!vec3<bool>(true, var_5.x, global0.b)) & !var_3.b, true);
    var var_7 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, func_3(Struct_3(func_2(u_input.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-125f, var_4.x)))), Struct_1(false, !global0.b), Struct_2(_wgslsmith_f_op_f32(-var_1.e.x), u_input.b.x | 0u, _wgslsmith_f_op_vec2_f32(round(var_4.xz)), max(1u, 4294967295u), var_1.e), ~(-vec4<i32>(u_input.c, 10267i, u_input.c, 377i)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(57175u, var_2, 118399u), _wgslsmith_dot_vec4_u32(vec4<u32>(111056u, 0u, var_2, var_2), u_input.b), ~55212u) & u_input.b.xzx, ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 28419u, var_2)), max(vec3<u32>(var_2, 4294967295u, var_2), vec3<u32>(26269u, var_1.d, var_2)), max(u_input.b.yxx, u_input.b.zxw)), ~vec3<u32>(~var_2, u_input.a.x, 1u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xzx, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b, 4294967295u, var_2), u_input.b.zxx)), ~0u, 4294967295u));
}

