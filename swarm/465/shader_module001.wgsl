struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, Struct_1(0u), vec2<u32>(0u, 31854u), Struct_1(1u));

var<private> global1: vec3<f32> = vec3<f32>(-234f, -1000f, 1522f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_4) -> u32 {
    let var_0 = (-(0i & arg_2.b.b) >> (_wgslsmith_div_u32(arg_2.b.d, reverseBits(8582u) | ~global0.a) % 32u)) >> (arg_2.a % 32u);
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -715f, 139f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, global1.x, 1000f))))), vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(var_1, -1738f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(675f)) * _wgslsmith_f_op_f32(-621f + -900f)))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(-150f, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global1.x)), -498f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - _wgslsmith_f_op_f32(round(global1.x)))), 892f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(750f, global1.x, var_1)))))) - vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1330f), global1.x));
    return 1u;
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = u_input.a.x;
    global0 = Struct_2(func_3(Struct_2(0u, Struct_1(1u), ~min(vec2<u32>(0u, var_0), vec2<u32>(0u, global0.d.a)), global0.b), select(arg_0.yx, arg_0.xy, arg_0.x), Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 32674u), u_input.c.xz), Struct_3(!arg_0, _wgslsmith_mod_i32(1i, u_input.d), select(vec3<bool>(true, arg_0.x, true), arg_0, arg_0.x), 34127u ^ u_input.a.x, Struct_2(1u, Struct_1(10022u), vec2<u32>(0u, u_input.c.x), Struct_1(var_0))))), global0.b, global0.c, Struct_1(70202u));
    global0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u << (global0.d.a % 32u), ~1u), var_0, u_input.b.x), 0u), Struct_1(_wgslsmith_add_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 24459u, 30611u), u_input.c), u_input.c.x ^ 62947u, false & arg_0.x), ~_wgslsmith_div_u32(4294967295u, var_0))), vec2<u32>(var_0, func_3(Struct_2(~u_input.c.x, global0.d, max(u_input.b, global0.c), global0.d), !(!arg_0.yy), Struct_4(_wgslsmith_clamp_u32(23413u, 0u, u_input.c.x), Struct_3(vec3<bool>(false, arg_0.x, true), -1i, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), 89666u, Struct_2(0u, Struct_1(u_input.c.x), global0.c, Struct_1(9595u)))))), Struct_1(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u), abs(0u))));
    global0 = Struct_2(var_0, Struct_1(min(abs(u_input.a.x >> (22108u % 32u)), global0.b.a)), vec2<u32>(4759u, 46620u) ^ ~(~(vec2<u32>(1u, u_input.c.x) << (vec2<u32>(var_0, 76048u) % vec2<u32>(32u)))), Struct_1(4294967295u));
    var var_1 = Struct_5(Struct_3(!select(vec3<bool>(arg_0.x, arg_0.x, false), !arg_0, arg_0.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(-1i), max(u_input.d, u_input.d)), u_input.d), !arg_0, 91211u, Struct_2(0u, global0.b, vec2<u32>(1u, 1u), global0.d)), Struct_4(10851u, Struct_3(select(vec3<bool>(arg_0.x, true, arg_0.x), select(arg_0, arg_0, arg_0.x), any(arg_0)), _wgslsmith_add_i32(~64117i, -35890i), !arg_0, min(1u, 4294967295u), Struct_2(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(var_0, global0.d.a)), Struct_1(16405u), global0.c & global0.c, Struct_1(var_0)))), !(all(vec3<bool>(true, true, true)) | (select(1i, 14999i, arg_0.x) < ~0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(floor(-278f))), 30348u);
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_1.d, -622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-630f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(global1.x * -784f)))), 1922f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = all(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, true))));
    let var_1 = _wgslsmith_div_vec2_u32(arg_0, vec2<u32>(arg_0.x >> (~29548u % 32u), global0.a));
    var var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 26585i, u_input.d), vec3<i32>(-2147483647i, -12873i, 25339i)), ~(-2147483647i), u_input.d)), vec3<i32>(select(~arg_1.x, max(u_input.d, -42511i), true), 14883i, _wgslsmith_mod_i32(7377i, _wgslsmith_add_i32(arg_1.x, u_input.d)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(707f * global1.x), global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -830f), vec4<f32>(1094f, global1.x, -1000f, global1.x)), vec4<f32>(global1.x, -530f, 821f, 1000f)), vec4<f32>(global1.x, _wgslsmith_div_f32(global1.x, global1.x), global1.x, -1414f))) - _wgslsmith_f_op_vec4_f32(func_2(!vec3<bool>(var_0, true, true))));
    let var_4 = firstLeadingBit(~abs(~u_input.c.xy));
    return Struct_2(global0.b.a, Struct_1(~(~func_3(Struct_2(4294967295u, Struct_1(var_4.x), vec2<u32>(global0.d.a, arg_0.x), Struct_1(var_1.x)), vec2<bool>(var_0, false), Struct_4(u_input.a.x, Struct_3(vec3<bool>(false, var_0, true), u_input.d, vec3<bool>(false, true, false), 8533u, Struct_2(var_1.x, Struct_1(4294967295u), u_input.a, global0.b)))))), firstLeadingBit(global0.c), Struct_1(4294967295u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_4(abs(36013u), Struct_3(vec3<bool>(arg_2.x, func_1(vec2<u32>(104993u, u_input.a.x), vec2<i32>(0i, -60098i)).a > 16462u, 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.b.a, arg_0.c.x), vec3<u32>(0u, arg_0.d.a, 13636u))), -1i, select(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(true, true, true), arg_0.c.x < global0.b.a), !(!arg_2), select(true, false, arg_2.x & arg_2.x)), max(~global0.a, ~arg_0.a) ^ min(~arg_0.b.a, ~arg_0.d.a), func_1(vec2<u32>(0u, max(global0.c.x, global0.b.a)), -abs(vec2<i32>(1i, -31729i)))));
    global1 = _wgslsmith_f_op_vec3_f32(max(arg_1, _wgslsmith_f_op_vec3_f32(-arg_1)));
    var var_1 = arg_1;
    return var_0.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(-609f));
    var var_1 = vec3<bool>(func_4(func_1(abs(_wgslsmith_clamp_vec2_u32(u_input.c.xz, vec2<u32>(112u, 11250u), vec2<u32>(u_input.a.x, u_input.c.x))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.d), -vec2<i32>(-1i, 2147483647i))), vec3<f32>(-1000f, global1.x, 270f), vec3<bool>(~u_input.a.x < (u_input.a.x | 20257u), false, global1.x > _wgslsmith_f_op_f32(abs(global1.x)))), !any(vec2<bool>(true, true)), all(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), func_4(Struct_2(global0.d.a, Struct_1(117735u), u_input.a, global0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), vec3<bool>(true, false, true)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~u_input.c, u_input.c));
    let var_3 = func_1(u_input.b ^ ~(~u_input.c.yy), ~(firstLeadingBit(vec2<i32>(u_input.d, 29665i)) & ~reverseBits(vec2<i32>(u_input.d, u_input.d))));
    var_1 = !vec3<bool>(!(!(true & var_1.x)), var_1.x, global1.x >= global1.x);
    let var_4 = ~(~min(vec4<u32>(~1u, abs(var_2.a), var_3.c.x << (1u % 32u), var_3.a), countOneBits(~vec4<u32>(1u, 1u, 49535u, var_3.d.a))));
    global0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(!all(vec4<bool>(true, var_1.x, false, var_1.x)), any(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, false, false))), any(var_1.yy)))).x, func_1(reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 5424u), vec2<u32>(var_2.a, 0u))), vec2<i32>(_wgslsmith_sub_i32(u_input.d, -1i), max(-2147483647i, u_input.d)) << (var_4.wx % vec2<u32>(32u))).c);
}

