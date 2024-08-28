struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25929u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = ~(~(~67447u));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-818f, 942f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - -555f))))));
    global0 = reverseBits(u_input.a.x);
    var var_1 = Struct_5(false, Struct_4(Struct_1(u_input.c << (~4294967295u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(940f, -3037f)))), vec2<u32>(u_input.a.x, 35269u) | vec2<u32>(u_input.a.x, u_input.a.x & 4294967295u), Struct_2(~u_input.c, Struct_1(~1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, 795f))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, -444f)))), countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(arg_0, arg_0, u_input.d)), vec3<i32>(32169i, 55751i, 5610i))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), Struct_4(Struct_1(~_wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1137f, -332f) - vec2<f32>(1000f, -575f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(924f, -261f)))), ~(~vec2<u32>(40885u, 35632u)), Struct_2(u_input.a.x, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 46320u, u_input.c), u_input.a), vec2<f32>(614f, 1000f)), Struct_1(u_input.a.x, vec2<f32>(-388f, -1230f))), vec3<i32>(40881i, ~(-2147483647i), _wgslsmith_mult_i32(arg_0, -u_input.d)), false), 1u == firstTrailingBit(u_input.a.x), 55887u);
    var var_2 = u_input.a;
    return ~(~u_input.a);
}

fn func_2() -> vec2<u32> {
    var var_0 = abs(select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.d, 1i), vec3<i32>(-2147483647i, u_input.b.x, 2147483647i)), vec3<i32>(u_input.b.x, 2147483647i, 1i), vec3<i32>(2147483647i, u_input.b.x, u_input.d) ^ vec3<i32>(u_input.d, 2147483647i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 7472i), vec3<i32>(u_input.d, u_input.b.x, 0i)), true) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 46841u, u_input.c) << (u_input.a % vec3<u32>(32u)), func_3(u_input.d ^ u_input.b.x)) % vec3<u32>(32u)));
    global0 = u_input.c;
    var var_1 = !(!vec2<bool>(any(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, true, false, true))));
    let var_2 = Struct_3(Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(~u_input.a, _wgslsmith_div_vec3_u32(u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, 143f)))), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, min(u_input.a.x, u_input.a.x), countOneBits(0u)), ~func_3(u_input.b.x)), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1065f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2093f, -384f)))), Struct_1(~(~17772u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1882f, 2107f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-245f, 1916f))), var_1.x & true)))), !vec4<bool>(true, var_1.x, !var_1.x | true, u_input.c > 0u), -1197f);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -266f)));
    return u_input.a.yx;
}

fn func_1() -> Struct_1 {
    let var_0 = max(vec2<u32>(52712u, u_input.a.x), func_2());
    let var_1 = Struct_4(Struct_1(1u, vec2<f32>(1f, 1f)), vec2<u32>(u_input.c, 47113u), Struct_2(~(~17929u), Struct_1(87299u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -498f))), Struct_1(~(~1u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(432f, 950f), vec2<f32>(445f, -2455f))))))), vec3<i32>(1i, ~u_input.d, -2147483647i) & -(-vec3<i32>(u_input.b.x, u_input.d, 2147483647i) << (~vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), true);
    global0 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(28734u, 4294967295u, ~45292u, select(var_0.x, 40078u, any(vec2<bool>(true, false)))), vec4<u32>(_wgslsmith_div_u32(var_0.x, var_1.a.a) >> (var_0.x % 32u), ~10220u, ~(~1u), (var_1.a.a << (var_1.c.c.a % 32u)) | var_0.x)), u_input.a.x);
    let var_2 = var_0;
    global0 = _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 15462u), vec2<u32>(1u, u_input.c), var_2), _wgslsmith_add_vec2_u32(u_input.a.xx & vec2<u32>(var_2.x, u_input.c), vec2<u32>(~31365u, ~36373u))));
    return var_1.c.b;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 368f;
    var var_1 = Struct_5(true, Struct_4(Struct_1(u_input.c, vec2<f32>(_wgslsmith_div_f32(-496f, arg_1.b.c.b.x), _wgslsmith_f_op_f32(ceil(arg_1.b.b.b.x)))), u_input.a.zz, Struct_2(_wgslsmith_sub_u32(u_input.c ^ arg_1.a.a, u_input.c), func_1(), func_1()), select(vec3<i32>(arg_0, -38072i, 6507i), -vec3<i32>(u_input.b.x, -22673i, -1i), !arg_1.c.x) | abs(abs(vec3<i32>(arg_0, u_input.d, -2147483647i))), (~u_input.a.x >> (~u_input.a.x % 32u)) <= func_3(-u_input.d).x), Struct_4(arg_1.b.c, _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.b.b.a, arg_1.a.a)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 12008u), u_input.a.yy), ~u_input.a.yy)), arg_1.b, vec3<i32>(abs(-45216i), firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.d)), abs(i32(-1i) * -15797i)), true), _wgslsmith_mod_u32(max(~arg_1.a.a, arg_1.a.a), arg_1.b.c.a) != ~firstTrailingBit(u_input.a.x), u_input.c);
    global0 = ~(~u_input.c);
    let var_2 = var_1.b.a.a;
    let var_3 = Struct_4(func_1(), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(38065u, 0u), ~var_1.c.b) & ~(~vec2<u32>(38631u, arg_1.b.b.a)), ~vec2<u32>(6355u, ~arg_1.a.a)), arg_1.b, ~(vec3<i32>(var_1.b.d.x, arg_0, 55784i) >> (~(~vec3<u32>(var_1.b.a.a, arg_1.a.a, arg_1.a.a)) % vec3<u32>(32u))), !arg_1.c.x);
    return Struct_3(arg_1.b.b, var_1.c.c, !vec4<bool>((1u | var_3.b.x) > var_3.c.c.a, any(arg_1.c.xx) & !arg_1.c.x, !arg_1.c.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(570f, -149f, !select(arg_1.c.x, arg_1.c.x, var_1.a))) + arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(reverseBits(i32(-1i) * -u_input.b.x), -904i, false), Struct_3(Struct_1(abs(u_input.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1174f, 422f) * vec2<f32>(167f, 308f))))), Struct_2(reverseBits(40994u), func_1(), func_1()), select(vec4<bool>(any(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, false, true))), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), false, false), vec4<bool>(true, all(vec3<bool>(false, false, true)), false, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f) + _wgslsmith_f_op_f32(step(-192f, 249f)))))));
    var_0 = Struct_3(func_4(-28198i, func_4(2147483647i, func_4(abs(-1i), func_4(u_input.d, Struct_3(Struct_1(22486u, var_0.a.b), var_0.b, var_0.c, var_0.a.b.x))))).a, var_0.b, select(vec4<bool>(select(true, var_0.c.x & false, !var_0.c.x), false, var_0.c.x, true), vec4<bool>(false, true, !select(var_0.c.x, var_0.c.x, false), !(!var_0.c.x)), true), var_0.d);
    var_0 = Struct_3(func_4(_wgslsmith_clamp_i32(-8787i, ~abs(u_input.d), 0i), Struct_3(var_0.a, Struct_2(u_input.a.x, func_4(u_input.b.x, Struct_3(Struct_1(40745u, var_0.a.b), Struct_2(var_0.a.a, var_0.b.c, var_0.a), vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), 1296f)).a, Struct_1(var_0.a.a, vec2<f32>(-141f, -493f))), vec4<bool>(true, true, true, 21992u >= var_0.b.b.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-440f, var_0.d))))).a, var_0.b, !var_0.c, _wgslsmith_f_op_f32(abs(-1372f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.x)), -855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1814f)), _wgslsmith_f_op_f32(trunc(742f)), _wgslsmith_f_op_f32(-364f + 298f), -986f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, _wgslsmith_div_f32(2064f, 533f), var_0.b.c.b.x, func_1().b.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.b.x, var_0.d, var_0.a.b.x, 601f) + vec4<f32>(var_0.d, var_0.b.b.b.x, 362f, 315f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 482f, 2503f, 1489f))))))));
    global0 = _wgslsmith_add_u32(59157u ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.c.a, ~var_0.a.a), 1u), ~4294967295u);
    var var_2 = ~40326i;
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_3, 1i)), select(~(~select(vec4<u32>(var_0.b.a, 64089u, u_input.c, var_0.a.a), vec4<u32>(var_0.b.c.a, 0u, 4294967295u, var_0.a.a), true)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, 13613u, var_0.a.a) ^ ~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), ~vec4<u32>(1u, 0u, var_0.a.a, 26902u) << ((vec4<u32>(u_input.a.x, u_input.c, var_0.b.c.a, u_input.a.x) & vec4<u32>(4294967295u, var_0.a.a, 74261u, u_input.c)) % vec4<u32>(32u))), !var_0.c.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_1().b.x))), ~firstTrailingBit(7628u));
}

