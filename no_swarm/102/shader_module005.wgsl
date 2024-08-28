struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-533f, 684f, -766f), vec3<f32>(-475f, 483f, -784f), vec3<f32>(316f, 604f, 1011f), vec3<f32>(659f, 313f, 203f), vec3<f32>(-1462f, 926f, -1012f), vec3<f32>(181f, 1328f, -779f), vec3<f32>(-858f, -964f, 329f));

var<private> global1: array<Struct_3, 25>;

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(523u, 86471u) ^ ~_wgslsmith_div_u32(43928u, u_input.b), min(u_input.a, 10259u), u_input.b, firstLeadingBit(~34773u)), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.a) | ~vec4<u32>(23197u, 64528u, 4294967295u, u_input.a)), abs(~(~vec4<u32>(29396u, u_input.b, u_input.a, u_input.a)))));
    var var_1 = ~u_input.c;
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    var var_2 = 0u;
    return !(~(~var_0.x) != ~(~(5009u | u_input.a)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    global2 = global0[_wgslsmith_index_u32(min(~arg_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(38717u, 32782u, 0u), arg_2.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(6826u, 40049u, arg_2.x, 1u), vec4<u32>(u_input.a, 0u, 729u, arg_2.x))))), 7u)];
    var var_0 = global1[_wgslsmith_index_u32(~arg_2.x, 25u)];
    var var_1 = Struct_2(arg_1.x, Struct_1((u_input.c.x | u_input.d.x) | u_input.e, min(arg_0, abs(~8966u)), ~_wgslsmith_div_u32(19286u, _wgslsmith_sub_u32(14105u, 1u)), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, 8868u), var_0.b.zx)), vec2<u32>(~arg_2.x, 0u)), vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(130f, global2.x))));
    global1 = array<Struct_3, 25>();
    let var_2 = global2.x;
    return select(vec3<bool>(select(arg_1.x, true, true), select(false, true, !select(true, true, false)), false), arg_1.yyz, select((~11515u <= firstLeadingBit(var_0.c)) && arg_1.x, func_3(), any(arg_1.ywz)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = array<vec3<f32>, 7>();
    let var_0 = all(vec4<bool>(all(func_2(arg_2.b, vec4<bool>(false, true, true, true), reverseBits(vec3<u32>(u_input.a, arg_0.c, 25644u)))), true, func_3(), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false))));
    let var_1 = !any(vec4<bool>(var_0, false, var_0 & true, true));
    global1 = array<Struct_3, 25>();
    let var_2 = !vec2<bool>(var_0 | true, false);
    return func_3();
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(74569u, 12716u, 22324u, 71483u), vec4<u32>(31386u, u_input.a, 1u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(u_input.a, 25216u, u_input.b, u_input.b))), vec4<u32>(u_input.b, firstTrailingBit(u_input.a), ~u_input.b, u_input.a)) != ~u_input.a, Struct_1(_wgslsmith_add_i32(u_input.c.x << (4294967295u % 32u), -13531i), 1u, 4294967295u, abs(~vec2<u32>(36941u, 48164u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -851f, 119f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 775f, global2.x, 1552f)))))));
    global1 = array<Struct_3, 25>();
    global0 = array<vec3<f32>, 7>();
    global2 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, (var_0.b.d.x & ~u_input.b) & 0u), 7u)] - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))) - 1181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -744f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f - var_0.b.e.x) - 1243f) + _wgslsmith_f_op_f32(f32(-1f) * -1377f))));
    global0 = array<vec3<f32>, 7>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(max(33142u, 1u), 7u)])));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec3<f32> {
    global1 = array<Struct_3, 25>();
    let var_0 = ~vec3<u32>(u_input.a, (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 4294967295u)) | _wgslsmith_clamp_u32(u_input.a, 37639u, u_input.a)) << (0u % 32u), _wgslsmith_mult_u32(35046u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34366u, u_input.a), vec3<u32>(u_input.a, u_input.b, 36415u))));
    let var_1 = Struct_1(-30937i, abs(var_0.x), ~u_input.a, _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 39335u)), var_0.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * _wgslsmith_f_op_f32(ceil(arg_0.x))), 904f, 1197f, _wgslsmith_f_op_f32(-global2.x)) * vec4<f32>(-201f, -1435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f * -407f)), global2.x)));
    global1 = array<Struct_3, 25>();
    global1 = array<Struct_3, 25>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0, vec3<bool>(false, var_0.x == _wgslsmith_dot_vec3_u32(var_0, var_0), false))) * vec3<f32>(global2.x, -525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) + arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 25>();
    let var_0 = ~(-(-u_input.c.x >> (~(~u_input.b) % 32u)));
    let var_1 = -(var_0 ^ -(~2147483647i));
    global2 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1152f, 576f, global2.x)) * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.b, 7u)])), global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(4294967295u ^ ~u_input.a, 7u)], _wgslsmith_f_op_vec3_f32(func_4(func_1(Struct_1(u_input.e, u_input.b, 1u, vec2<u32>(1u, 58547u), vec4<f32>(-1224f, -410f, global2.x, global2.x)), u_input.d.yyx, Struct_1(2147483647i, 41409u, u_input.a, vec2<u32>(0u, u_input.b), vec4<f32>(global2.x, global2.x, global2.x, global2.x)), global2.x), select(vec2<i32>(-20004i, var_0), u_input.c.xx, vec2<bool>(true, false)), -u_input.d)), vec3<bool>(true, true, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, true)), func_2(6960u, vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, 1u, u_input.b)).x, false, true), vec4<bool>(true, true, true, true))));
    var var_2 = vec3<i32>(var_1, u_input.c.x, -29616i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + _wgslsmith_f_op_f32(sign(791f)));
    var var_4 = select(false, !any(vec4<bool>(true, true, true, true)), !(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false))));
    let var_5 = _wgslsmith_f_op_f32(floor(global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1328f, var_5)), var_5))), 1163f), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.xyz << (vec3<u32>(26033u, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.e, var_0, var_1) & u_input.d.wzw), ~vec3<i32>(0i, -2147483647i, 28522i) ^ _wgslsmith_div_vec3_i32(u_input.d.wxz, vec3<i32>(16261i, var_0, -2147483647i))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1, 42098i, var_1), vec3<i32>(var_1, -13550i, -2147483647i), select(vec3<i32>(-1i, 25612i, 0i), vec3<i32>(var_0, -2147483647i, var_1), vec3<bool>(false, false, false))), vec3<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, var_2.x, 65484i, var_2.x)), _wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(var_2.x, -33377i))))), -393f, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b >> (u_input.b % 32u), firstTrailingBit(u_input.a)), ~(~13027u)), ~vec2<u32>(0u, 4993u ^ u_input.b)));
}

