struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(1i, i32(-2147483648)), vec2<f32>(1495f, -885f), 1322f, 3403u);

var<private> global1: array<u32, 6> = array<u32, 6>(10415u, 0u, 85252u, 49104u, 34460u, 25462u);

var<private> global2: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<u32, 6>();
    let var_0 = Struct_2(!vec4<bool>(true, _wgslsmith_f_op_f32(step(global0.c, -783f)) == global2.x, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(global0.b.x)) < -670f), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0.c.x, global0.a.x), vec2<i32>(1i, 1i) & vec2<i32>(arg_0.c.x, global0.a.x)), min(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(u_input.a, -4774i)), -(-2147483647i & arg_2.a)), _wgslsmith_clamp_vec4_i32(arg_0.c | ~vec4<i32>(72225i, u_input.a, 1i, -3264i), -(vec4<i32>(-2147483647i, -5737i, arg_2.c.x, global0.a.x) ^ arg_2.c), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-9218i, arg_2.b, 2147483647i, 2688i), arg_0.c, vec4<i32>(21742i, -59020i, -16715i, arg_0.e))), 43442u, _wgslsmith_add_i32(arg_0.a << (arg_1 % 32u), u_input.a)), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true)), vec4<bool>(true, any(vec2<bool>(false, true)), false, any(vec4<bool>(false, false, true, false))), reverseBits(-2147483647i) > arg_0.b), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true)), true, true, any(vec2<bool>(true, true)))));
    global1 = array<u32, 6>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-267f, global0.c, 244f, global2.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global0.c, 515f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-209f, global2.x, 1533f, global2.x), vec4<f32>(114f, 350f, 776f, -1690f)), vec4<f32>(-407f, global0.b.x, global2.x, 1273f))), vec4<bool>(!var_0.a.x, var_0.c.x, true & var_0.a.x, false || var_0.c.x)))));
    let var_1 = Struct_2(vec4<bool>(var_0.c.x && var_0.c.x, true, var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), global0.b.x) > _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(global0.b.x - 161f))), Struct_1(_wgslsmith_mod_i32(0i, 2147483647i), arg_0.e, _wgslsmith_mod_vec4_i32(-(arg_2.c << (vec4<u32>(var_0.b.d, 4294967295u, 44680u, 0u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~arg_0.c, vec4<i32>(-11959i, -1i, -19741i, 2147483647i))), u_input.b, i32(-1i) * -2147483647i), select(var_0.c, var_0.a, all(!select(var_0.a, var_0.c, false))));
    return !(!select(select(var_1.c, !var_1.a, !var_1.a.x), select(var_0.c, select(var_1.c, vec4<bool>(false, false, true, var_0.a.x), false), var_1.c.x), !any(var_1.a.wx)));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 6>();
    let var_0 = Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !func_3(Struct_1(global0.a.x, u_input.a, vec4<i32>(global0.a.x, -43419i, global0.a.x, u_input.a), global1[_wgslsmith_index_u32(93400u, 6u)], -10165i), 88676u, Struct_1(u_input.a, global0.a.x, vec4<i32>(u_input.a, -2147483647i, global0.a.x, u_input.a), global0.d, u_input.a)), !(global0.d == 13500u)), any(vec3<bool>(true, true, select(true, false, true)))), Struct_1(_wgslsmith_add_i32(-14365i ^ global0.a.x, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a, global0.a | vec2<i32>(u_input.a, 0i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-21599i, u_input.a), true)), (global0.a | vec2<i32>(-2147483647i, -1i)) & (global0.a << (vec2<u32>(16956u, 0u) % vec2<u32>(32u)))), -vec4<i32>(u_input.a, -86947i, _wgslsmith_clamp_i32(-3205i, -1i, global0.a.x), 2568i << (u_input.b % 32u)), abs(global0.d), _wgslsmith_mod_i32(u_input.a, global0.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, false, false) | all(vec3<bool>(true, false, false)), global0.d != global0.d, false), vec4<bool>(true, _wgslsmith_f_op_f32(103f - global0.c) >= -321f, u_input.a >= max(global0.a.x, 1i), true != func_3(Struct_1(u_input.a, u_input.a, vec4<i32>(-36408i, global0.a.x, -59199i, u_input.a), 12986u, -9796i), 24916u, Struct_1(1i, global0.a.x, vec4<i32>(0i, u_input.a, global0.a.x, u_input.a), global0.d, u_input.a)).x)));
    var var_1 = -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-24312i, 100920i, u_input.a), vec3<i32>(-42090i, 14589i, 28793i), var_0.b.c.yzw), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.a.x, var_0.b.b), vec3<i32>(66840i, 0i, u_input.a))) >> (~(~vec3<u32>(u_input.b, 20658u, global0.d)) % vec3<u32>(32u)), max(var_0.b.c.zxx, max(vec3<i32>(u_input.a, var_0.b.c.x, 1i) | vec3<i32>(var_0.b.a, -2147483647i, var_0.b.c.x), var_0.b.c.zzw >> (vec3<u32>(0u, u_input.b, global0.d) % vec3<u32>(32u)))));
    var_1 = abs(~select(select(var_0.b.c.xwz, var_0.b.c.xwy, !vec3<bool>(var_0.c.x, true, var_0.c.x)), vec3<i32>(u_input.a, var_0.b.c.x, i32(-1i) * -1i), any(select(var_0.c.wx, var_0.a.yz, false))));
    var var_2 = var_0;
    return Struct_1(-1i, var_1.x, var_2.b.c, 0u, -u_input.a);
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = max(var_0.c, var_0.c >> (select(~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 47928u)), min(vec4<u32>(4294967295u, u_input.b, 4294967295u, global1[_wgslsmith_index_u32(var_0.d, 6u)]), vec4<u32>(0u, 13623u, global1[_wgslsmith_index_u32(var_0.d, 6u)], 122831u)) ^ ~vec4<u32>(4294967295u, 77240u, u_input.b, arg_0.d), vec4<bool>(true, false, select(true, false, false), true)) % vec4<u32>(32u)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, 1516f, global2.x, global2.x))))), vec4<f32>(global0.c, global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c, 2593f))), -1148f))));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(select(arg_0.d, arg_0.d, true), _wgslsmith_mult_u32(global0.d, 22112u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~firstLeadingBit(var_0.d), 6u)], arg_0.d, ~(~var_0.d)), _wgslsmith_mod_u32(~(7134u | arg_0.d), ~(~86595u))), abs(~(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 6u)], 0u, global0.d, global0.d) >> (~vec4<u32>(130198u, 4294967295u, arg_0.d, 0u) % vec4<u32>(32u)))), vec4<u32>(0u, ~((arg_0.d ^ 30703u) | ~12206u), 1u >> (_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, u_input.b, 4294967295u, 1u), vec4<u32>(arg_0.d, global0.d, global1[_wgslsmith_index_u32(721u, 6u)], 4294967295u)), vec4<u32>(107225u, 1u, 47915u, 45370u)) % 32u), 0u | arg_0.d));
    var var_3 = false;
    return Struct_3(-vec2<i32>(var_0.b, arg_0.a.x), arg_0.b, global0.c, 12447u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(firstLeadingBit(-vec2<i32>(-7746i, 10778i)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))), 1186u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(11646u, _wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 6u)]), global1[_wgslsmith_index_u32(91093u, 6u)] & 4294967295u), abs(~26088u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.c)), -674f, _wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(402f + 719f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1088f, global0.c, _wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, global2.x, -1830f, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1439f, global2.x, -645f, 1000f)))), vec4<bool>(true, true, true, true))));
}

