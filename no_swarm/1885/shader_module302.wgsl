struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-64350i, true, 52126u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> vec2<bool> {
    let var_0 = Struct_3(!(!(!(!vec2<bool>(arg_2, false)))), vec4<bool>(!(global0.a != global0.a), arg_2, all(vec4<bool>(true, arg_2, true, true)) & true, any(select(select(vec2<bool>(global0.b, arg_2), vec2<bool>(false, arg_2), vec2<bool>(arg_2, true)), select(vec2<bool>(false, true), vec2<bool>(arg_2, false), vec2<bool>(false, global0.b)), true))));
    return select(vec2<bool>(all(select(var_0.b.ww, var_0.b.ww, var_0.a)), arg_2), var_0.b.wx, all(!(!var_0.b.zwy)) || var_0.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> u32 {
    var var_0 = 1u;
    var_0 = 0u;
    let var_1 = arg_1.yz;
    let var_2 = Struct_3(!arg_0.b.zw, vec4<bool>(false, arg_0.b.x, _wgslsmith_sub_i32(-23109i, u_input.d.x) < ~(-3084i), select(any(arg_0.b), func_3(arg_1, u_input.c.zz, true, -2147483647i).x, true) & arg_0.a.x));
    var var_3 = false;
    return (0u << (_wgslsmith_add_u32(firstLeadingBit(firstLeadingBit(global0.c)), ~4294967295u) % 32u)) & ~(~max(4294967295u, max(25647u, global0.c)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(u_input.c.x, -32881i), 34337i) >> (~(~1u) % 32u), ~abs(u_input.d.x) & -12175i), true, _wgslsmith_mod_u32(func_4(Struct_3(func_3(vec4<f32>(1401f, -2336f, 941f, 346f), vec2<i32>(33360i, 28016i), global0.b, global0.a), vec4<bool>(global0.b, global0.b, true, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, -677f, -1000f, -1033f))), ~u_input.a.x));
    var var_0 = -628f;
    var var_1 = vec4<bool>(!(true && arg_0.x), !(_wgslsmith_dot_vec4_u32(vec4<u32>(65562u, 22363u, 1u, 10627u) >> (vec4<u32>(58365u, 1u, global0.c, 6435u) % vec4<u32>(32u)), vec4<u32>(arg_2, arg_2, 1u, u_input.a.x) & vec4<u32>(global0.c, arg_2, 7451u, 50343u)) != arg_2), select(!select(any(vec3<bool>(false, global0.b, arg_1.b.x)), arg_1.b.x, true), true, global0.b), !any(select(arg_1.b.wxx, !arg_1.b.wxz, !global0.b)));
    var_1 = !select(select(arg_1.b, arg_1.b, all(!vec4<bool>(false, true, global0.b, true))), !arg_1.b, select(!select(vec4<bool>(arg_1.b.x, false, true, false), arg_1.b, arg_1.b), vec4<bool>(var_1.x, any(arg_0), true, arg_1.b.x & arg_0.x), select(arg_1.b, vec4<bool>(var_1.x, true, false, false), arg_1.b)));
    var_1 = arg_1.b;
    return Struct_1(firstTrailingBit(global0.a) ^ ~(-54938i), func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, 852f, 564f, 1192f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, 882f, 437f, -1305f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(606f, 1395f, -142f, 1278f))), arg_1.b)))), abs(vec2<i32>(-global0.a, -23731i)), false, -min(abs(global0.a), 19316i)).x, ~global0.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2050f * arg_3.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1214f, arg_1.x) - arg_3.b)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f + 280f)), -475f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b))), _wgslsmith_f_op_f32(1264f - arg_1.x)))));
    let var_1 = arg_3.d;
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)));
    var var_2 = vec3<i32>(-reverseBits(0i), -arg_0.a, abs(9289i));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 285f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(667f - -1480f), _wgslsmith_f_op_f32(-arg_1.x)), 613f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_1.x, -1162f, 588f), vec4<f32>(-2057f, arg_1.x, var_0.x, -1378f), arg_0.a >= -25579i))))))));
    return Struct_1(2147483647i, arg_3.a.x, ~(_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_div_vec3_u32(vec3<u32>(34140u, arg_2.x, 1u), arg_2)) ^ 4294967295u));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    global0 = func_2(vec2<bool>(false, _wgslsmith_f_op_f32(min(arg_0.x, arg_3.x)) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(921f, arg_0.x) + -501f)), Struct_3(vec2<bool>(arg_2.b, func_3(vec4<f32>(arg_0.x, 977f, -272f, arg_3.x), _wgslsmith_div_vec2_i32(vec2<i32>(-13230i, arg_2.a), vec2<i32>(-53373i, global0.a)), arg_2.a != -4745i, global0.a & 43150i).x), vec4<bool>(func_2(func_3(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_3.x), u_input.d, arg_2.b, u_input.d.x), Struct_3(vec2<bool>(true, false), vec4<bool>(global0.b, false, arg_2.b, true)), func_4(Struct_3(vec2<bool>(false, arg_2.b), vec4<bool>(true, false, true, arg_2.b)), vec4<f32>(1752f, -545f, arg_0.x, -169f))).b, false, all(!vec2<bool>(global0.b, true)), !func_2(vec2<bool>(global0.b, arg_2.b), Struct_3(vec2<bool>(arg_2.b, false), vec4<bool>(arg_2.b, false, true, true)), arg_1.x).b)), arg_2.c);
    var var_0 = Struct_2(!select(vec2<bool>(any(vec3<bool>(global0.b, global0.b, arg_2.b)), arg_2.b || false), vec2<bool>(arg_2.b, !global0.b), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-142f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -448f))) + _wgslsmith_f_op_f32(max(-265f, -1535f)))), 16881u, _wgslsmith_mult_i32(0i, -global0.a));
    global0 = arg_2;
    var var_1 = false;
    let var_2 = vec2<bool>(all(select(vec3<bool>(all(vec3<bool>(true, true, arg_2.b)), arg_2.a != 1i, arg_2.a <= 1i), select(!vec3<bool>(false, false, global0.b), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), select(vec3<bool>(global0.b, global0.b, arg_2.b), vec3<bool>(false, false, global0.b), vec3<bool>(var_0.a.x, arg_2.b, true))), !vec3<bool>(global0.b, global0.b, var_0.a.x))), !any(select(!vec3<bool>(false, arg_2.b, arg_2.b), select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(arg_2.b, true, true), vec3<bool>(true, arg_2.b, var_0.a.x)), vec3<bool>(true, var_0.a.x, false))));
    return Struct_3(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 + arg_3) + _wgslsmith_f_op_vec4_f32(-arg_3))), _wgslsmith_mult_vec2_i32(u_input.c.yx, vec2<i32>(global0.a, ~u_input.c.x)), true, -8532i), !(!select(!vec4<bool>(var_0.a.x, var_0.a.x, false, arg_2.b), vec4<bool>(var_0.a.x, true, var_2.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, global0.b, global0.b))));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    global0 = func_5(func_2(!(!(!arg_1.b.wy)), Struct_3(select(vec2<bool>(false, false), select(vec2<bool>(false, arg_0), vec2<bool>(false, true), vec2<bool>(false, arg_0)), !global0.b), !arg_1.b), 97546u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 1227f))) - vec2<f32>(1f, 1f)))), vec3<u32>(~(arg_2.x >> (4294967295u % 32u)) >> (u_input.a.x % 32u), func_4(Struct_3(select(arg_1.a, arg_1.b.xw, arg_1.a), select(vec4<bool>(arg_0, false, false, false), vec4<bool>(global0.b, global0.b, arg_0, arg_1.a.x), arg_0)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-166f, -158f, 1133f, -2018f), vec4<f32>(-466f, -408f, -1320f, -936f))))), global0.c), Struct_2(vec2<bool>(func_2(vec2<bool>(true, global0.b), arg_1, func_4(arg_1, vec4<f32>(215f, 552f, 173f, -1534f))).b, !(!arg_1.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1024f - _wgslsmith_f_op_f32(step(1000f, -401f))))), ~4294967295u, 3296i));
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(128f, _wgslsmith_f_op_f32(-511f * -115f))))), -577f));
    let var_2 = Struct_3(!vec2<bool>(arg_1.a.x, arg_0), vec4<bool>(_wgslsmith_sub_i32(2147483647i ^ arg_3, ~(-2147483647i)) >= u_input.d.x, (~u_input.a.x <= ~global0.c) | global0.b, !global0.b | false, true));
    global0 = Struct_1(arg_3, true, u_input.a.x);
    return select(select(arg_1.b.yww, arg_1.b.zyz, !(!(!arg_1.b.wyy))), !func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, -183f))), vec3<u32>(3330u, 1u, 40494u), Struct_1(global0.a << (4294967295u % 32u), global0.c > arg_2.x, func_4(arg_1, vec4<f32>(-105f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(226f, var_1.x, 599f, 354f)))).b.ywy, false);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = u_input.a;
    global0 = Struct_1(firstTrailingBit(global0.a), select(arg_1, arg_1, global0.b), var_0.x);
    var var_1 = all(func_7(true, func_6(vec2<f32>(1148f, 1092f), _wgslsmith_add_vec3_u32(vec3<u32>(40196u, u_input.a.x, 12079u), vec3<u32>(var_0.x, 4290u, 4294967295u)), func_5(func_2(vec2<bool>(arg_1, false), Struct_3(vec2<bool>(global0.b, true), vec4<bool>(global0.b, global0.b, true, true)), u_input.a.x), vec2<f32>(962f, -669f), abs(vec3<u32>(42856u, global0.c, 4294967295u)), Struct_2(vec2<bool>(true, false), -1193f, u_input.a.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(182f, 573f, -494f, -1013f), vec4<f32>(-407f, 1951f, -1651f, -1466f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1548f, -2026f, -902f, -453f))))), vec3<u32>(0u, var_0.x, func_5(func_2(vec2<bool>(global0.b, true), Struct_3(vec2<bool>(global0.b, arg_2), vec4<bool>(true, arg_1, arg_1, false)), u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, -966f)), select(vec3<u32>(4294967295u, global0.c, 1u), vec3<u32>(global0.c, global0.c, u_input.a.x), vec3<bool>(arg_2, false, false)), Struct_2(vec2<bool>(arg_1, true), 163f, u_input.a.x, 0i)).c), 2369i));
    var var_2 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1636f, 806f) + vec2<f32>(-149f, 1026f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, 227f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2661f, -1024f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(f32(-1f) * -579f)), func_6(vec2<f32>(254f, -403f), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(global0.c, u_input.a.x, u_input.a.x), vec3<u32>(88969u, u_input.a.x, global0.c)), func_5(Struct_1(0i, false, 4294967295u), vec2<f32>(-603f, -724f), vec3<u32>(u_input.a.x, u_input.a.x, 28477u), Struct_2(vec2<bool>(arg_2, arg_2), -2721f, 5105u, -11860i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1335f, 1000f, -210f, 335f)))).a))), vec3<u32>(min(14308u, 1u), 1u, 32057u), Struct_1(u_input.b, true, global0.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f + 419f) * _wgslsmith_f_op_f32(select(1811f, -909f, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(613f - 1809f) + _wgslsmith_f_op_f32(f32(-1f) * -1101f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) + 514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1002f - -725f))) + 646f)));
    let var_3 = _wgslsmith_div_u32(~(~4294967295u), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, var_0.x, global0.c), vec3<u32>(23421u, global0.c, global0.c) ^ vec3<u32>(u_input.a.x, var_0.x, 1u))));
    return ~var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(-63869i, any(select(vec3<bool>(global0.b, true, true), vec3<bool>(false, global0.b, global0.b), vec3<bool>(false, global0.b, true))), any(select(vec4<bool>(global0.b, true, false, true), vec4<bool>(true, global0.b, false, true), vec4<bool>(global0.b, true, true, global0.b)))));
    var_0 = 36589u;
    var var_1 = _wgslsmith_div_i32(global0.a, _wgslsmith_dot_vec4_i32(u_input.c, select(abs(u_input.c), u_input.c, select(!vec4<bool>(global0.b, global0.b, false, false), select(vec4<bool>(true, true, false, global0.b), vec4<bool>(false, true, global0.b, global0.b), global0.b), !vec4<bool>(global0.b, global0.b, global0.b, global0.b)))));
    var var_2 = func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-936f)) * _wgslsmith_f_op_f32(-478f - 799f))), _wgslsmith_f_op_f32(f32(-1f) * -1044f)), _wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, ~70558u, _wgslsmith_div_u32(1u, 113777u)) >> (~select(vec3<u32>(u_input.a.x, 40139u, 4294967295u), vec3<u32>(global0.c, 76969u, u_input.a.x), global0.b) % vec3<u32>(32u)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(67257u, 0u, 1u) & vec3<u32>(84470u, u_input.a.x, u_input.a.x), min(vec3<u32>(0u, 4294967295u, 63823u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), vec3<u32>(countOneBits(1u), u_input.a.x << (0u % 32u), global0.c), func_6(vec2<f32>(589f, 1023f), countOneBits(vec3<u32>(37457u, global0.c, 1u)), func_5(Struct_1(-34684i, false, u_input.a.x), vec2<f32>(-698f, 294f), vec3<u32>(u_input.a.x, 15429u, 0u), Struct_2(vec2<bool>(true, global0.b), 539f, global0.c, 1i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1199f, -704f, 598f, 2022f)))).b.xww)), Struct_1(i32(-1i) * -23145i, any(select(vec4<bool>(true, true, global0.b, global0.b), vec4<bool>(global0.b, global0.b, global0.b, false), vec4<bool>(global0.b, true, global0.b, global0.b))), ~136092u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), -931f, -1184f, _wgslsmith_f_op_f32(-305f + 1137f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 583f, -312f, 889f), vec4<f32>(-164f, 1000f, 147f, -1000f))) * vec4<f32>(-1110f, -720f, 327f, 1067f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_u32(abs(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, global0.c, global0.c, global0.c), var_2.a.x)), vec4<u32>(1u, 1u, 4294967295u, 1u) >> (vec4<u32>(global0.c, 4294967295u, u_input.a.x, 0u) % vec4<u32>(32u))) & firstTrailingBit(~(~vec4<u32>(5468u, 48261u, 0u, global0.c))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c | global0.c, _wgslsmith_sub_u32(23152u, 1u), u_input.a.x & 21765u), vec3<u32>(~61907u, 9883u, 4294967295u << (u_input.a.x % 32u))), 1280f);
}

