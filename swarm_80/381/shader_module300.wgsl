struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f - -1421f) - _wgslsmith_f_op_f32(f32(-1f) * -336f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1063f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1683f))))));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1453f, var_0.x, 1511f) - vec3<f32>(525f, -511f, 516f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 424f, var_0.x), vec3<f32>(var_0.x, var_0.x, 1154f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 1587f))))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5) -> f32 {
    var var_0 = max(_wgslsmith_div_vec4_i32(vec4<i32>(-(u_input.b & u_input.b), ~(-u_input.b), -u_input.b | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, u_input.b, arg_1.a.x), vec4<i32>(79369i, 19448i, 0i, arg_1.a.x)), max(u_input.b, min(u_input.b, 1i))), _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(arg_1.a.x, u_input.b, -6786i, u_input.b)), firstLeadingBit(vec4<i32>(72929i, -39756i, 64526i, -1i)))), vec4<i32>(u_input.b, u_input.b, arg_1.a.x, _wgslsmith_clamp_i32(-29804i, _wgslsmith_mult_i32(u_input.b, 0i), 1i)) & ~_wgslsmith_add_vec4_i32(select(vec4<i32>(20224i, u_input.b, 0i, 41136i), vec4<i32>(arg_1.a.x, 1i, 35887i, 59449i), false), _wgslsmith_sub_vec4_i32(vec4<i32>(-11047i, u_input.b, 2147483647i, arg_1.a.x), vec4<i32>(1i, 2147483647i, u_input.b, 2155i))));
    var_0 = -vec4<i32>(-5143i, 0i, 0i, _wgslsmith_dot_vec2_i32(arg_1.a.xy, abs(abs(vec2<i32>(6389i, u_input.b)))));
    let var_1 = vec2<bool>(true, true);
    var_0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.x, var_0.x, var_0.x, -543i), vec4<i32>(35167i, 0i, 21915i, var_0.x), vec4<i32>(2147483647i, -1i, u_input.b, 20287i)), -vec4<i32>(-1i, u_input.b, 18155i, u_input.b))), vec4<i32>(_wgslsmith_add_i32(var_0.x, u_input.b), abs(firstLeadingBit(2147483647i)), _wgslsmith_dot_vec3_i32(var_0.yxy >> (arg_2.c.xxw % vec3<u32>(32u)), ~var_0.zyw), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, var_0.x, u_input.b), arg_1.a))) | vec4<i32>(6863i, -_wgslsmith_clamp_i32(39235i, max(u_input.b, var_0.x), select(0i, arg_1.a.x, var_1.x)), select(-arg_1.a.x, 2147483647i, var_1.x), ~0i);
    global0 = array<Struct_2, 25>();
    return 1f;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_4 {
    let var_0 = any(vec2<bool>(true, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], Struct_3(vec3<i32>(arg_1.b, 24777i, 2147483647i), u_input.a.x), Struct_5(1u, u_input.a.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec2<u32>(12776u, u_input.a.x)))) >= _wgslsmith_f_op_vec3_f32(func_1()).x)) || true;
    let var_1 = ~1u;
    var var_2 = Struct_3(vec3<i32>(1i, u_input.b, 9587i), ~_wgslsmith_add_u32(firstTrailingBit(52480u), 0u));
    var var_3 = Struct_5(42696u, ~u_input.a.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x & 4294967295u, u_input.a.x >> (82180u % 32u), 0u >> (var_2.b % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_2.b, u_input.a.x, var_1), _wgslsmith_add_vec4_u32(vec4<u32>(49373u, u_input.a.x, var_1, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, var_1, 0u, u_input.a.x), vec4<u32>(136861u, var_2.b, u_input.a.x, 44724u))), ~(vec2<u32>(20379u, ~var_2.b) ^ ~vec2<u32>(0u, 0u)));
    var var_4 = global0[_wgslsmith_index_u32(15618u, 25u)];
    return Struct_4(-1000f, reverseBits(~arg_1.b) & -_wgslsmith_mult_i32(-2147483647i, abs(arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2123f, -767f))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -863f), _wgslsmith_f_op_f32(round(266f)))), u_input.b << (~firstLeadingBit(0u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(func_1()), any(vec3<bool>(true, true, true))))));
    var var_1 = false;
    var var_2 = Struct_3(reverseBits(firstLeadingBit(-(vec3<i32>(var_0.b, -1i, u_input.b) >> (vec3<u32>(1u, 0u, u_input.a.x) % vec3<u32>(32u))))), 69819u);
    let var_3 = Struct_3(var_2.a, countOneBits(~0u));
    let var_4 = vec4<bool>(true, select(any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true))), true, !(any(vec2<bool>(true, false)) & true)), ~countOneBits(-1i) > var_3.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(-1453f, (_wgslsmith_add_i32(~5442i, u_input.b) ^ var_0.b) | -2147483647i, -2648i, _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(var_2.a.x, var_2.a.x, -2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_3.a.x, 9839i), vec3<i32>(var_0.b, var_3.a.x, -1i)), vec3<i32>(u_input.b, var_3.a.x, u_input.b))) & min(vec3<i32>(_wgslsmith_mod_i32(var_3.a.x, var_2.a.x), min(-50963i, u_input.b), var_3.a.x), select(var_3.a >> (vec3<u32>(var_2.b, u_input.a.x, 0u) % vec3<u32>(32u)), var_3.a, 12678u <= var_3.b)));
}

