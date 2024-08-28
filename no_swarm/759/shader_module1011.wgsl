struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 32130u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> vec4<bool> {
    global0 = ~(~vec2<u32>(countOneBits(u_input.b), ~62992u));
    let var_0 = _wgslsmith_mult_i32(-2147483647i, 1i);
    global0 = abs(~(~(vec2<u32>(u_input.b, u_input.e) << ((vec2<u32>(2248u, 4294967295u) >> (vec2<u32>(38713u, arg_3) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    global0 = ~(~abs(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_3), vec2<u32>(arg_3, u_input.b)), vec2<u32>(1u, global0.x) >> (vec2<u32>(71088u, u_input.e) % vec2<u32>(32u)), !arg_0)));
    var var_1 = Struct_1(select(select(select(vec2<bool>(arg_0, true), !vec2<bool>(arg_0, false), !arg_0), select(vec2<bool>(true, true), !vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), false), select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), false), !vec2<bool>(false, arg_0), !arg_0), !select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), true), true), all(select(vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, arg_0, true, arg_0), all(vec2<bool>(false, false))))), ~firstLeadingBit(arg_1.a), _wgslsmith_mult_u32(~select(arg_3, global0.x, arg_3 >= 1u), 71265u), u_input.c.zw, vec3<f32>(_wgslsmith_f_op_f32(arg_2.x - -1430f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(501f, _wgslsmith_f_op_f32(-757f * arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))))));
    return select(!select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), !select(vec4<bool>(false, var_1.a.x, true, arg_0), vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(true, true, arg_0, false)), !all(vec2<bool>(var_1.a.x, true))), select(vec4<bool>(true, select(all(vec4<bool>(true, false, false, arg_0)), false, var_1.a.x), !any(var_1.a), false), !(!vec4<bool>(arg_0, false, var_1.a.x, var_1.a.x)), arg_0 || all(select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), vec4<bool>(var_1.a.x, arg_0, true, false), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)))), var_1.a.x);
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    let var_0 = Struct_2(-12902i);
    var var_1 = Struct_2(-59911i);
    var var_2 = var_0;
    var_2 = Struct_2(countOneBits(37634i));
    let var_3 = vec2<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, global0.x, 1u, 0u), ~vec4<u32>(u_input.b, u_input.b, 70316u, 15024u)), vec4<u32>(17498u, ~23747u, 4294967295u, _wgslsmith_add_u32(u_input.b, u_input.e)))), ~reverseBits(76387u));
    return -var_0.a ^ 1i;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_3(-func_4(func_3(arg_0.x, Struct_2(u_input.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 119f), vec2<f32>(3307f, -1153f))), global0.x << (u_input.b % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(516f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(257f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f * -252f)), true))), Struct_1(select(!arg_0.zy, arg_0.yx, vec2<bool>(true, true)), u_input.a, u_input.b ^ ~1u, max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(19633i, -6499i) & u_input.c.xw), vec2<i32>(u_input.a, i32(-1i) * -1i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-932f, -237f, -858f), vec3<f32>(-445f, 1000f, 361f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, 1000f, 1093f)))));
    var var_1 = Struct_2(u_input.c.x);
    var var_2 = Struct_3(_wgslsmith_add_i32(var_0.c.b, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.yw)) ^ ~_wgslsmith_sub_i32(-41202i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.e.x)), Struct_1(!select(select(var_0.c.a, vec2<bool>(false, false), var_0.c.a.x), vec2<bool>(false, false), func_3(false, Struct_2(13510i), var_0.c.e.yx, var_0.c.c).xx), 52263i, 3952u, -u_input.c.xx, vec3<f32>(914f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.e.x + -647f), _wgslsmith_f_op_f32(abs(365f)))), _wgslsmith_f_op_f32(var_0.c.e.x + _wgslsmith_f_op_f32(294f * var_0.b)))));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_4 = ~(~select(abs(~vec3<u32>(9653u, var_0.c.c, var_2.c.c)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.c.c, u_input.e, 8759u), vec3<u32>(0u, 0u, 26541u), vec3<bool>(var_2.c.a.x, var_0.c.a.x, var_0.c.a.x)), vec3<u32>(var_0.c.c, var_2.c.c, 4294967295u)), any(var_2.c.a) || any(arg_0)));
    return ~min(47894u, firstLeadingBit(~var_2.c.c) << (var_2.c.c % 32u));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_1(!(!select(arg_1, select(vec2<bool>(false, arg_1.x), arg_1, arg_1), select(arg_1, vec2<bool>(false, true), true))), u_input.d, func_2(select(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x)), !(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(false, false, arg_1.x, arg_1.x)), !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), arg_1.x))), u_input.c.yw, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(888f * 1462f), arg_2)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2, -879f)), arg_2))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(187f + arg_2))))));
    var_0 = Struct_1(!(!arg_1), _wgslsmith_div_i32(1i, -_wgslsmith_div_i32(-2147483647i, -1i)), ~(arg_0 & ~(~u_input.e)), select(u_input.c.ww, var_0.d >> ((abs(vec2<u32>(arg_0, global0.x)) ^ select(vec2<u32>(var_0.c, arg_0), vec2<u32>(1u, global0.x), false)) % vec2<u32>(32u)), global0.x != 90107u), var_0.e);
    let var_1 = select(arg_1.x | (u_input.a != firstLeadingBit(_wgslsmith_div_i32(var_0.d.x, var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * var_0.e.x)))) >= var_0.e.x, true);
    var var_2 = Struct_3(var_0.d.x, var_0.e.x, Struct_1(!func_3(arg_1.x, Struct_2(u_input.d), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.e.x, -661f), vec2<f32>(-1004f, 2001f))), _wgslsmith_dot_vec2_u32(vec2<u32>(18617u, u_input.b), vec2<u32>(1u, 71080u))).zx, reverseBits(~33308i), global0.x, var_0.d, vec3<f32>(_wgslsmith_f_op_f32(-187f - var_0.e.x), _wgslsmith_f_op_f32(-arg_2), var_0.e.x)));
    var var_3 = true;
    return Struct_2(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u, vec2<bool>((u_input.d >> (global0.x % 32u)) > (min(-3839i, u_input.a) ^ -41333i), !(50433u > reverseBits(global0.x))), _wgslsmith_f_op_f32(193f - _wgslsmith_f_op_f32(max(365f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(556f)), 1f))))));
    let var_1 = ~vec4<u32>(u_input.b, ~0u, ~(~u_input.b), ~global0.x) << (countOneBits(vec4<u32>((global0.x ^ global0.x) ^ 0u, 1u, 101832u, _wgslsmith_mult_u32(global0.x, 4294967295u))) % vec4<u32>(32u));
    var var_2 = 0u;
    var var_3 = var_0;
    let var_4 = Struct_1(vec2<bool>(true, true), abs(1i) | u_input.d, 1u, u_input.c.yz, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2436f, 525f, 778f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1130f, -1064f, -380f) * vec3<f32>(-1303f, 329f, 524f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-459f)), _wgslsmith_f_op_f32(floor(-342f)), -678f)))));
    global0 = ~min(select(var_1.zw, select(~vec2<u32>(var_1.x, var_4.c), vec2<u32>(global0.x, 27328u), all(var_4.a)), var_4.a), (vec2<u32>(var_4.c, u_input.e) | vec2<u32>(var_4.c, 0u)) | vec2<u32>(1u, ~4294967295u));
    var var_5 = Struct_3(var_3.a, _wgslsmith_div_f32(var_4.e.x, _wgslsmith_f_op_f32(min(1706f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1151f - -131f)))))), var_4);
    var_3 = func_1(global0.x, !vec2<bool>(false & var_4.a.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.e.x + 801f), _wgslsmith_f_op_f32(min(-909f, var_5.c.e.x)), true)), _wgslsmith_f_op_f32(-var_4.e.x), !(var_4.a.x & true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, ~select(countOneBits(~var_1.x), 4158u, var_5.c.a.x || all(vec2<bool>(var_5.c.a.x, var_5.c.a.x))), var_5.c.e.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)))));
}

