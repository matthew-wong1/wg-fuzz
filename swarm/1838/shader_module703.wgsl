struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1986f)) + _wgslsmith_f_op_f32(-905f * arg_0.c.x)))) + arg_0.c.x), _wgslsmith_sub_vec3_i32(-min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.e, 2147483647i), vec3<i32>(-1i, arg_0.a, -1i), vec3<i32>(arg_0.a, u_input.e, arg_0.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.e, arg_0.a), vec3<i32>(2147483647i, -32250i, -1i))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, -46726i, 2147483647i), vec3<i32>(arg_0.a, 0i, u_input.e)), ~max(vec3<i32>(-1i, u_input.e, 0i), vec3<i32>(arg_0.a, 8348i, 1i)))), arg_0.d, Struct_1(_wgslsmith_clamp_i32(max(2147483647i, arg_0.a), u_input.e, abs(-5259i)), vec4<bool>(select(arg_0.b.x, all(vec3<bool>(true, true, arg_0.b.x)), all(vec4<bool>(true, false, arg_0.b.x, true))), select(true, true, !arg_0.b.x), false, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c * vec2<f32>(-335f, arg_0.d.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-246f, arg_0.c.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.d.x)))), _wgslsmith_f_op_vec2_f32(-arg_0.d)), firstLeadingBit(~(-1i)));
    let var_1 = var_0.d;
    var_0 = Struct_2(514f, var_0.b, var_1.d, var_0.d, var_1.a);
    var_0 = Struct_2(arg_0.d.x, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e & var_0.b.x, ~(-40562i), u_input.e), vec3<i32>(~u_input.e, _wgslsmith_dot_vec2_i32(var_0.b.zz, vec2<i32>(u_input.e, var_0.e)), ~var_0.d.a)), ~select(_wgslsmith_clamp_vec3_i32(var_0.b, vec3<i32>(u_input.e, u_input.e, -36333i), vec3<i32>(var_0.b.x, u_input.e, var_1.a)), vec3<i32>(0i, -2147483647i, var_1.a) | vec3<i32>(arg_0.a, 1i, var_1.a), !var_1.b.zwy)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + vec2<f32>(-2747f, 2451f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, arg_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)))))), Struct_1(var_1.a, vec4<bool>(arg_0.b.x, true, false, true && (0u <= u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + var_0.c.x)), _wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(-305f, 1976f)), _wgslsmith_f_op_vec2_f32(-var_1.c)), vec2<bool>(true, true)))), firstLeadingBit(1i));
    var var_2 = Struct_3(min(arg_0.a & abs(_wgslsmith_mult_i32(arg_0.a, var_0.e)), var_0.d.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-937f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + var_0.c.x))))), var_0.d);
    return ~vec3<i32>(var_0.d.a, arg_0.a, firstLeadingBit(0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-126f))) + -902f), reverseBits(func_3(Struct_1(u_input.e, select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(arg_0.x, false, true, false), var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1003f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(208f, -1315f), vec2<f32>(646f, -326f), true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-961f - 276f), -795f)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-3253f)), _wgslsmith_f_op_f32(289f + _wgslsmith_div_f32(561f, 478f)))), Struct_1(1i, !select(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.x, false, true, false), true), !vec4<bool>(false, var_0.x, false, arg_0.x), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1615f * -659f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f - -173f))), vec2<f32>(_wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(floor(623f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2270f - -1012f) * 1045f))), _wgslsmith_div_i32(reverseBits(-1i), 47298i));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.c.x, var_1.d.c.x), _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.a)))))));
    var var_3 = vec2<bool>(all(var_1.d.b), any(vec2<bool>(true, !var_1.d.b.x)));
    var_3 = var_0;
    return var_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1942f), _wgslsmith_f_op_f32(-arg_0.a)))) + -2540f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + 206f))))), arg_0.c.x);
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(484f, vec3<i32>(u_input.e, -1i, u_input.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, -698f) - vec2<f32>(-957f, -879f)), func_2(vec2<bool>(false, false), 10197i), _wgslsmith_add_i32(u_input.e, u_input.e)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))))), vec3<i32>(_wgslsmith_add_i32(~(-2147483647i), -(i32(-1i) * -45709i)), u_input.e, (firstLeadingBit(u_input.e) | u_input.e) >> (4294967295u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f + 445f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-790f)))), true))), Struct_1(_wgslsmith_sub_i32(-58293i, _wgslsmith_div_i32(-1i, u_input.e) ^ -2147483647i), select(func_2(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, -48297i), vec3<i32>(2122i, u_input.e, u_input.e))).b, select(vec4<bool>(true, true, true, true), func_2(vec2<bool>(true, true), 13470i).b, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), 1211f)), vec2<f32>(_wgslsmith_f_op_f32(-1222f + _wgslsmith_f_op_f32(847f * -350f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-667f - 1453f), _wgslsmith_f_op_f32(round(-2554f)))))), u_input.e);
    var var_1 = ~vec3<i32>(-(abs(u_input.e) ^ _wgslsmith_add_i32(u_input.e, 62404i)), 0i, -reverseBits(~u_input.e));
    var_1 = var_0.b;
    var_1 = -(~max(var_0.b, min(~vec3<i32>(var_1.x, var_1.x, -29751i), var_0.b)));
    var_1 = var_0.b;
    return !any(!vec4<bool>(any(var_0.d.b.xw), var_0.d.b.x, var_0.d.b.x, var_0.d.b.x));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1857f)) - arg_0)), arg_0), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-362f, _wgslsmith_f_op_f32(max(-2062f, 326f)), -1866f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.d.d.x + -467f), _wgslsmith_f_op_f32(f32(-1f) * -455f))))) - 907f);
    var var_1 = arg_1.x;
    let var_2 = arg_3.d;
    var_0 = _wgslsmith_f_op_f32(-1539f - var_2.c.x);
    var_1 = -779f;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_6(vec3<u32>(33467u, _wgslsmith_dot_vec4_u32(vec4<u32>(99658u, u_input.c.x, 47685u, 18869u), vec4<u32>(u_input.a.x, 1u, u_input.b, 35179u)), u_input.b), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a), func_1(~vec3<u32>(27852u, 0u, 36376u)), _wgslsmith_sub_i32(abs(u_input.e), func_2(vec2<bool>(true, true), u_input.e).a))), ~u_input.c.x, Struct_2(_wgslsmith_f_op_f32(step(-1051f, -228f)), vec3<i32>(-1i, u_input.e, u_input.e) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.e, 2147483647i), vec3<i32>(-45668i, u_input.e, -1i), vec3<i32>(u_input.e, u_input.e, u_input.e)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(286f, 1296f) * vec2<f32>(-131f, -565f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1195f, 1000f)), true)), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), u_input.e), countOneBits(_wgslsmith_div_i32(u_input.e, -7622i)))), 1u, 53816u);
    var_0 = ~(~(~(~vec3<u32>(u_input.d, u_input.a.x, 7652u))));
    let var_1 = ~(~(~vec3<u32>(1u, 4560u, var_0.x)));
    let var_2 = vec2<i32>(u_input.e, 61591i ^ u_input.e);
    var var_3 = vec2<u32>(43575u, var_0.x << (var_0.x % 32u));
    let var_4 = 16371i;
    let var_5 = ~var_1.x;
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1608f + -1280f) - 591f) * 1044f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1187f + -1258f))), _wgslsmith_div_f32(690f, -1038f))), !func_2(func_2(vec2<bool>(false, true), 75628i).b.zx, _wgslsmith_mod_i32(var_4, 44383i)).b.x)), _wgslsmith_f_op_f32(round(-604f)), _wgslsmith_f_op_f32(-273f + _wgslsmith_f_op_f32(f32(-1f) * -302f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-331f, -1000f, -1457f, 227f), vec4<f32>(-721f, func_2(vec2<bool>(true, true), 1i).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(941f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f - -612f) - _wgslsmith_div_f32(var_6.x, -1615f))), false)));
}

