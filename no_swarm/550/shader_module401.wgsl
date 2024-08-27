struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<u32>(65290u, 1u), true, 587f, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = max(_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(global0.b.x >> (4294967295u % 32u)), ~(u_input.a.x | 1u)), u_input.a.xy), firstTrailingBit(global0.b));
    var var_1 = global0.d;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * global0.d)) * _wgslsmith_f_op_f32(ceil(-547f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(ceil(global0.d))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -612f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.d)) * vec2<f32>(global0.d, 755f))))));
    var var_3 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-358f)) * _wgslsmith_f_op_f32(floor(global0.d))) <= var_2.x), var_0, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)), any(!select(select(vec3<bool>(true, arg_2, arg_0), arg_3.wzy, vec3<bool>(arg_0, global0.a, false)), vec3<bool>(false, true, global0.a), all(arg_3.zyy))));
    return vec2<bool>(true, all(!(!(!vec4<bool>(arg_3.x, true, true, false)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, all(vec3<bool>(global0.c, global0.c, false))), vec2<bool>(!global0.e, true), vec2<bool>(global0.c, true)), func_3(true, min(1i, ~16355i), global0.e, !(!vec4<bool>(global0.e, global0.a, global0.c, false)))), select(select(select(select(vec2<bool>(global0.e, global0.e), vec2<bool>(true, false), vec2<bool>(global0.a, global0.e)), !vec2<bool>(true, global0.c), select(vec2<bool>(true, global0.a), vec2<bool>(global0.e, false), true)), !select(vec2<bool>(global0.c, global0.a), vec2<bool>(global0.e, true), vec2<bool>(global0.a, global0.a)), !select(vec2<bool>(global0.e, global0.a), vec2<bool>(global0.e, global0.e), vec2<bool>(global0.a, true))), !vec2<bool>(global0.e | global0.c, true), all(!vec4<bool>(true, global0.a, false, global0.e))), vec2<bool>(any(vec3<bool>(!global0.c, global0.e, func_3(global0.c, 2147483647i, true, vec4<bool>(global0.a, global0.c, global0.a, false)).x)), global0.c | global0.a));
    var var_1 = Struct_1(false, firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(1u, arg_0), ~1u) | global0.b), false, global0.d, !((select(true, true, true) && !global0.a) & select(true, -1071f >= global0.d, false)));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, firstTrailingBit(max(reverseBits(28283u), u_input.a.x))), _wgslsmith_mod_u32(~(~arg_0 & ~1u), min(firstLeadingBit(~20595u), 55078u)), 1u);
    var var_3 = _wgslsmith_sub_i32(~(~17677i), 2147483647i);
    var var_4 = ~(var_2.x ^ _wgslsmith_add_u32(arg_0 & ~var_2.x, 135918u));
    return Struct_1(!global0.c | (true && (!global0.c | all(var_0))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_2.x, 4294967295u) ^ u_input.a.zy, ~(~global0.b)), vec2<u32>(66810u, 0u)), any(!(!vec3<bool>(false, false, var_0.x))), 511f, !(!var_0.x | all(var_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<u32> {
    global0 = func_2(arg_0.b.x ^ 1u);
    global0 = arg_0;
    global0 = func_2(firstLeadingBit(~(~0u)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(floor(-2750f)))) > global0.d, ~abs(global0.b), (arg_2.x != _wgslsmith_dot_vec2_i32(arg_2.yx, vec2<i32>(12972i, arg_2.x))) && arg_0.a, global0.d, !any(select(select(vec3<bool>(arg_1.a, global0.c, true), vec3<bool>(false, global0.e, false), arg_0.e), vec3<bool>(global0.e, arg_0.e, global0.a), !vec3<bool>(arg_1.c, true, global0.e))));
    global0 = func_2(u_input.a.x ^ _wgslsmith_mod_u32(abs(firstTrailingBit(arg_1.b.x)), arg_0.b.x | _wgslsmith_div_u32(4294967295u, arg_1.b.x)));
    return ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_0.b.x, arg_1.b.x)), max(u_input.a.xz, firstTrailingBit(vec2<u32>(27064u, 35690u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.b, arg_0.b), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 13287u), vec2<u32>(u_input.a.x, var_0.b.x))), arg_0.b | (vec2<u32>(1002u, 89625u) >> (vec2<u32>(arg_0.b.x, 12679u) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(false, func_4(func_2(~(37655u | global0.b.x)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.b.x, u_input.a.x, u_input.a.x)) >= _wgslsmith_mod_u32(4294967295u, 1u), vec2<u32>(1u, 171419u), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.d)), true), select(vec3<i32>(reverseBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -52397i, 1i), vec4<i32>(-13813i, 41400i, 33020i, 0i)), _wgslsmith_sub_i32(-13555i, -2147483647i)), min(~vec3<i32>(31776i, -1i, 0i), -vec3<i32>(-31584i, 2147483647i, -17059i)), select(vec3<bool>(arg_0.x, false, true), !vec3<bool>(true, global0.e, arg_0.x), vec3<bool>(false, false, true)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-func_2(_wgslsmith_add_u32(u_input.a.x, 4294967295u)).d)), all(vec2<bool>(arg_0.x, ~28871i >= (-20192i << (global0.b.x % 32u)))));
    global0 = Struct_1(-534f > _wgslsmith_f_op_f32(global0.d + -2283f), global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -964f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1715f, 251f, arg_0.x)) * _wgslsmith_f_op_f32(trunc(-559f))), 1f)), global0.d, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(550f + global0.d) + _wgslsmith_f_op_f32(floor(-1655f))), ~abs(abs(-84144i)), global0.c, vec4<bool>(true, global0.a, true, func_3(all(vec2<bool>(global0.c, arg_0.x)), ~(-1i), select(global0.e, true, true), !vec4<bool>(arg_0.x, false, true, false)).x)).x);
    global0 = Struct_1(false, global0.b, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global0.d)))), all(select(!select(vec3<bool>(true, global0.a, global0.c), vec3<bool>(false, arg_0.x, true), false), vec3<bool>(global0.e, true, u_input.a.x >= global0.b.x), false)));
    let var_0 = Struct_1(arg_0.x, u_input.a.yx, all(vec2<bool>(false, global0.a)), func_2(u_input.a.x).d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(390f + global0.d))), global0.d)) != 788f);
    let var_1 = ~abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, 4294967295u, 4294967295u, var_0.b.x), max(vec4<u32>(37797u, var_0.b.x, var_0.b.x, var_0.b.x), vec4<u32>(u_input.a.x, 19684u, var_0.b.x, 26878u))));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = vec4<u32>(arg_0.b.x | ~_wgslsmith_mult_u32(17347u, 0u), ~u_input.a.x, global0.b.x, 1u);
    var var_1 = Struct_1(func_2(u_input.a.x).c, select(countOneBits(func_1(!vec2<bool>(true, global0.c)).b), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, var_0.x), ~global0.b), global0.a || ((arg_0.e & arg_0.e) && (u_input.a.x < 0u))), true, _wgslsmith_f_op_f32(select(316f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec2<bool>(arg_0.c, false)).d * _wgslsmith_f_op_f32(-arg_0.d)), func_1(func_3(true, 2147483647i, arg_0.e, vec4<bool>(true, true, global0.e, global0.a))).d)), !(_wgslsmith_dot_vec2_u32(global0.b, global0.b) < 0u))), false);
    var var_2 = arg_0;
    var var_3 = vec3<bool>(func_1(vec2<bool>(func_1(select(vec2<bool>(false, true), vec2<bool>(true, arg_0.c), global0.e)).c, true)).e, !(~(~var_0.x) != u_input.a.x), var_1.e && var_2.e);
    var_2 = arg_0;
    return all(var_3.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_5(func_1(select(vec2<bool>(global0.e, false), vec2<bool>(false, global0.c), vec2<bool>(false, global0.e)))) && (_wgslsmith_mod_i32(select(8666i, -2147483647i, global0.c), _wgslsmith_add_i32(-4265i, -24611i)) == -1i), vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(31567u, u_input.a.x), u_input.a.xx), abs(~u_input.a.yx))), !(_wgslsmith_div_f32(-443f, global0.d) <= _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(round(global0.d)), ~_wgslsmith_mult_i32(firstLeadingBit(-877i), 1i) >= ~firstTrailingBit(1i));
    let var_0 = ~vec3<i32>(reverseBits(1i), _wgslsmith_sub_i32(20411i, -1i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i));
    global0 = func_1(vec2<bool>(true, true));
    let var_1 = Struct_1(global0.e, firstTrailingBit(vec2<u32>(0u, global0.b.x) | global0.b), false, global0.d, global0.e);
    global0 = Struct_1(any(vec2<bool>(global0.c, !global0.a)), (func_2(u_input.a.x).b | abs(var_1.b)) & firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(58509u, var_1.b.x) | vec2<u32>(var_1.b.x, var_1.b.x))), all(vec3<bool>(true, all(select(vec4<bool>(false, var_1.e, global0.a, global0.e), vec4<bool>(false, global0.a, false, false), false)), any(select(vec4<bool>(false, true, false, var_1.e), vec4<bool>(var_1.a, var_1.a, false, var_1.e), var_1.c)))), _wgslsmith_f_op_f32(global0.d * 1226f), var_1.e || (1422u > max(_wgslsmith_sub_u32(u_input.a.x, 49381u), firstLeadingBit(4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, -202f, global0.d) + vec4<f32>(var_1.d, global0.d, 1473f, global0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1744f, global0.d, var_1.d, 1005f) - vec4<f32>(var_1.d, 1061f, var_1.d, -1223f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, 172f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1640f + global0.d), global0.d, _wgslsmith_f_op_f32(-global0.d), global0.d))));
}

