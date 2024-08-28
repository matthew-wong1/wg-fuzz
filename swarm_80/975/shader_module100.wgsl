struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-8672i);

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = i32(-1i) * -_wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i, 8225i, 0i) >> (vec3<u32>(u_input.c, 0u, arg_0.c) % vec3<u32>(32u))), ~countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(arg_0.c, 1u)], -2147483647i)));
    global1 = Struct_2(!arg_0.e, -837f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.d.x, arg_0.d.x))));
    var var_1 = vec2<i32>(71585i, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(arg_0.b, -44113i), global0[_wgslsmith_index_u32(~(~arg_0.c), 1u)], _wgslsmith_dot_vec2_i32(-vec2<i32>(35026i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(arg_0.c, 1u)]) << (u_input.d.xw % vec2<u32>(32u))))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u));
    var_1 = max(select(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], 0i), -(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.c, 1u)], 0i) << (vec2<u32>(arg_0.c, 0u) % vec2<u32>(32u))), true) | vec2<i32>(var_1.x, ~10982i), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.b)) << (u_input.b.xw % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, firstLeadingBit(var_1.x)), max(~vec2<i32>(arg_0.b, arg_0.b), ~vec2<i32>(var_1.x, 42567i))), ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-46037i, var_1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], arg_0.b), vec2<i32>(2147483647i, -30163i)), ~vec2<i32>(1i, var_1.x))));
    var_1 = abs(vec2<i32>(_wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(u_input.c, 1u)], var_1.x), 2147483647i) ^ countOneBits(max(vec2<i32>(0i, var_1.x), abs(vec2<i32>(2147483647i, -25584i)))));
    return -1043f;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> vec2<bool> {
    global0 = array<i32, 1>();
    global1 = Struct_2(any(select(vec4<bool>(false, true, global1.a, global1.a), !vec4<bool>(false, global1.a, global1.a, false), false)), arg_2.x, -311f);
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), !select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a)), select(vec2<bool>(false, true), select(vec2<bool>(global1.a, global1.a), vec2<bool>(false, global1.a), vec2<bool>(true, global1.a)), vec2<bool>(true, true))), vec2<bool>(true, global1.a), !(abs(u_input.c) > ~u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(7260i, -50127i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(37180u, 1u)], 0i, arg_3)), abs(global0[_wgslsmith_index_u32(1u, 1u)]))), ~(~abs(vec3<i32>(arg_1, arg_1, arg_1)))), 4294967295u << (_wgslsmith_sub_u32(u_input.a, ~(u_input.b.x & 0u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)) * vec2<f32>(-1253f, -611f))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.a) & _wgslsmith_add_vec2_u32(vec2<u32>(50112u, u_input.e.x), vec2<u32>(u_input.c, 51555u)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 31602u, u_input.a), _wgslsmith_mod_u32(u_input.a, 1u))) == ~abs(firstTrailingBit(u_input.d.x)));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_0.b), _wgslsmith_clamp_i32(-(~arg_1), arg_3, global0[_wgslsmith_index_u32(~4294967295u, 1u)])), select(~(_wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 1u)], 50464i), vec2<i32>(-2147483647i, var_0.b)) ^ -vec2<i32>(-1i, var_0.b)), min(abs(vec2<i32>(42872i, var_0.b)), vec2<i32>(abs(var_0.b), ~48530i)), true));
    var var_2 = Struct_1(select(vec2<bool>(true, global1.a), select(var_0.a, var_0.a, global1.a), any(!vec3<bool>(var_0.e, true, global1.a))), var_0.b >> (_wgslsmith_mod_u32(24697u, max(_wgslsmith_div_u32(var_0.c, 0u), 4294967295u)) % 32u), firstTrailingBit(min(var_0.c, _wgslsmith_add_u32(var_0.c, ~var_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0))))), global1.a);
    return var_0.a;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    global0 = array<i32, 1>();
    global1 = Struct_2(select(any(select(select(vec4<bool>(global1.a, arg_0.a, false, arg_2.e), vec4<bool>(global1.a, arg_0.a, true, arg_0.a), false), !vec4<bool>(arg_0.a, arg_2.e, false, true), false)), arg_0.a, true || arg_0.a), arg_0.c, 3041f);
    global1 = arg_0;
    var var_0 = arg_2;
    let var_1 = Struct_2(!arg_0.a, -1276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * 174f));
    return func_4(arg_2.d, _wgslsmith_mult_i32(~max(var_0.b, global0[_wgslsmith_index_u32(38684u, 1u)]) ^ 2147483647i, var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.d.x, var_0.d.x, arg_0.c), vec3<f32>(-557f, var_0.d.x, -380f))) - vec3<f32>(global1.b, -527f, -560f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_1.c, arg_1)) - vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(func_3(arg_2)))), abs(~global0[_wgslsmith_index_u32(4294967295u, 1u)]));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = func_5(Struct_1(select(select(!arg_0.a, vec2<bool>(true, global1.a), any(vec3<bool>(arg_0.a.x, global1.a, global1.a))), func_2(Struct_2(global1.a, 2158f, 114f), 712f, arg_0, -global0[_wgslsmith_index_u32(32476u, 1u)]), any(vec4<bool>(true, true, global1.a, true))), (i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a, 1u)]) | -2147483647i, arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, 866f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.d)))), 55710u < abs(u_input.a)), Struct_2(!arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1674f - arg_0.d.x), 317f, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-151f)))))));
    let var_0 = Struct_2(global1.a, arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)));
    var var_1 = 59084u;
    var var_2 = !(!vec2<bool>(false, !var_0.a));
    var_1 = ~_wgslsmith_mult_u32(arg_0.c, 0u);
    return Struct_1(!(!select(!arg_0.a, !arg_0.a, any(vec2<bool>(var_0.a, false)))), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(max(17167u, u_input.d.x), 1u)], 21932i & select(arg_0.b, -29980i, true)), 57012u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.d, arg_0.d))))), true);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = reverseBits(18114i);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(68365u, Struct_2(global1.a, 1177f, global1.b), func_1(Struct_1(!(!vec2<bool>(global1.a, global1.a)), 18921i, 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -1504f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) * vec2<f32>(227f, global1.b))), false)), -35280i);
    let var_1 = !(!func_4(vec2<f32>(global1.b, _wgslsmith_f_op_f32(global1.c * global1.c)), (global0[_wgslsmith_index_u32(60291u, 1u)] & global0[_wgslsmith_index_u32(62229u, 1u)]) << (u_input.d.x % 32u), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c, global1.b, global1.c), _wgslsmith_div_vec3_f32(vec3<f32>(-100f, 2215f, -923f), vec3<f32>(-883f, global1.b, 1308f)))), -global0[_wgslsmith_index_u32(1u, 1u)]));
    let var_2 = vec4<f32>(global1.c, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1279f))) - global1.b), global1.b);
    let var_3 = max(48922u, 0u);
    global1 = Struct_2(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), 278f), var_2.xy), 1i, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b, 656f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), -345f), global0[_wgslsmith_index_u32(u_input.b.x, 1u)]).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global1.c)) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-793f + var_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(1268f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 793f)))));
    var var_4 = select(vec3<bool>(any(select(!var_1, vec2<bool>(var_1.x, global1.a), func_1(Struct_1(var_1, global0[_wgslsmith_index_u32(var_3, 1u)], 461u, vec2<f32>(global1.c, -479f), var_1.x)).a.x)), any(select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), var_1.x), vec3<bool>(global1.a, false, true), false)), !(_wgslsmith_f_op_f32(-global1.b) > _wgslsmith_f_op_f32(-global1.c))), select(select(select(vec3<bool>(global1.a, true, global1.a), !vec3<bool>(false, var_1.x, global1.a), func_5(Struct_1(var_1, 3182i, 51060u, var_2.zx, false), Struct_2(true, -361f, 770f)).a), select(vec3<bool>(global1.a, true, var_1.x), !vec3<bool>(true, false, var_1.x), select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, global1.a, false), vec3<bool>(global1.a, global1.a, global1.a))), true), select(vec3<bool>(false, false, false), vec3<bool>(global1.a, false, global1.a & true), select(select(vec3<bool>(global1.a, true, true), vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, true, false)), vec3<bool>(global1.a, var_1.x, true), var_1.x)), !vec3<bool>(false, all(vec2<bool>(false, global1.a)), var_1.x)), vec3<bool>(false, func_2(Struct_2(!global1.a, 325f, -1084f), _wgslsmith_div_f32(-806f, global1.c), Struct_1(select(var_1, vec2<bool>(global1.a, false), vec2<bool>(var_1.x, false)), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(92288u, 1u)], 1117i), _wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.b.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, global1.b)), true), -global0[_wgslsmith_index_u32(~u_input.d.x, 1u)]).x, global1.b >= func_1(Struct_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(var_3, 1u)], u_input.a, var_2.xx, true)).d.x));
    var var_5 = 0u;
    let var_6 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(abs(var_2.xw)), global0[_wgslsmith_index_u32(25201u << (~u_input.a % 32u), 1u)], _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 365f, var_2.x) - vec3<f32>(global1.b, -1849f, global1.b))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_div_f32(var_2.x, 659f)), all(select(vec4<bool>(false, var_4.x, false, true), vec4<bool>(var_1.x, var_1.x, var_4.x, true), vec4<bool>(true, true, var_1.x, true))))), ~(-21190i) >> (var_3 % 32u)), -1i, reverseBits(1u), var_2.yz, func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(326f * var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x))), i32(-1i) * -17369i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_2.xyw))))), func_1(func_1(Struct_1(var_4.yx, 60280i, 0u, var_2.xx, true))).b).x);
    var_5 = _wgslsmith_mult_u32(var_3, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(25386u, ~var_3), vec4<i32>(var_6.b, -_wgslsmith_dot_vec4_i32(-vec4<i32>(var_6.b, global0[_wgslsmith_index_u32(var_6.c, 1u)], 447i, var_6.b), min(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], var_6.b, global0[_wgslsmith_index_u32(53618u, 1u)], var_6.b), vec4<i32>(global0[_wgslsmith_index_u32(var_3, 1u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 1u)], 80626i))), _wgslsmith_add_i32(20790i, var_6.b), 6129i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.d.x + var_2.x))))), var_6.c | _wgslsmith_mult_u32(1u, 1u), _wgslsmith_f_op_f32(-func_5(Struct_1(vec2<bool>(var_1.x, true), global0[_wgslsmith_index_u32(0u, 1u)], 10687u, _wgslsmith_f_op_vec2_f32(-var_6.d), all(var_1)), Struct_2(-686f > var_6.d.x, global1.c, _wgslsmith_f_op_f32(-906f - -752f))).c));
}

