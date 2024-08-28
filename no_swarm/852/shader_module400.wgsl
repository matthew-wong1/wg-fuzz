struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_2(-firstTrailingBit(_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(707i, u_input.a)))), abs(-max(vec4<i32>(u_input.a, -2147483647i, 20851i, -2147483647i) >> (vec4<u32>(18149u, 68293u, u_input.b, 1u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1449f, -666f, 853f, -466f)), vec4<f32>(arg_0, -1000f, arg_0, arg_0)))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - -407f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), -2011f)))), arg_0, -1161f, 142f), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(0u, 9163u, u_input.c)) << (countOneBits(~vec3<u32>(4294967295u, 4580u, 6827u)) % vec3<u32>(32u)), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, arg_0, 1509f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1563f, arg_0, -221f, arg_0))), -vec4<i32>(~(-2147483647i), 0i, ~u_input.a, ~u_input.a)));
    let var_1 = 4294967295u | max(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.e.a.x, u_input.c), ~32526u, 96766u ^ var_0.e.a.x) & 1u, ~_wgslsmith_dot_vec3_u32(var_0.e.a, vec3<u32>(u_input.c, 53362u, u_input.c)) >> (var_0.e.a.x % 32u));
    let var_2 = Struct_4(vec2<bool>(!all(vec2<bool>(true, true)), !(~var_1 < 1u)));
    let var_3 = var_0.a;
    let var_4 = Struct_3(_wgslsmith_dot_vec4_u32(max(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.e.a.x, var_0.e.a.x, 51684u), vec4<u32>(4294967295u, u_input.b, 0u, 4294967295u)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, 0u, var_1, 21182u), vec4<u32>(var_0.e.a.x, 27063u, 14343u, var_1)))), ~vec4<u32>(~u_input.c, 1u, 0u ^ var_1, firstTrailingBit(1u))), vec4<u32>(~var_0.e.a.x, 1u | _wgslsmith_add_u32(var_0.e.a.x, ~81458u), var_0.e.a.x, _wgslsmith_mult_u32(var_0.e.a.x, ~abs(u_input.c))));
    return !vec3<bool>(var_2.a.x, var_2.a.x, any(!vec4<bool>(var_2.a.x, true, true, true)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~(~5533u), 4294967295u, abs(abs(44003u)), arg_2.e.a.x), select(min(~vec4<u32>(26319u, 4294967295u, 4846u, 1488u), ~vec4<u32>(4294967295u, u_input.b, u_input.c, arg_2.e.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.b, 47836u), vec4<u32>(1u, u_input.c, arg_2.e.a.x, 1u)), !arg_1.x));
    let var_1 = arg_2.e.d.ww;
    let var_2 = reverseBits(1u);
    let var_3 = arg_2.e;
    let var_4 = var_0.yz;
    return var_4.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = select(_wgslsmith_mult_u32(1u, 2668u), ~countOneBits(_wgslsmith_add_u32(1u, u_input.c)), any(vec2<bool>(true, true)) != true) >> (func_4(_wgslsmith_add_i32(u_input.a, 1i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_3(arg_1.x), true)), Struct_2(firstLeadingBit(~2182i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, -9787i), vec4<i32>(12237i, 1i, 16200i, -32542i), vec4<i32>(u_input.a, 2147483647i, -47085i, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-934f, arg_1.x, 1000f, -305f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, arg_1.x, arg_1.x, 1620f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 510f, 740f)), true)), Struct_1(~vec3<u32>(4294967295u, 57338u, 19168u), _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1401f, arg_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), vec4<i32>(54715i, -21995i, 2147483647i, u_input.a))))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(step(-1973f, arg_1.x)))))));
    var_0 = ~firstLeadingBit(0u);
    let var_2 = _wgslsmith_mod_i32(2147483647i, ~(~(-15255i)));
    let var_3 = -var_2;
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1384f, arg_0.c.x)), _wgslsmith_f_op_f32(func_2(u_input.c, vec2<f32>(-1000f, -696f)))))) + 214f));
    let var_1 = Struct_3(abs(u_input.b), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 19032u, 1u, 3353u) ^ vec4<u32>(0u, u_input.b, 0u, arg_1.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0.a.x, arg_1.a.x), vec4<u32>(72304u, arg_1.a.x, arg_1.a.x, 53282u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, arg_1.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(46578u, u_input.b, 33506u, 23920u)))));
    var var_2 = 15054i;
    var var_3 = !vec3<bool>(arg_0.d.x < -_wgslsmith_mod_i32(arg_1.d.x, arg_0.d.x), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), func_3(318f), vec3<bool>(false, false, true))), ~(37652u ^ var_1.b.x) >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 11110u), vec2<u32>(80470u, 64821u)), arg_0.a.x, arg_0.a.x >> (33194u % 32u)));
    var_3 = !vec3<bool>(!all(!vec4<bool>(var_3.x, true, false, var_3.x)), var_3.x, var_3.x);
    return _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.d, abs(vec4<i32>(u_input.a, -2147483647i, arg_0.d.x, arg_0.d.x))) << (~vec4<u32>(65448u, _wgslsmith_sub_u32(arg_1.a.x, 4294967295u), 26990u, _wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a)) % vec4<u32>(32u)), -(arg_0.d | arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a, _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, 0i, 24711i), func_1(Struct_1(vec3<u32>(u_input.c, u_input.b, 0u), -625f, vec4<f32>(-1000f, -632f, 1000f, -1000f), vec4<i32>(u_input.a, 1i, u_input.a, -1i)), Struct_1(vec3<u32>(u_input.c, u_input.b, 1u), -409f, vec4<f32>(-839f, -1188f, -702f, -2131f), vec4<i32>(u_input.a, u_input.a, -35599i, u_input.a))), vec4<i32>(-2147483647i, abs(-2147483647i), firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 2182i, u_input.a), vec4<i32>(u_input.a, -1337i, u_input.a, u_input.a)))) | _wgslsmith_mult_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 42255i, u_input.a, u_input.a), vec4<i32>(-36279i, 1i, u_input.a, -15131i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 40738i, -2147483647i, u_input.a), -vec4<i32>(u_input.a, 19035i, -2147483647i, -18501i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(608f, -1274f, -221f, -307f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, -754f, 1267f, -373f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(744f, -1172f, -1000f, 1667f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, 1000f, 875f, -572f) * vec4<f32>(628f, 713f, -240f, -1000f)))), vec4<bool>(all(vec2<bool>(false, true)), false, select(true, false, false), true))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1586f, -1637f, 414f, 530f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, -1000f, -131f, 515f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(234f, 2156f, -405f, -2650f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1474f, -1359f, 874f, _wgslsmith_f_op_f32(func_2(110721u, vec2<f32>(348f, -782f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-888f, 452f, -494f, -886f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-696f, 1690f, 1227f, -865f), vec4<f32>(-877f, 1142f, -585f, 1055f))))))), Struct_1(~vec3<u32>(0u, ~1u, u_input.c ^ 0u), _wgslsmith_div_f32(508f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1181f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), func_1(Struct_1(max(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.c)), _wgslsmith_f_op_f32(978f + 524f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-441f, 143f, 1000f, -149f), vec4<f32>(660f, 1410f, -1442f, -356f), false)), vec4<i32>(-2147483647i, u_input.a, u_input.a, -9498i)), Struct_1(vec3<u32>(91519u, 12776u, 52761u) >> (vec3<u32>(25807u, u_input.b, u_input.c) % vec3<u32>(32u)), -681f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1197f, 104f, 195f, -915f) + vec4<f32>(579f, 1864f, 187f, 811f)), ~vec4<i32>(-1i, 0i, 11093i, u_input.a)))));
    let var_1 = var_0.e;
    let var_2 = var_0.a;
    var var_3 = Struct_1(countOneBits(~(~_wgslsmith_mod_vec3_u32(var_1.a, var_1.a))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * var_0.c.x), 1000f), var_0.e.c.x), var_1.c, ~_wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 6780i, u_input.a, 31097i), vec4<i32>(var_2, 30556i, 1i, var_2)), vec4<i32>(-10065i, u_input.a, ~1i, -1i), var_0.b | var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(func_1(var_1, Struct_1(var_1.a, 1961f, var_0.c, var_0.e.d)) >> (vec4<u32>(43963u, 4294967295u, u_input.c, u_input.c) % vec4<u32>(32u)))), max(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e.a.x, 4294967295u), var_1.a.xy)), var_1.a.zy), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.d.zzx, vec3<f32>(-1415f, -442f, var_0.d.x), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, 715f, 714f))))))));
}

