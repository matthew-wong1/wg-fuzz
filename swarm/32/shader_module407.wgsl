struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false), 65021u, vec4<i32>(44072i, 1i, -18681i, -1i), vec2<f32>(1359f, -1991f));

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = !select(!(!arg_0.a), vec3<bool>(false, true, any(vec3<bool>(true, false, true))), !vec3<bool>(false, arg_0.a.x, global0.a.x && true));
    let var_1 = !vec4<bool>(false, var_0.x, global0.a.x, !global1.a.x);
    global1 = arg_0;
    let var_2 = Struct_1(vec3<bool>(false, true, any(vec4<bool>(global0.b > 69266u, all(vec4<bool>(true, false, var_0.x, global0.a.x)), true, true))), 4294967295u, vec4<i32>((arg_0.c.x ^ -13743i) >> (_wgslsmith_add_u32(global1.b, ~0u) % 32u), firstTrailingBit(_wgslsmith_div_i32(-1i, -2147483647i)), countOneBits(-6268i | _wgslsmith_clamp_i32(u_input.c, 20823i, 2147483647i)), arg_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_0.d.x, global1.d.x)))), 726f)), global1.d.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.d.x, -682f, var_2.d.x))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(abs(-509f)), global0.d.x))))));
    return arg_0.d;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = max(~vec3<u32>(~_wgslsmith_add_u32(global0.b, global0.b), select(~4294967295u, arg_1.b, all(global1.a)), u_input.e.x), ~vec3<u32>(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.b, u_input.e.x, 4294967295u), vec3<u32>(0u, u_input.e.x, u_input.d), global1.a), vec3<u32>(global0.b, global0.b, u_input.d) ^ vec3<u32>(arg_1.b, global1.b, global1.b)), ~u_input.e.x));
    var var_1 = global1.c.x;
    global1 = Struct_1(select(!(!arg_1.a), select(!select(global0.a, vec3<bool>(global0.a.x, arg_1.a.x, arg_1.a.x), global0.a), vec3<bool>(global1.a.x & false, true, global0.a.x), select(!global1.a, !vec3<bool>(global0.a.x, false, global1.a.x), !vec3<bool>(false, global0.a.x, false))), all(vec4<bool>(u_input.b.x == u_input.a, 1i <= global0.c.x, any(vec3<bool>(global1.a.x, arg_1.a.x, false)), global1.a.x))), 1u, max(select(global0.c | (vec4<i32>(34777i, -2147483647i, 1i, u_input.c) >> (vec4<u32>(global0.b, 4294967295u, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, -17800i, 0i & global0.c.x, u_input.b.x), select(vec4<bool>(arg_1.a.x, global0.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, global0.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(global0.a.x, global0.a.x, false, false))), _wgslsmith_add_vec4_i32(vec4<i32>(24076i, countOneBits(global0.c.x), ~arg_1.c.x, max(25279i, -21475i)), min(global1.c, vec4<i32>(-2147483647i, global0.c.x, 56620i, -21158i)))), arg_0.zz);
    global0 = Struct_1(!arg_1.a, ~firstTrailingBit(_wgslsmith_add_u32(var_0.x, arg_1.b)), vec4<i32>(~(-45783i), global0.c.x, -global1.c.x, ~max(max(0i, global0.c.x), 1i)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1.d + arg_0.zx)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.d * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.x, 807f), vec2<f32>(global1.d.x, global1.d.x), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, 200f), global0.d))))))));
    global0 = arg_1;
    return global1.b;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(global0.a.x, !global1.a.x, true, any(vec3<bool>(global0.a.x, _wgslsmith_f_op_f32(floor(748f)) >= _wgslsmith_f_op_f32(784f * -1388f), !global1.a.x)));
    let var_1 = vec2<bool>(global1.a.x & true, true);
    let var_2 = global0.c.ywy;
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(~(~0u)), ~1u, 4294967295u, 1u), vec4<u32>(~u_input.e.x, global1.b, func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global0.d.x, -1000f)))), Struct_1(global1.a, reverseBits(global1.b), ~vec4<i32>(u_input.a, -26508i, u_input.c, 33625i), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a, global0.b, vec4<i32>(-7832i, -1i, u_input.c, 1i), global0.d))))), 1u), reverseBits(vec4<u32>(global1.b, 33896u, 93740u, firstTrailingBit(1u))) & _wgslsmith_mult_vec4_u32(~select(vec4<u32>(1u, 47815u, u_input.d, u_input.e.x), vec4<u32>(85412u, 1u, u_input.e.x, global0.b), false), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b, 79633u, u_input.e.x, 0u), ~vec4<u32>(global0.b, 3563u, 24398u, u_input.d))));
    global1 = Struct_1(var_0.xzx, 0u, _wgslsmith_mult_vec4_i32(select(_wgslsmith_mod_vec4_i32(global0.c, global0.c), vec4<i32>(countOneBits(global0.c.x), -1i, global1.c.x, -1i), true), reverseBits(vec4<i32>(1i, var_2.x, var_2.x, var_2.x)) >> (vec4<u32>(1u, u_input.d, global1.b ^ 29865u, 1u) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x + 702f) + _wgslsmith_f_op_f32(global1.d.x * global0.d.x)), _wgslsmith_f_op_f32(-137f - _wgslsmith_f_op_f32(-global0.d.x))), global0.d.x));
    return ~global1.c.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = -2147483647i;
    var var_1 = Struct_1(global1.a, u_input.d, vec4<i32>(max(2147483647i, global0.c.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) ^ u_input.e, ~vec2<u32>(global1.b, 4294967295u)) % 32u), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, 1i, 36363i) << (vec3<u32>(4294967295u, 1u, global0.b) % vec3<u32>(32u)), vec3<i32>(0i, 2218i, 57530i) | global0.c.yyz), vec3<i32>(-2147483647i, ~u_input.c, -2147483647i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x, 30167i, 21006i), global0.c.yzy), abs(vec3<i32>(u_input.c, global1.c.x, global0.c.x))), func_2()), max(-2147483647i, 42605i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(558f, global1.d.x)))), 240f));
    var_0 = min(0i, abs(48224i & abs(~u_input.a)));
    var var_2 = vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d.x, 1000f)))), -294f), _wgslsmith_f_op_f32(-global0.d.x));
    let var_3 = -_wgslsmith_mult_i32(var_1.c.x, -21554i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + 1019f), _wgslsmith_f_op_f32(-global1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x)))))));
    var var_1 = vec3<i32>(-1i) * -global0.c.zwx;
    let var_2 = Struct_1(!global1.a, reverseBits(global1.b | abs(~u_input.e.x)), select(vec4<i32>(func_2(), global1.c.x, ~u_input.b.x, ~(-global1.c.x)), global1.c, !(!(!vec4<bool>(global1.a.x, global1.a.x, false, false)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d.x - global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, var_0.x))), _wgslsmith_f_op_vec2_f32(func_1()).x));
    let var_3 = _wgslsmith_add_vec2_u32(u_input.e, _wgslsmith_sub_vec2_u32(u_input.e, u_input.e) << (abs(u_input.e) % vec2<u32>(32u)));
    var var_4 = -(~global1.c.zzy & abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.c.x, var_1.x, u_input.a), vec3<i32>(global0.c.x, -3456i, var_2.c.x)), global1.c.wyx)));
    let var_5 = Struct_1(select(select(var_2.a, select(!global0.a, global1.a, var_2.a.x), select(vec3<bool>(false, true, true), var_2.a, !global0.a.x)), select(!global0.a, select(global1.a, global0.a, 1i == var_2.c.x), select(!var_2.a, global0.a, var_2.d.x >= 1914f)), 1f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) - var_0.x)), u_input.e.x, vec4<i32>(_wgslsmith_dot_vec2_i32(~abs(global0.c.wy), vec2<i32>(1i, global1.c.x)), -(~1i), 2147483647i, var_4.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2292f, var_0.x), _wgslsmith_f_op_vec2_f32(var_2.d + global0.d))) + _wgslsmith_f_op_vec2_f32(func_1())), var_2.d));
    var var_6 = Struct_1(select(vec3<bool>(!select(true, false, var_2.a.x), !all(vec4<bool>(true, var_5.a.x, global1.a.x, false)), global1.a.x), select(!select(var_5.a, global0.a, true), vec3<bool>(true, false, global1.a.x), var_5.a), global1.a.x), 13927u, _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_4.x, _wgslsmith_dot_vec3_i32(global0.c.www, var_2.c.zzx), -1i), var_2.c << ((vec4<u32>(30747u, 0u, 1u, var_2.b) ^ vec4<u32>(23641u, var_2.b, 1u, var_3.x)) % vec4<u32>(32u))) & vec4<i32>(~2147483647i, _wgslsmith_mod_i32(countOneBits(global0.c.x), i32(-1i) * -2147483647i), var_2.c.x, abs(-21011i) << (_wgslsmith_mod_u32(global0.b, 0u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1067f, -106f)))), 414f));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.c.wwy, var_6.c.yzx, vec3<bool>(var_5.a.x, true && any(vec2<bool>(false, global1.a.x)), true)), ~vec4<i32>(func_2(), global1.c.x, _wgslsmith_mult_i32(abs(-10332i), var_1.x), var_5.c.x), abs(-global0.c.x >> (u_input.e.x % 32u)), _wgslsmith_add_i32(global1.c.x, -global1.c.x));
}

