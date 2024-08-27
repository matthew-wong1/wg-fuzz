struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 7> = array<i32, 7>(11603i, i32(-2147483648), 0i, 2147483647i, 2147483647i, -66368i, 7379i);

var<private> global2: Struct_3;

var<private> global3: u32 = 38710u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = Struct_4(Struct_1(u_input.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, arg_0.c.b, arg_0.c.b, -406f)))), _wgslsmith_add_vec4_i32(max(select(vec4<i32>(u_input.d.x, arg_0.b.a.x, 1i, -5293i), arg_0.c.a, vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), min(global2.a, u_input.d)), ~(~arg_0.b.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.b.b.zxx + vec3<f32>(106f, global2.b, 214f)), arg_0.b.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b), 263f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-828f + arg_0.c.b)))) + global2.b), 63805u, -firstLeadingBit(min(vec4<i32>(0i, -2147483647i, 5618i, global1[_wgslsmith_index_u32(23090u, 7u)]), ~vec4<i32>(44482i, global2.c.x, arg_0.c.c.x, 60930i))), _wgslsmith_f_op_f32(-global2.b));
    let var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_0.d, _wgslsmith_clamp_vec4_u32(firstLeadingBit(arg_0.d), ~arg_0.d, countOneBits(arg_0.d))), select(arg_0.d, firstLeadingBit(abs(vec4<u32>(arg_0.d.x, 4294967295u, 0u, 18496u))), !arg_0.a) << (arg_0.d % vec4<u32>(32u)));
    global3 = var_0.c & (_wgslsmith_clamp_u32(~(~var_1.x), ~0u, ~14896u) | var_1.x);
    let var_2 = !vec4<bool>(!all(vec2<bool>(false, false)), select(~var_0.d.x >= (i32(-1i) * -2147483647i), true, arg_0.a), true, all(!vec2<bool>(true, arg_0.a)));
    let var_3 = arg_0.b;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.e, var_3.e, arg_0.a)) + _wgslsmith_f_op_f32(arg_0.b.d.x * -1238f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e + 163f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.b.x * arg_0.c.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + 1608f) * var_0.a.b.x)), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(171f * var_0.e) - _wgslsmith_f_op_f32(ceil(227f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1849f, 1325f, 129f, -214f)), vec4<f32>(global2.b, -633f, global2.b, 122f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global2.b, 649f, arg_1.b)) * vec4<f32>(global2.b, global2.b, global2.b, arg_1.b))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1267f)), _wgslsmith_f_op_f32(-159f * -345f), 730f, _wgslsmith_f_op_f32(1369f + global2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(false, Struct_1(global2.a, vec4<f32>(173f, 1424f, 1091f, -528f), u_input.d, vec3<f32>(229f, arg_1.b, -714f), -1005f), arg_1, vec4<u32>(u_input.e.x, u_input.c, u_input.e.x, 22100u)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1236f, global2.b, global2.b, global2.b))))), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, arg_1.b, arg_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1224f, 627f, arg_1.b, arg_1.b) * vec4<f32>(arg_1.b, 368f, arg_1.b, arg_1.b)), vec4<bool>(true, true, true, true))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), -113f, -1524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1064f)) + -1380f))), Struct_1(~vec4<i32>(reverseBits(-2147483647i), -1i, u_input.a.x, -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1104f, global2.b, global2.b, -922f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b, global2.b, arg_1.b, -2739f))), vec4<bool>(true, false, false, false)))), global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, global2.b, 1000f) - vec3<f32>(1525f, arg_1.b, -491f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global2.b, -1000f))) * vec3<f32>(874f, arg_1.b, _wgslsmith_f_op_f32(-global2.b))), -2369f), Struct_1(~vec4<i32>(arg_1.c.x, ~global1[_wgslsmith_index_u32(u_input.c, 7u)], 0i, max(global1[_wgslsmith_index_u32(u_input.c, 7u)], 24576i)), vec4<f32>(-743f, _wgslsmith_f_op_vec4_f32(func_3(Struct_5(true, Struct_1(vec4<i32>(1i, -1i, u_input.a.x, 59966i), vec4<f32>(566f, -498f, arg_1.b, -1036f), arg_1.a, vec3<f32>(-498f, -502f, -1172f), 740f), arg_1, vec4<u32>(89789u, 0u, u_input.c, u_input.e.x)))).x, -784f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b)))), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], arg_0.x >> (u_input.c % 32u), _wgslsmith_add_i32(-27812i, u_input.d.x & global1[_wgslsmith_index_u32(u_input.e.x, 7u)]), _wgslsmith_mult_i32(0i, 4674i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, global2.b, 1011f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-502f, -691f, 2304f) * vec3<f32>(1111f, arg_1.b, 1000f)))))), arg_1.b), _wgslsmith_f_op_f32(max(-441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    var var_1 = any(vec2<bool>(~(~u_input.c) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 12483u), vec2<u32>(10866u, 4294967295u)), !(any(vec3<bool>(true, true, true)) || true)));
    var var_2 = ~_wgslsmith_sub_u32(reverseBits(5722u), ~(~u_input.e.x) ^ ~49131u);
    let var_3 = Struct_5(!(!(u_input.e.x <= u_input.c) != true), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(61746i, -2147483647i, 2147483647i, 1i) | arg_1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(7807i, -27210i, arg_1.c.x, global2.c.x), vec4<i32>(-35445i, 20429i, 0i, -1i), vec4<i32>(-72137i, 28029i, arg_1.c.x, arg_0.x))), vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(true, var_0.d, arg_1, vec4<u32>(u_input.e.x, u_input.c, u_input.c, u_input.e.x)))).x)), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-142f))))), vec4<i32>(countOneBits(i32(-1i) * -3240i), global2.a.x, arg_0.x, (-1i | global2.a.x) >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.zwz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(845f, global2.b, -1159f) - var_0.d.d) - _wgslsmith_f_op_vec3_f32(select(var_0.d.d, vec3<f32>(-442f, global2.b, global2.b), true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), global2.b), arg_1, ~(~abs(reverseBits(vec4<u32>(u_input.c, u_input.c, 1u, u_input.e.x)))));
    let var_4 = 19167i;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.c.b, 537f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-174f)), _wgslsmith_f_op_f32(-2914f - var_3.c.b))), _wgslsmith_f_op_f32(max(1385f, 1086f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_3.b.b * var_0.b))) + _wgslsmith_f_op_vec4_f32(abs(var_3.b.b))))));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = Struct_4(Struct_1(countOneBits(reverseBits(countOneBits(u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.yy, Struct_3(vec4<i32>(global2.a.x, u_input.a.x, global2.c.x, global1[_wgslsmith_index_u32(65955u, 7u)]), 987f, u_input.d.xy)))), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(253f, global2.b, global2.b)))), _wgslsmith_f_op_vec4_f32(func_2(abs(vec2<i32>(48963i, 10803i)), Struct_3(global2.a, _wgslsmith_f_op_f32(min(516f, global2.b)), max(global2.c, vec2<i32>(29030i, u_input.a.x))))).x), 1000f, (u_input.c | 24715u) | ~_wgslsmith_add_u32(max(4676u, u_input.e.x), u_input.c), ~(~max(vec4<i32>(1i, global2.c.x, global1[_wgslsmith_index_u32(0u, 7u)], 1i) | u_input.d, vec4<i32>(global2.c.x, 2147483647i, global2.c.x, u_input.d.x))), _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), Struct_3(u_input.d, 133f, global2.c))).x * _wgslsmith_f_op_f32(f32(-1f) * -595f)))));
    let var_1 = select((7910u ^ firstLeadingBit(u_input.c)) != _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(8137u, var_0.c, 1u, 0u), vec4<u32>(var_0.c, var_0.c, u_input.e.x, u_input.e.x)), vec4<u32>(u_input.e.x, u_input.c, var_0.c, u_input.c)), false, all(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), arg_0 || true))) & all(select(vec3<bool>(any(vec2<bool>(arg_0, arg_0)), 33467u <= var_0.c, true), !(!vec3<bool>(false, arg_0, false)), all(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, false, true), vec4<bool>(true, arg_0, false, arg_0)))));
    global3 = var_0.c;
    var var_2 = vec4<bool>(var_1 && all(vec2<bool>(4294967295u <= var_0.c, false && arg_0)), all(select(select(select(vec2<bool>(var_1, arg_0), vec2<bool>(true, false), true), select(vec2<bool>(false, var_1), vec2<bool>(var_1, arg_0), var_1), false), vec2<bool>(true, false), all(vec3<bool>(false, false, arg_0)))), true, true & (_wgslsmith_add_u32(43807u << (0u % 32u), 1u) < var_0.c));
    var var_3 = _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(global2.b - global2.b));
    return vec4<i32>(min(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.e, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, var_0.c, 0u), vec3<u32>(4294967295u, 1u, var_0.c))), 7u)], 0i), ~49246i, (i32(-1i) * -u_input.d.x) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(~4294967295u, 53376u), (u_input.e.x & 44454u) << (firstLeadingBit(31547u) % 32u)) % 32u), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(global2.a.x << (u_input.c % 32u));
    let var_1 = ~countOneBits(func_1(true));
    var var_2 = Struct_3(~u_input.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b + -765f)))))), var_1.xz);
    let var_3 = vec2<i32>(reverseBits(~u_input.a.x), abs(-12308i)) << (vec2<u32>(41387u, _wgslsmith_mult_u32(u_input.c, ~1u)) % vec2<u32>(32u));
    global1 = array<i32, 7>();
    let var_4 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(85105u, 0u), ~(~_wgslsmith_div_u32(u_input.c, 1u))), u_input.e.x & 4294967295u);
    global0 = _wgslsmith_sub_u32(~countOneBits(~u_input.e.x), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-(-6877i >> (var_4.x % 32u)), ~1i);
}

