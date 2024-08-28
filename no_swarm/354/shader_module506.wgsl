struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(vec2<u32>(4294967295u, 60601u), vec3<i32>(9266i, 11466i, -15981i), 237f, vec2<u32>(0u, 34926u)), Struct_1(vec2<u32>(4294967295u, 1554u), vec3<i32>(-32183i, 1i, 0i), -141f, vec2<u32>(25654u, 0u)));

var<private> global1: Struct_2 = Struct_2(true, Struct_1(vec2<u32>(71443u, 45774u), vec3<i32>(-1i, -50225i, -1i), 226f, vec2<u32>(1u, 105681u)), Struct_1(vec2<u32>(0u, 18522u), vec3<i32>(0i, -11440i, 42129i), 642f, vec2<u32>(0u, 1u)));

var<private> global2: f32 = 784f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    var var_0 = global1.b.a.x >> (_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.b.a.x, 66037u, arg_2.x, 8939u), vec4<u32>(0u, arg_2.x, arg_2.x, 64272u))) % 32u);
    var var_1 = !vec3<bool>(!global1.a, global1.a, !global0.a);
    return _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f * _wgslsmith_f_op_f32(global0.b.c + 1667f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1088f, 1000f, 392f, -2225f), vec4<f32>(1361f, arg_1.x, 1184f, global0.b.c), true)), _wgslsmith_div_vec4_f32(vec4<f32>(-129f, 1353f, global0.b.c, global1.c.c), vec4<f32>(751f, global0.b.c, arg_1.x, global0.b.c)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(979f, -310f, 557f, -1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1493f, -1279f, 593f, global0.b.c))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.c, -710f, -511f, -989f) - vec4<f32>(-1000f, global1.c.c, global1.c.c, -436f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1181f, global1.b.c, -498f, -847f)) * vec4<f32>(-1243f, arg_1.x, arg_1.x, -110f)))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(round(global1.c.c)), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(global0.a, global0.a), Struct_2(false, global0.c, global0.b), global1.c.c, Struct_1(global0.c.d, global0.c.b, 1000f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, global1.c.c, global1.c.c, -611f)), reverseBits(vec3<u32>(global0.b.d.x, 0u, arg_0.x)), global0.b.c)), global1.b.c)));
    global0 = Struct_2(global1.a, Struct_1(vec2<u32>(_wgslsmith_div_u32(global0.c.d.x, abs(1u)), ~abs(arg_0.x)), ~global0.b.b, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(12769u, 6009u), arg_0, abs(vec2<u32>(2551u, arg_0.x))), arg_0, ~(~global1.c.d))), Struct_1(abs(select(arg_0, arg_0, false)) << (abs(vec2<u32>(41508u, arg_0.x)) % vec2<u32>(32u)), global1.b.b, _wgslsmith_f_op_f32(-618f + var_1.x), ~vec2<u32>(1u, 0u) << (~vec2<u32>(global0.c.d.x, 59880u) % vec2<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-global0.c.c);
    var var_2 = global0.b.c;
    return Struct_2(global0.a, Struct_1(global1.b.a, -global1.b.b, _wgslsmith_f_op_f32(global1.c.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-184f)), _wgslsmith_f_op_f32(round(-499f)))), global1.c.d), Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(global0.c.d << (vec2<u32>(arg_0.x, global1.b.a.x) % vec2<u32>(32u)), select(arg_0, vec2<u32>(global0.b.a.x, 1u), vec2<bool>(true, true)))), abs(max(global0.c.b, global0.c.b)), -636f, global0.b.d));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> vec3<f32> {
    var var_0 = !select(select(!select(vec4<bool>(true, arg_0.a, global0.a, global0.a), vec4<bool>(global0.a, false, global1.a, false), vec4<bool>(arg_0.a, false, false, global0.a)), select(!vec4<bool>(true, global1.a, true, false), vec4<bool>(true, true, false, false), any(vec3<bool>(true, false, global1.a))), true), select(vec4<bool>(global1.c.d.x >= arg_0.b.d.x, false, func_2(vec2<u32>(26231u, 25766u), vec3<f32>(global1.b.c, global0.b.c, 1096f)).a, global0.b.b.x != global1.b.b.x), select(select(vec4<bool>(global0.a, global0.a, arg_2, arg_0.a), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(global1.a, global0.a, global0.a, false)), vec4<bool>(arg_2, global1.a, false, true), global0.a | true), arg_2), !(!select(vec4<bool>(global0.a, false, global0.a, false), vec4<bool>(true, global0.a, arg_2, arg_0.a), false)));
    let var_1 = arg_0.c;
    global1 = arg_0;
    global1 = arg_0;
    let var_2 = _wgslsmith_sub_vec3_u32(~(reverseBits(vec3<u32>(0u, arg_0.c.a.x, global1.b.a.x)) >> (vec3<u32>(min(global1.b.d.x, arg_0.b.a.x), _wgslsmith_div_u32(1u, 99980u), 3431u) % vec3<u32>(32u))), vec3<u32>(0u, ~global0.b.d.x, ~max(_wgslsmith_mod_u32(52157u, var_1.a.x), 51573u)));
    return vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(!(!vec2<bool>(global0.a, var_0.x)), arg_0, arg_1.x, global1.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, global1.c.c, -323f, 271f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.c), _wgslsmith_f_op_f32(sign(204f)), 1348f, _wgslsmith_f_op_f32(-var_1.c)), !(!vec4<bool>(global0.a, false, arg_2, global1.a)))), reverseBits(reverseBits(~var_2)), arg_0.b.c)), _wgslsmith_f_op_f32(-func_2(vec2<u32>(var_1.a.x, firstLeadingBit(1u)), _wgslsmith_f_op_vec3_f32(select(arg_1.zzy, _wgslsmith_div_vec3_f32(vec3<f32>(517f, 166f, var_1.c), arg_1.ywx), false))).c.c), _wgslsmith_f_op_f32(-3132f + var_1.c));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + arg_0.x)));
    let var_0 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(~firstTrailingBit(global1.c.a), reverseBits(global0.b.d)), vec2<u32>(4294967295u, ~10923u), arg_1.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.c)) * _wgslsmith_f_op_f32(-arg_0.x)))), -447f, _wgslsmith_f_op_f32(f32(-1f) * -957f), global0.c.c);
    var var_2 = arg_0.yz;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.c * _wgslsmith_f_op_f32(-arg_1.c)) - -2150f)))));
    return Struct_2(!(!global0.a), func_2(~max(_wgslsmith_div_vec2_u32(vec2<u32>(84361u, 0u), vec2<u32>(arg_1.a.x, 17405u)), vec2<u32>(29530u, 29189u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3, global0.b.c) - vec3<f32>(var_1.x, global0.c.c, global1.b.c)))).c, Struct_1(countOneBits(countOneBits(var_0 >> (vec2<u32>(var_0.x, arg_1.d.x) % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.b.x, global1.b.b.x, 2147483647i), arg_2, vec3<i32>(arg_2.x, global0.c.b.x, -1i) >> (vec3<u32>(8946u, var_0.x, var_0.x) % vec3<u32>(32u))) << (((vec3<u32>(var_0.x, 29904u, 4294967295u) >> (vec3<u32>(9459u, var_0.x, 55803u) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, global1.b.a.x), vec3<u32>(arg_1.d.x, 4294967295u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), -183f, global0.b.a));
}

fn func_1() -> Struct_1 {
    let var_0 = !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(973f - -1060f), _wgslsmith_f_op_f32(floor(-1001f)))) < -1047f) | global1.a;
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.c, global1.c.c, -710f) * vec3<f32>(333f, -711f, 1249f))) - _wgslsmith_f_op_vec3_f32(func_4(func_2(global1.b.d, vec3<f32>(global0.c.c, global1.b.c, -969f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1497f, global1.b.c, 142f, -939f)), all(vec4<bool>(var_0, var_0, true, global1.a))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.c, global1.b.c, -492f) + vec3<f32>(global0.b.c, -294f, 1472f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.c, global1.b.c, global1.c.c) + vec3<f32>(-541f, global0.c.c, global1.b.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, global0.b.c, 104f)))))), func_2(~countOneBits(abs(vec2<u32>(global1.b.d.x, 1u))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-601f + 379f), global0.c.c, global0.c.c)))).b, ~abs(min(global1.c.b, vec3<i32>(-1i, -27312i, 0i)) << (abs(vec3<u32>(global1.b.a.x, 19196u, global0.b.a.x)) % vec3<u32>(32u))));
    var var_2 = reverseBits(select(global0.b.d.x, ~4294967295u, true) >> (~(global0.c.d.x >> (func_2(vec2<u32>(42099u, global0.c.d.x), vec3<f32>(-527f, 942f, -260f)).c.d.x % 32u)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1249f * global0.c.c)))))));
    let var_4 = Struct_4(Struct_1(var_1.c.d, ~(~(global1.b.b ^ vec3<i32>(global0.b.b.x, var_1.b.b.x, -723i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.c))))), global1.b.d), Struct_1(func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.c, -2382f, var_3))), func_2(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(var_3, var_1.b.c, var_1.c.c)).c, global0.b.b).c.d << ((firstLeadingBit(global0.b.d) >> (var_1.b.d % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<i32>(-countOneBits(global0.c.b.x), 39587i, -reverseBits(var_1.b.b.x)), _wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_div_vec2_u32(~(~var_1.b.d), vec2<u32>(0u, global1.b.d.x) & ~vec2<u32>(global0.c.a.x, global1.b.a.x))), select(vec3<bool>(false, select(true & global1.a, any(vec4<bool>(false, var_1.a, var_0, var_1.a)), global1.c.a.x < var_1.c.d.x), true), !vec3<bool>(false, select(global1.a, true, global0.a), var_0 != true), vec3<bool>(true, 62017u > ~var_1.c.d.x, !select(false, var_0, true))), global1.b.c, true);
    return Struct_1(_wgslsmith_add_vec2_u32(min(~var_4.a.a, ~vec2<u32>(26983u, global1.b.d.x)) & func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3, -1167f, -1325f), vec3<f32>(var_4.b.c, 1274f, -1096f))), Struct_1(vec2<u32>(var_1.c.a.x, global1.b.a.x), vec3<i32>(global1.b.b.x, var_1.c.b.x, var_1.c.b.x), 416f, vec2<u32>(1u, global0.c.a.x)), -global0.b.b).c.a, vec2<u32>(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(115714u, var_1.b.d.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(69530u, 4294967295u, 1u), vec3<u32>(var_1.b.d.x, var_1.b.a.x, var_1.b.a.x))))), ~max(global0.c.b, -(~global1.c.b)), global1.b.c, func_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.c.c, global1.c.c) * vec3<f32>(-694f, 1383f, global1.c.c)))), vec3<f32>(_wgslsmith_f_op_f32(var_4.a.c + var_1.c.c), _wgslsmith_div_f32(var_3, global0.c.c), global1.c.c))), var_4.a, ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -25479i, -2147483647i), global0.b.b, vec3<i32>(u_input.c.x, 2147483647i, 2147483647i)))).b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(!global0.a & global0.a, func_1(), func_1());
    let var_0 = Struct_3(!vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.b.x, 1i), vec2<i32>(-1i, -12205i)) > _wgslsmith_mult_i32(0i, -2147483647i), true), func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.c, -1000f, -309f), vec3<f32>(global0.b.c, 407f, global1.c.c), global0.a)), vec3<f32>(531f, global0.b.c, 913f), vec3<bool>(global1.a, false, global0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.c, 583f, global1.b.c) * vec3<f32>(global1.c.c, global1.c.c, global0.c.c)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-295f, -564f, global0.c.c) + vec3<f32>(143f, global0.b.c, global1.c.c)) * vec3<f32>(global1.c.c, global1.b.c, -427f)), func_1(), vec3<i32>(global0.b.b.x >> (global1.b.d.x % 32u), _wgslsmith_clamp_i32(u_input.c.x, 0i, global0.c.b.x), global1.c.b.x & 15537i)).b, vec3<i32>(abs(-2147483647i), ~func_1().b.x, -2147483647i)), _wgslsmith_f_op_f32(-global0.b.c), global0.c);
    let var_1 = Struct_4(func_2(reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 3908u), ~var_0.b.b.d)), vec3<f32>(global0.c.c, _wgslsmith_f_op_f32(f32(-1f) * -344f), global1.b.c)).c, func_5(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(func_5(vec3<f32>(global0.b.c, global0.c.c, 672f), Struct_1(global0.c.a, global0.c.b, global0.b.c, var_0.d.a), vec3<i32>(12285i, 1i, global1.b.b.x)).b.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(global0.c.c - global1.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.c, global0.b.c, var_0.b.b.c))))), Struct_1(~global1.c.d | vec2<u32>(4294967295u, 14316u), vec3<i32>(_wgslsmith_sub_i32(50592i, global0.b.b.x), 0i, -u_input.c.x), _wgslsmith_f_op_f32(abs(global0.c.c)), min(_wgslsmith_div_vec2_u32(vec2<u32>(22951u, global0.c.d.x), vec2<u32>(1u, 1u)), global1.c.d)), vec3<i32>(-1i, select(-global1.c.b.x, reverseBits(62811i), any(vec2<bool>(false, false))), u_input.d)).c, vec3<bool>(all(!(!vec4<bool>(false, var_0.b.a, global1.a, true))), var_0.a.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.c)))), var_0.a.x);
    let var_2 = var_0.d;
    var var_3 = global1.b.d.x;
    global1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(216f, global0.c.c, 983f) - vec3<f32>(2645f, 1000f, global0.c.c))))), Struct_1(max(~(vec2<u32>(1u, var_2.d.x) << (vec2<u32>(10109u, 63892u) % vec2<u32>(32u))), vec2<u32>(global0.b.d.x, global1.b.a.x & global0.c.d.x)), ~var_1.a.b, var_2.c, var_2.a | select(var_2.a, var_1.b.a, !global0.a)), var_1.b.b);
    let var_4 = Struct_3(!vec2<bool>(true, (var_1.a.d.x != 20678u) || !global1.a), var_0.b, _wgslsmith_f_op_f32(-global1.b.c), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(var_0.d.a.x), global0.c.a.x >> (var_1.a.a.x % 32u)), max(var_4.b.b.a.x, 4294967295u)) | abs(~abs(global1.b.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.c, -1028f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_4.b.c.c - -988f))))), -(max(select(var_2.b, vec3<i32>(var_2.b.x, var_1.a.b.x, 27787i), true), var_1.a.b) | -(~var_4.d.b)));
}

