struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_i32(28808i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_3.x, 28309i, 6623i, 1i)), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -2147483647i)), u_input.a.x, max(firstTrailingBit(u_input.a.x), abs(0i))), vec4<i32>(arg_3.x, 2147483647i, 0i, arg_3.x)));
    let var_1 = vec2<i32>(~arg_3.x, u_input.a.x);
    global0 = array<vec3<i32>, 29>();
    var var_2 = abs(_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(arg_2.x, 1u, arg_2.x)), ~(~(~vec3<u32>(1u, 42940u, 1u)))));
    let var_3 = ~arg_2;
    return 65543u;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    global0 = array<vec3<i32>, 29>();
    let var_1 = u_input.a.x << (~1u % 32u);
    let var_2 = Struct_2(Struct_1(func_3(vec3<bool>(var_0, true, true), vec3<f32>(_wgslsmith_f_op_f32(-476f - 692f), -763f, _wgslsmith_f_op_f32(-713f + 1000f)), firstTrailingBit(~vec2<u32>(23078u, 1u)), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 1u), 29u)]), vec3<f32>(1606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-540f, 1319f)) + -441f), _wgslsmith_f_op_f32(1553f * 209f)), _wgslsmith_f_op_f32(f32(-1f) * -162f)), true, Struct_1(~(~_wgslsmith_mod_u32(5769u, 34816u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2339f, 489f, -508f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, 1106f, 114f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -827f, 216f))))), _wgslsmith_f_op_f32(floor(1109f))), Struct_1(~1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(742f, -1878f, 276f)))), 377f), vec2<u32>(~(~4294967295u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13138u, 22738u), ~vec3<u32>(87190u, 8246u, 1u)), 107197u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f));
    return Struct_1(var_2.c.a, var_2.c.b, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.c.b.x, var_2.c.c, true))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_mult_vec2_i32(firstTrailingBit(select(_wgslsmith_add_vec2_i32(~u_input.a.zx, _wgslsmith_sub_vec2_i32(u_input.a.yy, vec2<i32>(-22131i, u_input.a.x))), -(~u_input.a.yy), all(vec2<bool>(false, false)))), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 39518i), abs(2147483647i)));
    let var_2 = Struct_2(func_2(), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), true), select(-1i, -5063i, true) >= (i32(-1i) * -1i))), Struct_1(0u, _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_f32(-arg_0.b.x)), Struct_1(arg_1 << (reverseBits(arg_0.a) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f * 818f)), arg_0.c, func_2().c), arg_2), firstLeadingBit(vec2<u32>(0u, arg_0.a)));
    let var_3 = 4294967295u;
    var_0 = 144f;
    return func_3(!select(!(!vec3<bool>(false, var_2.b, var_2.b)), !select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, true, false), true), var_2.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_2.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.b))))), select(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, var_3, var_2.c.a, 31423u), vec4<u32>(arg_0.a, var_3, var_3, 11425u)), 4294967295u, var_2.e.x)), _wgslsmith_sub_vec2_u32(var_2.e, vec2<u32>(arg_0.a, 1u) ^ ~var_2.e), !vec2<bool>(all(vec4<bool>(var_2.b, false, false, true)), true)), u_input.a);
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1820f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(3123f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-929f * 766f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-604f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-859f + -868f)))))));
    var var_1 = Struct_2(func_2(), true, Struct_1(24490u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1311f, -358f, -1226f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(1u ^ (arg_0 >> (35076u % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(644f, -205f, 887f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) + _wgslsmith_f_op_f32(-163f - 781f)) * _wgslsmith_f_op_f32(abs(-1066f)))), _wgslsmith_mult_vec2_u32(abs(~(vec2<u32>(39588u, 4294967295u) & vec2<u32>(0u, arg_0))), _wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, arg_0), vec2<u32>(0u, arg_0)) & _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(arg_0, arg_0)), firstLeadingBit(~vec2<u32>(81596u, arg_0)))));
    global0 = array<vec3<i32>, 29>();
    var var_2 = ~(~(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(72758u, 4294967295u, 4294967295u, 45975u), vec4<u32>(1u, 64060u, arg_0, arg_0)), firstTrailingBit(vec4<u32>(arg_0, 0u, 4294967295u, 20251u)))));
    var_1 = Struct_2(Struct_1(~((var_1.d.a | 0u) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(-var_1.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f))), -1680f >= _wgslsmith_f_op_f32(-var_1.a.c), var_1.c, var_1.a, ~(~firstLeadingBit(var_1.e)));
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_2;
    let var_1 = vec3<bool>(!var_0.b, true, !any(!vec4<bool>(false, arg_2.b, var_0.b, arg_2.b)));
    let var_2 = !select(!(!vec4<bool>(var_1.x, var_0.b, false, true)), select(select(!vec4<bool>(var_0.b, false, var_1.x, arg_2.b), !vec4<bool>(false, true, true, var_0.b), !vec4<bool>(arg_2.b, true, false, arg_2.b)), select(!vec4<bool>(true, var_0.b, true, var_0.b), !vec4<bool>(arg_2.b, var_1.x, var_0.b, true), true), any(vec2<bool>(var_1.x, false))), var_0.b);
    var var_3 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_3 - arg_2.d.b))) + arg_3), vec3<f32>(func_5(~arg_2.c.a).b.x, _wgslsmith_f_op_f32(arg_2.d.c + 151f), -1270f), var_2.wwz)), _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_4 = vec2<u32>(func_2().a & var_0.d.a, firstLeadingBit(~var_0.e.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x - arg_0.c), -1313f))));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = u_input.a.x;
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    var var_1 = !(select(false, false, true) | select(true, false, -var_0 <= 35019i));
    return _wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(func_6(func_5(func_4(func_2(), 1u, func_2().b.x)), -2147483647i, Struct_2(Struct_1(~0u, vec3<f32>(arg_0.x, arg_0.x, -1417f), _wgslsmith_f_op_f32(f32(-1f) * -271f)), true & any(vec3<bool>(false, true, true)), func_2(), func_5(~1u), ~select(vec2<u32>(1u, 11763u), vec2<u32>(0u, 0u), vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) * vec3<f32>(-253f, -1270f, 429f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 29>();
    let var_0 = select(u_input.a.x, 1i, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f) + -1128f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-1215f, 1000f, -283f))) * 834f)), _wgslsmith_f_op_f32(min(-795f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(846f, 479f, false))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1645f, -457f)))) + _wgslsmith_f_op_f32(-func_5(49288u).b.x)));
    global0 = array<vec3<i32>, 29>();
    let var_2 = Struct_2(func_5(1u), min(~(~68158u), ~func_2().a) <= (func_3(vec3<bool>(false, false, false), _wgslsmith_div_vec3_f32(vec3<f32>(507f, 1000f, -1000f), vec3<f32>(227f, -521f, 101f)), ~vec2<u32>(4294967295u, 79770u), _wgslsmith_mod_vec3_i32(u_input.a, global0[_wgslsmith_index_u32(80244u, 29u)])) | 0u), Struct_1(1u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, -493f, -1272f) - vec3<f32>(-451f, 825f, -2697f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2040f, 1762f, 1000f))))), _wgslsmith_f_op_f32(func_6(Struct_1(countOneBits(0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1629f, 613f, 1025f)), _wgslsmith_f_op_f32(func_1(vec3<f32>(-805f, -1123f, -944f)))), ~var_0, Struct_2(Struct_1(60701u, vec3<f32>(784f, -241f, -280f), -189f), false, Struct_1(58999u, vec3<f32>(872f, 535f, -1838f), -645f), func_2(), vec2<u32>(9665u, 15592u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(470f, 816f, -246f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, -379f, 422f)), vec3<bool>(true, true, true)))))), func_5(abs(countOneBits(1u))), ~(~(~vec2<u32>(1u, 1u))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -422f);
    var_1 = _wgslsmith_f_op_f32(sign(var_2.a.b.x));
    global0 = array<vec3<i32>, 29>();
    var var_4 = select(!vec3<bool>(false, any(vec3<bool>(true, true, true)), var_2.b), select(vec3<bool>(false, var_2.b, -var_0 > var_0), vec3<bool>((var_2.a.a >> (var_2.d.a % 32u)) <= 4294967295u, var_2.b, true), true), !(!(!vec3<bool>(false, var_2.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(32460i >> (~var_2.d.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_div_f32(var_2.c.b.x, 204f), _wgslsmith_f_op_f32(ceil(523f)), 1f))) - -681f), ~(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.a, var_2.c.a, 2116u), vec3<u32>(var_2.e.x, var_2.c.a, var_2.e.x)), vec3<u32>(0u, var_2.c.a, 67926u), true)), -vec4<i32>(u_input.a.x, -(~8373i), ~u_input.a.x | -5595i, ~var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.b.x, var_2.c.c, var_2.c.c) * func_5(4294967295u).b)))));
}

