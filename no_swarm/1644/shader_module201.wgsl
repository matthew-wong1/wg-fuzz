struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(24667u, 0u);

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> f32 {
    global1 = !vec2<bool>(any(vec3<bool>(arg_1.x, select(global1.x, arg_1.x, true), true)), true);
    global0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_2, u_input.a), (~vec2<u32>(arg_2, u_input.a) ^ vec2<u32>(~40891u, u_input.b)) | min(~vec2<u32>(1u, 1u), ~reverseBits(vec2<u32>(0u, 454u))));
    let var_0 = select(~_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, firstLeadingBit(55040u), arg_2 | arg_2), vec3<u32>(~global0.x, global0.x, _wgslsmith_sub_u32(arg_2, u_input.a))), ~vec3<u32>(_wgslsmith_div_u32(1u, u_input.b), ~_wgslsmith_div_u32(global0.x, arg_2), 1u), false);
    let var_1 = -1i;
    let var_2 = !all(vec4<bool>(arg_1.x, any(!vec2<bool>(global1.x, false)), any(arg_1) & global1.x, !(arg_2 > global0.x)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x, var_2))));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    global1 = !(!vec2<bool>(arg_0.a.x, true));
    var var_0 = select(select(!select(select(vec3<bool>(false, false, arg_0.a.x), arg_0.a, global1.x), vec3<bool>(global1.x, global1.x, arg_0.a.x), vec3<bool>(global1.x, false, true)), vec3<bool>(!arg_0.a.x, arg_0.a.x, min(1i, 12943i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-3722i, 1i, 2147483647i, 2147483647i), vec4<i32>(1i, -55021i, -1i, -2147483647i))), !((global1.x || false) | (false != global1.x))), arg_0.a, any(vec2<bool>(true, true)));
    var var_1 = select(select(arg_0.a, select(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.x, true, arg_0.a.x), arg_0.a.x), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(arg_0.a, arg_0.a, arg_0.a)), !arg_0.a, select(arg_0.a, vec3<bool>(var_0.x, true, false), any(arg_0.a.zz))), !select(select(arg_0.a, vec3<bool>(true, false, true), vec3<bool>(arg_0.a.x, true, true)), vec3<bool>(arg_0.a.x, global1.x, arg_0.a.x), select(vec3<bool>(false, false, var_0.x), arg_0.a, global1.x))), arg_0.a, arg_0.a);
    global0 = reverseBits(vec2<u32>(global0.x, countOneBits(max(u_input.a, select(36082u, u_input.a, var_1.x)))));
    var var_2 = Struct_3(!vec2<bool>(all(var_0.zx), all(!vec4<bool>(false, global1.x, var_0.x, global1.x))), u_input.b, vec4<i32>(-_wgslsmith_sub_i32(select(-27532i, -2147483647i, var_0.x), 15012i), 33982i ^ countOneBits(select(-26436i, 2147483647i, true)), 13912i, 1i), 76713i);
    return Struct_3(vec2<bool>(true, true), ~abs(4294967295u), vec4<i32>(9712i, firstLeadingBit(firstTrailingBit(select(2147483647i, var_2.d, true))), var_2.c.x, max(~(~var_2.c.x), countOneBits(1i))), abs(1i));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_5 {
    global0 = arg_0.yx;
    let var_0 = Struct_5(select(!(!select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, arg_2.a.x))), !vec3<bool>(arg_2.a.x, !global1.x, true), true));
    let var_1 = vec4<f32>(815f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, -850f, -959f, 679f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(464f, 737f, 1000f, 1136f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1043f, 1068f, -1252f, 1294f), vec4<f32>(-537f, -685f, -567f, 415f)))))), select(!select(arg_2.a, var_0.a.yx, global1.x), func_3(var_0, _wgslsmith_f_op_f32(func_2(vec4<f32>(164f, 2676f, 614f, -754f), var_0.a.yx, 10700u, arg_2.c.x)), Struct_4(vec2<f32>(879f, -1000f))).a, !vec2<bool>(true, arg_2.a.x)), firstLeadingBit(firstLeadingBit(_wgslsmith_sub_u32(arg_2.b, 1u))), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)), 1000f);
    global0 = ~(~select(_wgslsmith_mod_vec2_u32(arg_0.xx, ~arg_0.zz), vec2<u32>(~global0.x, firstTrailingBit(arg_2.b)), var_0.a.zy));
    var var_2 = ~55488u;
    return Struct_5(select(select(var_0.a, select(select(vec3<bool>(true, global1.x, arg_2.a.x), vec3<bool>(false, global1.x, true), var_0.a), var_0.a, func_3(Struct_5(var_0.a), 1637f, Struct_4(var_1.yz)).a.x), vec3<bool>(any(vec2<bool>(global1.x, global1.x)), global1.x, arg_2.a.x)), !(!select(var_0.a, vec3<bool>(var_0.a.x, false, false), arg_2.a.x)), !var_0.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    global1 = vec2<bool>(arg_2.x, global1.x);
    let var_0 = func_4(countOneBits(vec3<u32>(~4294967295u, _wgslsmith_add_u32(firstTrailingBit(global0.x), 1u), global0.x)), arg_1.a, func_3(Struct_5(!vec3<bool>(true, false, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(1557f, -265f, 214f, 299f), arg_2, ~arg_1.b, arg_1.a.x))), Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(623f, 1000f))))), firstLeadingBit(abs(select(arg_0.zwy, ~vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(global1.x, arg_2.x, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1646f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1121f, 1822f)) * 275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1543f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1250f * -409f))) * _wgslsmith_f_op_f32(f32(-1f) * -1216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f + _wgslsmith_f_op_f32(min(-283f, 427f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-134f, -257f) * _wgslsmith_f_op_f32(abs(1000f))))));
    global1 = vec2<bool>(true, global1.x);
    let var_2 = select(~(~vec2<u32>(max(global0.x, 1u), _wgslsmith_add_u32(1u, 0u))), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(83603u, 14006u, 3752u, u_input.b))), abs(~vec4<u32>(1u, 37866u, global0.x, arg_1.b)))), !vec2<bool>(true, any(select(vec4<bool>(global1.x, false, var_0.a.x, false), vec4<bool>(true, true, true, true), var_0.a.x))));
    return global1.x;
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_5 {
    global0 = ~(~vec2<u32>(global0.x, 1u));
    let var_0 = abs(0i);
    let var_1 = true;
    global1 = vec2<bool>(_wgslsmith_mult_u32(u_input.b ^ global0.x, 1u) >= global0.x, func_3(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(350f)) - _wgslsmith_f_op_f32(max(-952f, -881f))))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, 719f) - vec2<f32>(495f, -343f)) * vec2<f32>(1000f, -945f)))).a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(min(1f, -733f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(206f, -947f)), _wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_f32(-192f + -714f)))));
    return func_4(abs(abs(vec3<u32>(1u, global0.x, 4294967295u) >> (vec3<u32>(1u, 1u, global0.x) % vec3<u32>(32u)))) >> (vec3<u32>(~(~global0.x), reverseBits(firstLeadingBit(global0.x)), abs(u_input.b ^ 1u)) % vec3<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(-2147483647i, -2147483647i, var_0, 1i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, 0i, 1i), vec4<i32>(var_0, var_0, -17907i, 2147483647i))), -vec4<i32>(-2147483647i, var_0, var_0 & -2147483647i, -39215i)), func_3(func_4(~vec3<u32>(28563u, 63279u, 1u), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, var_0), vec4<i32>(-2147483647i, var_0, var_0, 0i) << (vec4<u32>(4294967295u, 55350u, u_input.b, 101931u) % vec4<u32>(32u))), func_3(Struct_5(vec3<bool>(arg_0, arg_1.a.x, var_1)), -871f, Struct_4(vec2<f32>(var_2.x, var_2.x))), firstTrailingBit(-vec3<i32>(-1i, var_0, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-910f - var_2.x)) + -637f), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(max(-1189f, var_2.x))))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(abs(-18223i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 2147483647i, var_0), vec3<i32>(var_0, 2147483647i, var_0)), var_0), ~vec3<i32>(1i, 1i & var_0, abs(var_0)), abs(select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 6635i, 2147483647i), vec3<i32>(0i, 36292i, var_0)), -vec3<i32>(var_0, var_0, var_0), any(vec4<bool>(true, true, var_1, var_1))))));
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_1 {
    global1 = vec2<bool>(arg_2.a.x, all(arg_2.a));
    let var_0 = ~(~max(vec2<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, arg_0, 1u), vec4<u32>(u_input.b, 4294967295u, 90358u, 18680u))), ~(~vec2<u32>(9628u, 1u))));
    let var_1 = vec3<u32>(5248u ^ u_input.a, 1u, 1u);
    let var_2 = func_3(func_5(false && (false && arg_2.a.x), func_4(~(var_1 ^ vec3<u32>(4294967295u, 1u, 4294967295u)), -vec4<i32>(arg_1.x, 28063i, arg_1.x, -33484i) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x), vec4<u32>(0u, 0u, 0u, arg_0)) % vec4<u32>(32u)), func_3(arg_2, _wgslsmith_f_op_f32(-1000f + -405f), Struct_4(vec2<f32>(1662f, -1000f))), (vec3<i32>(-43634i, arg_1.x, arg_1.x) & vec3<i32>(2147483647i, 0i, arg_1.x)) | firstTrailingBit(vec3<i32>(-1i, arg_1.x, arg_1.x)))), 2110f, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, _wgslsmith_f_op_f32(903f - -359f)))));
    global0 = min(_wgslsmith_mod_vec2_u32(~var_0, var_1.zz), vec2<u32>(58988u, ~(~(~global0.x))));
    return Struct_1(vec4<i32>(firstTrailingBit(~(-35519i)), (10127i ^ _wgslsmith_dot_vec3_i32(var_2.c.yyx, var_2.c.zzx)) & arg_1.x, func_3(arg_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1461f, 349f))), Struct_4(vec2<f32>(-1000f, -811f))).d, 12020i), var_1.x << ((_wgslsmith_mult_u32(var_1.x, var_2.b) ^ 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(0u, firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, -49246i), vec2<i32>(-42473i, -1i)) | firstTrailingBit(~vec2<i32>(0i, 2145i))), func_5(!(global1.x | true), Struct_5(vec3<bool>(all(vec3<bool>(true, true, true)), func_1(vec4<i32>(-1i, 21650i, -13925i, 60766i), Struct_1(vec4<i32>(2147483647i, -1i, 7182i, 0i), 11503u), vec2<bool>(global1.x, global1.x)), any(vec3<bool>(global1.x, true, global1.x))))));
    global0 = ~_wgslsmith_div_vec2_u32(~vec2<u32>(~var_0.b, 70948u), vec2<u32>(_wgslsmith_sub_u32(global0.x, 1u), 52553u));
    var var_1 = var_0.a.yzw;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(79190u, 4294967295u, u_input.a), vec3<u32>(0u, 1u, 1u)), select(vec3<u32>(u_input.b, 86319u, 30115u), vec3<u32>(11640u, 0u, global0.x), true)), firstLeadingBit(vec3<u32>(1u, 121847u, u_input.a))), max(~firstTrailingBit(var_0.b), ~(~_wgslsmith_mod_u32(global0.x, 4294967295u))), vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1083f, 983f, 1147f, 831f))))), select(!vec2<bool>(global1.x, true), vec2<bool>(false, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(true, true), false)), _wgslsmith_mod_u32(func_3(Struct_5(vec3<bool>(true, global1.x, false)), -1529f, Struct_4(vec2<f32>(-1706f, 836f))).b, u_input.a), 1i))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.b, u_input.b, u_input.a), vec3<u32>(u_input.b, u_input.a, u_input.a), true), ~(~vec3<u32>(0u, 88439u, global0.x))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 1u, var_0.b) | vec3<u32>(u_input.b, 90345u, global0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.b, u_input.b), vec3<u32>(7322u, 38222u, global0.x))), ~countOneBits(vec3<u32>(global0.x, 1u, global0.x))));
}

