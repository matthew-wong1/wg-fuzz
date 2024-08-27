struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    global0 = abs(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(108491u, 16468u, 1u)), vec3<u32>(~global0.x, 0u, global0.x) << (reverseBits(select(vec3<u32>(1u, global0.x, 34612u), vec3<u32>(global0.x, 0u, global0.x), arg_0.d.a.x)) % vec3<u32>(32u))));
    var var_0 = ~global0.x;
    var var_1 = any(vec2<bool>(any(vec3<bool>(select(false, arg_0.b.x, arg_0.c.a.x), arg_0.e.x >= 503f, arg_0.d.a.x)), all(!select(vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(arg_0.d.a.x, arg_0.d.a.x, true), true))));
    var_1 = select(arg_0.d.a.x, 1459f <= arg_0.a.x, arg_0.d.a.x);
    var var_2 = min(u_input.a.x, 0i);
    return !arg_0.d.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<bool> {
    global0 = countOneBits(vec3<u32>(26256u, 49898u, select(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(64678u, global0.x, global0.x, 4294967295u), vec4<u32>(global0.x, global0.x, 24756u, global0.x)), ~vec4<u32>(0u, global0.x, 4294967295u, 4294967295u)), firstLeadingBit(~global0.x), arg_1.b.x)));
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(max(abs(~vec3<u32>(75760u, global0.x, global0.x)), vec3<u32>(global0.x, 6795u, global0.x) & vec3<u32>(global0.x, global0.x, global0.x)), (_wgslsmith_div_vec3_u32(vec3<u32>(17106u, 52239u, global0.x), vec3<u32>(global0.x, 4294967295u, global0.x)) >> (vec3<u32>(3608u, 1u, 0u) % vec3<u32>(32u))) >> (vec3<u32>(1u, global0.x & global0.x, global0.x ^ 19756u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(1u), 43553u, 0u), vec3<u32>(55312u, ~(global0.x >> (17602u % 32u)), global0.x)));
    var var_0 = Struct_1(arg_0.d.a);
    global0 = max(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, global0.x, global0.x) ^ vec3<u32>(global0.x, 4294967295u, global0.x), ~vec3<u32>(global0.x, global0.x, 1u) >> (~vec3<u32>(35559u, 0u, 47381u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, 4294967295u, 17554u), vec3<u32>(64501u, 0u, global0.x)) & vec3<u32>(global0.x, global0.x, global0.x), min(abs(vec3<u32>(4294967295u, 4294967295u, global0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 19906u, 48150u), vec3<u32>(global0.x, 69580u, global0.x))))) | (firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(30000u, 0u, global0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 1u, global0.x)))) >> (vec3<u32>(~_wgslsmith_div_u32(global0.x, global0.x), 74087u, ~global0.x) % vec3<u32>(32u)));
    var_0 = Struct_1(select(select(select(!vec3<bool>(arg_1.c.a.x, arg_3.d.a.x, arg_1.b.x), select(vec3<bool>(var_0.a.x, true, arg_0.c.a.x), vec3<bool>(true, false, arg_1.d.a.x), arg_3.d.a), true), var_0.a, true), select(var_0.a, var_0.a, arg_0.c.a.x), any(vec4<bool>(true, true, true, func_3(arg_3).x))));
    return func_3(Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.e.x, arg_2.x, true)), _wgslsmith_f_op_f32(sign(arg_3.a.x))), arg_0.a.x, 600f), select(select(arg_0.d.a.zz, arg_3.c.a.xx, vec2<bool>(true, false)), arg_1.d.a.xx, vec2<bool>(arg_1.b.x, true)), Struct_1(var_0.a), Struct_1(select(!arg_0.d.a, arg_0.d.a, !var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(988f, 1000f, 654f, -1332f)))));
}

fn func_2() -> vec4<u32> {
    global0 = ~(firstTrailingBit(~(~vec3<u32>(global0.x, 66912u, global0.x))) & _wgslsmith_sub_vec3_u32(vec3<u32>(1u, max(global0.x, global0.x), ~57266u), vec3<u32>(reverseBits(0u), 4294967295u, ~4294967295u)));
    let var_0 = select(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -857f, 2321f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(551f, 417f, 975f), vec3<f32>(-1654f, -676f, -717f), true)), func_3(Struct_2(vec3<f32>(-262f, 1151f, -1111f), vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), vec4<f32>(975f, 1004f, 1151f, 164f))))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), Struct_1(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-965f - -509f), _wgslsmith_f_op_f32(f32(-1f) * -2389f), _wgslsmith_f_op_f32(f32(-1f) * -1051f), 902f)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-791f, 128f, -2073f) - vec3<f32>(-712f, 470f, 1000f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-358f, 447f, -237f), vec3<f32>(363f, -2090f, -1313f), false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1168f, -334f, -686f, 443f) - vec4<f32>(-451f, -812f, -1000f, 1005f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-897f, 135f, -466f, -331f) + vec4<f32>(230f, -847f, -512f, 1446f)))), vec3<f32>(1000f, 229f, 175f), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(955f, -1155f, 1666f) + vec3<f32>(-1372f, 1587f, -1418f)))), vec2<bool>(true, true), Struct_1(func_3(Struct_2(vec3<f32>(1822f, 399f, 218f), vec2<bool>(true, false), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), vec4<f32>(548f, -896f, -1945f, -1250f)))), Struct_1(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-461f, 721f, 470f, -1000f), vec4<f32>(1080f, -1132f, -1677f, -138f)))))), !func_3(Struct_2(vec3<f32>(-1000f, -318f, -473f), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-430f, -1841f, 903f, 777f) - vec4<f32>(-156f, -588f, -1158f, 125f)))), select(!func_4(Struct_2(vec3<f32>(-154f, 869f, -1052f), vec2<bool>(false, true), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), vec4<f32>(205f, -199f, 353f, 113f)), Struct_2(vec3<f32>(1266f, 560f, -1170f), vec2<bool>(true, true), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), vec4<f32>(551f, 1000f, 556f, -155f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1341f, -1000f, -595f), vec3<f32>(-434f, -637f, -1416f), true)), Struct_2(vec3<f32>(-1512f, 395f, -1076f), vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), vec4<f32>(759f, 334f, 1000f, 1568f))), vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true))));
    global0 = ~(~vec3<u32>(~abs(1u), countOneBits(global0.x), select(global0.x, abs(1u), false)));
    let var_1 = firstLeadingBit(~max(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, global0.x), vec3<u32>(0u, 4294967295u, global0.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 47893u, global0.x), vec3<u32>(global0.x, 4294967295u, 50518u))));
    var var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(~var_1.x << (~0u % 32u), global0.x), min(global0.x, 1u), ~_wgslsmith_sub_u32(global0.x << (var_1.x % 32u), reverseBits(var_1.x)), global0.x | _wgslsmith_dot_vec3_u32(select(var_1, vec3<u32>(38427u, global0.x, var_1.x), vec3<bool>(false, false, false)), vec3<u32>(var_1.x, global0.x, 0u))));
    return abs(vec4<u32>(1u, ~var_2.x, ~var_2.x, global0.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = max(select(arg_1, u_input.a.x, _wgslsmith_div_u32(arg_2 | arg_2, 2055u) > arg_0.x), arg_1);
    let var_1 = func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1247f, 793f, 1036f) + vec3<f32>(1999f, -910f, -495f)))))), func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-493f, -1754f, -1549f)))), vec2<bool>(true, true), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(621f)), _wgslsmith_f_op_f32(-681f * -383f), _wgslsmith_f_op_f32(-1373f - -425f)))).yx, Struct_1(!func_4(Struct_2(vec3<f32>(427f, -1000f, -1204f), vec2<bool>(false, true), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), vec4<f32>(1076f, -655f, 756f, -350f)), Struct_2(vec3<f32>(172f, 765f, 1000f), vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), vec4<f32>(1383f, 244f, 601f, 808f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1879f, -743f, -771f)), Struct_2(vec3<f32>(-380f, 575f, -1000f), vec2<bool>(true, true), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), vec4<f32>(-859f, 433f, -251f, 2496f)))), Struct_1(!vec3<bool>(select(false, false, false), true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-480f, 1162f, -1141f, -1608f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1956f, -1000f, 999f, -813f), vec4<f32>(-1044f, -1322f, -1789f, -2598f)))) + vec4<f32>(_wgslsmith_div_f32(-1221f, _wgslsmith_div_f32(-1861f, -326f)), _wgslsmith_f_op_f32(-1739f * _wgslsmith_f_op_f32(min(-152f, -393f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1516f - 289f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1254f - 1815f) - _wgslsmith_f_op_f32(round(1187f))))));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.e.www), var_2.b, var_2.c, Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(max(var_2.a, var_2.e.yyy)), var_2.b, Struct_1(var_2.c.a), Struct_1(var_2.d.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 386f, 851f, -832f) * vec4<f32>(var_2.a.x, var_2.a.x, var_2.e.x, var_2.e.x))), Struct_2(_wgslsmith_f_op_vec3_f32(var_2.e.zzy + vec3<f32>(var_2.a.x, var_2.a.x, 551f)), var_2.b, Struct_1(var_2.c.a), Struct_1(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, -383f, var_2.e.x, -1242f), vec4<f32>(var_2.e.x, var_2.a.x, 1819f, var_2.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a * var_2.e.xzw)), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(var_2.a)), vec2<bool>(var_2.d.a.x, var_2.c.a.x), Struct_1(vec3<bool>(var_2.d.a.x, true, false)), var_2.d, _wgslsmith_div_vec4_f32(var_2.e, vec4<f32>(413f, var_2.a.x, var_2.e.x, 541f))))), vec4<f32>(var_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(f32(-1f) * -399f)), 353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1195f)))));
    let var_3 = var_2.e.yx;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(_wgslsmith_div_i32(u_input.a.x, -4462i) == u_input.a.x, true, true));
    global0 = ~(~min(vec3<u32>(~4294967295u, 23981u, 15826u), vec3<u32>(min(global0.x, global0.x), 0u, global0.x)));
    let var_1 = Struct_1(vec3<bool>(var_0.a.x, true, select(!(!var_0.a.x), all(vec2<bool>(true, var_0.a.x)), func_1(vec4<u32>(22604u, global0.x, global0.x, global0.x), 17273i, 46856u))));
    global0 = countOneBits(max(firstTrailingBit(vec3<u32>(0u, 4294967295u, global0.x)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0.x, global0.x, 34430u)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 0u, 5779u), vec3<u32>(global0.x, 1u, global0.x)), firstLeadingBit(vec3<u32>(global0.x, 0u, global0.x))))));
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, global0.x, global0.x) ^ vec3<u32>(global0.x, global0.x, 41168u), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, global0.x, 4294967295u), ~vec3<u32>(global0.x, 1u, 4294967295u)), !(!var_0.a)), vec3<u32>(global0.x, 4294967295u, func_2().x)), ~(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global0.x, global0.x)), ~vec3<u32>(global0.x, 88774u, global0.x)) >> (max(firstTrailingBit(21079u), global0.x) % 32u)), ~global0.x << (_wgslsmith_mod_u32(~(~global0.x), 1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1379f), global0.x, _wgslsmith_f_op_f32(ceil(777f)));
}

