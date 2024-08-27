struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 20859u, 264u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 27718u, 4294967295u), vec3<u32>(1u, 65456u, 0u), vec3<u32>(43066u, 41846u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    return true;
}

fn func_2() -> Struct_3 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true), i32(-1i) * -(i32(-1i) * -66720i), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-630f)))), Struct_1(vec2<bool>(all(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 11168i, -634i), abs(vec3<i32>(1i, 1i, 1i))), (any(vec4<bool>(true, true, false, false)) & true) == func_3(Struct_1(vec2<bool>(false, false), -37866i, false, -860f), true), -274f), Struct_1(vec2<bool>(select(true, true, true), true), ~1i, all(vec2<bool>(u_input.a >= u_input.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-980f - -1540f) + 408f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 83242u, 0u), firstLeadingBit(~(vec4<u32>(u_input.a, 116897u, u_input.a, 0u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(max(u_input.a, 49833u), u_input.a), 59278u, ~_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a)));
    return Struct_3(-firstLeadingBit(min(vec4<i32>(38071i, -23736i, var_0.b.b, var_0.b.b), vec4<i32>(var_0.c.b, var_0.b.b, var_0.c.b, var_0.b.b))) ^ -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.c.b, -2147483647i, -39085i, 2147483647i), -vec4<i32>(var_0.b.b, 3666i, var_0.c.b, 9681i)), -937f, Struct_1(select(vec2<bool>(var_0.a.b < 1i, select(var_0.a.c, true, var_0.a.a.x)), var_0.b.a, select(var_0.a.a, vec2<bool>(false, var_0.a.c), var_0.c.a.x)), var_0.c.b, -704f < var_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.d * var_0.c.d))))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 4294967295u), vec2<u32>(var_0.d.x, 10784u)), var_0.d.x | 0u) >> (var_0.d.yw % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d, -571f, var_0.a.d) + vec3<f32>(-1223f, var_0.b.d, 1370f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1409f, 238f, 907f), vec3<f32>(var_0.b.d, 339f, var_0.a.d))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.d), 452f, _wgslsmith_f_op_f32(-var_0.a.d)), all(vec4<bool>(var_0.c.c, var_0.c.c, var_0.a.c, true))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(vec4<bool>(all(select(!vec3<bool>(true, true, arg_1.c.c), vec3<bool>(arg_1.c.a.x, false, true), true)), any(select(vec3<bool>(arg_2.a.a.x, arg_2.c.c, arg_1.c.c), select(vec3<bool>(arg_1.c.c, arg_2.c.c, true), vec3<bool>(arg_1.c.c, true, arg_2.c.c), vec3<bool>(true, arg_1.c.c, arg_2.c.a.x)), select(vec3<bool>(true, false, true), vec3<bool>(arg_2.a.a.x, arg_2.a.c, false), vec3<bool>(true, false, false)))), false, any(arg_2.b.a)), select(!select(vec4<bool>(true, arg_2.a.a.x, false, arg_1.c.a.x), select(vec4<bool>(true, arg_1.c.a.x, arg_1.c.a.x, arg_1.c.a.x), vec4<bool>(arg_2.c.a.x, true, arg_2.b.c, arg_2.a.c), arg_1.c.a.x), all(vec2<bool>(true, arg_2.b.c))), vec4<bool>(false, all(!vec4<bool>(arg_1.c.a.x, false, arg_2.b.a.x, false)), true, arg_1.c.a.x), false), !select(select(!vec4<bool>(false, false, arg_1.c.a.x, true), vec4<bool>(arg_1.c.c, arg_2.a.c, arg_1.c.c, arg_2.a.c), vec4<bool>(false, true, arg_1.c.c, arg_2.b.c)), vec4<bool>(arg_2.d.x <= u_input.a, u_input.a != arg_1.d.x, 0i > arg_1.c.b, false), !vec4<bool>(arg_1.c.a.x, true, arg_2.a.c, false)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-154f, func_2().c.d), arg_1.e.x)), abs(arg_1.a), vec4<u32>(~1u, 18473u, select(_wgslsmith_div_u32(firstTrailingBit(u_input.a), 87004u), _wgslsmith_dot_vec3_u32(arg_2.d.yww, global0[_wgslsmith_index_u32(4294967295u, 5u)]), any(!vec4<bool>(var_0.x, true, arg_1.c.a.x, arg_1.c.c))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~arg_2.d, countOneBits(vec4<u32>(30386u, arg_1.d.x, 4294967295u, arg_1.d.x))), 1u)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c.d, 362f), vec2<f32>(func_2().b, _wgslsmith_f_op_f32(max(func_2().b, _wgslsmith_f_op_f32(-arg_2.c.d))))));
    let var_2 = ~abs(vec4<i32>(-2147483647i, arg_1.c.b, 1568i, -arg_2.a.b | _wgslsmith_mult_i32(arg_1.c.b, -1i)));
    var var_3 = -1320f;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - 103f))));
    return Struct_2(Struct_1(!arg_2.c.a, -2147483647i, !arg_1.c.a.x && false, arg_1.e.x), func_2().c, Struct_1(vec2<bool>(true, false), -1i, !all(vec2<bool>(true, var_0.x)), arg_2.b.d), select(~var_1.c, ~arg_2.d, var_0.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = func_4(_wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-202f + 846f), _wgslsmith_f_op_f32(-1278f - -1364f))))), func_2(), Struct_2(func_2().c, Struct_1(vec2<bool>(true, true), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 46780i), min(1i, 52297i)), any(vec4<bool>(false, true, false, false)), func_2().e.x), func_2().c, _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(4294967295u, 1u, 20460u, ~4294967295u))));
    var var_1 = vec2<u32>(0u, u_input.a);
    var var_2 = var_0.a.d;
    var_1 = vec2<u32>(_wgslsmith_div_u32(~arg_0.x, _wgslsmith_mod_u32(49471u, u_input.a)), abs(~u_input.a << (arg_0.x % 32u)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.d, -137f), vec2<f32>(823f, -1413f)) - vec2<f32>(var_0.c.d, var_0.b.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1469f, var_0.c.d))) + vec2<f32>(-633f, var_0.c.d))))), vec4<i32>(-1i, var_0.a.b, ~(var_0.b.b & 14350i) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -40781i, 2147483647i), vec3<i32>(var_0.c.b, 11842i, var_0.a.b)) >> (var_1.x % 32u)), _wgslsmith_mod_i32(abs(~(-12876i)), (i32(-1i) * -10784i) | (var_0.a.b & -2147483647i))), max(abs(~var_0.d), var_0.d), func_2().e.xz);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = func_1(~_wgslsmith_add_vec4_u32(arg_0.c, ~arg_2.a.d)).d.x;
    global0 = array<vec3<u32>, 5>();
    var var_1 = ~_wgslsmith_add_i32(arg_2.a.c.b, -7746i);
    let var_2 = arg_2.a.b.b;
    let var_3 = select(func_4(_wgslsmith_f_op_f32(-func_1(vec4<u32>(30152u, 4294967295u, arg_2.a.d.x, 25491u)).a.x), func_2(), arg_2.a).b.c, !any(!select(vec4<bool>(true, true, arg_2.c.x, true), vec4<bool>(arg_2.c.x, false, false, arg_2.c.x), arg_2.a.b.c)), func_4(_wgslsmith_f_op_f32(-arg_2.a.b.d), Struct_3(_wgslsmith_mod_vec4_i32(-arg_0.b, -arg_0.b), _wgslsmith_f_op_f32(-arg_0.d.x), func_4(_wgslsmith_f_op_f32(ceil(661f)), Struct_3(arg_0.b, arg_0.a.x, arg_2.a.c, arg_0.c.wx, vec3<f32>(arg_0.d.x, arg_1, -1401f)), arg_2.a).b, ~arg_0.c.wz >> (arg_2.a.d.wx % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(309f, -455f, -1000f)))), arg_2.a).a.c);
    return Struct_1(vec2<bool>(false || arg_2.c.x, !any(vec3<bool>(true, arg_2.a.c.a.x, var_3))), max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, arg_0.b.x, 16941i, arg_0.b.x), ~arg_0.b)), true, -443f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    let var_0 = Struct_5(Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), false), -14360i, true, _wgslsmith_f_op_f32(abs(-413f))), func_5(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(41336u, 15255u, 154859u, u_input.a), vec4<u32>(u_input.a, 38144u, u_input.a, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1060f)) - _wgslsmith_f_op_f32(sign(-890f))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), 48602i, false, -437f), Struct_1(vec2<bool>(false, false), -8455i, true, -707f), Struct_1(vec2<bool>(false, true), -2147483647i, false, -1108f), vec4<u32>(u_input.a, 1u, u_input.a, 8483u)), 1i, vec2<bool>(true, true))), func_2().c, ~reverseBits(~vec4<u32>(u_input.a, u_input.a, 19956u, u_input.a))), _wgslsmith_sub_i32(countOneBits(1i), firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, 32846i), select(vec3<i32>(-15233i, 24859i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, 3150i), vec3<bool>(true, false, false))))), func_2().c.a);
    global0 = array<vec3<u32>, 5>();
    let var_1 = var_0.a.b.a.x;
    global0 = array<vec3<u32>, 5>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.a.d - var_0.a.a.d)));
    var_2 = -1087f;
    let var_3 = vec3<f32>(1078f, -767f, var_0.a.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

