struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    let var_0 = arg_1.d;
    var var_1 = -1212f;
    var_1 = 498f;
    let var_2 = Struct_2(var_0.a, _wgslsmith_div_u32(79833u, ~(4294967295u ^ countOneBits(arg_1.a.c))), var_0.d.x, vec4<u32>(var_0.c, 4294967295u, 0u, _wgslsmith_sub_u32(~arg_1.a.c, arg_1.a.d.x) | _wgslsmith_mult_u32(reverseBits(var_0.d.x), 56591u)), !(!arg_1.a.e));
    var var_3 = arg_1;
    return arg_1.d.e;
}

fn func_2() -> Struct_2 {
    var var_0 = -vec3<i32>(u_input.a, u_input.a, 0i) >> (~u_input.b % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_0.x), vec2<i32>(-5003i, 42781i)), reverseBits(-2147483647i), -2147483647i, -2147483647i), ~(~vec4<u32>(u_input.d.x, u_input.d.x, 15963u, u_input.b.x))), u_input.d.x, u_input.b.x, vec4<u32>(~(u_input.d.x << (0u % 32u)), select(abs(54601u), u_input.d.x ^ 10412u, true), 4294967295u, ~(~2501u)), !select(func_3(u_input.c.ww, Struct_3(Struct_2(Struct_1(vec4<i32>(0i, var_0.x, var_0.x, 8947i), vec4<u32>(26777u, u_input.b.x, 19139u, 0u)), u_input.d.x, 22814u, vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.d.x), vec4<bool>(false, false, true, true)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, u_input.d.x), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, 0i), vec4<u32>(u_input.d.x, u_input.d.x, 2110u, 20111u)), 0u, 1u, vec4<u32>(0u, u_input.d.x, u_input.b.x, u_input.d.x), vec4<bool>(false, true, true, true))), -682f), func_3(vec2<i32>(-42044i, var_0.x), Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, -65449i, 6328i), vec4<u32>(29625u, 27071u, u_input.d.x, 1u)), u_input.b.x, u_input.b.x, vec4<u32>(16278u, 48448u, 1u, 36298u), vec4<bool>(true, false, false, false)), vec4<u32>(u_input.b.x, u_input.b.x, 9367u, u_input.d.x), vec4<bool>(false, false, false, false), Struct_2(Struct_1(u_input.c, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 93242u)), u_input.d.x, u_input.b.x, vec4<u32>(44390u, 0u, u_input.d.x, u_input.b.x), vec4<bool>(true, true, false, false))), 504f), false)), vec4<u32>(~(~79209u), _wgslsmith_sub_u32(1u, u_input.b.x), 4294967295u, 1u) | vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), ~vec4<u32>(4879u, 11268u, 1u, 1u)), 1u, firstLeadingBit(~u_input.b.x), u_input.b.x), vec4<bool>(all(func_3(u_input.c.wx, Struct_3(Struct_2(Struct_1(vec4<i32>(7074i, var_0.x, u_input.c.x, 0i), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 26569u)), 46095u, 4294967295u, vec4<u32>(u_input.b.x, u_input.b.x, 29190u, 4294967295u), vec4<bool>(true, false, false, false)), vec4<u32>(25724u, 3292u, 48262u, u_input.b.x), vec4<bool>(true, false, true, false), Struct_2(Struct_1(u_input.c, vec4<u32>(6005u, 4294967295u, 1u, u_input.d.x)), u_input.b.x, 69715u, vec4<u32>(u_input.d.x, 25020u, u_input.b.x, 4294967295u), vec4<bool>(false, true, true, true))), -1059f)), true, true, ~(~u_input.d.x) > _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.b.x), firstLeadingBit(u_input.b.x))), Struct_2(Struct_1(u_input.c, max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, 131280u), vec4<u32>(15376u, u_input.d.x, 52117u, u_input.d.x)), vec4<u32>(29407u, 4294967295u, u_input.b.x, 1u))), u_input.b.x, ~(~43399u), vec4<u32>(_wgslsmith_mod_u32(7466u, ~27670u), 77984u, _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.d.x, u_input.b.x)), 1u), select(vec4<bool>(var_0.x != 0i, true, all(vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), func_3(vec2<i32>(0i, -16295i), Struct_3(Struct_2(Struct_1(u_input.c, vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.b.x)), 0u, 0u, vec4<u32>(4294967295u, 44001u, 1u, 0u), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<bool>(false, true, false, false), Struct_2(Struct_1(u_input.c, vec4<u32>(u_input.b.x, 42691u, u_input.d.x, 1u)), u_input.d.x, u_input.b.x, vec4<u32>(u_input.d.x, 0u, u_input.b.x, u_input.b.x), vec4<bool>(false, true, true, true))), 526f), vec4<bool>(true, true, true, true)), _wgslsmith_mult_i32(112199i, var_0.x) <= ~u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(floor(-1048f));
    var_0 = reverseBits(~u_input.c.zyx);
    var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 56631i, -17942i, -2147483647i), _wgslsmith_clamp_vec4_i32(var_1.d.a.a, vec4<i32>(-1i, u_input.c.x, var_1.a.a.a.x, var_1.d.a.a.x), vec4<i32>(var_0.x, u_input.a, u_input.a, 2147483647i))), max(~vec4<u32>(1u, 12393u, u_input.b.x, 15272u), var_1.b)), var_1.d.a.b.x, firstLeadingBit(reverseBits(1u) >> (~var_1.d.b % 32u)), vec4<u32>(reverseBits(u_input.b.x), _wgslsmith_mult_u32(16132u, ~4294967295u), u_input.b.x & abs(u_input.d.x), var_1.d.c), vec4<bool>(!select(var_1.d.e.x, var_1.a.e.x, var_1.d.e.x), all(select(var_1.d.e, var_1.d.e, false)), true, !var_1.a.e.x)), (~(~var_1.d.a.b) & ~var_1.d.d) | var_1.d.d, var_1.d.e, Struct_2(var_1.d.a, 43938u, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(35205u, 4294967295u)), abs(u_input.b.yy)), vec4<u32>(~u_input.b.x, ~(13237u ^ var_1.a.d.x), ~countOneBits(var_1.d.d.x), 0u), var_1.d.e));
    return Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(var_1.d.a.a, u_input.c), _wgslsmith_add_vec4_i32(var_1.a.a.a, vec4<i32>(u_input.c.x, var_0.x, 13526i, var_0.x)), var_1.a.e.x), -vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, var_1.d.a.a.x)), var_1.a.d >> (var_1.a.d % vec4<u32>(32u))), firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(~(~var_1.b.x), max(var_1.d.d.x, 1u)) ^ firstLeadingBit(43774u), countOneBits(var_1.a.d) ^ vec4<u32>(reverseBits(~var_1.d.c), u_input.b.x, 1u, min(~u_input.d.x, var_1.a.d.x >> (70993u % 32u))), !(!var_1.a.e));
}

fn func_1() -> StorageBuffer {
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, firstTrailingBit(4294967295u)));
    let var_1 = 29044u;
    var var_2 = func_2();
    var_0 = u_input.b.x;
    var_0 = u_input.d.x;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(107f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f), -394f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(round(-408f)))), -976f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1370f, _wgslsmith_f_op_f32(f32(-1f) * -647f))))), _wgslsmith_f_op_f32(round(1000f))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2270f, _wgslsmith_f_op_f32(step(-1169f, _wgslsmith_div_f32(164f, -371f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1192f) - 463f) - _wgslsmith_f_op_f32(-750f - _wgslsmith_div_f32(-464f, 810f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(31091u, u_input.d.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(45140u, u_input.b.x), u_input.b.x >> (~u_input.b.x % 32u)), ~88521u);
    let var_1 = -209f;
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.c, firstLeadingBit(u_input.c | vec4<i32>(-4997i, u_input.c.x, abs(u_input.c.x), ~2147483647i)));
    var var_3 = vec3<u32>(min(var_0.x, select(_wgslsmith_div_u32(max(4294967295u, u_input.d.x), 0u ^ u_input.d.x), ~45072u, any(vec3<bool>(true, true, true)))), 64664u, min(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 29517u), vec3<u32>(77692u, var_0.x, 1u))), _wgslsmith_div_u32(1u, ~var_0.x)) | ~u_input.b.x);
    var var_4 = u_input.a;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(414f, 178f), vec2<f32>(var_1, var_1))) * vec2<f32>(-454f, var_1)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-501f, var_1) * vec2<f32>(-1099f, 849f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-936f, var_1) * vec2<f32>(-1107f, var_1))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-156f, _wgslsmith_f_op_f32(var_1 * -1000f)))));
    let var_6 = var_3.x;
    let var_7 = u_input.c.yw;
    let x = u_input.a;
    s_output = func_1();
}

