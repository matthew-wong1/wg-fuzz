struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<f32>(628f, -540f), vec4<f32>(-307f, -920f, 1154f, -226f), vec2<f32>(-123f, -452f));

var<private> global1: vec4<i32> = vec4<i32>(-23388i, 1i, 31411i, 4131i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(min(global0.c, vec4<f32>(global0.b.x, 901f, global0.d.x, 1195f)))))), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_div_f32(global0.c.x, 1000f)) == _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1234f))) == true, vec3<i32>(u_input.a, -36751i, _wgslsmith_mult_i32(u_input.a, global1.x)), Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 161f, 440f, -398f) - global0.c))))), vec2<bool>(true, true));
    var var_1 = ~35582i;
    return u_input.a;
}

fn func_2() -> i32 {
    let var_0 = max(max(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), max(vec4<i32>(global1.x, 0i, -33311i, global1.x), vec4<i32>(global1.x, 1i, u_input.a, -28056i))), _wgslsmith_clamp_i32(firstTrailingBit(19032i), -u_input.a, _wgslsmith_sub_i32(global1.x, 0i)))), 0i | _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(), u_input.a), global1.zy));
    global1 = vec4<i32>(global1.x, var_0 >> (~4294967295u % 32u), min(~2147483647i, 0i) ^ -_wgslsmith_sub_i32(global1.x, 29772i), 2147483647i) | max(select(~vec4<i32>(var_0, var_0, var_0, global1.x), select(firstLeadingBit(vec4<i32>(u_input.a, global1.x, global1.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 63875i, var_0, var_0), vec4<i32>(415i, u_input.a, global1.x, global1.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)), vec4<bool>(true, true, true, true)), reverseBits(vec4<i32>(-16642i, reverseBits(14181i), abs(global1.x), -10542i)));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-679f))))), 462f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - 635f) + -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-362f - -853f), _wgslsmith_div_f32(global0.d.x, global0.b.x))), _wgslsmith_f_op_f32(sign(709f)) >= global0.c.x))));
    var var_2 = ~(vec3<u32>(109359u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, global0.a), vec2<u32>(0u, global0.a)), countOneBits(vec2<u32>(1u, 25501u))), u_input.b) ^ _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a, 7890u, u_input.b), ~vec3<u32>(u_input.b, 21174u, global0.a)), vec3<u32>(u_input.b, _wgslsmith_mod_u32(1u, 1u), 0u)));
    var var_3 = select(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, 0u, 46603u), vec4<u32>(u_input.b, u_input.b, var_2.x, 0u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b, 4294967295u, global0.a, u_input.b)), ~vec4<u32>(27051u, 57867u, global0.a, var_2.x))) ^ select(var_2.yz, vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.b, global0.a)), true | (var_0 > var_0)), ~var_2.zx, false);
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, 4638i), global1.x) | -firstTrailingBit(_wgslsmith_add_i32(select(2147483647i, 690i, false), u_input.a));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_2();
    global1 = ~_wgslsmith_mod_vec4_i32(~(countOneBits(vec4<i32>(-2147483647i, global1.x, u_input.a, u_input.a)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(1i, 1i, global1.x, -select(u_input.a, 1i, arg_0)));
    global1 = (vec4<i32>(-(~u_input.a), _wgslsmith_sub_i32(global1.x, -2147483647i), reverseBits(-19676i << (global0.a % 32u)), -global1.x) >> (~vec4<u32>(4294967295u, ~9787u, u_input.b, ~18616u) % vec4<u32>(32u))) >> (abs(max(max(~vec4<u32>(9286u, global0.a, global0.a, u_input.b), ~vec4<u32>(u_input.b, arg_3.x, 77548u, 43139u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 1u, global0.a, arg_3.x) | vec4<u32>(0u, u_input.b, 0u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(23381u, 75292u, 78534u, 33895u), vec4<u32>(0u, 4294967295u, arg_3.x, 50763u))))) % vec4<u32>(32u));
    var var_1 = !vec4<bool>(arg_0, all(vec2<bool>(!arg_0, arg_2.a.x > arg_1)), arg_0, _wgslsmith_mult_i32(firstTrailingBit(u_input.a), 4380i >> (0u % 32u)) <= func_3());
    var_1 = !select(vec4<bool>(arg_0 | any(vec3<bool>(false, true, true)), arg_0, true, true), select(!vec4<bool>(arg_0, arg_0, false, var_1.x), !select(vec4<bool>(false, false, arg_0, var_1.x), vec4<bool>(false, arg_0, arg_0, var_1.x), vec4<bool>(arg_0, false, true, var_1.x)), all(select(vec2<bool>(false, var_1.x), var_1.xw, var_1.x))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.x, arg_0, false, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(var_1.x, true, var_1.x, arg_0)), !select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, true, arg_0, false), vec4<bool>(true, false, var_1.x, false)), vec4<bool>(false, true, true, true)));
    return Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(176f, 695f)), _wgslsmith_f_op_f32(613f * arg_2.a.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2.a.x, arg_1)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, arg_2.a.x, _wgslsmith_f_op_f32(-global0.b.x), arg_2.a.x) * vec4<f32>(642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) * global0.d.x), _wgslsmith_f_op_f32(-arg_2.a.x), global0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(253f - global0.c.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    var var_0 = 2147483647i;
    global1 = ~(vec4<i32>(2147483647i, u_input.a, 1i, _wgslsmith_add_i32(u_input.a, func_3())) ^ -vec4<i32>(u_input.a, -1i, u_input.a, _wgslsmith_mult_i32(1i, u_input.a)));
    let var_1 = 36514u;
    let var_2 = (countOneBits(global1.yzx) | (global1.xxz | abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-22524i, 2147483647i, u_input.a), global1.www)))) ^ vec3<i32>(-_wgslsmith_dot_vec2_i32(global1.xy, -global1.zz), global1.x, global1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true & all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), all(func_4(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), func_1(true, -181f, Struct_3(global0.c), vec2<u32>(u_input.b, global0.a)), Struct_2(Struct_1(4294967295u, global0.d, global0.c, vec2<f32>(global0.c.x, -1437f)), u_input.b, global0.d.x), 1015f)), all(vec2<bool>(true, true)), any(vec2<bool>(true, true))));
    var var_1 = 629f;
    global0 = func_1(var_0, _wgslsmith_f_op_f32(f32(-1f) * -990f), Struct_3(global0.c), select(~vec2<u32>(abs(0u), 0u), vec2<u32>(~_wgslsmith_sub_u32(global0.a, 0u), u_input.b), func_4(!vec4<bool>(var_0, false, true, false), func_1(all(vec3<bool>(true, false, true)), global0.b.x, Struct_3(vec4<f32>(586f, 218f, global0.d.x, global0.b.x)), vec2<u32>(global0.a, 37248u)), Struct_2(func_1(var_0, 1477f, Struct_3(vec4<f32>(-1000f, -326f, global0.c.x, 1042f)), vec2<u32>(81791u, global0.a)), ~0u, -680f), _wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(-1000f * global0.b.x))).ww));
    var var_2 = func_1(true, 1000f, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d.x, global0.b.x, 854f, -285f), _wgslsmith_f_op_vec4_f32(vec4<f32>(337f, 1544f, -620f, -575f) * vec4<f32>(global0.b.x, -199f, global0.d.x, -2877f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-910f, 772f, -220f, 190f)))), ~min(select(vec2<u32>(global0.a, global0.a), vec2<u32>(u_input.b, u_input.b), true), _wgslsmith_add_vec2_u32(vec2<u32>(31184u, global0.a) & vec2<u32>(1u, global0.a), vec2<u32>(global0.a, global0.a))));
    global0 = Struct_1(_wgslsmith_mod_u32(0u, ~(~u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f - -235f) - -1228f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.b.x, 870f), -2201f)))), vec4<f32>(func_1(~global1.x < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 2117i), vec4<i32>(global1.x, -14680i, global1.x, u_input.a)), 1488f, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_2.b.x, var_2.b.x, var_2.b.x) + vec4<f32>(1091f, -245f, var_2.d.x, -453f))), vec2<u32>(global0.a & 0u, u_input.b)).d.x, _wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.b.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, var_2.c.x) + global0.b))), func_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), Struct_3(_wgslsmith_f_op_vec4_f32(-var_2.c)), _wgslsmith_div_vec2_u32(vec2<u32>(3186u, global0.a), _wgslsmith_sub_vec2_u32(vec2<u32>(39259u, var_2.a), vec2<u32>(1u, u_input.b)))).c.yz)));
    var var_3 = select(vec3<bool>(-_wgslsmith_mod_i32(-2147483647i, -1i) != u_input.a, true, true), vec3<bool>(true, !(var_2.d.x < var_2.b.x) | false, all(!select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), false))), !(!(!(!vec3<bool>(var_0, true, var_0)))));
    let var_4 = !(!func_4(func_4(!vec4<bool>(false, var_3.x, false, var_3.x), Struct_1(global0.a, vec2<f32>(global0.b.x, var_2.d.x), var_2.c, var_2.b), Struct_2(Struct_1(4294967295u, vec2<f32>(global0.d.x, -252f), global0.c, var_2.d), u_input.b, var_2.b.x), _wgslsmith_f_op_f32(ceil(global0.b.x))), Struct_1(21778u >> (global0.a % 32u), var_2.c.xx, vec4<f32>(-196f, global0.c.x, 508f, var_2.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, var_2.c.x) * var_2.d)), Struct_2(func_1(var_3.x, var_2.b.x, Struct_3(vec4<f32>(1454f, global0.c.x, 183f, var_2.d.x)), vec2<u32>(u_input.b, 52693u)), 28546u, -1306f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x + -1241f))).yzz);
    let var_5 = _wgslsmith_mod_u32(0u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 15416u, 4294967295u), ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15714u, 28937u, 42642u), vec3<u32>(50844u, var_2.a, 12685u)), countOneBits(vec3<u32>(9045u, 1u, global0.a))), ~min(~vec3<u32>(var_2.a, var_5, 20795u), ~vec3<u32>(21484u, var_2.a, 10169u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1315f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, var_2.c.x)) * _wgslsmith_f_op_f32(2405f * -701f))))), var_2.b.x, _wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_2.a, 379u, 45874u, 1u), min(vec4<u32>(65301u, 11177u, 22007u, 10484u), vec4<u32>(u_input.b, u_input.b, 23091u, var_2.a)), true), ~(~(vec4<u32>(74656u, 40509u, global0.a, 39793u) ^ vec4<u32>(1u, var_2.a, global0.a, 18679u)))), 2147483647i << (u_input.b % 32u));
}

