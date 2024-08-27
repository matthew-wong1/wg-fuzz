struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(i32(-2147483648), -1i, 1u, vec2<u32>(67901u, 61050u), -865f), Struct_1(0i, -6222i, 21036u, vec2<u32>(4294967295u, 56237u), 1000f), Struct_1(-1i, 2147483647i, 33207u, vec2<u32>(0u, 16561u), 542f), Struct_1(2147483647i, 16058i, 26130u, vec2<u32>(53499u, 1u), 1990f), Struct_1(0i, 42181i, 0u, vec2<u32>(76460u, 7263u), -315f), Struct_1(1i, 2147483647i, 3951u, vec2<u32>(0u, 21865u), -738f), Struct_1(i32(-2147483648), 0i, 20607u, vec2<u32>(4294967295u, 26425u), 1219f), Struct_1(i32(-2147483648), 1i, 32446u, vec2<u32>(29446u, 670u), -1063f), Struct_1(-1i, 2147483647i, 13792u, vec2<u32>(44528u, 37173u), -1272f), Struct_1(67032i, 0i, 44606u, vec2<u32>(4294967295u, 1u), 577f), Struct_1(1i, -2038i, 53911u, vec2<u32>(0u, 19765u), 954f), Struct_1(2147483647i, -42695i, 1u, vec2<u32>(0u, 4294967295u), -203f), Struct_1(-8588i, -1i, 1u, vec2<u32>(0u, 0u), -1291f), Struct_1(-1i, 1i, 65935u, vec2<u32>(0u, 4294967295u), -449f), Struct_1(-1i, 26319i, 0u, vec2<u32>(30386u, 69868u), 138f), Struct_1(2147483647i, 17419i, 44644u, vec2<u32>(4294967295u, 1u), -524f), Struct_1(0i, -42103i, 1u, vec2<u32>(14761u, 0u), 135f), Struct_1(31599i, -45405i, 13148u, vec2<u32>(1u, 38821u), -399f), Struct_1(0i, -8322i, 4294967295u, vec2<u32>(68079u, 70007u), -757f), Struct_1(43152i, 38178i, 35592u, vec2<u32>(18264u, 0u), -444f), Struct_1(1i, 72961i, 84290u, vec2<u32>(4294967295u, 50129u), 1667f), Struct_1(-49189i, -13153i, 32068u, vec2<u32>(0u, 19279u), 362f), Struct_1(2147483647i, -1i, 1u, vec2<u32>(34543u, 0u), 1200f), Struct_1(63939i, -47227i, 93985u, vec2<u32>(69293u, 0u), -1761f), Struct_1(9496i, -9503i, 1u, vec2<u32>(1u, 4294967295u), 206f), Struct_1(-1i, 49550i, 7789u, vec2<u32>(44636u, 49559u), 476f), Struct_1(2147483647i, i32(-2147483648), 34372u, vec2<u32>(1u, 1u), 759f), Struct_1(1i, -25766i, 0u, vec2<u32>(0u, 33919u), -1201f), Struct_1(-12436i, 1i, 4294967295u, vec2<u32>(4294967295u, 1u), 1620f), Struct_1(1i, 27596i, 8285u, vec2<u32>(45054u, 0u), 1361f), Struct_1(-1i, 2147483647i, 52036u, vec2<u32>(1u, 17645u), 1572f), Struct_1(1i, i32(-2147483648), 4294967295u, vec2<u32>(31225u, 0u), -281f));

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> u32 {
    var var_0 = ~abs(66680u);
    return ~u_input.b.x;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-215f, 1000f));
    var var_2 = false;
    let var_3 = Struct_1(-26306i, 1i, u_input.b.x, vec2<u32>(_wgslsmith_mult_u32(11993u, 41623u), reverseBits(func_2())), var_1);
    var_2 = all(vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), false));
    return global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 32u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = (true & all(select(arg_1.a.ywx, vec3<bool>(true, true, arg_1.a.x), arg_1.a.x))) && (_wgslsmith_clamp_i32(max(-10872i, _wgslsmith_mult_i32(arg_1.b.b, 2147483647i)), countOneBits(arg_1.b.a), (11512i ^ arg_1.b.a) ^ _wgslsmith_add_i32(u_input.a.x, -2147483647i)) == ~(-5001i));
    var var_1 = ~max(_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(arg_1.b.a), -52882i), _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x))), ~(~u_input.a));
    global2 = array<Struct_2, 32>();
    let var_2 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.b & u_input.a.x, -2147483647i, i32(-1i) * -26006i, 1i) & firstLeadingBit(~vec4<i32>(-61510i, u_input.a.x, u_input.a.x, u_input.a.x)), (-vec4<i32>(var_1.x, 1i, 2147483647i, var_1.x) | vec4<i32>(u_input.a.x, arg_1.b.b, 1036i, u_input.a.x)) | abs(vec4<i32>(-48417i, 1505i, 2147483647i, -2147483647i)));
    var_1 = abs(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, 1i), var_1.x), -18187i)) | _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(~u_input.a.x, -2147483647i)), u_input.a);
    return select(select(select(!select(vec4<bool>(arg_1.a.x, true, false, false), vec4<bool>(false, false, false, true), arg_1.a), vec4<bool>(u_input.a.x >= 1i, arg_1.a.x, false || arg_1.a.x, any(arg_1.a)), vec4<bool>(arg_1.a.x | arg_1.a.x, false, false, arg_1.a.x)), select(arg_1.a, arg_1.a, all(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x))), select(vec4<bool>(arg_1.a.x, !arg_1.a.x, !arg_1.a.x, arg_1.a.x), select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<bool>(true, false, true, true), !vec4<bool>(false, arg_1.a.x, true, true)), select(arg_1.a, !vec4<bool>(false, arg_1.a.x, true, arg_1.a.x), arg_1.a.x && arg_1.a.x))), vec4<bool>(true && any(arg_1.a), true != arg_1.a.x, !arg_1.a.x, _wgslsmith_f_op_f32(-1682f + 1000f) < arg_1.b.e), vec4<bool>(arg_1.a.x, !any(arg_1.a.wxy), !arg_1.a.x || true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(select(vec4<bool>(true, true, true, true), !(!func_3(vec3<u32>(var_0.d.x, 27508u, 0u), Struct_2(vec4<bool>(true, false, false, false), Struct_1(-2147483647i, var_0.b, 0u, u_input.b, -1549f)))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false))), Struct_1(_wgslsmith_sub_i32(u_input.a.x, ~(u_input.a.x | var_0.a)), var_0.b, abs(~4294967295u), (min(vec2<u32>(var_0.c, u_input.b.x), vec2<u32>(1u, var_0.d.x)) >> (abs(var_0.d) % vec2<u32>(32u))) << (~u_input.b % vec2<u32>(32u)), var_0.e));
    var var_2 = Struct_1(u_input.a.x, abs(-1i), var_1.b.c, min(~var_0.d, _wgslsmith_clamp_vec2_u32(countOneBits(var_0.d << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), ~max(u_input.b, vec2<u32>(var_1.b.c, 0u)), abs(var_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.e + var_2.e), _wgslsmith_f_op_f32(sign(var_2.e))) - 1815f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) + 1624f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - 590f) - _wgslsmith_f_op_f32(step(var_2.e, var_1.b.e)))))), _wgslsmith_f_op_f32(-748f + 186f));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, -417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.e, -1000f, -1050f), vec3<f32>(_wgslsmith_f_op_f32(step(2073f, -316f)), 353f, _wgslsmith_div_f32(var_0.e, 1366f)))) * vec3<f32>(-150f, 1387f, 1310f));
    var_3 = vec3<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(var_0.e + var_3.x));
    let var_4 = Struct_1(var_1.b.b << (~(~firstLeadingBit(0u)) % 32u), ~abs(countOneBits(var_2.a)), countOneBits(var_2.d.x), ~min(_wgslsmith_add_vec2_u32(var_2.d, u_input.b) | vec2<u32>(61893u, var_1.b.d.x), vec2<u32>(var_0.c, 1u)), 172f);
    var var_5 = select(~vec4<i32>(abs(firstTrailingBit(-69369i)), var_0.b, -20270i, min(-37687i, var_2.b)), ((~vec4<i32>(u_input.a.x, u_input.a.x, 28509i, 93022i) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -29493i, u_input.a.x), vec4<i32>(var_2.b, var_0.a, -2147483647i, 26993i))) ^ vec4<i32>(var_1.b.a, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-30780i, var_0.b, -2147483647i, 0i), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.a.x)), select(u_input.a.x, var_1.b.b, var_1.a.x))) ^ select(-max(vec4<i32>(var_0.b, -2147483647i, 1i, 26675i), vec4<i32>(var_2.b, -10619i, var_2.a, u_input.a.x)), -vec4<i32>(2147483647i, -1i, var_1.b.b, 11222i), select(select(vec4<bool>(false, false, var_1.a.x, false), vec4<bool>(true, var_1.a.x, false, false), var_1.a.x), var_1.a, select(vec4<bool>(false, var_1.a.x, false, var_1.a.x), var_1.a, var_1.a.x))), true);
    let var_6 = vec4<i32>(2147483647i, 2147483647i, 0i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(firstLeadingBit(-16596i), abs(var_0.a)))) ^ vec4<i32>(var_5.x, _wgslsmith_mult_i32(select(-var_2.b, 0i, false), var_2.a), firstTrailingBit(var_0.a), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_4.b, var_2.a, -2147483647i) << (vec4<u32>(u_input.b.x, var_2.d.x, 63081u, 1u) % vec4<u32>(32u)), abs(vec4<i32>(var_0.a, -21221i, var_5.x, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.a, _wgslsmith_f_op_f32(-708f - 134f));
}

