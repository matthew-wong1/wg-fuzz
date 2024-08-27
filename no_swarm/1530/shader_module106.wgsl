struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)) * -1000f);
    global0 = 909f;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1732f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(414f, -2023f) - 2615f), _wgslsmith_f_op_f32(-1603f - 1030f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1745f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-917f, -177f)))))));
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_0 = select(!vec4<bool>(true, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) > ~u_input.a.x, any(vec3<bool>(true, true, true)), false), !vec4<bool>(true, false, false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f * _wgslsmith_f_op_f32(-612f + _wgslsmith_f_op_f32(-1372f + _wgslsmith_f_op_f32(-1033f + -1181f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f - 958f)))), 1490f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-351f, -1453f)) * _wgslsmith_f_op_f32(f32(-1f) * -680f)), -360f)));
    return Struct_2(var_0.zy, Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 89594u, 4294967295u, u_input.d))), _wgslsmith_clamp_u32(u_input.b, u_input.d, min(26108u, u_input.b)), 53561u, select(u_input.b, 1u, false) << (23658u % 32u)), vec4<bool>(true, min(u_input.a.x, u_input.e) == u_input.a.x, true, _wgslsmith_mod_u32(4294967295u, 4294967295u) <= _wgslsmith_sub_u32(u_input.c.x, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -231f)), 130f);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = func_2();
    var_0 = Struct_2(select(vec2<bool>(all(select(vec4<bool>(arg_1, arg_3, arg_2.x, false), var_0.b.b, var_0.b.b.x)), any(var_0.b.b) && any(vec4<bool>(true, arg_2.x, arg_1, arg_1))), func_2().b.b.wz, arg_1), Struct_1(reverseBits(~(vec4<u32>(arg_0.x, 1u, u_input.b, u_input.b) ^ vec4<u32>(arg_0.x, var_0.b.a.x, u_input.c.x, u_input.b))), !vec4<bool>(true, true, func_2().b.b.x, !arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.c)), _wgslsmith_f_op_f32(step(-410f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-742f, 137f, func_2().b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -1231f)))));
    var var_1 = func_2();
    let var_2 = Struct_2(select(var_0.b.b.xz, !vec2<bool>(var_1.a.x & false, true), !(!arg_1)), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(163f)) + var_1.c));
    var var_3 = var_0.a;
    return Struct_3(var_2.b.b, var_1.b, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1743f, var_1.b.c, 1383f, var_0.c), vec4<f32>(348f, var_1.b.c, var_1.b.c, -531f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 1057f, -310f, -1000f) * vec4<f32>(-848f, var_0.c, 712f, 1041f))))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    var var_0 = (~u_input.c.x ^ u_input.d) > ~(~abs(1u));
    var var_1 = countOneBits(~abs(_wgslsmith_div_u32(arg_2.b.a.x, _wgslsmith_sub_u32(arg_2.b.a.x, arg_2.b.a.x))));
    var_0 = func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, abs(vec2<u32>(u_input.b, 0u))), 1u >> (_wgslsmith_div_u32(13233u, 57113u) % 32u)), arg_2.b.a.yyy & countOneBits(arg_2.b.a.xyz)), !(!(!all(arg_2.b.b.xz))), arg_2.b.b.zwz, func_1(~arg_2.b.a.ywy, func_2().b.b.x, vec3<bool>(all(select(vec3<bool>(arg_0, arg_0, arg_1), vec3<bool>(false, true, true), arg_2.a.x)), arg_1 || false, false), !arg_2.a.x).a.x).c;
    var var_2 = _wgslsmith_add_i32(-2147483647i, 1i);
    var_0 = true;
    return Struct_1(firstLeadingBit(~arg_2.b.a) | vec4<u32>(reverseBits(u_input.d >> (3028u % 32u)), ~_wgslsmith_mod_u32(30308u, arg_2.b.a.x), arg_2.b.a.x, ~_wgslsmith_add_u32(arg_2.b.a.x, 1u)), !select(select(vec4<bool>(arg_2.b.b.x, true, true, arg_2.b.b.x), arg_2.b.b, arg_2.a), !arg_2.a, arg_2.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(386f))), -1000f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global0 = _wgslsmith_div_f32(-640f, arg_0.c);
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, 1i);
    let var_1 = ~min(countOneBits(u_input.a.xxw), reverseBits(vec3<i32>(var_0 >> (arg_1.b.a.x % 32u), -8712i, u_input.a.x)));
    let var_2 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(countOneBits(arg_1.b.a)), countOneBits(vec4<u32>(arg_0.b.a.x, 46276u, arg_0.b.a.x, arg_1.b.a.x))), ~arg_0.b.a), !select(arg_1.a, select(!arg_0.b.b, arg_1.b.b, arg_1.b.b.x), arg_0.b.b.x), arg_1.b.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -343f), _wgslsmith_f_op_f32(f32(-1f) * -559f))), _wgslsmith_f_op_f32(func_3()), arg_1.b.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -850f), -783f)))));
    return Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(10680u, 21419u, 1u, 17076u)), vec4<u32>(27940u, var_2.a.x, u_input.c.x, 0u)) >> (~(vec4<u32>(arg_0.b.a.x, var_2.a.x, 63642u, var_2.a.x) << (arg_0.b.a % vec4<u32>(32u))) % vec4<u32>(32u)), ~func_4(var_2.b.x, true, arg_1, -1780f).a >> (arg_1.b.a % vec4<u32>(32u))), func_1(~vec3<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 0u, 1u), arg_0.b.a.zzz), ~var_2.a.x), arg_0.b.b.x, vec3<bool>(arg_1.b.b.x, true && all(vec3<bool>(false, var_2.b.x, arg_0.a.x)), arg_0.a.x), !func_2().b.b.x).b.b, func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(!select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), func_4(false, !(u_input.b > u_input.c.x), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(u_input.d, u_input.c.x, u_input.b), vec3<u32>(u_input.b, 3700u, 0u)), true, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true), -2187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1215f))) - 296f)), Struct_3(!vec4<bool>(true, any(vec2<bool>(false, true)), true, false), Struct_1(func_4(u_input.a.x >= u_input.a.x, 2147483647i <= u_input.a.x, Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec4<u32>(u_input.c.x, 7607u, 73024u, 0u), vec4<bool>(true, false, true, false), 232f), false, vec4<f32>(-1075f, 699f, 1000f, 1170f)), _wgslsmith_f_op_f32(step(-829f, 1455f))).a, select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f))), all(vec4<bool>(false, true, false, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-734f, -138f, -1494f, -512f))) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1541f, -333f, 772f, -360f), vec4<f32>(1000f, -178f, 1068f, -1511f), vec4<bool>(false, true, true, false)))))));
    var var_1 = -725f;
    let var_2 = vec3<u32>(var_0.a.x, func_1(~vec3<u32>(u_input.d ^ var_0.a.x, ~var_0.a.x, ~0u), true, var_0.b.xyz, true).b.a.x, u_input.d);
    var var_3 = func_2().b;
    var var_4 = Struct_1(_wgslsmith_mod_vec4_u32((abs(var_0.a) >> (abs(vec4<u32>(4294967295u, 0u, 0u, 4294967295u)) % vec4<u32>(32u))) & (_wgslsmith_mult_vec4_u32(var_3.a, vec4<u32>(4294967295u, u_input.d, var_3.a.x, var_2.x)) << (var_0.a % vec4<u32>(32u))), var_3.a), !vec4<bool>(any(vec2<bool>(false, var_0.b.x)), all(var_3.b), any(func_5(Struct_2(vec2<bool>(false, var_3.b.x), Struct_1(var_3.a, var_0.b, var_0.c), -345f), Struct_3(vec4<bool>(true, var_0.b.x, false, var_3.b.x), Struct_1(vec4<u32>(u_input.d, var_2.x, var_3.a.x, var_2.x), var_0.b, 408f), true, vec4<f32>(1057f, var_0.c, var_3.c, -477f))).b), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) * -235f));
    var_1 = _wgslsmith_f_op_f32(exp2(var_3.c));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(reverseBits(24083u & var_0.a.x), func_1(vec3<u32>(var_3.a.x, u_input.b, var_0.a.x) | vec3<u32>(4294967295u, var_2.x, 1u), select(var_0.b.x, false, var_4.b.x), vec3<bool>(false, var_4.b.x, true), -1000f < var_3.c).b.a.x, countOneBits(var_2.x ^ 4294967295u), select(0u, var_3.a.x, !var_3.b.x)), var_2.x, select(-vec2<i32>(-2147483647i, -36583i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), u_input.a.yx), vec2<bool>(var_3.b.x, !var_0.b.x)) & (vec2<i32>(~u_input.a.x, u_input.a.x) >> (u_input.c % vec2<u32>(32u))), _wgslsmith_sub_u32(110060u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(0u, 1u)), var_2.x)));
}

