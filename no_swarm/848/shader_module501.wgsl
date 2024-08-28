struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<f32>(-1194f, -1210f), false, true, vec3<f32>(727f, 1235f, 242f));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = u_input.b.xx;
    var var_1 = Struct_1(select(~15927u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 8182u, var_0.x), vec4<u32>(95909u, 0u, global1.a, 16817u)), ~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, arg_0.a) ^ (vec4<u32>(1u, var_0.x, global1.a, u_input.b.x) >> (vec4<u32>(25476u, 1u, 88339u, u_input.a) % vec4<u32>(32u)))), all(select(vec2<bool>(false, true), !vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.zx), _wgslsmith_f_op_vec2_f32(-global1.b)) - arg_0.b), select(4294967295u >= global0.a, false, arg_0.d), false, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.e.x, 1131f))) + _wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(exp2(arg_0.b.x)))), -1326f));
    var var_2 = ~select(~(~var_0.x), global1.a, arg_0.d);
    var_2 = select(select(~arg_0.a, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0.a, global0.a, global1.a, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, global0.a, arg_0.a, var_0.x), abs(vec4<u32>(12892u, 18679u, global0.a, 0u)))), 40073u >= _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 107196u), vec2<u32>(9377u, var_1.a))), ~41831u, any(select(!select(vec4<bool>(false, arg_0.d, var_1.d, global1.d), vec4<bool>(global0.c, arg_0.c, arg_0.c, global0.d), vec4<bool>(false, false, arg_0.d, global0.d)), select(vec4<bool>(var_1.c, true, false, false), select(vec4<bool>(false, var_1.c, arg_0.d, arg_0.d), vec4<bool>(true, true, true, false), vec4<bool>(var_1.c, global0.c, global0.d, true)), select(vec4<bool>(var_1.d, global0.d, global0.d, false), vec4<bool>(var_1.c, true, global1.d, false), vec4<bool>(arg_0.c, false, global0.c, false))), select(select(vec4<bool>(true, arg_0.c, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, global1.d, var_1.c, false)), vec4<bool>(true, var_1.c, arg_0.d, true), !vec4<bool>(global1.c, false, true, arg_0.c)))));
    var var_3 = !vec4<bool>(global1.d, any(select(select(vec3<bool>(arg_0.c, true, var_1.c), vec3<bool>(true, arg_0.d, false), arg_0.d), select(vec3<bool>(global0.d, var_1.c, false), vec3<bool>(false, global1.d, var_1.c), global0.d), !vec3<bool>(arg_0.d, false, global0.d))), true, true);
    return !(!var_3.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = u_input.a;
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b >> (~vec3<u32>(arg_0.x, global0.a, 4294967295u) % vec3<u32>(32u)), ~firstTrailingBit(vec3<u32>(0u, 9227u, 7615u))), global1.e.yx, any(vec2<bool>(!any(vec2<bool>(global1.c, global1.d)), !global1.c)), func_3(Struct_1(_wgslsmith_clamp_u32(var_0, _wgslsmith_div_u32(var_0, 4294967295u), ~u_input.a), global1.b, true, global0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(global0.b.x - -1193f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + 111f) + _wgslsmith_f_op_f32(abs(global0.b.x))), 103f)));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(var_0), ~42409u, max(1u, 1u), 1u), ~(~vec4<u32>(global1.a, 4294967295u, global1.a, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(global1.b.x - global1.e.x))))), global1.c, !func_3(Struct_1(~7707u, global1.e.yx, !global1.c, true, global1.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(733f, -875f, -209f)))))));
    global1 = Struct_1(firstLeadingBit(_wgslsmith_mult_u32(global0.a, 1u)), global1.b, any(select(vec3<bool>(var_1.d, false, var_0 >= 0u), vec3<bool>(true, global1.c, true), select(vec3<bool>(true, global0.d, var_1.c), select(vec3<bool>(true, global0.c, true), vec3<bool>(global0.c, var_1.c, global1.d), vec3<bool>(true, global0.d, var_1.c)), vec3<bool>(true, true, true)))), (arg_0.x >> (4294967295u % 32u)) > _wgslsmith_mult_u32(~10623u, _wgslsmith_dot_vec3_u32(max(u_input.b, u_input.b), max(vec3<u32>(31516u, global1.a, 9370u), u_input.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.e * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e + vec3<f32>(679f, -312f, global1.b.x)) * _wgslsmith_f_op_vec3_f32(sign(global1.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-892f * -523f), -123f, _wgslsmith_f_op_f32(f32(-1f) * -466f))))));
    let var_2 = vec2<bool>(global1.d, !(global0.c | global1.c));
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<f32>(1622f, global1.e.x);
    let var_1 = select(u_input.b, vec3<u32>(global1.a, ~abs(4294967295u), ~arg_0), vec3<bool>(true, true, true));
    let var_2 = reverseBits(firstLeadingBit(vec4<i32>(countOneBits(1i), 14568i, -2147483647i, -17416i << ((var_1.x << (71956u % 32u)) % 32u))));
    global1 = Struct_1(50747u, arg_1.zy, arg_2.d, global0.d, arg_1);
    var var_3 = !vec3<bool>(select(true, true, !global0.d), true, any(select(vec4<bool>(global0.d, global0.d, false, global0.c), !vec4<bool>(true, true, false, global0.c), -919f > global0.b.x)));
    return Struct_1(~global0.a, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, arg_2.b.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))))), false, !(!(var_3.x && any(vec4<bool>(true, global1.d, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -942f, 147f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(select(~min(arg_1.a, ~24309u), 0u, arg_1.c), arg_0.e, Struct_1((u_input.a ^ (1u << (global0.a % 32u))) | ~1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -915f))), any(select(vec4<bool>(global0.c, true, global1.c, global0.c), select(vec4<bool>(false, global0.d, global0.c, false), vec4<bool>(global1.d, global1.d, arg_1.c, arg_1.c), vec4<bool>(false, false, false, global0.c)), all(vec3<bool>(true, true, global1.d)))), true, vec3<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(step(arg_1.e.x, arg_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -232f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(-259f, global1.b.x)), -438f, func_2(vec2<u32>(global1.a, global1.a)).b.x), global1.e))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1340f + -1000f), arg_0.b.x))) * vec2<f32>(global1.b.x, global0.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2014f))));
    let var_2 = any(!(!(!vec4<bool>(global1.c, global1.c, global0.c, true))));
    let var_3 = 1u;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, -1224f, false)), arg_1.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.e.x), global0.e.xz)))), global0.d)) + vec2<f32>(115f, 1000f));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(21602u, global0.e.yz, true, 1u > u_input.b.x, arg_2.e);
    var var_0 = func_2(u_input.b.yz);
    var var_1 = func_4(~global1.a, _wgslsmith_div_vec3_f32(arg_2.e, _wgslsmith_f_op_vec3_f32(step(var_0.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, arg_2.b.x, -141f))))), arg_0, func_2(u_input.b.xx).e);
    let var_2 = func_4(func_5(func_4(31812u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.e))), Struct_1(var_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(993f, arg_2.b.x), global0.e.yy), true, !arg_0.c, _wgslsmith_f_op_vec3_f32(-arg_2.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-535f, global1.e.x, var_1.e.x) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e.x, arg_2.b.x, -1000f))))), Struct_1(~global1.a, var_1.b, func_2(vec2<u32>(60038u, 0u)).d || true, arg_2.c, _wgslsmith_f_op_vec3_f32(-var_1.e))).a, arg_2.e, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(global0.e.x, arg_2.b.x)), _wgslsmith_f_op_f32(391f - arg_0.e.x)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), global0.e.x, func_2(vec2<u32>(global0.a, 11207u)).b.x))));
    var var_3 = _wgslsmith_dot_vec2_i32(-firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -30748i), vec2<i32>(-1i, 68494i))), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(35013i, 7849i, -1i, 1i), vec4<i32>(22937i, 10302i, 2147483647i, -2147483647i)), 11715i));
    return Struct_1(_wgslsmith_div_u32(arg_0.a, 0u), global0.e.zz, (func_2(u_input.b.zx | vec2<u32>(var_0.a, 1762u)).c & false) || (var_2.e.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x * global1.b.x) - -869f)), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 1176f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.e.x))))) + _wgslsmith_f_op_vec3_f32(min(var_0.e, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.e.x, -491f, var_0.e.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    global1 = func_6(func_5(func_4(_wgslsmith_add_u32(22938u, 0u) ^ global0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1850f), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -125f)), func_2(arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, global1.b.x))), func_2(max(vec2<u32>(0u, u_input.a), firstTrailingBit(u_input.b.xx)))), ~abs(arg_0.a), Struct_1(abs(firstTrailingBit(abs(global1.a))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) * _wgslsmith_f_op_f32(min(global0.b.x, -455f))), 1130f), (_wgslsmith_f_op_f32(max(global1.b.x, -1071f)) != _wgslsmith_f_op_f32(f32(-1f) * -850f)) || global0.c, true, vec3<f32>(_wgslsmith_f_op_f32(floor(129f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.e.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-684f, arg_0.e.x)))))));
    var var_0 = arg_0.b.x;
    var var_1 = vec4<bool>(true, true, func_6(arg_0, _wgslsmith_mod_u32(global1.a, global1.a), Struct_1(4294967295u, _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(-931f, global1.e.x)), false, false, global1.e)).c, func_6(func_4(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(230f, global1.b.x, arg_0.e.x), vec3<f32>(global0.e.x, -147f, global1.e.x))), func_5(Struct_1(arg_0.a, global0.e.zy, true, false, global1.e), Struct_1(65811u, vec2<f32>(global0.e.x, 775f), true, true, vec3<f32>(599f, arg_0.b.x, 481f))), vec3<f32>(_wgslsmith_f_op_f32(1469f * -700f), -553f, 200f)), ~0u, func_6(func_6(Struct_1(global0.a, arg_0.b, false, global0.c, arg_0.e), 1u >> (1u % 32u), arg_0), abs(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), arg_0)).d);
    var var_2 = func_5(arg_0, arg_0);
    let var_3 = arg_0;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~(~global1.a), global0.a);
    global0 = func_1(Struct_1(22712u, func_6(func_4(arg_0.a, _wgslsmith_f_op_vec3_f32(-global1.e), arg_1, _wgslsmith_f_op_vec3_f32(global1.e + arg_1.e)), global0.a, arg_1).b, false, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, 543f), _wgslsmith_f_op_f32(1533f * 606f), global0.b.x))), min(firstLeadingBit(abs(vec2<u32>(9186u, 0u))), ~_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(4294967295u, 4294967295u)) | (_wgslsmith_add_vec2_u32(u_input.b.yx, u_input.b.yx) & max(vec2<u32>(61740u, 78508u), u_input.b.yx))));
    global0 = arg_1;
    let var_1 = global0.c;
    var_0 = ~0u;
    return Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global0.a, 29422u, arg_0.a, arg_0.a), vec4<u32>(5975u, 95834u, arg_1.a, global1.a), vec4<bool>(false, false, global0.d, true)), vec4<u32>(global1.a, u_input.b.x, 58684u, 4294967295u)), 4294967295u) | (~4294967295u >> (func_2(select(u_input.b.zx, u_input.b.zx, arg_0.d)).a % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.b, vec2<f32>(193f, arg_0.e.x))) * vec2<f32>(512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1197f)) * _wgslsmith_f_op_f32(arg_1.e.x * 1429f)))), !global1.d, ~_wgslsmith_clamp_i32(-37161i, _wgslsmith_add_i32(2147483647i, -32961i), -1319i) <= -(~(-71843i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.e - vec3<f32>(arg_1.e.x, -691f, global0.e.x)))), global0.e));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = -_wgslsmith_add_i32(-(~abs(40522i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-57766i, -1i, 2147483647i), vec3<i32>(-2147483647i, 42283i, -39238i)), select(vec3<i32>(14908i, -32946i, 24657i), vec3<i32>(-37336i, -49009i, 28226i), true))));
    var_1 = arg_0;
    let var_3 = select(select(select(vec4<bool>(!arg_0.d, true, var_0.c, any(vec3<bool>(var_1.c, global1.d, arg_1.c))), select(select(vec4<bool>(false, arg_2, false, false), vec4<bool>(true, false, global0.d, true), true), vec4<bool>(global1.d, false, arg_0.c, false), var_0.d & arg_2), !(!vec4<bool>(false, true, true, arg_1.d))), !(!(!vec4<bool>(true, true, true, global0.d))), func_7(func_2(u_input.b.yx), Struct_1(_wgslsmith_add_u32(u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(-arg_0.e.zy), arg_1.d, global0.c, func_6(arg_0, 74896u, Struct_1(global0.a, arg_1.b, true, true, arg_1.e)).e)).d), select(vec4<bool>(false, global1.d, func_4(~global1.a, vec3<f32>(-658f, var_1.b.x, -1000f), func_4(0u, arg_1.e, arg_0, vec3<f32>(229f, arg_0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2024f, global1.b.x, global1.e.x) - arg_0.e)).c, arg_0.c), select(select(vec4<bool>(false, false, var_0.d, false), select(vec4<bool>(true, true, var_1.c, var_0.d), vec4<bool>(false, false, var_0.c, var_0.c), vec4<bool>(global1.c, global1.c, false, true)), true), !vec4<bool>(var_1.d, arg_2, false, false), true), select(select(select(vec4<bool>(false, var_1.c, true, var_1.c), vec4<bool>(false, var_0.c, arg_2, var_1.d), var_1.c), !vec4<bool>(arg_2, true, true, arg_0.d), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2, global0.c, true, true), var_0.d), vec4<bool>(var_1.d, false, true, true), !vec4<bool>(global0.d, global0.c, false, var_0.d)), _wgslsmith_f_op_f32(-779f - global1.b.x) == -397f)), reverseBits(func_7(func_6(arg_1, arg_0.a, Struct_1(58409u, vec2<f32>(-130f, -669f), arg_0.d, var_0.c, vec3<f32>(var_1.e.x, -309f, 1480f))), Struct_1(var_0.a, vec2<f32>(561f, var_1.b.x), var_0.d, true, global1.e)).a) > var_1.a);
    return var_0;
}

fn func_9(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(global0.a, global0.b, false, any(vec2<bool>(global0.c, -403f > _wgslsmith_div_f32(115f, arg_0.b.x))), vec3<f32>(-396f, -896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1884f) - arg_0.b.x) * 1f)));
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~74225u, 28146u, u_input.b.x ^ 4294967295u), ~vec3<u32>(0u, 8153u, 1u)) << (~0u % 32u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, ~arg_0.a), _wgslsmith_sub_u32(4294967295u, 6864u | global0.a)) | 0u);
    global0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b + global0.b) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_0.e.x) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-364f, -956f), vec2<f32>(arg_2, -1837f), vec2<bool>(true, true)))))), arg_0.c || true, (global1.c | arg_1.d) && !(true || arg_1.d), _wgslsmith_f_op_vec3_f32(max(global0.e, _wgslsmith_div_vec3_f32(func_2(vec2<u32>(u_input.a, global0.a)).e, arg_1.e))));
    var var_1 = ~55399u & global0.a;
    return Struct_1(u_input.a, global1.b, _wgslsmith_div_f32(130f, _wgslsmith_f_op_f32(floor(arg_0.b.x))) != func_8(func_2(select(vec2<u32>(arg_1.a, u_input.a), vec2<u32>(1u, global0.a), true)), arg_0, _wgslsmith_mult_u32(1u, 1133u) != u_input.a).e.x, global0.d, _wgslsmith_f_op_vec3_f32(-global1.e));
}

fn func_10(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<u32>(~global0.a, global0.a, u_input.b.x, ~_wgslsmith_clamp_u32(4294967295u, 1u, global1.a));
    global1 = arg_0;
    var var_1 = _wgslsmith_div_u32(global1.a, 1u);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -max(-69240i, -2147483647i), select(min(-52530i, 0i), 2147483647i, false) >> (arg_0.a % 32u), -1i), select(abs(vec3<i32>(reverseBits(2147483647i), ~20046i, _wgslsmith_mod_i32(0i, 6510i))), vec3<i32>(-1i) * -(vec3<i32>(-2147483647i, 11523i, -2147483647i) >> (vec3<u32>(var_2.a, 15307u, 17673u) % vec3<u32>(32u))), true));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -401f;
    var var_1 = true;
    var var_2 = func_10(func_9(func_8(func_7(func_1(Struct_1(global0.a, global0.e.yx, false, true, vec3<f32>(-423f, global0.b.x, global0.e.x)), u_input.b.yz), func_4(global1.a, vec3<f32>(-507f, -267f, 322f), Struct_1(4294967295u, global0.e.xx, global1.c, global0.d, global0.e), global1.e)), Struct_1(global0.a, global1.e.yx, false == global0.c, true, global1.e), func_3(Struct_1(4294967295u, global1.e.xz, true, false, global0.e))), Struct_1(~select(u_input.a, 70461u, true), func_6(func_7(Struct_1(u_input.a, vec2<f32>(global1.e.x, global1.b.x), global1.c, false, vec3<f32>(-382f, var_0, -655f)), Struct_1(u_input.a, vec2<f32>(var_0, var_0), global1.c, false, global0.e)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.a), vec2<u32>(global1.a, 0u)), Struct_1(u_input.a, vec2<f32>(global1.e.x, var_0), global1.c, true, global0.e)).b, select(true, func_4(u_input.a, global1.e, Struct_1(global1.a, vec2<f32>(-760f, 951f), global0.d, global0.d, vec3<f32>(global0.e.x, -1007f, 725f)), global0.e).d, global0.e.x >= var_0), select(func_3(Struct_1(6560u, global1.b, global1.d, global1.c, vec3<f32>(2700f, -1000f, 296f))), any(vec4<bool>(true, global1.c, global1.c, true)), func_5(Struct_1(global0.a, vec2<f32>(var_0, -945f), false, false, global0.e), Struct_1(global0.a, global0.b, false, true, vec3<f32>(global1.b.x, 882f, var_0))).d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, 1807f, 558f) * vec3<f32>(global1.b.x, 612f, global0.b.x)))), global0.b.x, ~(-2147483647i)), true);
    var var_3 = func_8(func_6(func_5(Struct_1(_wgslsmith_div_u32(9858u, 22366u), global1.b, global1.d, true, func_7(Struct_1(10092u, vec2<f32>(var_2.e.x, global0.e.x), true, true, global1.e), Struct_1(1u, vec2<f32>(var_2.b.x, global0.e.x), global1.d, var_2.d, vec3<f32>(1171f, global0.b.x, -943f))).e), Struct_1(4159u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(385f, global1.b.x), vec2<f32>(var_0, global1.e.x), vec2<bool>(true, false))), global1.d, func_3(Struct_1(57208u, global0.b, false, false, vec3<f32>(564f, 1000f, -313f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.x, -780f, var_0) - vec3<f32>(var_0, -1000f, var_0)))), var_2.a, func_1(func_8(Struct_1(global0.a, vec2<f32>(-297f, var_2.b.x), global1.d, true, global1.e), Struct_1(u_input.a, global0.b, global0.d, true, global1.e), false), min(select(vec2<u32>(4294967295u, global1.a), u_input.b.yy, global1.d), ~u_input.b.zy))), Struct_1(1u, global1.b, any(vec2<bool>(true, func_9(Struct_1(u_input.b.x, vec2<f32>(1364f, global0.b.x), true, global0.c, vec3<f32>(var_0, var_2.b.x, 1719f)), Struct_1(var_2.a, global1.b, false, global1.d, global1.e), -223f, -10647i).c)), global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, func_6(Struct_1(16450u, global0.e.xz, var_2.c, global0.c, vec3<f32>(-1916f, global1.e.x, global0.b.x)), 4294967295u, Struct_1(global0.a, vec2<f32>(-1000f, var_0), var_2.c, global0.d, global1.e)).e.x, _wgslsmith_f_op_f32(round(global0.b.x))))), (global0.a <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_2.a, global1.a))) & func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, u_input.a, global1.a) & vec3<u32>(0u, 0u, global1.a), ~u_input.b), global1.e, func_9(Struct_1(global1.a, vec2<f32>(-1083f, 727f), false, global1.d, global1.e), func_6(Struct_1(var_2.a, vec2<f32>(var_2.b.x, global0.e.x), false, false, var_2.e), 27182u, Struct_1(17577u, vec2<f32>(-317f, global1.e.x), true, false, vec3<f32>(-1545f, global0.b.x, -217f))), global1.b.x, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -221f, var_0))).c);
    var var_4 = false;
    let var_5 = vec2<bool>(_wgslsmith_f_op_f32(-func_9(func_8(Struct_1(var_3.a, vec2<f32>(var_0, var_0), false, global1.c, var_3.e), Struct_1(34332u, var_3.b, global0.c, var_2.d, vec3<f32>(global1.b.x, -1000f, global0.e.x)), global0.d), Struct_1(global0.a, global1.b, false, var_3.d, var_2.e), _wgslsmith_f_op_f32(520f - var_3.e.x), 0i).b.x) >= _wgslsmith_f_op_f32(min(func_7(Struct_1(0u, var_2.e.yy, true, var_2.c, global0.e), Struct_1(var_3.a, vec2<f32>(global0.b.x, -312f), var_2.d, true, vec3<f32>(global1.b.x, -1056f, -680f))).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1490f))))), func_4(func_7(Struct_1(~var_3.a, vec2<f32>(1524f, -1000f), global0.c, true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b.x, global1.e.x, -1808f)))), Struct_1(max(global0.a, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, var_2.b.x) - var_3.b), all(vec4<bool>(false, false, false, true)), global1.d, _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, var_3.e.x, 1279f), vec3<f32>(-721f, global0.b.x, 2212f)))).a, global0.e, func_5(func_1(func_6(Struct_1(77135u, vec2<f32>(var_0, -113f), false, true, vec3<f32>(var_3.e.x, 338f, -454f)), var_2.a, Struct_1(var_3.a, var_2.e.xy, var_3.d, true, vec3<f32>(global0.e.x, global1.b.x, global1.e.x))), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 48423u), u_input.b.xx)), func_2(reverseBits(u_input.b.zz))), _wgslsmith_f_op_vec3_f32(select(var_3.e, func_8(func_2(u_input.b.yz), func_4(var_3.a, vec3<f32>(-1526f, var_3.e.x, var_0), Struct_1(1u, var_3.e.zz, var_2.c, false, global1.e), var_2.e), true).e, global0.d))).c);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(-(~(-39192i))));
}

