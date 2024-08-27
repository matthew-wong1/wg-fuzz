struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -364f;

var<private> global1: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = select(!vec4<bool>(true, global1.c, global1.a, false), vec4<bool>(all(select(global1.e.zz, global1.d.c.b, vec2<bool>(global1.c, false))), global1.d.c.c.x != (i32(-1i) * -2147483647i), global1.d.c.b.x, global1.c != global1.d.c.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.c, _wgslsmith_f_op_f32(min(global1.d.b, 603f)) < global1.d.b, global1.c, false), global1.d.c.b.x));
    let var_1 = global1.d.c.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.d.d * vec2<f32>(global1.d.b, -220f));
    var_0 = !select(vec4<bool>(true, var_1.x, true, false), !vec4<bool>(false, global1.c, global1.b.x < u_input.a.x, false), abs(4294967295u & global1.d.a) < ~10389u);
    global0 = 239f;
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_3 {
    global1 = Struct_3(select(_wgslsmith_div_u32(31976u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.a, global1.d.a, global1.d.a, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, global1.d.a))) <= _wgslsmith_sub_u32(global1.d.a, _wgslsmith_div_u32(u_input.b, u_input.b)), func_3(), !arg_0.b.x), (arg_0.c.xw ^ vec2<i32>(_wgslsmith_sub_i32(arg_0.c.x, 4802i), -1i)) | vec2<i32>(~(10493i ^ arg_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.c.c.x, 0i, global1.b.x, 1i), vec4<i32>(global1.d.c.c.x, u_input.a.x, global1.b.x, 24498i))), arg_1.x, Struct_2(12569u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1364f)), global1.d.d.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-546f, arg_0.a)), -516f)), arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.d.d, arg_2.xy, arg_1.x)) * vec2<f32>(arg_2.x, arg_2.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + global1.d.d), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a, global1.d.c.a))))))), select(!global1.e, global1.e, vec3<bool>(all(vec3<bool>(false, true, false)), arg_0.b.x, any(select(vec4<bool>(true, true, arg_0.b.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), global1.e.x)))));
    let var_0 = !(!global1.e);
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global1.d.c.c, arg_0.c & arg_0.c), arg_0.c);
    var var_2 = vec2<bool>(true, var_0.x);
    var var_3 = !vec4<bool>(all(global1.e), any(!select(global1.e, vec3<bool>(global1.c, arg_0.b.x, true), true)), any(global1.e), var_2.x);
    return Struct_3(global1.a, vec2<i32>(~1i, 32995i), select(select(any(vec3<bool>(var_2.x, true, var_2.x)), any(vec2<bool>(true, false)), false), true, true) & !(!(!arg_0.b.x)), global1.d, !var_0);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = countOneBits(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(89972u, arg_0), vec2<u32>(arg_1.d.a, global1.d.a)))) ^ ~vec2<u32>(firstLeadingBit(23032u), arg_0);
    var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(u_input.b, global1.d.a), vec2<u32>(4294967295u, arg_0), vec2<bool>(true, false)), ~(~vec2<u32>(1u, 1u)), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.d.a, 15898u), vec2<u32>(38701u, arg_1.d.a), vec2<u32>(1u, arg_1.d.a)))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_2.d.a), abs(vec2<u32>(46925u, 89624u))), firstLeadingBit(min(vec2<u32>(0u, var_0.x), vec2<u32>(0u, 1u)))) % vec2<u32>(32u)), min(reverseBits(~(~vec2<u32>(arg_0, 12864u))), ~reverseBits(~vec2<u32>(arg_2.d.a, 0u))));
    global1 = Struct_3(global1.a, vec2<i32>(~abs(-23181i), -24851i), global1.e.x, func_2(Struct_1(_wgslsmith_f_op_f32(-958f * func_2(arg_1.d.c, vec2<bool>(true, arg_1.d.c.b.x), vec3<f32>(299f, arg_2.d.b, global1.d.c.a)).d.c.a), vec2<bool>(global1.d.c.b.x, all(vec4<bool>(arg_2.c, arg_2.c, false, global1.d.c.b.x))), func_2(func_2(Struct_1(global1.d.b, vec2<bool>(true, true), vec4<i32>(-1i, 0i, arg_1.b.x, 1i)), vec2<bool>(false, arg_1.c), vec3<f32>(-1677f, 885f, 558f)).d.c, select(global1.e.zy, vec2<bool>(arg_2.c, true), arg_2.d.c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(698f, -1671f, -2028f) * vec3<f32>(1102f, -1117f, -1461f))).d.c.c), func_2(func_2(func_2(Struct_1(-1167f, vec2<bool>(false, false), vec4<i32>(arg_1.d.c.c.x, -1i, 0i, global1.d.c.c.x)), arg_2.e.yx, vec3<f32>(-500f, 285f, -1000f)).d.c, vec2<bool>(true, false), vec3<f32>(-1184f, 1062f, arg_2.d.d.x)).d.c, global1.d.c.b, vec3<f32>(arg_1.d.c.a, _wgslsmith_f_op_f32(f32(-1f) * -2373f), _wgslsmith_f_op_f32(-arg_2.d.b))).e.xy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, 387f, -2119f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.d.x, -1000f, global1.d.d.x)), all(vec2<bool>(arg_1.e.x, arg_2.c)))), vec3<f32>(global1.d.c.a, _wgslsmith_f_op_f32(-global1.d.c.a), _wgslsmith_f_op_f32(min(arg_1.d.c.a, global1.d.d.x))), arg_2.e))).d, arg_1.e);
    let var_1 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.d.a, arg_2.d.a, ~10737u, u_input.b)), abs(~countOneBits(vec4<u32>(arg_2.d.a, arg_0, u_input.b, global1.d.a))) << (vec4<u32>(select(global1.d.a, u_input.b & 49408u, !global1.e.x), ~min(arg_0, 4294967295u), var_0.x, _wgslsmith_sub_u32(~var_0.x, _wgslsmith_div_u32(0u, arg_1.d.a))) % vec4<u32>(32u)));
    let var_2 = arg_1.d.c.c ^ arg_1.d.c.c;
    return Struct_4(arg_2.d.c, -u_input.a.zy, !arg_2.d.c.b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(20200u ^ u_input.b, 0u), countOneBits(firstLeadingBit(~vec2<u32>(global1.d.a, global1.d.a)))), func_2(global1.d.c, vec2<bool>(any(select(vec4<bool>(true, arg_2, global1.a, false), vec4<bool>(false, global1.e.x, true, true), vec4<bool>(global1.a, global1.d.c.b.x, arg_2, false))), !arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, global1.d.c.a, -1069f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, global1.d.c.a)), vec3<f32>(-817f, 281f, -378f))))), func_2(global1.d.c, vec2<bool>(true, func_2(global1.d.c, global1.d.c.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.d.x, -695f, -1891f)))).a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, -1064f, arg_1.x))))));
    let var_1 = func_4(u_input.b, Struct_3(true, ~_wgslsmith_clamp_vec2_i32(abs(global1.b), vec2<i32>(80i, 2147483647i), firstLeadingBit(arg_0.zy)), !(true | all(vec3<bool>(true, true, arg_2))), global1.d, global1.e), func_2(func_4(~countOneBits(5596u), Struct_3(arg_2 || true, var_0.b, global1.c, func_2(var_0.a, global1.d.c.b, vec3<f32>(300f, 1000f, arg_1.x)).d, !vec3<bool>(false, global1.d.c.b.x, true)), Struct_3(true, ~global1.d.c.c.xw, true, func_2(global1.d.c, global1.e.zy, vec3<f32>(var_0.a.a, var_0.a.a, -412f)).d, select(vec3<bool>(global1.e.x, arg_2, arg_2), global1.e, arg_2))).a, vec2<bool>(!any(var_0.a.b), !(!arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-973f, -735f, -330f), vec3<f32>(arg_1.x, 1561f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, global1.d.d.x, global1.d.d.x)))))).a;
    let var_2 = global1.d.c;
    global1 = Struct_3(!any(select(!vec4<bool>(var_2.b.x, arg_2, true, false), !vec4<bool>(global1.d.c.b.x, false, true, true), vec4<bool>(var_1.b.x, true, var_2.b.x, var_1.b.x))), ~vec2<i32>(max(abs(arg_0.x), func_2(Struct_1(-1626f, vec2<bool>(true, false), vec4<i32>(var_2.c.x, -26612i, arg_0.x, arg_0.x)), var_1.b, vec3<f32>(global1.d.c.a, -342f, var_2.a)).b.x), 0i), true, global1.d, global1.e);
    let var_3 = 1i;
    return select(!vec4<bool>(var_2.b.x, all(func_2(var_1, vec2<bool>(var_2.b.x, false), vec3<f32>(global1.d.d.x, -266f, var_0.a.a)).e), global1.a, true), select(vec4<bool>(true, var_1.b.x, (var_1.a >= -1306f) && true, func_4(abs(19744u), Struct_3(global1.d.c.b.x, vec2<i32>(var_0.b.x, -18580i), true, global1.d, global1.e), func_2(Struct_1(var_2.a, var_2.b, vec4<i32>(var_0.a.c.x, global1.b.x, var_1.c.x, -1i)), var_0.c, vec3<f32>(269f, -1000f, 687f))).c.x), !(!vec4<bool>(false, false, true, var_0.c.x)), select(true && (var_2.b.x & arg_2), global1.a, any(vec3<bool>(false, false, true)))), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = ~(~arg_2 >> (~max(arg_2, firstTrailingBit(vec3<u32>(1u, 1u, arg_1.a))) % vec3<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(reverseBits(vec3<u32>(u_input.b, arg_1.a, 39214u))), vec3<u32>(~arg_2.x, u_input.b | var_0.x, _wgslsmith_add_u32(6540u, 1u))), arg_2 & vec3<u32>(57941u, global1.d.a, min(69104u, global1.d.a))), _wgslsmith_f_op_f32(step(-1174f, func_2(func_2(func_4(u_input.b, Struct_3(arg_1.c.b.x, vec2<i32>(arg_1.c.c.x, u_input.a.x), true, Struct_2(48537u, -250f, Struct_1(global1.d.b, vec2<bool>(arg_1.c.b.x, global1.e.x), global1.d.c.c), vec2<f32>(1780f, arg_1.b)), vec3<bool>(true, arg_0.x, global1.d.c.b.x)), Struct_3(true, u_input.a.yy, global1.e.x, global1.d, global1.e)).a, global1.e.xy, _wgslsmith_div_vec3_f32(vec3<f32>(-447f, arg_1.b, arg_1.c.a), vec3<f32>(-1211f, arg_1.c.a, -1000f))).d.c, vec2<bool>(all(vec2<bool>(false, global1.e.x)), arg_1.d.x >= -163f), vec3<f32>(704f, -504f, _wgslsmith_f_op_f32(max(-2460f, -1064f)))).d.d.x)), func_4(0u, func_2(func_4(global1.d.a, Struct_3(arg_1.c.b.x, arg_1.c.c.wz, arg_1.c.b.x, global1.d, arg_0.yzx), func_2(Struct_1(-1650f, vec2<bool>(global1.d.c.b.x, false), vec4<i32>(arg_1.c.c.x, global1.b.x, u_input.a.x, -1i)), vec2<bool>(false, true), vec3<f32>(global1.d.c.a, arg_1.c.a, 1503f))).a, select(arg_1.c.b, !vec2<bool>(global1.d.c.b.x, arg_1.c.b.x), vec2<bool>(arg_0.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(627f, -1341f, -401f), vec3<f32>(global1.d.c.a, arg_1.b, global1.d.b))))), func_2(arg_1.c, arg_0.zy, vec3<f32>(505f, 1539f, 1f))).a, global1.d.d);
    var_0 = arg_2;
    var_0 = ~(~(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(36959u, 47488u, 4294967295u), arg_2), arg_2) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2, arg_2), vec3<u32>(94320u, 1u, 8727u))));
    var_0 = vec3<u32>(~var_1.a, ~var_0.x, 150999u);
    return Struct_3(true, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -(~(-2147483647i))), u_input.a.yx), all(vec2<bool>(false, arg_1.c.b.x)), var_1, select(arg_0.xww, !select(vec3<bool>(var_1.c.b.x, arg_1.c.b.x, false), select(vec3<bool>(false, arg_1.c.b.x, true), global1.e, vec3<bool>(var_1.c.b.x, global1.c, false)), global1.e), global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, global1.d.a), ~_wgslsmith_div_u32(u_input.b, 510u) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.a, 23836u, 32759u, 71316u), vec4<u32>(u_input.b, 0u, 62890u, u_input.b)))), countOneBits(vec2<u32>(10979u, ~global1.d.a)) | vec2<u32>(global1.d.a, global1.d.a));
    let var_1 = func_5(!func_1(global1.d.c.c, vec2<f32>(_wgslsmith_f_op_f32(global1.d.c.a * -1110f), global1.d.c.a), true), global1.d, ~vec3<u32>(u_input.b ^ ~4294967295u, 47259u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global1.d.a, global1.d.a), u_input.b & u_input.b)));
    var var_2 = ~1u & ~u_input.b;
    var_2 = global1.d.a;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f), global1.d.b);
    var var_4 = func_5(vec4<bool>(true, true, true, func_3()), func_5(!(!vec4<bool>(var_1.c, global1.c, var_1.e.x, global1.c)), func_5(vec4<bool>(!var_1.d.c.b.x, true | global1.c, false, true), func_2(func_5(vec4<bool>(var_1.e.x, true, false, true), global1.d, vec3<u32>(var_1.d.a, 74218u, 0u)).d.c, global1.d.c.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d.d.x, global1.d.c.a, 1487f)))).d, vec3<u32>(47562u, 2258u >> (0u % 32u), 0u)).d, vec3<u32>(~30353u, ~reverseBits(1u), 14987u)).d, vec3<u32>(abs(~(~u_input.b)), ~func_2(Struct_1(global1.d.b, vec2<bool>(var_1.c, false), var_1.d.c.c), select(vec2<bool>(global1.d.c.b.x, true), var_1.e.xz, global1.d.c.b.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(631f, -400f, var_3)))).d.a, abs(_wgslsmith_mult_u32(u_input.b, 21451u) | 1u))).d.c;
    var var_5 = _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, ~(~min(global1.d.a, 4294967295u))), 0u);
    global1 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(global1.d.a ^ 10422u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), -1000f))), ~min(~vec3<u32>(var_0.x, 87497u, 4294967295u), select(reverseBits(vec3<u32>(0u, var_0.x, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(35990u, 0u, 1684u), vec3<u32>(global1.d.a, global1.d.a, u_input.b)), var_4.b.x)), 18954u);
}

