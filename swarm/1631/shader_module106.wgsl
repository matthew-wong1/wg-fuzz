struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    return countOneBits(vec3<i32>(-_wgslsmith_clamp_i32(u_input.b ^ u_input.b, u_input.b, 0i), 1i, u_input.b));
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(abs(select(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, u_input.b, -2147483647i), vec4<i32>(u_input.b, -8068i, -1i, -1526i)), vec4<i32>(u_input.b, u_input.b, -2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b)), vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true)), select(false, false, false), u_input.c > u_input.c))), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, 40943i, u_input.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -31228i, 0i), vec4<i32>(u_input.b, u_input.b, 1i, -13952i)))), min(~vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b >> (0u % 32u), u_input.b, -509i))));
    let var_1 = Struct_4(vec4<bool>(true, true, false, !select(true, true, true)), Struct_1(var_0, u_input.b, _wgslsmith_div_vec3_i32(func_3(), -firstLeadingBit(vec3<i32>(2147483647i, u_input.b, 1i))), u_input.c == abs(_wgslsmith_div_u32(0u, 1u)), vec3<f32>(-786f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(299f, 1000f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-822f)), 708f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(469f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(937f, 371f), vec2<f32>(434f, 1890f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, -249f))))), Struct_2(vec2<i32>(16222i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, u_input.b, 19495i), var_0.x >> (4294967295u % 32u))), vec2<u32>(4294967295u, u_input.a), vec2<bool>(true, true), Struct_1(~min(var_0, vec4<i32>(var_0.x, var_0.x, 1i, 2748i)), 1i, vec3<i32>(_wgslsmith_clamp_i32(u_input.b, var_0.x, 58405i), 9418i, i32(-1i) * -40141i), all(vec2<bool>(true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(-613f, 359f, 364f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1079f, -501f, 1261f) + vec3<f32>(-1354f, -1357f, 920f))))));
    var var_2 = _wgslsmith_f_op_f32(var_1.b.e.x + -1000f);
    var var_3 = var_1.b;
    var_2 = var_3.e.x;
    return _wgslsmith_sub_vec3_u32(min(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 472u, var_1.e.b.x)), vec3<u32>(1u, u_input.a, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 49709u, 41726u), vec3<u32>(33322u, var_1.e.b.x, 74754u)) & (vec3<u32>(u_input.a, 51327u, u_input.a) >> (vec3<u32>(0u, u_input.a, var_1.e.b.x) % vec3<u32>(32u)))), ~(vec3<u32>(1u, 4962u, var_1.e.b.x) & vec3<u32>(4294967295u, var_1.e.b.x, 9567u)) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, var_1.e.b.x, var_1.e.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 86336u, u_input.c), vec3<u32>(151770u, var_1.e.b.x, 1u))) % vec3<u32>(32u))), vec3<u32>(~(~u_input.a), var_1.e.b.x, 1u));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = Struct_2(vec2<i32>(arg_0, ~(~u_input.b)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(var_0.x, 4294967295u, false), 1u, 4294967295u), reverseBits(4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, var_0.x, 7988u), vec4<u32>(10006u, u_input.c, 0u, u_input.a))), _wgslsmith_mod_u32(var_0.x, min(_wgslsmith_mult_u32(15143u, 0u), 1u))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_1(~(-countOneBits(vec4<i32>(u_input.b, 2147483647i, 49282i, arg_0))), -firstLeadingBit(2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(516i, _wgslsmith_add_i32(u_input.b, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b))), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, -87998i), vec3<i32>(u_input.b, u_input.b, u_input.b))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(1811f)), -707f, _wgslsmith_f_op_f32(-775f + 1343f))))));
    let var_2 = Struct_4(!vec4<bool>(true | var_1.c.x, var_1.d.d, _wgslsmith_clamp_u32(u_input.a, var_1.b.x, 0u) >= 52090u, all(select(vec3<bool>(var_1.c.x, true, var_1.d.d), vec3<bool>(false, false, var_1.c.x), var_1.c.x))), Struct_1(vec4<i32>(1i, ~u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(var_1.d.c, var_1.d.c)), -18639i, var_1.d.a.wyy, true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), var_1.d.e.x, var_1.d.e.x) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.e.x), _wgslsmith_f_op_f32(select(var_1.d.e.x, var_1.d.e.x, false)), _wgslsmith_f_op_f32(step(-861f, -453f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-672f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.d.e.x)), _wgslsmith_f_op_f32(abs(-118f))) + var_1.d.e.zy), Struct_2(_wgslsmith_div_vec2_i32(-abs(var_1.d.a.wx), vec2<i32>(var_1.a.x | -56466i, 0i)), reverseBits(vec2<u32>(~4294967295u, ~43805u)), var_1.c, var_1.d));
    var_0 = reverseBits(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 49275u, 10148u, var_2.e.b.x)), ~vec4<u32>(4294967295u, 68641u, var_0.x, var_2.e.b.x)), abs(~var_1.b.x), ~firstLeadingBit(0u))) & _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 24786u), ~vec4<u32>(28156u, 47991u, var_2.e.b.x, var_0.x)), 45070u), max(min(reverseBits(vec3<u32>(u_input.c, var_2.e.b.x, 39972u)), select(vec3<u32>(4294967295u, var_1.b.x, var_2.e.b.x), vec3<u32>(var_0.x, 4294967295u, 17356u), var_2.a.zxw)), ~abs(vec3<u32>(var_0.x, 55581u, u_input.c))));
    var_0 = vec3<u32>(firstLeadingBit(63676u), ~var_2.e.b.x, ~(~u_input.a)) ^ countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(39638u, var_1.b.x), vec2<u32>(1u, 36831u))), abs(~var_1.b.x), _wgslsmith_mult_u32(var_1.b.x, 0u)));
    return StorageBuffer(vec2<i32>(-3686i, -1i & _wgslsmith_clamp_i32(var_2.b.c.x, firstTrailingBit(-1i), arg_0)), ~vec3<u32>(20300u, max(var_0.x, 4294967295u | var_1.b.x), 26530u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -856f), var_2.c, false)), -1504f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~u_input.b);
}

