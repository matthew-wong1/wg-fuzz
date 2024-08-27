struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-858f, -339f), vec4<u32>(8229u, 17413u, 4294967295u, 1252u), Struct_1(-10269i, vec4<f32>(412f, -810f, -246f, 476f), 18582i, vec4<u32>(1u, 87796u, 0u, 36198u)), vec2<f32>(542f, 815f));

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32 = -1943f;

var<private> global3: array<Struct_1, 16>;

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = all(!(!(!(!vec2<bool>(arg_0, arg_0)))));
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(select(global4.c.d.wwx, global4.c.d.wyx, vec3<bool>(var_0, var_0, var_0)), ~vec3<u32>(41780u, u_input.b.x, global4.c.d.x)) >> (_wgslsmith_div_u32(1u, global0.b.x) % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(firstTrailingBit(u_input.c), _wgslsmith_mod_u32(4294967295u, 34015u)), global0.b.x)), vec2<u32>(~max(reverseBits(global4.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(5356u, 78076u, 76288u, 0u), vec4<u32>(global0.b.x, 28658u, 26530u, 1u))), ~(~1u) & _wgslsmith_div_u32(4294967295u, u_input.b.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global4.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)))), _wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-629f)) + _wgslsmith_div_f32(global0.d.x, -458f))) * -1824f));
    var var_3 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a), abs(-51846i), ~global4.c.c);
    let var_4 = Struct_1(1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(global4.a.x + var_2.x)))), 661f, _wgslsmith_f_op_f32(-global4.d.x)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.c.a, 1i, global0.c.a, global0.c.a)), vec4<i32>(u_input.a, _wgslsmith_add_i32(var_3.x & 1i, -var_3.x), -(~52332i), -29109i)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u >> (~var_1.x % 32u), 15901u | ~var_1.x, 39145u, var_1.x), global4.c.d));
    return vec4<u32>(~u_input.c, abs(~0u), _wgslsmith_clamp_u32(u_input.b.x, ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_4.d.x, var_4.d.x)), _wgslsmith_mod_u32(global4.b.x, u_input.c)), global0.b.x), ~abs(0u));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    global2 = _wgslsmith_div_f32(-136f, _wgslsmith_f_op_f32(f32(-1f) * -331f));
    var var_0 = global0.c.b;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(810f, global4.d.x), vec2<f32>(-1000f, arg_1.x))), vec2<f32>(449f, -1317f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(-1000f, 1087f)), var_0.zx)))), ~(vec4<u32>(~4294967295u, 4294967295u, reverseBits(16733u), 4294967295u) >> (~global4.b % vec4<u32>(32u))), Struct_1(~0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(-global4.a.x), -1916f, _wgslsmith_f_op_f32(ceil(-533f))) * _wgslsmith_f_op_vec4_f32(global0.c.b * vec4<f32>(arg_1.x, arg_0, -714f, global4.d.x))), ~global0.c.c, _wgslsmith_sub_vec4_u32(select(vec4<u32>(974u, u_input.c, 67300u, global0.b.x), func_3(true), vec4<bool>(true, false, false, true)), ~vec4<u32>(1u, global0.c.d.x, 1321u, u_input.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_1.ww)))));
    var_0 = vec4<f32>(arg_1.x, _wgslsmith_div_f32(-650f, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -1000f)) - global0.c.b.x) - var_0.x)), _wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(global0.d.x + -1000f)));
    var var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(global4.c.d.x, _wgslsmith_sub_u32(15530u ^ global4.b.x, global0.c.d.x)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global0.b.wy, vec2<u32>(global0.c.d.x, 25749u)), vec2<u32>(12258u, 21264u) >> (u_input.b % vec2<u32>(32u))) | global4.b.yz);
    return 2738f;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = ~(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, -1i, -1i, global4.c.a) ^ vec4<i32>(global4.c.c, u_input.a, u_input.a, arg_3), ~vec4<i32>(global4.c.a, 2147483647i, 22323i, -1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -5482i, global4.c.a, -19741i), vec4<i32>(global0.c.c, -2147483647i, 3436i, 2147483647i)), true));
    global0 = Struct_3(vec2<f32>(2014f, 799f), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(75504u, 24388u, 1u, arg_1), global4.b) | reverseBits(global4.c.d), global4.c.d), Struct_1(max(_wgslsmith_mod_i32(-9981i, global0.c.a), arg_3) << (~u_input.c % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.c.b + global0.c.b), vec4<f32>(_wgslsmith_f_op_f32(1000f + -1081f), 556f, _wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(-global0.d.x))), global0.c.c, ~(global4.c.d >> (select(vec4<u32>(24765u, 57848u, 0u, global0.b.x), global0.c.d, vec4<bool>(arg_2, false, arg_2, arg_2)) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1162f + 374f), 299f))), -1022f));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(6423i, reverseBits(u_input.a), _wgslsmith_mod_i32(u_input.a ^ _wgslsmith_clamp_i32(u_input.a, global4.c.c, var_0.x), var_0.x)), vec3<i32>((2147483647i ^ var_0.x) ^ ~(-34567i), global4.c.a, _wgslsmith_dot_vec2_i32(abs(var_0.wy), var_0.zw)) >> ((global0.b.wyy | ~vec3<u32>(7577u, 4294967295u, global4.b.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(global0.c.d.wzy, ~vec3<u32>(u_input.b.x, u_input.c, arg_1), global4.b.xwz)) & (vec3<u32>(82507u, global4.b.x, ~global4.c.d.x) | vec3<u32>(u_input.c | 7277u, firstLeadingBit(1u), u_input.b.x & 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(abs(arg_1), global4.c.d.x & 32288u) ^ _wgslsmith_dot_vec4_u32(global0.c.d << (vec4<u32>(global4.b.x, global0.c.d.x, arg_1, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(59143u, global0.c.d.x, 0u, 0u), vec4<u32>(arg_1, 1u, global0.c.d.x, u_input.c))), 4294967295u, 17334u));
    let var_3 = var_0.yx;
    return Struct_2(Struct_1(_wgslsmith_mult_i32(-abs(global4.c.a), _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.c.c, -77111i), -2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global4.c.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(global4.c.b, global0.c.b))))), _wgslsmith_mult_i32(firstTrailingBit(-11383i), 13221i), vec4<u32>(0u, firstTrailingBit(0u) | ~6019u, min(arg_1, u_input.b.x) << (arg_1 % 32u), global0.c.d.x)), _wgslsmith_clamp_u32(0u, u_input.c, 4294967295u), global0.c, arg_0.x);
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.d.x, _wgslsmith_f_op_f32(func_2(global4.c.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, arg_1.a.x, arg_1.a.x, global4.a.x)))), true || all(vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f * global4.a.x)))), -1963f), _wgslsmith_dot_vec4_u32(arg_1.c.d, firstTrailingBit(vec4<u32>(1u, 49331u, ~global4.c.d.x, select(4294967295u, 4787u, false)))), true, -12917i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(321f, _wgslsmith_f_op_f32(f32(-1f) * -1041f)))) + global4.c.b.x);
    global2 = global4.a.x;
    return _wgslsmith_f_op_vec2_f32(step(global0.c.b.ww, arg_1.c.b.xz));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.c.b, global4.c.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global4.a.x, global4.d.x, 198f)))))));
    var var_0 = func_4(global0.c.b.yzy, ~arg_0.b.x, (global0.c.d.x <= global4.c.d.x) & !(abs(-15748i) != arg_0.c.a), reverseBits(-25279i >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(71389u, 12122u, 85527u), vec3<u32>(4294967295u, global0.b.x, global0.c.d.x)) % 32u)));
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(~global0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, -2059f, global0.a.x, 968f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.b)))), func_4(global4.c.b.xzy, min(~global0.c.d.x, arg_0.c.d.x), arg_2, -80449i | global4.c.a).a.a, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.c.d.wxz >> (vec3<u32>(var_1, 35545u, var_0.b) % vec3<u32>(32u)), vec3<u32>(var_1, arg_0.b.x, 73629u)), 8621u, 48942u), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.b.x, arg_0.d.x, arg_3)), global0.c.b.xwz)), global0.c.d.x, any(vec4<bool>(arg_1, arg_1, true, false)) && !arg_1, var_0.a.a).a.d.x, ~(~(~global4.b.x)), 4294967295u));
    var var_3 = abs(vec2<u32>(_wgslsmith_sub_u32(global4.c.d.x << (global4.c.d.x % 32u), firstLeadingBit(var_0.b)) >> (_wgslsmith_mod_u32(var_1, _wgslsmith_mult_u32(var_1, 21068u)) % 32u), u_input.b.x));
    return Struct_2(Struct_1(-3033i, var_2.b, arg_0.c.c, arg_0.c.d), arg_0.c.d.x, global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.a.x - -976f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 16>();
    let var_0 = global0.c;
    var var_1 = ~(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(76829i, global0.c.a, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.c.c, var_0.a, global4.c.a), vec3<i32>(0i, var_0.a, var_0.a), vec3<i32>(global4.c.a, -41931i, var_0.a)))) ^ var_0.a);
    let var_2 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(floor(-502f)), Struct_3(vec2<f32>(var_0.b.x, global0.a.x), vec4<u32>(21591u, global4.b.x, 0u, u_input.c), global0.c, vec2<f32>(global4.c.b.x, global0.c.b.x))))), ~(~global4.b), global0.c, global4.a), any(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c.b.x, var_0.b.x, var_0.b.x <= 1522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(653f)))), -553f, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true)) & true)));
    let var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_3(var_0.b.yy, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, 2363u, 26345u, global4.c.d.x), var_0.d), ~var_0.d), func_5(Struct_3(vec2<f32>(1000f, 385f), global0.c.d, Struct_1(0i, vec4<f32>(var_0.b.x, var_3.b.x, -409f, var_2.c.b.x), global0.c.a, global0.c.d), var_2.a.b.yy), var_2.a.d.x <= u_input.c, true, _wgslsmith_f_op_f32(func_2(var_2.d, var_2.c.b))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.b.x, 1339f))) + _wgslsmith_f_op_vec2_f32(global0.a - global0.a))), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false)), true, var_2.c.b.x).c.d.x, _wgslsmith_div_i32(i32(-1i) * -49137i, 1i), var_3.b.wy);
}

