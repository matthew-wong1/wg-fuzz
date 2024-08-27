struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = vec3<bool>(!arg_1, all(select(!(!vec4<bool>(arg_1, true, arg_1, false)), select(select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(false, false, false, arg_1), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1))), select(vec4<bool>(arg_1, arg_1, false, false), !vec4<bool>(false, arg_1, true, arg_1), all(vec3<bool>(true, arg_1, arg_1))))), (arg_1 | select(all(vec3<bool>(false, false, arg_1)), u_input.d < arg_2, arg_1)) && arg_1);
    var_0 = vec3<bool>(any(vec2<bool>(var_0.x, arg_1)) && var_0.x, arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-536f, -190f))) * -961f), -2147483647i > u_input.e);
    var var_1 = countOneBits(~u_input.d);
    let var_2 = vec3<i32>(~min(u_input.a, u_input.a), ~(-1i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, select(-42286i, u_input.e, false)) << (arg_2 % 32u), countOneBits(-2147483647i)));
    var_1 = 4294967295u;
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_u32(countOneBits(arg_0), 1u);
    let var_1 = arg_2;
    var_0 = u_input.d;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.b.e.x, arg_2.b.e.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1115f, 406f)))), 0i, select(vec3<bool>(all(!arg_3), select(!arg_3.x, !arg_3.x, !arg_3.x), arg_1.x), vec3<bool>(false, arg_3.x, any(arg_1.xyx)), !(!vec3<bool>(arg_1.x, true, false))), arg_2.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b.e.x))), _wgslsmith_f_op_f32(func_3(-405f, all(arg_1) & false, firstLeadingBit(4294967295u)))));
    var_0 = max(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.d.d.ww, ~vec2<u32>(0u, arg_2.a.x)), _wgslsmith_sub_u32(abs(var_2.d.d.x), _wgslsmith_add_u32(min(var_2.d.d.x, 4294967295u), firstTrailingBit(var_2.d.d.x)))), ~min(1u, _wgslsmith_add_u32(113218u, 0u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e.x - var_1.b.c));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(691f, _wgslsmith_f_op_f32(func_2(max(u_input.d, 1u), vec4<bool>(false, false, true, false), Struct_2(vec4<u32>(51721u, 4294967295u, u_input.d, u_input.d), Struct_1(1i, u_input.b.x, -458f, vec4<u32>(92920u, u_input.d, u_input.d, 0u), vec4<f32>(819f, 675f, -1691f, -1436f)), 1000f, vec4<u32>(63678u, 4294967295u, arg_0, 14506u)), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1922f) - _wgslsmith_f_op_f32(sign(-1533f))));
    var var_1 = 0i;
    var_1 = _wgslsmith_add_i32(2147483647i ^ _wgslsmith_add_i32(30696i, abs(countOneBits(u_input.c))), u_input.b.x);
    var_1 = countOneBits(43465i);
    var_1 = u_input.e;
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 957f) - vec2<f32>(1423f, -690f)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-806f, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(1622f, 1775f)))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b, -vec2<i32>(u_input.a, 1i)), u_input.c) ^ _wgslsmith_sub_i32(-22821i, ~u_input.a), vec3<bool>(true, select(true, !all(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_f32(step(var_0, var_0)) <= _wgslsmith_f_op_f32(floor(157f))), true), Struct_1(~(~u_input.c), countOneBits(u_input.b.x | (u_input.a >> (4294967295u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-902f, var_0) * _wgslsmith_f_op_f32(select(-290f, var_0, false)))), ~abs(vec4<u32>(0u, 1u, arg_0, 915u)) & vec4<u32>(73390u, firstLeadingBit(u_input.d), 1u << (arg_0 % 32u), u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, -579f, _wgslsmith_f_op_f32(var_0 - 1000f), _wgslsmith_div_f32(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: Struct_5) -> u32 {
    let var_0 = arg_0.a.c;
    var var_1 = firstTrailingBit(1724i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b.e.x, 1180f))), _wgslsmith_f_op_f32(-arg_3.b.e.x))));
    var var_3 = arg_0.a;
    let var_4 = ~vec3<i32>(arg_0.a.b | select(_wgslsmith_mod_i32(-1i, -1i), firstLeadingBit(2147483647i), !arg_0.d.c.x), firstTrailingBit(1i), countOneBits(arg_1.b.a));
    return _wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(~arg_1.a << (var_3.d.d % vec4<u32>(32u)), reverseBits(vec4<u32>(4294967295u, arg_1.a.x, 4294967295u, arg_1.b.d.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b.d.x, 13312u, 4294967295u, arg_1.d.x) & arg_1.d, ~arg_1.a), arg_0.a.d.d, var_3.d.d)), ~(~vec4<u32>(arg_0.a.d.d.x, 56154u, 0u, 61108u) & select(arg_0.d.d.d, arg_3.b.d, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.d, 0u), vec2<u32>(40520u, 8432u)), ~vec2<u32>(29858u, u_input.d)), 1u << (~4294967295u % 32u)), ~_wgslsmith_add_u32(1u, u_input.d ^ 0u), select(u_input.d, ~u_input.d, !any(vec3<bool>(true, false, true)))), _wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, 4434u, u_input.d) ^ vec3<u32>(u_input.d, 46976u, 1u), countOneBits(vec3<u32>(23050u, 37984u, 1u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u), ~vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(25994u, 0u, 1u) | vec3<u32>(4294967295u, u_input.d, 30767u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(abs(vec3<u32>(53760u, u_input.d, 112351u))), vec3<u32>(0u, 46937u, min(1u, 1u)))));
    var var_1 = Struct_5(_wgslsmith_mult_u32(54757u, reverseBits(110791u << (var_0.x % 32u))) <= func_4(Struct_4(func_1(var_0.x), min(vec3<u32>(u_input.d, 15297u, var_0.x), var_0), var_0.x, Struct_3(vec2<f32>(-457f, 392f), u_input.b.x, vec3<bool>(true, true, true), Struct_1(u_input.a, 35046i, 1046f, vec4<u32>(0u, 88136u, var_0.x, 55215u), vec4<f32>(1454f, -236f, -529f, 976f)), vec2<f32>(-354f, -130f))), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(5113u, var_0.x, var_0.x, u_input.d), vec4<u32>(var_0.x, u_input.d, u_input.d, 31622u)), func_1(6256u).d, -401f, max(vec4<u32>(62492u, u_input.d, var_0.x, 4294967295u), vec4<u32>(u_input.d, var_0.x, var_0.x, u_input.d))), !all(vec4<bool>(false, false, true, false)), Struct_5(false, Struct_1(u_input.a, 31148i, 152f, vec4<u32>(var_0.x, 65594u, u_input.d, u_input.d), vec4<f32>(-646f, 372f, -685f, -285f)))), Struct_1(func_1(5844u).b, u_input.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f + 183f)), -1049f)), vec4<u32>(~4294967295u, var_0.x, 170u, var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-226f * _wgslsmith_div_f32(-1549f, -1319f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_f_op_f32(floor(-421f)))), 893f, _wgslsmith_f_op_f32(f32(-1f) * -1470f))));
    let var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(~(~max(vec4<u32>(0u, var_1.b.d.x, var_1.b.d.x, u_input.d), var_1.b.d)), vec4<u32>(var_0.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(40723u, var_0.x, 113302u), var_1.b.d.zzy)), var_1.b.d.x, var_0.x), var_1.b.d), Struct_1(_wgslsmith_mult_i32(0i, abs(-var_1.b.b)), u_input.a, -898f, var_1.b.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.e.x)), -1453f, _wgslsmith_f_op_f32(abs(var_1.b.c)), _wgslsmith_f_op_f32(var_1.b.c * var_1.b.e.x)))), _wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.e.x)))), abs(_wgslsmith_clamp_vec4_u32(abs(countOneBits(vec4<u32>(var_0.x, u_input.d, 1u, u_input.d))), var_1.b.d, ~var_1.b.d)));
    let var_3 = Struct_5(true & (!(!var_1.a) | var_1.a), var_1.b);
    var var_4 = vec3<i32>(var_1.b.b, -46525i, _wgslsmith_div_i32(18888i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.b, 22348i, u_input.c, var_3.b.a) << (vec4<u32>(u_input.d, var_1.b.d.x, 91085u, 87087u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b.a, -27473i, -1i, 3692i), vec4<i32>(var_1.b.b, 1i, 2147483647i, var_1.b.b))), abs(~(-22391i)))));
    var_1 = Struct_5(select(true, any(!select(vec4<bool>(var_1.a, false, false, var_3.a), vec4<bool>(false, false, false, false), vec4<bool>(var_3.a, var_3.a, var_1.a, true))), !func_1(~4294967295u).c.x), func_1(abs(~var_3.b.d.x)).d);
    var_4 = abs(abs(~(-vec3<i32>(var_1.b.a, -1i, var_2.b.a) ^ (vec3<i32>(-46017i, var_3.b.a, 2147483647i) << (vec3<u32>(6796u, var_2.d.x, var_1.b.d.x) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c, (_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.b, var_2.b.b, -6561i, var_1.b.a), vec4<i32>(var_2.b.a, var_3.b.b, u_input.e, var_3.b.b) | vec4<i32>(u_input.c, var_1.b.b, var_4.x, u_input.b.x)) << ((select(var_2.b.d.x, var_3.b.d.x, var_1.a) << (firstLeadingBit(var_2.a.x) % 32u)) % 32u)) >> (48772u % 32u), ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(54985u, var_0.x), u_input.d & 0u), 4294967295u));
}

