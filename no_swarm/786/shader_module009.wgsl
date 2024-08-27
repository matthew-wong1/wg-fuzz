struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(71142u, 19814u, 1u, 34689u), vec4<u32>(52565u, 0u, 33438u, 4294967295u), vec4<u32>(1u, 1u, 56458u, 4294967295u), vec4<u32>(5184u, 4294967295u, 56656u, 4294967295u), vec4<u32>(34378u, 0u, 4294967295u, 34126u), vec4<u32>(1u, 0u, 56258u, 0u), vec4<u32>(40919u, 0u, 4294967295u, 31649u), vec4<u32>(4294967295u, 19386u, 48131u, 15647u), vec4<u32>(13685u, 5083u, 41932u, 72727u), vec4<u32>(46654u, 1u, 34638u, 30759u), vec4<u32>(4294967295u, 8231u, 47498u, 1u), vec4<u32>(8826u, 1u, 7558u, 24830u), vec4<u32>(1u, 0u, 90244u, 1u), vec4<u32>(27518u, 38463u, 4294967295u, 64393u), vec4<u32>(41752u, 91967u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 5657u, 0u), vec4<u32>(76079u, 26720u, 1u, 0u), vec4<u32>(1u, 92340u, 44594u, 66063u), vec4<u32>(43188u, 45522u, 0u, 70504u), vec4<u32>(1u, 34134u, 4294967295u, 1u), vec4<u32>(60564u, 4294967295u, 80262u, 4294967295u), vec4<u32>(33316u, 77328u, 4294967295u, 4294967295u), vec4<u32>(30583u, 22274u, 33049u, 4294967295u), vec4<u32>(79936u, 1u, 1u, 8683u), vec4<u32>(70863u, 21979u, 1u, 0u), vec4<u32>(10069u, 0u, 89488u, 64382u), vec4<u32>(14723u, 57621u, 3610u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 18473u), vec4<u32>(28368u, 5050u, 8907u, 4294967295u), vec4<u32>(0u, 77981u, 1u, 17594u), vec4<u32>(73463u, 21979u, 1u, 0u));

var<private> global1: i32 = 31561i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_3(Struct_2(true, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, -2147483647i), vec3<i32>(arg_1.b, arg_1.b, arg_1.b))), arg_0, i32(-1i) * -21033i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1707f * arg_0) - _wgslsmith_f_op_f32(arg_0 + -180f)), -996f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = ~global0[_wgslsmith_index_u32(min(43397u, ~max(u_input.a.x, ~u_input.a.x)), 31u)];
    let var_2 = min(countOneBits(-abs(var_0.c)), _wgslsmith_mult_i32(var_0.a.b, ~(~1i)));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_3);
    return !(_wgslsmith_clamp_u32(27948u, 8159u, abs(4586u)) > u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = Struct_3(Struct_2(arg_0.c.x, _wgslsmith_add_i32(arg_1.a, abs(arg_1.a & 0i))), -716f, abs(arg_0.a & arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-765f, arg_0.b, true))))), arg_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, arg_1.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, 667f) + vec2<f32>(-1307f, 1100f))))));
    return ((~(-1i | arg_1.a) & 53385i) | 1i) >> (select(~1u, 1u, true) % 32u);
}

fn func_2() -> Struct_2 {
    return Struct_2(true, func_4(Struct_1(15820i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(363f + -463f)), vec3<bool>(func_3(-877f, Struct_2(true, 2147483647i)), all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)))), Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-800f, 1175f))), vec3<bool>(true, false, any(vec3<bool>(false, true, true)))), min(~4294967295u & u_input.a.x, 30436u)));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = !vec4<bool>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1288f, -1220f)), Struct_2(any(vec4<bool>(false, var_0.a, var_0.a, false)), reverseBits(-5619i))), -14380i >= _wgslsmith_mod_i32(-var_0.b, arg_0.b), !all(vec3<bool>(false, var_0.a, true)), !all(!vec3<bool>(var_0.a, var_0.a, true)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-206f)) * _wgslsmith_f_op_f32(f32(-1f) * -967f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1824f, -319f)))))), _wgslsmith_f_op_f32(floor(-1462f)));
    var var_3 = -(~var_0.b);
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = vec3<bool>(arg_0.c.x | false, (true == !arg_0.c.x) | arg_0.c.x, false);
    let var_1 = arg_0.b;
    let var_2 = vec3<f32>(var_1, _wgslsmith_f_op_f32(arg_0.b * var_1), -915f);
    let var_3 = select(vec4<bool>(false, var_0.x, any(vec3<bool>(any(vec2<bool>(var_0.x, var_0.x)), var_0.x, any(vec4<bool>(var_0.x, false, false, false)))), true), !(!vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, arg_0.c.x, var_0.x)), true, arg_0.c.x, arg_0.c.x)), select(func_5(func_2(), arg_1.x << (abs(u_input.a.x) % 32u)), true, var_0.x));
    let var_4 = 1u;
    return reverseBits(reverseBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 6800u) ^ vec3<u32>(1u, 56260u, u_input.a.x), vec3<u32>(var_4, 1u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(firstLeadingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1816f))), select(vec3<bool>(select(true, true, false), false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true))), u_input.a);
    var var_1 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), true), vec2<bool>(true, true)), true || !all(vec2<bool>(false, false)));
    var var_2 = Struct_1(1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f + -174f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(831f * _wgslsmith_f_op_f32(f32(-1f) * -1153f))), true)), select(vec3<bool>(true, any(vec2<bool>(false, var_1.x)), false), vec3<bool>(any(vec3<bool>(true, false, false)), var_1.x, all(vec3<bool>(var_1.x, true, true))), !select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), var_1.x), vec3<bool>(false, true, true), select(vec3<bool>(true, true, var_1.x), vec3<bool>(true, true, true), var_1.x))));
    global1 = reverseBits(20061i);
    var_2 = Struct_1(firstTrailingBit(i32(-1i) * -(~var_2.a)), -236f, select(var_2.c, !var_2.c, select(vec3<bool>(!var_1.x, func_5(Struct_2(var_2.c.x, 1i), 4188u), true), select(var_2.c, select(var_2.c, var_2.c, vec3<bool>(var_1.x, var_1.x, var_2.c.x)), func_2().a), var_2.c)));
    let var_3 = Struct_1(_wgslsmith_sub_i32(i32(-1i) * -1i, var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-722f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-825f, 1585f)) - _wgslsmith_f_op_f32(select(-346f, _wgslsmith_f_op_f32(sign(var_2.b)), var_1.x)))), vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2042f, 1734f))) == -554f, all(select(!vec4<bool>(var_1.x, true, var_1.x, var_2.c.x), vec4<bool>(var_2.c.x, false, true, false), any(var_2.c.zx))), !any(!var_2.c.xx)));
    let var_4 = Struct_1(42512i >> (~var_0.x % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(257f)) * 1373f) * var_3.b), 1284f)), select(vec3<bool>(true, true, true), var_2.c, vec3<bool>(true, false, func_2().a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(656f, var_4.b, -263f)))), ~vec2<i32>(1i, var_3.a), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, var_2.a, var_4.a)), vec3<i32>(-1i, var_4.a, var_4.a), _wgslsmith_add_vec3_i32(vec3<i32>(12494i, 2695i, var_3.a), vec3<i32>(-1i, 56386i, -10810i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, -2147483647i, var_2.a), ~vec3<i32>(-2147483647i, var_4.a, var_3.a), min(vec3<i32>(-2147483647i, var_4.a, -2147483647i), vec3<i32>(-1i, var_4.a, var_4.a)))) & abs(-vec3<i32>(-1i, var_2.a, 6314i)));
}

