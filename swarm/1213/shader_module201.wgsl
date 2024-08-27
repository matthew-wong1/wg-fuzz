struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(min(u_input.a, u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.b, 64503u, 60101u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a))), abs(reverseBits(vec4<u32>(82646u, 5194u, u_input.a, u_input.a)))), u_input.b), ~vec3<u32>(u_input.a, 0u, ~(u_input.a >> (19237u % 32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(959f, 1168f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(f32(-1f) * -760f))));
    var var_2 = ~(~countOneBits(1u));
    var var_3 = Struct_3(vec3<i32>(u_input.c, select(u_input.c, _wgslsmith_div_i32(~u_input.c, reverseBits(u_input.c)), !all(vec3<bool>(true, false, false))), ~(~(-u_input.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-841f, 1824f, -664f, -1000f), vec4<f32>(-153f, 2117f, -2059f, -1713f), vec4<bool>(false, false, false, true))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f * 275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1612f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1121f * 1264f))), -573f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-698f)) * -1018f), true), vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, u_input.c)), firstTrailingBit(~vec2<i32>(u_input.c, -1i))), 33604i, _wgslsmith_clamp_i32(~u_input.c, u_input.c >> (~u_input.b % 32u), u_input.c & _wgslsmith_div_i32(12195i, u_input.c))), _wgslsmith_clamp_i32(~(i32(-1i) * -1i), _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(u_input.c, 0i, u_input.c), _wgslsmith_sub_i32(u_input.c, -1i) << (1u % 32u)), -2147483647i));
    var_0 = ~vec3<u32>(72052u, 0u, 0u << (var_0.x % 32u));
    return select(min(vec3<u32>(4294967295u, countOneBits(var_0.x), u_input.a) >> (vec3<u32>(~var_0.x, _wgslsmith_clamp_u32(5499u, 4294967295u, 1u), ~var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x >> (62u % 32u), abs(0u), var_0.x) << (abs(vec3<u32>(58977u, 18564u, var_0.x) & vec3<u32>(u_input.a, 4294967295u, u_input.b)) % vec3<u32>(32u))), abs(vec3<u32>(4294967295u, _wgslsmith_div_u32(0u, ~u_input.a), firstLeadingBit(~1u))), !(!var_3.c.b));
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.c, 36391i), -u_input.c, u_input.c), vec3<i32>(abs(u_input.c), -2147483647i, _wgslsmith_div_i32(2147483647i, -9315i))), ((vec3<i32>(-72737i, u_input.c, -19089i) & vec3<i32>(-2147483647i, u_input.c, u_input.c)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, 37332i, -2147483647i), vec3<i32>(-2147483647i, -27093i, u_input.c))) >> (func_3() % vec3<u32>(32u)));
    var var_1 = Struct_1(-2076f, false);
    var var_2 = Struct_2(select(vec3<bool>(var_1.b, true, true), select(vec3<bool>(var_1.b, true, true), !(!vec3<bool>(var_1.b, var_1.b, var_1.b)), any(vec4<bool>(true, true, true, true))), select(select(!vec3<bool>(var_1.b, var_1.b, false), !vec3<bool>(var_1.b, true, var_1.b), any(vec4<bool>(var_1.b, false, true, true))), vec3<bool>(true, var_1.b, var_1.b & false), !select(vec3<bool>(false, var_1.b, false), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(false, false, var_1.b)))), vec3<bool>(any(vec4<bool>(var_1.b, 584f >= var_1.a, any(vec4<bool>(var_1.b, var_1.b, true, var_1.b)), true)), var_1.b, var_1.b && true), Struct_1(_wgslsmith_div_f32(-505f, var_1.a), select(true, !(!var_1.b), !any(vec4<bool>(var_1.b, var_1.b, false, var_1.b)))), 142f, var_1.b);
    let var_3 = vec4<i32>(var_0.x, var_0.x, _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(-7660i, i32(-1i) * -57967i), var_0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 23302u, u_input.b, 19867u), vec4<u32>(1u, 53066u, u_input.b, 24243u)) % 32u)) | _wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, -2147483647i, u_input.c), ~u_input.c)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, var_0.x) << (u_input.b % 32u), u_input.c), 57998i));
    var_2 = Struct_2(select(var_2.a, vec3<bool>(var_2.a.x, true || all(vec2<bool>(true, true)), true), var_2.e), var_2.a, var_2.c, 880f, true);
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_2.c.a, false)), !(!var_2.e));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.c;
    let var_1 = func_2();
    var var_2 = max(~(-vec4<i32>(u_input.c >> (u_input.a % 32u), _wgslsmith_clamp_i32(45382i, 0i, 2147483647i), ~(-1i), countOneBits(-26406i))), ~vec4<i32>(select(_wgslsmith_div_i32(u_input.c, 2147483647i), u_input.c, true), firstLeadingBit(u_input.c), 2147483647i, 6333i));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, 1000f, var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, -1018f, var_1.a), vec3<f32>(-1531f, var_1.a, -395f))))), any(vec3<bool>(true, true, var_1.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1294f, var_1.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, var_1.a, 241f)) * vec3<f32>(var_1.a, 983f, var_1.a)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 514f, -1208f) * vec3<f32>(-1000f, var_1.a, var_1.a))))))));
    var_2 = -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, u_input.c, -22856i, countOneBits(reverseBits(var_2.x))), vec4<i32>(u_input.c | 16694i, var_2.x, select(var_2.x, max(0i, u_input.c), true), ~u_input.c));
    return Struct_3(~var_2.yyy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(222f, var_1.a, var_1.a, var_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1373f, -333f, var_1.a, -334f) + vec4<f32>(-429f, var_1.a, 863f, -271f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, -1348f, var_3.x, -569f), vec4<f32>(var_1.a, var_3.x, -1000f, -253f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, -1000f, var_1.a, var_1.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, -284f, var_3.x, var_1.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, 388f, -1174f) - vec4<f32>(312f, 868f, 1185f, var_1.a))), !vec4<bool>(true, false, false, var_1.b)))), Struct_1(var_3.x, 1u <= u_input.a), _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(var_2.x, u_input.c, 1i), var_2.xzw, var_1.b)), max(var_2.yxx >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, 20095u), vec3<u32>(u_input.a, 0u, 0u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(-1i, 0i), abs(-2147483647i), 1i))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = countOneBits(_wgslsmith_add_i32(u_input.c, u_input.c));
    var_0 = -(~u_input.c);
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_1().b.x, var_1.c.a) - 709f);
    var_0 = ~2147483647i;
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.b, 1735u) & (0u << (0u % 32u)), 1u), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, 81012u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 9585u), vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u)), _wgslsmith_clamp_u32(u_input.b, u_input.a, 1u)))) ^ reverseBits(52896u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~0u, ~select(u_input.b, u_input.b, false)), 1u, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a, u_input.a, 42070u, u_input.a)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.a, u_input.a)), max(vec4<u32>(u_input.b, 17929u, 76324u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 88560u, 13418u)))), 106366u), ~_wgslsmith_mod_i32(~u_input.c, u_input.c));
}

