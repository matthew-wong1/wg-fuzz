struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 13656u), vec2<u32>(0u, 2360u), vec2<u32>(4294967295u, 1u), vec2<u32>(25375u, 1u), vec2<u32>(1u, 6517u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 56309u), vec2<u32>(39288u, 4294967295u), vec2<u32>(0u, 19963u), vec2<u32>(4294967295u, 48877u), vec2<u32>(14651u, 86092u), vec2<u32>(21613u, 1u), vec2<u32>(1u, 47870u), vec2<u32>(38204u, 26117u), vec2<u32>(0u, 4294967295u), vec2<u32>(56238u, 1u), vec2<u32>(18426u, 99238u), vec2<u32>(12083u, 0u), vec2<u32>(0u, 24652u), vec2<u32>(0u, 91026u), vec2<u32>(1u, 0u), vec2<u32>(12503u, 34653u), vec2<u32>(0u, 12283u), vec2<u32>(47271u, 52802u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 2861u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_2(abs(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(16484u, 29u)]) << (u_input.d.x % 32u), u_input.d.x)), Struct_1(vec3<u32>(~0u, _wgslsmith_mod_u32(countOneBits(4294967295u), u_input.d.x), ~max(u_input.b.x, u_input.d.x))));
    var var_1 = Struct_4(~(_wgslsmith_mod_u32(reverseBits(1u), var_0.a.x) | ~(var_0.b.a.x ^ u_input.d.x)), 1257f, 2147483647i, var_0, vec4<bool>(any(vec4<bool>(true, true, true, true)), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), all(vec4<bool>(true, select(false, false, false), all(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, false)))), false));
    global0 = array<vec2<u32>, 29>();
    var_1 = Struct_4(~(var_0.a.x | u_input.d.x), _wgslsmith_f_op_f32(ceil(var_1.b)), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-16964i, var_1.c, arg_0, -4519i)), 0i, var_1.c ^ arg_0), max(u_input.a << (vec4<u32>(53178u, u_input.d.x, 28404u, var_0.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, arg_0, u_input.c.x, arg_0) << (vec4<u32>(1u, var_0.a.x, 39938u, 1u) % vec4<u32>(32u))))), Struct_2(~var_1.d.a, Struct_1(vec3<u32>(max(0u, 47971u), 0u, 4294967295u))), select(!select(vec4<bool>(false, false, false, var_1.e.x), vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.e.x), var_1.e.x == true), !vec4<bool>(false, true && var_1.e.x, var_1.e.x, var_1.e.x), select(vec4<bool>(!var_1.e.x, true, var_1.e.x, var_1.e.x), var_1.e, var_1.e)));
    global0 = array<vec2<u32>, 29>();
    return true;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f * _wgslsmith_f_op_f32(641f - 1665f))), -229f, func_3(-3128i))), -1059f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(605f, _wgslsmith_f_op_f32(-673f + -819f)) * -299f), -1000f)));
    global0 = array<vec2<u32>, 29>();
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32((u_input.a.x & 2147483647i) | (u_input.c.x & u_input.c.x), ~(-14067i)) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(0u & u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 1u)), firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))) % 32u), ~_wgslsmith_add_i32(firstLeadingBit(~(-1i)), firstTrailingBit(u_input.a.x ^ -2147483647i)));
    let var_2 = Struct_5(abs(vec4<u32>(_wgslsmith_add_u32(45042u, 1u), u_input.d.x, abs(_wgslsmith_mult_u32(u_input.d.x, u_input.b.x)), u_input.b.x)), 1i, _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, 49039u, ~u_input.b.x), countOneBits(vec3<u32>(u_input.b.x, 0u, u_input.b.x))) ^ vec3<u32>(u_input.b.x, 4294967295u, 1226u), _wgslsmith_mult_i32(max(~_wgslsmith_clamp_i32(var_1, -2147483647i, var_1), _wgslsmith_mult_i32(var_1, -var_1)), var_1));
    global0 = array<vec2<u32>, 29>();
    return vec3<u32>(var_2.a.x | 22670u, ~28020u, 4294967295u);
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(func_2()), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(476f, -184f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1690f), _wgslsmith_f_op_f32(-1093f - _wgslsmith_f_op_f32(select(1000f, 1596f, true))))), _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 4294967295u, u_input.d.x), vec4<u32>(1u, u_input.d.x, u_input.d.x, 317u)), ~u_input.b.x, u_input.d.x ^ u_input.b.x), ~firstTrailingBit(vec3<u32>(u_input.b.x, u_input.d.x, 0u) << (vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u)))), u_input.a);
    var_0 = Struct_3(Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 37111u, var_0.a.a.x), ~countOneBits(var_0.d))), 31904i == -u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(841f + -1850f), _wgslsmith_f_op_f32(abs(-448f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-671f, 207f), var_0.c)) - var_0.c)), vec3<u32>(var_0.d.x, var_0.d.x & (~4294967295u & func_2().x), _wgslsmith_add_u32(1u, 1u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(~u_input.a.x, -2147483647i, -32830i, var_0.e.x), vec4<i32>(-25191i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 1838i, 12769i), vec4<i32>(-2147483647i, u_input.a.x, 1i, 0i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-3930i, -27388i), vec2<i32>(-2147483647i, u_input.a.x)), ~(-2147483647i)), _wgslsmith_add_i32(~u_input.c.x, 9516i)), vec4<i32>(~u_input.c.x, 20468i, ~1i, var_0.e.x)));
    var_0 = Struct_3(var_0.a, true, var_0.c, ~countOneBits(reverseBits(vec3<u32>(47255u, u_input.b.x, var_0.d.x))), vec4<i32>(2147483647i, u_input.c.x, -(u_input.a.x >> (var_0.d.x % 32u)) ^ -(~u_input.a.x), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e.x, u_input.a.x) >> (var_0.a.a.yy % vec2<u32>(32u)), abs(u_input.a.xx)))));
    var var_1 = vec3<bool>(any(vec2<bool>(true, !var_0.b)), !var_0.b, true);
    var var_2 = vec4<i32>(u_input.a.x, -var_0.e.x, firstTrailingBit(~max(3053i, var_0.e.x) ^ u_input.c.x), ~reverseBits(-1i));
    return countOneBits(_wgslsmith_sub_vec4_u32(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(10936u, var_0.d.x, 1u, 1u), vec4<u32>(0u, 18111u, 78025u, var_0.a.a.x), vec4<u32>(40810u, 1u, 0u, 21407u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, var_0.a.a.x, 6216u), vec4<u32>(59480u, 1u, u_input.b.x, var_0.d.x)), true), vec4<u32>(24609u, firstLeadingBit(~45565u), 43010u, u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 29>();
    var var_0 = Struct_5(func_1(), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-63542i), firstTrailingBit(2147483647i)), u_input.c.x, u_input.a.x), vec3<u32>(~u_input.d.x, ~(u_input.b.x & abs(u_input.b.x)), u_input.b.x), 0i);
    let var_1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, false), false, select(true, true, false)), all(vec4<bool>(true, true, true, true))), vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), true, select(true, true, true), true), !vec4<bool>(true, any(vec3<bool>(false, true, false)), true, var_0.a.x < 13810u)));
    let var_2 = Struct_4(1u, -447f, ~u_input.c.x, Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(abs(var_0.a.x), 29u)], u_input.d), 4294967295u, var_0.a.x), Struct_1(vec3<u32>(var_0.a.x << (u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(u_input.d.x, 0u, var_0.a.x, 0u)), u_input.d.x))), !(!select(!vec4<bool>(true, false, var_1, false), vec4<bool>(var_1, var_1, true, true), !vec4<bool>(false, var_1, false, var_1))));
    var var_3 = 40763u;
    var var_4 = Struct_3(Struct_1(~func_1().wyy), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b, 513f), vec2<f32>(var_2.b, var_2.b)))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, 278f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(475f * var_2.b))))), min(countOneBits(~select(var_2.d.a, vec3<u32>(u_input.d.x, var_2.a, 55829u), var_2.e.x)), var_0.c), max(max(abs(u_input.a), (vec4<i32>(21590i, -2147483647i, var_0.d, -2147483647i) & u_input.a) ^ u_input.a), vec4<i32>(_wgslsmith_add_i32(abs(-1i), _wgslsmith_sub_i32(u_input.c.x, 31051i)), ~_wgslsmith_sub_i32(23067i, u_input.c.x), -26222i, var_2.c)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

