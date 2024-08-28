struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32 = 0u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec2<u32> {
    global0 = Struct_4(_wgslsmith_mod_i32(arg_1.b.x, i32(-1i) * -1i), global0.b, arg_1.c, arg_1.d);
    global0 = Struct_4(global0.c, u_input.d.xx, -25685i, arg_1.d);
    let var_0 = Struct_3(select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(!all(vec4<bool>(false, false, true, false)), true), vec2<bool>(true, 4294967295u >= u_input.a.x)), arg_1.d, select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), vec3<bool>(true, any(vec2<bool>(false, true)), true), true), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    var var_1 = Struct_1(min(~abs(vec4<u32>(u_input.a.x, 1u, 24046u, 43558u)), vec4<u32>(u_input.a.x, 1u, ~12983u, select(u_input.a.x, u_input.a.x, true))) >> (firstLeadingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(36288u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(20948u, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), -max(-max(global0.b, global0.b), (vec2<i32>(arg_1.b.x, global0.c) & u_input.b.zz) | vec2<i32>(-1i, 7871i)), !vec4<bool>(false != !var_0.a.x, true, var_0.c.x, var_0.c.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a.x, arg_1.d.a.x, -615f) + vec3<f32>(516f, global0.d.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.x, arg_0.a.x, -1000f) + vec3<f32>(-1242f, 1369f, 519f)), true))))));
    var_1 = Struct_1(min(vec4<u32>(select(u_input.a.x, u_input.a.x, true) & _wgslsmith_mult_u32(1u, var_1.a.x), 1u, var_1.a.x, countOneBits(max(24820u, var_1.a.x))), var_1.a), vec2<i32>(~reverseBits(firstTrailingBit(var_1.b.x)), -2147483647i), vec4<bool>(all(select(vec4<bool>(false, var_1.c.x, var_1.c.x, true), !var_1.c, !var_1.c)), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.d), u_input.d) < var_1.b.x, var_0.c.x, all(var_1.c.wxw)), any(var_0.a), var_1.e);
    return min(u_input.a.zy, vec2<u32>(~var_1.a.x, var_1.a.x) >> (var_1.a.xz % vec2<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_clamp_i32(0i >> (func_3(Struct_2(vec2<f32>(global0.d.a.x, 592f)), Struct_4(u_input.b.x, vec2<i32>(u_input.c, global0.c), -2147483647i, global0.d)).x % 32u), u_input.c, _wgslsmith_mult_i32(i32(-1i) * -2147483647i, ~(-global0.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~(u_input.c & u_input.c), (-16011i & global0.a) & countOneBits(35755i)), ~global0.b, vec2<i32>(global0.b.x, _wgslsmith_mod_i32(~(-17405i), _wgslsmith_mod_i32(1i, -2147483647i)))), select(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, -1i), -1i << (0u % 32u)), global0.a, !any(vec4<bool>(false, true, false, true))) ^ abs(u_input.c), global0.d);
    global1 = _wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(abs(u_input.a), arg_0.wyy), ~u_input.a.x), ~_wgslsmith_dot_vec4_u32(arg_0, select(vec4<u32>(39016u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, arg_0.x, u_input.a.x, 49822u), vec4<bool>(true, true, true, true))) >> (~reverseBits(_wgslsmith_mod_u32(u_input.a.x, 1u)) % 32u));
    var_0 = Struct_4(global0.b.x, var_0.b, ~(~(~var_0.c)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1564f, arg_1.x)))));
    var_0 = Struct_4(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.c, -3164i), var_0.b)), ~u_input.d.x)), abs(-_wgslsmith_add_vec2_i32(var_0.b, ~var_0.b)), firstTrailingBit(u_input.c << (reverseBits(~29812u) % 32u)), global0.d);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1374f)), var_0.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-1082f + -434f), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))));
    return 0u | _wgslsmith_div_u32(abs(u_input.a.x), min(~0u, arg_0.x) ^ _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.x, arg_0.x), ~0u));
}

fn func_2() -> vec2<bool> {
    global1 = ~func_4(vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_2(vec2<f32>(global0.d.a.x, -435f)), Struct_4(global0.a, vec2<i32>(-41726i, 21369i), global0.b.x, global0.d)), ~u_input.a.xz), ~u_input.a.x, 41665u, min(u_input.a.x & 1u, 1u ^ u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.d.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f * -252f)), -539f));
    global1 = _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(70231u, firstLeadingBit(func_4(select(vec4<u32>(1u, 24650u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 68599u, u_input.a.x, u_input.a.x), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.a.x, global0.d.a.x, global0.d.a.x) - vec3<f32>(1000f, 1000f, global0.d.a.x)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), 105334u)));
    var var_0 = vec4<i32>(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 34377i), _wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(u_input.c, global0.b.x))), -1i), _wgslsmith_clamp_i32(-11325i, firstLeadingBit(1i), ~u_input.b.x) | (abs(-16446i) | ~u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.d.a.x)))) > _wgslsmith_f_op_f32(trunc(global0.d.a.x))), reverseBits(i32(-1i) * -8555i), _wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, global0.a), vec2<i32>(global0.c, u_input.c))), countOneBits(-global0.c)) & ~9186i, ~(~reverseBits(u_input.c)));
    var var_1 = min(-global0.b, -(vec2<i32>(-global0.c, 45927i) << (~u_input.a.zz % vec2<u32>(32u))));
    var_0 = select(vec4<i32>(abs(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(2147483647i, u_input.c))), var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(var_0.x, -1i, var_1.x, var_0.x)), ~(~vec4<i32>(15907i, -18112i, var_1.x, -6654i))), _wgslsmith_mod_i32(u_input.b.x, -(~var_1.x))), vec4<i32>(reverseBits(0i), 0i, -1i, 11148i), select(vec4<bool>(_wgslsmith_f_op_f32(min(-960f, -430f)) != _wgslsmith_f_op_f32(global0.d.a.x + -430f), false, any(vec3<bool>(false, true, false)), true), vec4<bool>(all(vec3<bool>(true, false, true)) != true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), true, any(vec3<bool>(true, true, true))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    return vec2<bool>(false, all(!vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = select(!select(func_2(), !select(vec2<bool>(arg_1, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), any(vec4<bool>(true, true, arg_1, false)))), vec2<bool>(arg_1, any(select(vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1), all(vec3<bool>(false, arg_1, true))))), vec2<bool>(func_2().x, true));
    var_0 = vec2<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(arg_1, var_0.x, arg_1)), arg_1)) || var_0.x, false);
    global0 = Struct_4(u_input.d.x, -(~global0.b), u_input.d.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.a.x, global0.d.a.x)) - _wgslsmith_f_op_vec2_f32(global0.d.a * global0.d.a)))));
    let var_1 = ~u_input.a.yy;
    let var_2 = u_input.a.yx;
    return Struct_1(arg_2, reverseBits(u_input.d.xx), !vec4<bool>(!(!arg_1), true, var_0.x, var_0.x), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-614f, global0.d.a.x, global0.d.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-551f, 1771f, global0.d.a.x)))), vec3<bool>(true, func_2().x, var_0.x)))));
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    global1 = _wgslsmith_mult_u32(reverseBits(firstLeadingBit(abs(13474u))), ~(~(~(4294967295u & u_input.a.x))));
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(global0.d.a));
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.b, min(-vec3<i32>(1i, -30228i, 2147483647i), vec3<i32>(2147483647i, -1i >> (arg_0.a.x % 32u), arg_0.b.x) & (abs(u_input.b) ^ ~u_input.d.wwy)));
    var var_2 = Struct_3(select(vec2<bool>(false, arg_0.d), vec2<bool>(func_2().x, true | all(vec2<bool>(true, arg_0.d))), !(!arg_0.c.x)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.a.x, arg_0.e.x) + vec2<f32>(-1148f, 461f)), arg_0.e.zz)), arg_0.c.wzz);
    return Struct_4(firstLeadingBit(7572i), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1.x, 24349i), var_1)) << ((_wgslsmith_mult_u32(0u, u_input.a.x) >> (max(u_input.a.x, arg_0.a.x) % 32u)) % 32u), _wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(6061i, 21294i)))), var_1.x, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.x, -1872f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(global0.d.a, global0.d.a)))))));
}

fn func_6(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, true, true);
    global1 = ~(~_wgslsmith_add_u32(9582u, 0u));
    var var_1 = vec3<i32>(global0.b.x, global0.b.x, _wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(u_input.c, -2147483647i) & -arg_0.c), u_input.c));
    var_1 = ~u_input.d.www;
    global1 = ~select(func_4(~vec4<u32>(u_input.a.x, 11792u, arg_1, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, arg_0.d.a.x, -2057f))), ~_wgslsmith_add_u32(51826u, 35319u), false) >> (_wgslsmith_div_u32(func_1(-_wgslsmith_mod_i32(arg_0.b.x, -1i), false, abs(vec4<u32>(arg_1, 35873u, arg_1, 76976u))).a.x, ~(~(~1757u))) % 32u);
    return Struct_2(global0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(2147483647i, u_input.a.x <= abs(54779u), ~(vec4<u32>(3332u, u_input.a.x, u_input.a.x, 780u) ^ vec4<u32>(u_input.a.x, 0u, u_input.a.x, 91023u)))), ~(~58355u));
    var_0 = func_6(Struct_4(_wgslsmith_add_i32(41307i, u_input.c), vec2<i32>(2147483647i, 1i), global0.c, Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))))), ~(~u_input.a.x));
    var_0 = global0.d;
    var var_1 = global0.b.x;
    var var_2 = Struct_3(!vec2<bool>(any(vec2<bool>(true, true)) | true, false), func_6(func_5(Struct_1(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u) ^ vec4<u32>(1u, u_input.a.x, 12148u, 0u), func_1(-26122i, true, vec4<u32>(u_input.a.x, 31566u, 1u, u_input.a.x)).b, vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)), vec3<f32>(var_0.a.x, 523f, global0.d.a.x))), func_1(~(global0.c << (4294967295u % 32u)), true, vec4<u32>(~124131u, abs(u_input.a.x), ~0u, ~4294967295u)).a.x), vec3<bool>(!(true & (global0.d.a.x > -1386f)), func_1(_wgslsmith_add_i32(-u_input.d.x, -2147483647i), 1632f <= _wgslsmith_f_op_f32(1253f + var_0.a.x), ~(~vec4<u32>(10194u, 1u, u_input.a.x, 1u))).c.x, ~(~u_input.a.x) >= abs(u_input.a.x)));
    var var_3 = func_6(Struct_4(~(-2147483647i), vec2<i32>(35478i, ~30922i), global0.b.x & (i32(-1i) * -2147483647i), func_5(Struct_1(vec4<u32>(120542u, 47393u, 8541u, 4294967295u) ^ vec4<u32>(56546u, u_input.a.x, 13809u, u_input.a.x), -u_input.d.xz, vec4<bool>(true, var_2.c.x, false, true), 1u != u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_2.b.a.x, 191f) * vec3<f32>(var_2.b.a.x, 388f, 112f)))).d), ~0u);
    var_3 = global0.d;
    let var_4 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1170f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.a.x, 1370f, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_2.b.a.x, var_3.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1461f, var_2.b.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1555f, 1332f, var_0.a.x))) + vec3<f32>(-1000f, 1097f, global0.d.a.x)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, var_2.b.a.x, 469f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.a.x, 1718f, var_3.a.x))))))), 339f);
}

