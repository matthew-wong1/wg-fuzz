struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 957f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = ~vec4<i32>(1i, 1i, 1i, 1i) | reverseBits(vec4<i32>(74327i, 17582i, _wgslsmith_clamp_i32(1i, 2147483647i, _wgslsmith_add_i32(-1i, 2392i)), -29346i));
    let var_1 = arg_0.b;
    global0 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = vec4<bool>(true, !(_wgslsmith_div_f32(_wgslsmith_div_f32(-295f, arg_0.c), arg_0.b.a) >= arg_0.b.a), false, var_1.b);
    let var_3 = var_0.x;
    return _wgslsmith_sub_i32(min(var_0.x, select(var_0.x << (35352u % 32u), abs(1i), any(vec2<bool>(var_1.b, arg_0.b.b)))) ^ ~(-(~var_0.x)), var_0.x);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(43198i, max(_wgslsmith_mult_i32(-2147483647i, -1i >> (u_input.a % 32u)), firstLeadingBit(_wgslsmith_add_i32(0i, 0i))), _wgslsmith_sub_i32(abs(0i) & (func_3(Struct_2(arg_0, Struct_1(arg_3, true), arg_3), arg_3) >> (~1u % 32u)), -20293i));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-332f, _wgslsmith_f_op_f32(abs(1231f)), _wgslsmith_f_op_f32(sign(arg_1))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_3)) * _wgslsmith_f_op_f32(sign(1131f)))), arg_3));
    var var_2 = Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -815f)), false), var_1.x);
    var var_3 = min(1u, _wgslsmith_clamp_u32(17920u, 1u, u_input.b));
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-580f)) * _wgslsmith_f_op_f32(f32(-1f) * -535f))), var_1.x));
    return Struct_1(var_1.x, var_2.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(180f, 614f)) * arg_0.a);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -751f))) + func_2(u_input.b ^ u_input.c.x, _wgslsmith_f_op_f32(max(1340f, -424f)), arg_0.b, _wgslsmith_f_op_f32(round(arg_0.a))).a))), !(_wgslsmith_f_op_f32(trunc(arg_0.a)) <= _wgslsmith_f_op_f32(-arg_0.a)));
    var var_1 = !select(select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.b, true, false), select(vec3<bool>(var_0.b, arg_0.b, var_0.b), vec3<bool>(true, false, true), vec3<bool>(false, arg_2, var_0.b))), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(true, var_0.b, false), !vec3<bool>(arg_2, arg_2, false)), true || arg_0.b), select(vec3<bool>(true, false, any(vec2<bool>(arg_0.b, arg_2))), vec3<bool>(!arg_0.b, any(vec2<bool>(true, var_0.b)), true), !all(vec4<bool>(true, false, var_0.b, false))), _wgslsmith_mult_u32(abs(4294967295u), ~u_input.a) < firstLeadingBit(max(4294967295u, 10064u)));
    var_0 = func_2(u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -577f))), any(!(!vec4<bool>(false, true, false, arg_2))) & true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a)))))));
    var_1 = !vec3<bool>(any(!vec3<bool>(true, arg_0.b, true)) == true, false, any(select(vec3<bool>(arg_2, arg_0.b, false), vec3<bool>(true, false, var_1.x), !vec3<bool>(true, arg_2, false))));
    return func_2(select(1u & (4294967295u & abs(arg_1)), u_input.c.x >> (min(_wgslsmith_mod_u32(arg_1, 4294967295u), 0u) % 32u), !any(select(vec4<bool>(arg_2, var_0.b, false, false), vec4<bool>(true, true, arg_2, var_0.b), vec4<bool>(false, var_1.x, false, true)))), var_0.a, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(370f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(~(~(-19896i)), _wgslsmith_div_i32(countOneBits(-2147483647i) >> (~u_input.a % 32u), -2147483647i)) & -48375i;
    var var_1 = Struct_2(u_input.c.x, func_4(func_2(u_input.c.x, 463f, true, _wgslsmith_f_op_f32(max(-912f, _wgslsmith_f_op_f32(f32(-1f) * -694f)))), ~u_input.c.x | select(~u_input.b, max(4294967295u, 31389u), func_2(18386u, 1000f, true, -1182f).b), !(_wgslsmith_f_op_f32(sign(-1711f)) <= _wgslsmith_div_f32(-476f, 2269f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-158f, _wgslsmith_f_op_f32(809f - 934f))), _wgslsmith_f_op_f32(-774f - _wgslsmith_f_op_f32(min(-431f, -252f))))));
    var var_2 = func_2(~abs(var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a + -130f) * _wgslsmith_f_op_f32(f32(-1f) * -2503f)) - var_1.c)), var_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2520f)))))));
    var_2 = func_2(50692u, -236f, false, -368f);
    var var_3 = var_1.b;
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> Struct_2 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1447f))) * -410f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.a.b.a, arg_2.a.c))))));
    var var_2 = arg_2.a;
    var_2 = arg_2.a;
    var_0 = true;
    return arg_2.a;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 72901u, 0u), vec3<u32>(13008u, arg_1.a, 34103u), vec3<bool>(arg_1.b.b, false, arg_1.b.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(u_input.b, arg_1.a, arg_1.a), vec3<u32>(u_input.b, arg_1.a, 37310u))) | 1138u, 44408u << (~func_5(Struct_2(arg_1.a, arg_1.b, -1457f), Struct_1(arg_0, arg_1.b.b), Struct_4(Struct_2(u_input.a, Struct_1(arg_1.b.a, true), 539f), Struct_3(2147483647i, u_input.c), 1i), 2147483647i).a % 32u)), arg_1.a, ~u_input.a);
    var var_1 = i32(-1i) * -54283i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(floor(-314f))));
    var_1 = 6933i;
    var_1 = -_wgslsmith_add_i32(1i >> (0u % 32u), ~(0i));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), _wgslsmith_add_u32(u_input.b, var_0.x), ~var_0.x, 1u), vec4<u32>(reverseBits(4294967295u), u_input.c.x, u_input.c.x << (var_0.x % 32u), arg_1.a)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(17710u, 46023u, u_input.c.x, var_0.x) ^ vec4<u32>(0u, var_0.x, 0u, 4294967295u), ~vec4<u32>(8586u, var_0.x, 1u, 33576u), vec4<u32>(arg_1.a, 9370u, 27055u, 30053u) >> (vec4<u32>(4294967295u, arg_1.a, 13289u, 20578u) % vec4<u32>(32u))), vec4<u32>(38080u, 1u, 59528u, u_input.a) << (vec4<u32>(var_0.x, 1u, u_input.a, arg_1.a) % vec4<u32>(32u)), true)) ^ vec4<u32>(4294967295u, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, ~arg_1.a, u_input.b, countOneBits(arg_1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, arg_1.a, 0u, 28585u), min(vec4<u32>(20531u, 3476u, var_0.x, 4294967295u), vec4<u32>(0u, u_input.b, 25292u, arg_1.a)))), max(77926u, firstLeadingBit(u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1000f;
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(max(~_wgslsmith_div_u32(5206u, u_input.c.x), ~_wgslsmith_mod_u32(u_input.c.x, u_input.b)), _wgslsmith_add_u32(13575u, ~(~2051u)), 42776u, reverseBits(_wgslsmith_mult_u32(u_input.b | 50219u, 52489u))), ~countOneBits(select(vec4<u32>(59928u, 64667u, u_input.c.x, u_input.a), vec4<u32>(u_input.b, 67846u, 0u, u_input.c.x), vec4<bool>(true, false, false, false)) | (vec4<u32>(u_input.a, 15884u, 74503u, 4294967295u) << (vec4<u32>(1u, u_input.b, 48952u, u_input.a) % vec4<u32>(32u)))));
    var_0 = max(func_6(1f, func_5(Struct_2(87717u, func_1(), -1285f), func_1(), Struct_4(Struct_2(25371u, Struct_1(-1516f, false), -671f), Struct_3(-27892i, vec2<u32>(22898u, 9311u)), _wgslsmith_div_i32(-18739i, -1i)), _wgslsmith_mult_i32(func_3(Struct_2(4294967295u, Struct_1(-564f, false), 121f), 423f), 0i))), ~(vec4<u32>(28883u, u_input.c.x, u_input.b, u_input.c.x) & select(vec4<u32>(u_input.a, u_input.b, u_input.c.x, u_input.a), vec4<u32>(56506u, u_input.c.x, var_0.x, var_0.x), true)) ^ reverseBits(reverseBits(firstTrailingBit(vec4<u32>(75906u, 104635u, var_0.x, 15230u)))));
    global0 = -115f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + func_1().a), true)) - -1002f));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -242f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec4<i32>(firstLeadingBit(~abs(1i)), 2147483647i, -26068i, 2147483647i), (abs(-vec2<i32>(84097i, 2147483647i)) ^ (_wgslsmith_clamp_vec2_i32(vec2<i32>(16516i, 0i), vec2<i32>(1i, -47337i), vec2<i32>(2147483647i, -4089i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(12909i, 5523i), vec2<i32>(-17661i, 29996i)))) & (firstTrailingBit(~vec2<i32>(19244i, -23314i)) | select(select(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, 77546i), vec2<bool>(false, true)), countOneBits(vec2<i32>(-1354i, 35502i)), -400f == var_1)), vec4<i32>(_wgslsmith_mult_i32(-511i, select(~27738i, select(145i, 32288i, false), true)), _wgslsmith_mult_i32(min(-27287i, i32(-1i) * -45087i), i32(-1i) * -1i), min(~abs(2147483647i), -62425i << (countOneBits(21454u) % 32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-14309i, -2147483647i), ~vec2<i32>(13127i, 15792i)), -35022i)), _wgslsmith_f_op_f32(floor(var_1)));
}

