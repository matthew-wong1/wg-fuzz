struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(33222u, 1u, 4294967295u, 2487u), vec4<u32>(59862u, 66980u, 4294967295u, 28315u), vec4<u32>(4294967295u, 0u, 3925u, 32478u), vec4<u32>(1u, 17771u, 54528u, 44346u), vec4<u32>(4294967295u, 17465u, 239u, 38550u), vec4<u32>(1u, 1u, 93259u, 12214u), vec4<u32>(3181u, 7070u, 4294967295u, 65624u), vec4<u32>(80422u, 38028u, 67092u, 16313u), vec4<u32>(0u, 46265u, 49604u, 46404u), vec4<u32>(65541u, 57988u, 29841u, 0u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1330f)), -701f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1371f), -1195f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f * 264f) + _wgslsmith_f_op_f32(min(-437f, -945f))), _wgslsmith_f_op_f32(f32(-1f) * -1440f))))));
    var var_1 = Struct_1(all(vec2<bool>(false, any(vec2<bool>(false, false)))), -271f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))))));
    var var_2 = Struct_1(var_1.b >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_div_f32(-494f, var_1.b)))), 1463f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_1.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(round(var_1.b)), var_2.a)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(700f, 1131f) + _wgslsmith_f_op_f32(1339f - -630f)) * -1106f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1655f, _wgslsmith_div_f32(-528f, 2044f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(843f * 2038f), _wgslsmith_f_op_f32(f32(-1f) * -1599f)))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(any(arg_2.xyx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-673f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(f32(-1f) * -897f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(9202u, 1i)), _wgslsmith_f_op_f32(938f - -2383f), !arg_2.x)))));
    var_0 = 272f;
    let var_3 = (_wgslsmith_mod_vec2_u32(reverseBits(~u_input.b), firstLeadingBit(u_input.b & u_input.b)) & u_input.b) >> (_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(~var_1, arg_0 << (111637u % 32u)) << (vec2<u32>(_wgslsmith_mod_u32(46586u, 1u), 72150u) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, 24296i), 1i) | -2147483647i, u_input.d.x);
}

fn func_1(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = min(u_input.d.yy, _wgslsmith_mult_vec2_i32(~min(arg_0.zx, vec2<i32>(-48869i, u_input.d.x)), vec2<i32>(u_input.d.x, u_input.c.x)) >> (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u)));
    var var_1 = 45872i;
    return -vec3<i32>(~func_2(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), ~u_input.a, vec4<bool>(true, true, true, true)), ~u_input.d.x, u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, all(!(!(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a))))));
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    var var_2 = ~37021u;
    return Struct_1(select(arg_0.a, true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1562f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 6u)]);
    var var_1 = func_4(Struct_1(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1502f), -1021f)), _wgslsmith_f_op_f32(f32(-1f) * -220f)))), abs(-func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.d.x, u_input.d.x), u_input.c, vec4<i32>(-1i, u_input.c.x, -2147483647i, u_input.c.x)))));
    var var_2 = var_1.b;
    var var_3 = ~(vec3<u32>(~u_input.a, u_input.b.x, 0u) & select(~vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, u_input.a, u_input.a)), vec3<u32>(u_input.a, 41811u, 4294967295u)), !vec3<bool>(var_1.a, true, true)));
    let var_4 = func_4(Struct_1(!any(vec3<bool>(false, var_0, false)), var_1.b), vec3<i32>(-1i) * -(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 1966i, u_input.d.x), u_input.d) >> ((vec3<u32>(0u, var_3.x, 44246u) | vec3<u32>(24265u, var_3.x, var_3.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(1u) ^ (34647u | u_input.b.x), ~_wgslsmith_div_u32(var_3.x, 22112u), u_input.b.x) | _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 14712u, 62148u, u_input.b.x), global1[_wgslsmith_index_u32(var_3.x, 10u)]), reverseBits(u_input.a)), reverseBits(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec2<u32>(45564u, _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, (5007u << (u_input.a % 32u)) & max(u_input.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b, var_1.b, -576f, -1455f), vec4<f32>(var_1.b, 1149f, var_1.b, -438f))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(579f, var_4.b))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, var_1.b))))))), u_input.c.zzw);
}

