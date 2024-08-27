struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1727f);
    var var_1 = Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-751f - _wgslsmith_f_op_f32(floor(500f))), -1995f, -836f), !select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.a <= -1i, true), true), Struct_2(any(vec2<bool>(true, u_input.d.x != u_input.e)), Struct_1(~0u, vec3<u32>(9228u, u_input.c.x, u_input.c.x) | select(vec3<u32>(6837u, 4943u, 1u), vec3<u32>(0u, 23105u, 0u), true), !any(vec2<bool>(false, false)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 72949u, 26986u, u_input.c.x)), vec4<u32>(u_input.c.x, 23454u, u_input.c.x, u_input.c.x)))));
    var var_2 = select(vec4<bool>(!var_1.b.x & true, any(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false)), true, var_1.c.b.c), !select(select(select(vec4<bool>(false, var_1.b.x, true, var_1.c.a), vec4<bool>(var_1.c.b.c, true, var_1.b.x, false), vec4<bool>(true, var_1.c.a, var_1.b.x, true)), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.c.b.c), !vec4<bool>(false, var_1.c.a, var_1.c.b.c, true)), !(!vec4<bool>(var_1.b.x, false, var_1.b.x, false)), select(!vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.c.a), !vec4<bool>(var_1.c.b.c, var_1.b.x, var_1.c.a, false), all(vec4<bool>(var_1.c.a, var_1.b.x, var_1.c.a, true)))), true);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-403f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.x))), -133f, -698f)), select(vec3<bool>(select(any(vec2<bool>(var_2.x, true)), any(vec4<bool>(var_1.c.b.c, var_2.x, false, false)), u_input.e == 3479i), any(!var_1.b), var_2.x), var_2.xxw, vec3<bool>(all(select(vec3<bool>(false, var_2.x, var_1.b.x), var_2.zzw, vec3<bool>(true, var_2.x, false))), select(any(vec2<bool>(var_2.x, false)), false, var_1.b.x), all(vec2<bool>(var_2.x, false)))), var_1.c);
    var_3 = Struct_3(vec4<f32>(329f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1908f)))), _wgslsmith_f_op_f32(step(1000f, 218f)), _wgslsmith_f_op_f32(-var_1.a.x)), select(select(vec3<bool>(var_1.c.a, true, all(vec4<bool>(var_2.x, var_3.c.b.c, true, var_3.b.x))), !var_2.wyy, any(vec3<bool>(false, false, true))), !(!var_1.b), any(vec2<bool>(true, true))), Struct_2(true, Struct_1(u_input.c.x, (vec3<u32>(var_3.c.b.b.x, u_input.c.x, u_input.c.x) & var_1.c.b.b) << (_wgslsmith_mult_vec3_u32(var_1.c.b.b, var_3.c.b.b) % vec3<u32>(32u)), all(!var_3.b), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_1.c.b.a), countOneBits(vec3<u32>(var_1.c.b.a, 4294967295u, var_3.c.b.a))))));
    return vec3<bool>(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(0u, var_3.c.b.a, u_input.c.x, 45070u))), ~(vec4<u32>(u_input.c.x, 18428u, u_input.c.x, 4294967295u) ^ vec4<u32>(var_1.c.b.d, 83146u, var_3.c.b.b.x, u_input.c.x))) >= ~var_3.c.b.a, !(var_3.c.b.c | var_3.c.b.c), var_1.c.a);
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<bool>(!all(select(func_3(vec4<f32>(-872f, 683f, -513f, 632f)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), _wgslsmith_div_f32(-1083f, -768f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-221f)))));
    var_0 = !(!vec2<bool>(var_0.x, false));
    var_0 = vec2<bool>(true, var_0.x);
    let var_1 = u_input.c.x;
    let var_2 = Struct_2(true, Struct_1(min(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) & u_input.c.x, var_1), _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, var_1, var_1), vec3<u32>(4294967295u, 4294967295u, u_input.c.x))), ~vec3<u32>(4294967295u, u_input.c.x, 7626u) | vec3<u32>(u_input.c.x, 4294967295u, var_1)), true, 55137u));
    return var_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    var var_0 = func_2();
    var var_1 = func_2().b;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, -279f, _wgslsmith_f_op_f32(trunc(-1289f)), _wgslsmith_f_op_f32(-444f * -1578f))))), !select(vec3<bool>(true, true, !var_1.c), vec3<bool>(var_0.b.c, false, var_0.b.c || false), vec3<bool>(var_0.a, u_input.d.x > u_input.b.x, var_0.b.c)), Struct_2(any(vec3<bool>(true, true, true)), Struct_1(reverseBits(var_0.b.b.x) ^ ~u_input.c.x, ~(var_1.b >> (arg_1 % vec3<u32>(32u))), false, ~_wgslsmith_mod_u32(4294967295u, var_0.b.d))));
    var_1 = func_2().b;
    let var_3 = func_2().b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(-1000f + -867f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-915f)) + _wgslsmith_f_op_f32(f32(-1f) * -596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(797f + 1401f) * _wgslsmith_f_op_f32(458f + 1089f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1218f + -776f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), 642f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, _wgslsmith_f_op_f32(sign(137f)), 141f, _wgslsmith_f_op_f32(ceil(2083f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 504f, 600f, -473f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1333f, 388f, -863f, -348f) + vec4<f32>(-736f, -895f, 340f, -373f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, 367f, 1132f, _wgslsmith_f_op_f32(sign(-717f)))), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), func_1(u_input.d.zxy, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), 2147483647i, u_input.b))))));
    let var_1 = select(firstTrailingBit(u_input.d.wxz), -vec3<i32>(u_input.e, u_input.e | 46792i, _wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.b)) | -_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-22616i, 0i, 0i), u_input.d.xxz), _wgslsmith_div_vec3_i32(u_input.d.xyy, u_input.d.xxx)), true);
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 59764u, 125147u) ^ vec4<u32>(u_input.c.x, 50378u, u_input.c.x, 17309u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(76638u, u_input.c.x, 1u, 0u))), (min(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 86592u, 2570u, 1u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 26923u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, 31820u, ~u_input.c.x, 1u >> (u_input.c.x % 32u)) % vec4<u32>(32u))), vec4<u32>(83620u, firstLeadingBit(u_input.c.x) ^ max(7383u, 505u), _wgslsmith_mod_u32(~53407u, u_input.c.x), 4294967295u & ~u_input.c.x) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, ~_wgslsmith_mod_u32(55568u, u_input.c.x)));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(-2147483647i >> (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.c.x, 42833u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(16622u, 5254u), vec2<u32>(1u, 17259u), vec2<u32>(u_input.c.x, u_input.c.x))) % 32u), abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.x, 2147483647i), -24383i, _wgslsmith_dot_vec4_i32(vec4<i32>(65784i, -1i, var_1.x, -2147483647i), u_input.d)))), _wgslsmith_dot_vec2_i32(var_1.zy, -vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, -38318i, -2147483647i), ~(-1i))), var_1.x);
    var_2 = vec4<u32>(countOneBits(6982u), 25265u, ~u_input.c.x, var_2.x);
    let var_4 = firstLeadingBit(max(vec2<i32>(_wgslsmith_mult_i32(var_1.x, reverseBits(44383i)), u_input.d.x), ~(-abs(vec2<i32>(u_input.e, var_3.x)))));
    var_2 = vec4<u32>(~1u, select(firstLeadingBit(32363u), ~(~select(82111u, var_2.x, true)), 141f >= var_0.x), 8494u, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, var_2.x), vec2<u32>(u_input.c.x, 1u)), ~u_input.c), u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -9244i, ~(-(~var_1.x)), var_3.x, _wgslsmith_sub_i32(firstTrailingBit(-31973i >> (u_input.c.x % 32u)), ~_wgslsmith_dot_vec2_i32(var_3.zy, vec2<i32>(u_input.a, var_4.x)))), ~(-vec3<i32>(var_3.x, var_3.x, -2147483647i) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(28157u, var_2.x, var_2.x), min(vec3<u32>(1u, var_2.x, 4294967295u), var_2.zzz)) % vec3<u32>(32u))), vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_2.x, 58200u), 1u), var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, -750f, -1486f, -1000f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0))), var_0, select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), all(vec3<bool>(false, false, false)))))), var_4);
}

