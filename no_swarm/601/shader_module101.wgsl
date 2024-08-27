struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(10353i, 15963i, vec2<u32>(1u, 72794u), 39714u, vec4<bool>(true, false, true, false)), Struct_1(2147483647i, 3763i, vec2<u32>(1u, 34665u), 44617u, vec4<bool>(true, true, true, true)), Struct_1(4572i, -1i, vec2<u32>(4294967295u, 44703u), 39217u, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), 0i, vec2<u32>(16272u, 1u), 8190u, vec4<bool>(false, true, true, true)), Struct_1(i32(-2147483648), 2170i, vec2<u32>(21668u, 4294967295u), 1u, vec4<bool>(true, false, true, true)), Struct_1(-7443i, 2147483647i, vec2<u32>(4294967295u, 4294967295u), 113053u, vec4<bool>(false, false, true, true)), Struct_1(14060i, 9286i, vec2<u32>(0u, 32671u), 32696u, vec4<bool>(false, false, true, false)), Struct_1(6495i, 1i, vec2<u32>(6333u, 46022u), 874u, vec4<bool>(true, true, false, false)), Struct_1(-11914i, 443i, vec2<u32>(4294967295u, 117u), 65490u, vec4<bool>(false, true, false, false)));

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-1i, 29669i), vec2<i32>(2147483647i, 24746i), vec2<i32>(-18065i, -31967i), vec2<i32>(-22151i, -42446i), vec2<i32>(-1i, -18792i), vec2<i32>(-11375i, 17092i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 16825i), vec2<i32>(30973i, 2147483647i), vec2<i32>(-119267i, 11503i), vec2<i32>(i32(-2147483648), 21476i), vec2<i32>(24032i, -26665i), vec2<i32>(-28656i, -1i), vec2<i32>(1i, -1i), vec2<i32>(-22660i, -1i), vec2<i32>(38640i, i32(-2147483648)), vec2<i32>(-50836i, 2147483647i), vec2<i32>(-40442i, -1i), vec2<i32>(78999i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(31574i, 4605i), vec2<i32>(41226i, 1i), vec2<i32>(2147483647i, -26805i), vec2<i32>(15835i, 41563i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(0i, -7999i));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(2147483647i, i32(-2147483648), vec2<u32>(1u, 4294967295u), 673u, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(i32(-2147483648), 4781i, vec2<u32>(48635u, 4294967295u), 1947u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-14751i, 14500i, vec2<u32>(4294967295u, 4294967295u), 5071u, vec4<bool>(true, true, true, false))), Struct_2(Struct_1(1i, -1i, vec2<u32>(88814u, 4294967295u), 0u, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(1i, 19783i, vec2<u32>(157380u, 0u), 17800u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(0i, -26451i, vec2<u32>(1993u, 0u), 0u, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(0i, 9843i, vec2<u32>(14915u, 47860u), 1u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(25188i, i32(-2147483648), vec2<u32>(0u, 29142u), 4647u, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(1i, -12346i, vec2<u32>(1u, 7611u), 4294967295u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(0i, 38493i, vec2<u32>(25030u, 4294967295u), 22929u, vec4<bool>(false, true, true, true))), Struct_2(Struct_1(29032i, 1i, vec2<u32>(0u, 31298u), 0u, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-1i, 2147483647i, vec2<u32>(12317u, 1u), 4294967295u, vec4<bool>(false, false, false, false))), Struct_2(Struct_1(0i, -1i, vec2<u32>(107886u, 0u), 1u, vec4<bool>(true, false, true, false))), Struct_2(Struct_1(-1i, -12994i, vec2<u32>(1u, 8169u), 1u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(-58408i, 2147483647i, vec2<u32>(4294967295u, 4294967295u), 17517u, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(-1i, -1i, vec2<u32>(1u, 14534u), 4294967295u, vec4<bool>(false, true, true, false))), Struct_2(Struct_1(0i, 31854i, vec2<u32>(219u, 37426u), 1u, vec4<bool>(false, false, false, true))), Struct_2(Struct_1(86i, -85128i, vec2<u32>(4294967295u, 38587u), 6296u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(20754i, -1i, vec2<u32>(15681u, 4294967295u), 13443u, vec4<bool>(true, true, false, false))), Struct_2(Struct_1(6893i, 1i, vec2<u32>(73386u, 54695u), 4294967295u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(1070i, 1i, vec2<u32>(4050u, 62327u), 1u, vec4<bool>(false, true, false, true))), Struct_2(Struct_1(0i, i32(-2147483648), vec2<u32>(77028u, 43286u), 73464u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(2147483647i, -33259i, vec2<u32>(4294967295u, 1u), 0u, vec4<bool>(true, true, false, false))));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 9u)];
    var var_1 = ~u_input.a.x;
    let var_2 = -2147483647i;
    var var_3 = global2[_wgslsmith_index_u32(var_0.d, 23u)];
    var_3 = global2[_wgslsmith_index_u32(~var_3.a.c.x, 23u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * -1288f)), 120f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f)), -1434f));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global2 = array<Struct_2, 23>();
    let var_0 = u_input.a.x;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-1768f - _wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1144f))))))), _wgslsmith_f_op_f32(1081f * _wgslsmith_f_op_f32(round(arg_0.x))));
    var var_2 = global2[_wgslsmith_index_u32(1u << (((abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.a.x), u_input.a)) >> (firstTrailingBit(u_input.a.x) % 32u)) >> (var_0 % 32u)) % 32u), 23u)];
    let var_3 = -(~(-u_input.c) | u_input.c);
    return _wgslsmith_dot_vec4_u32((_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 0u, var_2.a.c.x), countOneBits(vec4<u32>(var_2.a.d, u_input.a.x, var_2.a.c.x, var_0))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 38770u, 23668u, var_2.a.c.x), vec4<u32>(var_2.a.d, 1u, 13053u, 24470u))) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(5344u, 33881u, var_2.a.c.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(var_0, u_input.a.x, 597u, var_0)))) % vec4<u32>(32u)), abs(min(abs(abs(vec4<u32>(u_input.a.x, var_0, 1u, 4294967295u))), ~vec4<u32>(0u, 45138u, u_input.a.x, u_input.a.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = firstTrailingBit(arg_0);
    global2 = array<Struct_2, 23>();
    global1 = array<vec2<i32>, 27>();
    var var_1 = Struct_1(var_0.x, _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), countOneBits(arg_3.a.a)), vec2<u32>(arg_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 4294967295u, 22373u), arg_1) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_1.x), vec2<u32>(27067u, u_input.a.x))), arg_1.x, select(arg_2, select(select(vec4<bool>(arg_3.a.e.x, false, false, false), arg_3.a.e, arg_3.a.e), vec4<bool>(u_input.a.x < 4294967295u, all(vec4<bool>(true, arg_2.x, arg_3.a.e.x, true)), false, true), vec4<bool>(any(arg_2.xwz), true, true, arg_3.a.e.x)), select(vec4<bool>(any(vec2<bool>(arg_3.a.e.x, arg_3.a.e.x)), false, false, arg_3.a.e.x || true), arg_2, arg_2.x)));
    global0 = array<Struct_1, 9>();
    return Struct_3(Struct_1(-10353i, min(~(-40801i), max(~u_input.d, u_input.b.x)), ~vec2<u32>(arg_3.a.c.x, 23193u), abs(~40868u), arg_2));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = func_4(-vec4<i32>(1i, -2147483647i, _wgslsmith_div_i32(u_input.b.x, -33872i), u_input.b.x ^ u_input.d) & vec4<i32>(u_input.d, -_wgslsmith_div_i32(u_input.c.x, u_input.b.x), ~2147483647i >> (~u_input.a.x % 32u), -4475i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, select(18502u, 11744u, true), _wgslsmith_mod_u32(u_input.a.x, 1u)), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(abs(u_input.a.x), u_input.a.x), ~max(0u, 55546u), func_2(_wgslsmith_f_op_vec3_f32(-arg_0.wyy))), select(~max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u)), ~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), arg_1.x)), select(!vec4<bool>(arg_1.x || arg_1.x, !arg_1.x, arg_1.x & false, arg_1.x & arg_1.x), select(vec4<bool>(!arg_1.x, !arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x || arg_1.x), arg_1.x), any(select(vec4<bool>(false, false, true, arg_1.x), select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(false, false, arg_1.x, arg_1.x)), any(arg_1)))), Struct_3(Struct_1(_wgslsmith_mult_i32(-u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, 1i, u_input.d), vec4<i32>(33618i, u_input.b.x, u_input.c.x, u_input.d))), abs(-29596i), _wgslsmith_div_vec2_u32(u_input.a, u_input.a & u_input.a), 5976u, vec4<bool>(any(arg_1), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), all(vec2<bool>(arg_1.x, arg_1.x)), true))));
    global1 = array<vec2<i32>, 27>();
    var var_1 = _wgslsmith_sub_i32(u_input.b.x, 1i);
    global1 = array<vec2<i32>, 27>();
    global0 = array<Struct_1, 9>();
    return func_4(vec4<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, u_input.d) & ~u_input.c.x, min(_wgslsmith_add_i32(2147483647i, 0i), 1i)), _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(0i, -2147483647i, u_input.c.x)), vec3<i32>(-1i, -5081i, ~1i)), ~firstTrailingBit(max(1416i, -33251i))), firstLeadingBit(firstLeadingBit(abs(~vec4<u32>(u_input.a.x, var_0.a.c.x, 10003u, u_input.a.x)))), !(!var_0.a.e), func_4(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, var_0.a.b), -2608i & u_input.d, reverseBits(var_0.a.a)), -15426i, var_0.a.a, var_0.a.b), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 5676u, ~var_0.a.d | 0u, ~(~u_input.a.x)), vec4<bool>(true, _wgslsmith_mult_i32(24743i, 1i) > u_input.c.x, all(vec4<bool>(arg_1.x, false, arg_1.x, var_0.a.e.x)), true | all(vec4<bool>(true, var_0.a.e.x, var_0.a.e.x, true))), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) + 2209f)), select(!vec2<bool>(u_input.b.x != 0i, true), select(vec2<bool>(false, u_input.b.x != 2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(true, false, false), 1u < u_input.a.x)), !(all(vec2<bool>(false, true)) & true)));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(1u, 9u)]);
    let var_2 = -201f;
    let var_3 = var_1.a.e.x;
    global1 = array<vec2<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(518f - 1660f) + _wgslsmith_f_op_f32(max(var_2, var_2))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + 555f) + _wgslsmith_f_op_f32(floor(var_2)))))));
}

