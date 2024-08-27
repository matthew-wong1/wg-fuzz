struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = global0.d.d.www;
    let var_1 = Struct_1(global0.d.e, u_input.a.x, var_0.xx, vec4<f32>(_wgslsmith_f_op_f32(1000f + -825f), global0.a, -915f, _wgslsmith_f_op_f32(ceil(810f))), 0i);
    global0 = Struct_2(var_1.c.x, global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(156f - 1978f) * _wgslsmith_f_op_f32(f32(-1f) * -710f)), var_1.c.x)), Struct_1(reverseBits(abs(~global0.b.b)), 38099i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.b.c.x)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1287f), _wgslsmith_f_op_f32(-var_0.x))), global0.d.d, abs((u_input.a.x >> (4923u % 32u)) >> (_wgslsmith_mod_u32(41722u, 4294967295u) % 32u))), _wgslsmith_f_op_vec2_f32(ceil(var_1.c)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1202f - _wgslsmith_f_op_f32(-var_1.d.x))))), Struct_1(_wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(min(1i, -44463i), -global0.d.a)), -25887i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.d.xw, _wgslsmith_f_op_vec2_f32(ceil(var_0.zy)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, var_0.x), vec2<f32>(724f, 1394f)) - var_0.yy)), var_1.d, var_1.a), -1689f, Struct_1(firstTrailingBit(35532i), u_input.a.x, vec2<f32>(-1721f, var_1.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.d)) - _wgslsmith_f_op_vec4_f32(-var_1.d)), reverseBits(var_1.e)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, -1437f))), vec2<f32>(1644f, -397f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.d.x)), -1062f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, var_1.d.x))))));
    global0 = Struct_2(var_1.d.x, global0.b, _wgslsmith_f_op_f32(289f - _wgslsmith_f_op_f32(-928f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-195f, 125f)) * -338f))), Struct_1(0i, ~u_input.a.x, global0.b.d.yw, _wgslsmith_f_op_vec4_f32(-var_1.d), ~u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.c.x, -1279f))), global0.d.d.x) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, global0.c), _wgslsmith_f_op_vec2_f32(-var_0.zz))), false))));
    return abs(var_1.e);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(-1099f, Struct_1(~u_input.a.x, u_input.a.x, _wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec4_f32(global0.b.d * vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(-2413f)), _wgslsmith_f_op_f32(arg_2.x * -393f), 1738f)), u_input.a.x), _wgslsmith_f_op_f32(ceil(arg_0)), Struct_1(func_3(), -4218i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 807f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1611f)), _wgslsmith_f_op_f32(trunc(global0.c)), 839f, 1f))), max(global0.d.e, -49300i)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, arg_2.x)))))), _wgslsmith_f_op_f32(sign(-574f))));
    var var_1 = _wgslsmith_f_op_f32(sign(global0.a));
    let var_2 = -abs(~firstLeadingBit(2147483647i));
    let var_3 = true;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), 1073f)), global0.b, 870f, Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-15471i, var_2), _wgslsmith_sub_i32(u_input.a.x, 18638i)), _wgslsmith_div_i32(-78723i, -30296i)), ~_wgslsmith_mod_i32(-22339i, -7473i << (0u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 580f) * arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.e.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.d.d.x, 760f), arg_0, var_0.c, _wgslsmith_f_op_f32(-1000f - var_0.a))), _wgslsmith_clamp_i32(var_2, firstTrailingBit(-2147483647i), var_0.d.a ^ 0i) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, arg_1.x)), arg_1.yx) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.d.zw)), _wgslsmith_f_op_vec2_f32(-var_0.e))), vec2<f32>(-1158f, _wgslsmith_f_op_f32(min(arg_0, -817f))), var_3)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.c.x, arg_0)))));
    return Struct_2(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-var_0.c)), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-136f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c.x * 339f), -1807f))), var_0.d, vec2<f32>(1f, 1f));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = -abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(max(-1i, 43815i), max(2147483647i, arg_0)), 22466i));
    let var_1 = func_2(global0.c, ~(~(~min(vec4<u32>(37022u, 4294967295u, 0u, 46006u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(306f * -909f), global0.d.d.x))));
    let var_2 = Struct_1(var_1.b.e, arg_0, _wgslsmith_f_op_vec2_f32(exp2(var_1.e)), global0.b.d, 15448i);
    global0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.e.x)))), select(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(18161u, 12915u, 1u, 80182u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_mult_u32(1u, 81708u), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(96231u, 38399u), vec2<u32>(1913u, 4294967295u)), firstLeadingBit(~4294967295u)), false), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.c)), vec2<f32>(1f, -688f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.ww * global0.e)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.d.yw)))))));
    let var_3 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(-global0.b.b == arg_0, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)));
    return var_3;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_add_i32(arg_2.e, u_input.a.x)), abs(u_input.a.x), -2147483647i, -1i), vec4<i32>(min(max(u_input.a.x, u_input.a.x), reverseBits(arg_2.a)), 0i, 13751i, _wgslsmith_mod_i32(-26231i, 1i)), vec4<i32>(1i, (1i & global0.b.e) << (35464u % 32u), 0i, 1i)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1f, arg_3))), func_2(arg_2.c.x, firstTrailingBit(_wgslsmith_mult_vec4_u32(max(vec4<u32>(arg_0, 3872u, 1u, arg_0), vec4<u32>(arg_0, 0u, 4294967295u, 1u)), max(vec4<u32>(1u, 11581u, 0u, arg_0), vec4<u32>(arg_0, 59268u, arg_0, 0u)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global0.b.d.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, 335f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.c.x, -445f)))))).d, _wgslsmith_div_f32(arg_2.c.x, arg_3), Struct_1(func_3(), global0.b.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-173f, arg_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(274f, arg_2.c.x) + arg_2.d.yw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-149f, 110f) + global0.b.d.ww) + vec2<f32>(558f, arg_3)), false)), vec4<f32>(arg_3, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_div_f32(global0.a, 380f), -1536f), _wgslsmith_dot_vec3_i32(abs(var_0.wyw), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.b, -24323i, u_input.a.x), u_input.a, vec3<i32>(global0.b.a, 0i, -2147483647i))) >> (16789u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2.c))))));
    let var_2 = Struct_1(u_input.a.x << (arg_0 % 32u), 1i, var_1.b.c, _wgslsmith_f_op_vec4_f32(-func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) - _wgslsmith_f_op_f32(trunc(arg_3))), vec4<u32>(arg_0 ^ 0u, arg_0, countOneBits(23320u), 0u), var_1.e).b.d), _wgslsmith_div_i32(_wgslsmith_add_i32(57928i, _wgslsmith_div_i32(-14810i, var_1.b.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(54889i, global0.d.e, -1i), u_input.a) | (~var_0.x << (select(arg_0, arg_0, arg_1) % 32u))));
    let var_3 = var_1.d;
    let var_4 = _wgslsmith_add_vec2_i32(-var_0.yz, _wgslsmith_add_vec2_i32(var_0.xy >> (vec2<u32>(arg_0, 41040u) % vec2<u32>(32u)), vec2<i32>(arg_2.a, -2147483647i))) & firstLeadingBit(_wgslsmith_add_vec2_i32(var_0.yy, ~(vec2<i32>(2147483647i, -2147483647i) >> (vec2<u32>(1u, arg_0) % vec2<u32>(32u)))));
    return func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1124f, var_2.c.x)))), abs(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(arg_0, 4294967295u, arg_0, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 45885u), vec4<u32>(4294967295u, arg_0, arg_0, 72127u)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.d.x)), _wgslsmith_f_op_f32(449f * global0.a)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_add_u32(~arg_2, firstTrailingBit(1u)) ^ arg_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a, arg_0.a))) <= _wgslsmith_f_op_f32(-func_4(arg_2, false, Struct_1(26605i, arg_0.d.a, vec2<f32>(-674f, -807f), arg_0.b.d, arg_0.b.e), -1435f).b.c.x), arg_0.b, 610f).e.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(892f * 914f))))));
    let var_1 = vec4<i32>(~u_input.a.x, global0.b.e, arg_0.d.b, arg_0.b.b) | (reverseBits(abs(-vec4<i32>(-9587i, -436i, global0.d.b, global0.b.e))) >> (countOneBits(vec4<u32>(~arg_2, arg_2, countOneBits(1u), 4294967295u)) % vec4<u32>(32u)));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), Struct_1(var_1.x, -u_input.a.x, global0.d.c, global0.d.d, -96465i), 945f, func_2(_wgslsmith_f_op_f32(arg_0.c * -1123f), vec4<u32>(0u, arg_2 ^ arg_2, 0u, firstTrailingBit(0u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(13642u, 61771u, arg_2, 4294967295u)), func_2(arg_0.c, ~(vec4<u32>(arg_2, arg_2, arg_2, 0u) | vec4<u32>(4294967295u, 0u, 29885u, arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d.c))).e).d, _wgslsmith_f_op_vec2_f32(vec2<f32>(3659f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1785f, -229f)) - var_0)) - _wgslsmith_f_op_vec2_f32(-arg_0.e)));
    global0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1961f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.e;
    global0 = func_5(func_4(~1u, all(select(vec3<bool>(false, false, false), func_1(-12048i), vec3<bool>(true, true, true))), global0.d, 436f), global0.e.x, 32401u << (1u % 32u));
    global0 = func_5(func_4(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~0u, 1u, ~4294967295u), 4294967295u), true, Struct_1(func_3(), global0.d.a, _wgslsmith_f_op_vec2_f32(-global0.b.c), global0.d.d, -abs(-65998i)), _wgslsmith_f_op_f32(func_2(-164f, vec4<u32>(4294967295u, 1u, 0u, 31482u), _wgslsmith_div_vec2_f32(global0.d.c, vec2<f32>(global0.e.x, global0.e.x))).d.d.x - global0.e.x)), global0.d.d.x, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(75627u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(11596u, 1u, 15340u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u))))));
    let var_1 = -241f;
    let var_2 = ~(~vec4<i32>(min(1i, 0i), abs(global0.d.a), abs(u_input.a.x), abs(global0.d.b))) & firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(global0.a, vec4<u32>(10639u, 30660u, 0u, 1u), vec2<f32>(-413f, global0.a)).b.e, u_input.a.x, -44562i, _wgslsmith_mod_i32(1i, global0.d.b)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.b, 1i, global0.b.e, global0.d.a), vec4<i32>(38299i, 2147483647i, u_input.a.x, -18237i)), firstLeadingBit(vec4<i32>(-46175i, -5590i, u_input.a.x, -204i)), true), firstLeadingBit(max(vec4<i32>(global0.d.b, global0.d.e, 1i, u_input.a.x), vec4<i32>(u_input.a.x, 15752i, -1i, global0.d.a)))));
    global0 = func_5(func_4(1u, !any(vec2<bool>(true, false)), Struct_1(i32(-1i) * -463i, max(-16923i, func_2(1000f, vec4<u32>(68006u, 4294967295u, 16037u, 1u), global0.d.d.xz).b.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -405f) * _wgslsmith_f_op_vec2_f32(global0.e - vec2<f32>(249f, 296f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, -770f, 1379f, global0.c), _wgslsmith_f_op_vec4_f32(global0.d.d + vec4<f32>(var_1, -617f, -1000f, -839f)))), global0.b.e), global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.d.c.x - _wgslsmith_f_op_f32(step(func_4(9360u, false, Struct_1(var_2.x, -2147483647i, global0.d.c, global0.b.d, -2147483647i), global0.e.x).b.d.x, 953f))), 738f)), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 65583u), vec2<u32>(1u, 41939u))), ~firstLeadingBit(reverseBits(vec2<u32>(702u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f + var_1), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u) ^ select(vec2<u32>(23257u, 21294u), vec2<u32>(0u, 15588u), false), ~(~vec2<u32>(75382u, 59953u)), vec2<bool>(false, true)), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 13388u), vec2<u32>(37558u, 52909u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 20965u), vec2<u32>(34824u, 15400u))))), ~_wgslsmith_mult_u32(countOneBits(1u), ~firstLeadingBit(69801u)));
}

