struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec4<bool> {
    global0 = array<Struct_2, 27>();
    var var_0 = arg_0.b;
    let var_1 = vec4<f32>(-983f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 2424f)))))), 369f, 680f);
    let var_2 = vec2<i32>(-1i, 1i);
    global0 = array<Struct_2, 27>();
    return select(select(select(select(select(vec4<bool>(arg_0.c, arg_0.c, false, true), vec4<bool>(false, true, true, false), arg_0.c), select(vec4<bool>(arg_0.c, false, true, true), vec4<bool>(arg_0.c, false, arg_0.c, false), true), vec4<bool>(false, arg_0.c, false, true)), !vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), select(vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(true, arg_0.c, arg_0.c, false), true)), vec4<bool>(true, ~arg_1.a.x <= ~1u, true, !arg_0.c | arg_0.c), !arg_0.c), !(!(!select(vec4<bool>(false, true, false, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true), false))), select(vec4<bool>(arg_0.c, any(select(vec3<bool>(arg_0.c, false, true), vec3<bool>(true, false, true), true)), arg_0.c, all(!vec3<bool>(false, arg_0.c, arg_0.c))), !(!vec4<bool>(arg_0.c, false, arg_0.c, true)), !vec4<bool>(false, var_2.x <= -1i, false, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = all(select(select(vec4<bool>(any(vec3<bool>(true, true, false)), false, arg_1.x > arg_1.x, any(vec2<bool>(false, false))), vec4<bool>(true, true, false, select(false, true, false)), func_3(Struct_4(Struct_2(-228f, vec4<f32>(-2111f, 1254f, 944f, -922f), -158f, arg_1.x, vec4<f32>(-266f, -780f, 112f, -1360f)), arg_1.x, false, vec3<i32>(arg_0.x, 2147483647i, arg_0.x)), Struct_1(vec3<u32>(27547u, 1u, 4294967295u), vec3<i32>(-1i, arg_0.x, arg_0.x)), _wgslsmith_div_f32(1834f, 1411f), abs(1u))), vec4<bool>(func_3(Struct_4(global0[_wgslsmith_index_u32(arg_1.x, 27u)], 50395u, false, vec3<i32>(-27615i, 18909i, arg_0.x)), Struct_1(vec3<u32>(14007u, 4294967295u, 0u), vec3<i32>(arg_0.x, 0i, u_input.a)), 329f, 4294967295u).x, !all(vec3<bool>(true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)));
    global0 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), -385f, _wgslsmith_f_op_f32(565f + -588f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-283f, -800f, -569f), vec3<f32>(-258f, 444f, 505f), false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-716f, -969f, -1913f), vec3<f32>(1105f, 841f, -450f), vec3<bool>(true, var_0, true)))))))));
    global0 = array<Struct_2, 27>();
    let var_2 = ~abs(min(abs(vec3<u32>(1u, arg_1.x, arg_1.x)), vec3<u32>(0u, 1u, 14570u)) | _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.x, 0u, 1u)), ~vec3<u32>(arg_1.x, arg_1.x, 36673u), vec3<u32>(4294967295u, 29210u, arg_1.x) ^ vec3<u32>(arg_1.x, arg_1.x, 0u)));
    return arg_1.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-298f, -2059f, arg_2.a.b.x), vec3<f32>(-1000f, arg_2.a.b.x, 183f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.x, arg_1.a.b.x, arg_1.a.e.x))))))));
    global0 = array<Struct_2, 27>();
    var var_1 = any(vec3<bool>(!arg_1.c, !arg_2.c, false));
    var var_2 = !vec2<bool>(any(select(func_3(Struct_4(arg_1.a, 23536u, arg_2.c, arg_2.d), Struct_1(vec3<u32>(4294967295u, arg_1.b, arg_2.b), arg_2.d), -1909f, arg_1.a.d).ww, !vec2<bool>(arg_2.c, arg_2.c), !vec2<bool>(false, arg_2.c))), true);
    global0 = array<Struct_2, 27>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.b.wwz))), _wgslsmith_f_op_vec3_f32(-arg_2.a.e.wyy));
}

fn func_1() -> f32 {
    let var_0 = abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(1u, ~30764u)), _wgslsmith_add_u32(~18474u, 0u), countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(22894u, 247u, 1u, 103761u), vec4<u32>(0u, 69404u, 0u, 4294967295u)))));
    global0 = array<Struct_2, 27>();
    let var_1 = func_4(~abs(_wgslsmith_sub_u32(var_0, var_0)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(10358u, 107860u), vec2<u32>(var_0, var_0)), func_2(u_input.b, vec2<u32>(var_0, 41503u)), var_0, var_0), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, 0u, var_0), vec4<u32>(0u, var_0, var_0, var_0))) % 32u), Struct_4(Struct_2(2924f, vec4<f32>(1018f, _wgslsmith_f_op_f32(step(484f, -363f)), _wgslsmith_div_f32(848f, -768f), _wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-329f)) * _wgslsmith_f_op_f32(-219f - 1519f)), firstLeadingBit(38205u), vec4<f32>(-589f, -911f, -1575f, 678f)), firstTrailingBit(~max(4294967295u, var_0)), func_3(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, var_0, var_0), 27u)], countOneBits(1u), all(vec4<bool>(true, false, false, false)), select(vec3<i32>(55027i, u_input.b.x, u_input.a), vec3<i32>(u_input.a, u_input.a, 5689i), true)), Struct_1(select(vec3<u32>(0u, var_0, var_0), vec3<u32>(var_0, 38738u, 14487u), true), firstLeadingBit(vec3<i32>(-34613i, -64417i, u_input.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1325f))), _wgslsmith_sub_u32(var_0, var_0) & func_2(vec2<i32>(-27122i, u_input.a), vec2<u32>(var_0, var_0))).x, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -125i, -34799i)), vec3<i32>(u_input.a, u_input.b.x, -75030i) | vec3<i32>(u_input.a, -2147483647i, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(36690i, -23025i, 56821i), vec3<i32>(0i, 4113i, u_input.a))), vec3<i32>(-6831i, 1i, u_input.a) & vec3<i32>(45982i, -2147483647i, -26412i))), Struct_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2013f)), -180f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, -513f, -1000f, -1438f) - vec4<f32>(-1510f, -317f, 1030f, 401f)), -1382f, 38859u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, -808f, 2894f, -1381f) * vec4<f32>(531f, 751f, 158f, 258f)))), var_0, !(!(var_0 < var_0)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, 81743i), vec3<i32>(47126i, u_input.b.x, 28741i) ^ vec3<i32>(u_input.b.x, 0i, u_input.b.x))));
    let var_2 = min(-vec3<i32>(u_input.b.x, 26874i, -u_input.a) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0, 0u, var_0)), min(~vec3<u32>(4294967295u, 1u, 47877u), firstLeadingBit(vec3<u32>(102372u, var_0, 80087u)))) % vec3<u32>(32u)), countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -24808i, 49776i)), vec3<i32>(1i, 24633i, 2147483647i), abs(vec3<i32>(0i, 36234i, u_input.b.x))) << (firstLeadingBit(vec3<u32>(var_0, var_0, 4294967295u)) % vec3<u32>(32u))));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(14644u), 27u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, var_1.a.x) - 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(select(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(64884u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 8919u, 32462u), vec4<u32>(4294967295u, 16973u, 1u, 56274u)), ~7495u), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, true)))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(f32(-1f) * -304f)), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 4294967295u, 0u, 18803u), vec4<bool>(false, false, false, false)), vec4<u32>(firstLeadingBit(132868u), _wgslsmith_mult_u32(57949u, 1u), func_2(vec2<i32>(u_input.b.x, -23165i), vec2<u32>(1u, 9405u)), 0u))));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(var_0, var_0 | ~min(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), var_0), ~var_0);
    global0 = array<Struct_2, 27>();
    var_1 = reverseBits(~countOneBits(reverseBits(var_0)) << (~abs(~var_0) % vec4<u32>(32u)));
    var_1 = select(vec4<u32>(~4294967295u, var_1.x, 1u, _wgslsmith_mod_u32(0u >> ((var_1.x >> (var_1.x % 32u)) % 32u), 23757u)), var_0, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(~var_1.x, Struct_4(Struct_2(1707f, vec4<f32>(127f, 1347f, 317f, 1782f), -801f, var_1.x, vec4<f32>(-1515f, 829f, -362f, -953f)), 8634u, true, vec3<i32>(0i, -58045i, -1i)), Struct_4(Struct_2(-1256f, vec4<f32>(-951f, 601f, 729f, 2300f), 1000f, var_1.x, vec4<f32>(613f, -494f, 1428f, 338f)), var_1.x, true, vec3<i32>(-1i, u_input.a, u_input.b.x))).a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * 133f))), -313f));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3125f, 322f, -247f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-978f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1500f, 259f) * vec3<f32>(1511f, 394f, 2249f)))))));
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -743f, var_3.a.x, var_3.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 557f, var_2.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b.x, var_2.x, -214f, 597f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-811f, var_2.x, 1000f, var_3.b.x), vec4<f32>(var_2.x, var_2.x, var_2.x, var_3.a.x))))))), _wgslsmith_f_op_f32(ceil(-125f)), u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_3.b.yz - _wgslsmith_f_op_vec2_f32(-var_3.a.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.a.zy * var_3.a.zz) + _wgslsmith_f_op_vec2_f32(-var_3.b.yy)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1022f, var_3.a.x), vec2<f32>(var_3.a.x, var_3.b.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, var_3.a.x) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 549f), vec2<f32>(-1351f, 1066f))))), _wgslsmith_mod_u32(max(~max(9660u, var_0.x), var_0.x), _wgslsmith_dot_vec3_u32(var_1.wxy, var_1.ywx)));
}

