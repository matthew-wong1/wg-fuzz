struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1367f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<f32>) -> bool {
    global0 = _wgslsmith_f_op_f32(trunc(-1000f));
    var var_0 = Struct_3(Struct_2(firstLeadingBit(~(vec4<u32>(40898u, 39647u, arg_1.x, 4294967295u) ^ arg_1)), !select(!vec2<bool>(true, arg_2), vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(false, arg_2))), arg_2, true, vec2<bool>(true, true)), Struct_1(-vec2<i32>(~u_input.a.x, -1i), -2147483647i), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_0, 63191u, ~arg_1.x, _wgslsmith_dot_vec4_u32(arg_1, arg_1)), select(vec4<u32>(47756u, 0u, arg_0, arg_0), vec4<u32>(arg_0, 55099u, 46392u, 1u), !vec4<bool>(true, arg_2, arg_2, arg_2))), vec2<bool>(arg_2, -2407f == arg_3.x), true, true || any(select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), vec2<bool>(true, false))), !vec2<bool>(arg_2, !arg_2)), vec4<u32>(arg_1.x, ~arg_0, arg_1.x, abs(min(_wgslsmith_sub_u32(4294967295u, arg_1.x), ~arg_0))), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, ~u_input.c), u_input.c), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -14111i, -26419i, -48969i), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.a.x)))));
    var_0 = Struct_3(Struct_2(var_0.d, !(!select(var_0.c.e, vec2<bool>(true, true), false)), select(!var_0.a.c, !(!arg_2), true), false, vec2<bool>(true, true)), Struct_1(-abs(~vec2<i32>(21802i, 40880i)), var_0.b.a.x), Struct_2(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_1.x, 1037u, 108212u)), arg_1), select(var_0.a.b, !select(var_0.c.e, vec2<bool>(var_0.c.d, var_0.a.b.x), var_0.c.b), _wgslsmith_f_op_f32(max(arg_3.x, -379f)) <= -549f), arg_2, var_0.a.c, select(!vec2<bool>(true, var_0.a.e.x), vec2<bool>(true, any(vec4<bool>(arg_2, arg_2, var_0.a.e.x, false))), select(false, arg_2, true) && any(vec4<bool>(var_0.c.b.x, false, var_0.a.b.x, true)))), var_0.a.a, select(var_0.e, 22152i, var_0.a.b.x));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.x * arg_3.x))), _wgslsmith_div_f32(arg_3.x, arg_3.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -158f), arg_3.x)))));
    let var_1 = Struct_3(Struct_2(vec4<u32>(~(~44552u), _wgslsmith_dot_vec2_u32(~var_0.a.a.zy, firstLeadingBit(vec2<u32>(arg_1.x, 1u))), 18908u, ~(~arg_1.x)), !var_0.a.b, var_0.c.b.x, arg_2, var_0.c.b), var_0.b, Struct_2(select((arg_1 & vec4<u32>(81854u, 17019u, 0u, var_0.c.a.x)) ^ vec4<u32>(1042u, 4713u, 94817u, var_0.c.a.x), vec4<u32>(~arg_1.x, countOneBits(0u), _wgslsmith_dot_vec2_u32(var_0.c.a.xw, vec2<u32>(arg_0, arg_1.x)), 4294967295u), false), !(!select(var_0.c.b, vec2<bool>(arg_2, arg_2), var_0.a.c)), true, (3974i >> (_wgslsmith_dot_vec3_u32(arg_1.zzz, arg_1.zyy) % 32u)) != _wgslsmith_mod_i32(-1i | var_0.e, _wgslsmith_mult_i32(u_input.c, -1i)), var_0.c.b), var_0.a.a, 1i);
    return select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_3.x)), arg_3.x))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(-arg_3.x), arg_3.x == 773f)) - 176f), true);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), func_3(4294967295u, vec4<u32>(0u, 0u, 5426u, 79583u), false, vec3<f32>(-1241f, 410f, arg_0)) | false)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), arg_0)));
    var var_0 = Struct_3(Struct_2(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(18167u, 11663u, 1u, 0u), vec4<u32>(0u, 48939u, 0u, 0u), vec4<u32>(10639u, 7917u, 1u, 78437u)) << (vec4<u32>(121661u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), !vec2<bool>(all(vec2<bool>(true, true)), true), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), true)), true, select(vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(u_input.a, firstLeadingBit(u_input.a.x ^ 1i)), Struct_2(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30031u, 4294967295u, 1u), vec3<u32>(0u, 4258u, 4294967295u)), _wgslsmith_div_u32(0u, 37387u)), _wgslsmith_dot_vec2_u32(vec2<u32>(57206u, 1054u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u))), ~1u, 1u), select(vec2<bool>(select(false, false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))), vec2<bool>(false, true)), ~vec4<u32>(~_wgslsmith_clamp_u32(38135u, 4294967295u, 4399u), ~(18056u << (0u % 32u)), ~13400u, 0u), -u_input.a.x);
    var var_1 = Struct_3(var_0.c, var_0.b, var_0.a, ~var_0.a.a, -(~2147483647i));
    global0 = arg_0;
    var_0 = Struct_3(var_1.c, Struct_1(~var_0.b.a, reverseBits(max(u_input.b, 2147483647i)) ^ _wgslsmith_clamp_i32(var_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(47665i, -13570i, -10837i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, u_input.b, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.b, var_1.b.a.x, -2147483647i, 35858i), vec4<i32>(0i, var_1.e, var_1.b.a.x, u_input.b)))), var_1.a, ~(var_1.c.a << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_1.c.a, vec4<u32>(var_0.d.x, var_0.c.a.x, 11211u, var_1.c.a.x)), firstLeadingBit(var_0.c.a), abs(var_1.a.a)) % vec4<u32>(32u))), 6629i);
    return select(!select(vec3<bool>(false, any(vec4<bool>(var_1.c.e.x, var_0.a.c, true, true)), var_0.c.b.x), vec3<bool>(false, var_0.a.d, true), select(!vec3<bool>(var_0.a.e.x, var_1.a.d, false), select(vec3<bool>(true, true, var_0.c.b.x), vec3<bool>(var_1.a.c, false, var_1.c.e.x), var_0.c.c), !vec3<bool>(false, var_0.c.d, false))), select(!vec3<bool>(false, arg_0 == -758f, var_0.a.c), vec3<bool>(var_1.a.d, true, var_1.a.e.x), select(vec3<bool>(var_0.a.c, var_1.c.d & var_1.a.e.x, var_1.d.x < var_1.d.x), vec3<bool>(var_1.c.e.x, true | var_0.c.b.x, all(var_0.a.b)), select(!vec3<bool>(true, var_0.c.e.x, var_0.c.e.x), select(vec3<bool>(true, false, false), vec3<bool>(var_1.c.b.x, false, false), vec3<bool>(var_1.c.b.x, var_0.a.c, false)), true))), vec3<bool>(true, true, !any(var_0.c.b)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    return Struct_2(~vec4<u32>(abs(49186u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37867u), vec2<u32>(55378u, 84575u)), 1u, firstTrailingBit(17798u)) | abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(47228u, 1u, 13123u, 6419u), vec4<u32>(37005u, 0u, 0u, 0u))), !(!arg_0.xz), !any(func_2(491f)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1727f, 109f)))).x, arg_0.xx);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = ~arg_1.e;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-868f)) + 589f);
    let var_1 = func_1(vec3<bool>((-11985i | arg_2.x) < min(min(-30016i, arg_1.b.a.x), ~arg_1.e), func_2(815f).x || true, arg_0.d)).c;
    let var_2 = Struct_1(~firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2962i, -18809i), vec2<i32>(var_0, arg_2.x))), ~_wgslsmith_mult_i32(~2147483647i ^ ~arg_1.b.a.x, _wgslsmith_mult_i32(-20899i << (arg_0.a.x % 32u), -u_input.c)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return !select(func_1(vec3<bool>(false, true, false)).e, arg_0.e, select(arg_1.a.b, !func_1(vec3<bool>(false, arg_1.c.c, arg_1.a.e.x)).e, arg_1.c.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 61882u)), countOneBits(35834u), ~1u), reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40560u, 23559u), vec2<u32>(1u, 10663u)), ~4294967295u)), ~1u), !func_4(func_1(vec3<bool>(true, true, true)), Struct_3(func_1(vec3<bool>(false, false, false)), Struct_1(u_input.a, u_input.a.x), func_1(vec3<bool>(false, true, false)), vec4<u32>(1u, 10752u, 0u, 61266u), _wgslsmith_clamp_i32(u_input.a.x, u_input.b, 5922i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, 5511i, u_input.c), vec3<i32>(-45862i, u_input.a.x, u_input.c))), true, true, !func_1(func_2(_wgslsmith_f_op_f32(-575f + -286f))).b);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-718f + 1393f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(-1100f * _wgslsmith_f_op_f32(trunc(911f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1322f, _wgslsmith_f_op_f32(f32(-1f) * -356f)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(f32(-1f) * -1059f), 721f, _wgslsmith_f_op_f32(select(-1078f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(round(-732f))) - _wgslsmith_f_op_f32(527f * 1f)), all(select(select(vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, var_0.b.x, var_0.b.x, false)), vec4<bool>(var_0.b.x, true, var_0.c, var_0.b.x), vec4<bool>(var_0.c, false, var_0.d, false))))));
    let var_2 = func_1(select(!(!select(vec3<bool>(var_0.e.x, var_0.d, true), vec3<bool>(var_0.d, true, var_0.c), var_0.c)), func_2(862f), var_0.d));
    var var_3 = abs(vec2<u32>(var_2.a.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(75332i, -49432i), -u_input.a), _wgslsmith_div_i32(u_input.a.x, reverseBits(~36343i)), -30431i), ~(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 37921i, u_input.c), vec3<i32>(u_input.c, 2147483647i, u_input.c)))), -419f);
}

