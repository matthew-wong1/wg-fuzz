struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = vec4<bool>(true, global0.x || true, false, any(vec4<bool>(true, true, global0.x, 4294967295u <= (0u | arg_0.x))));
    let var_1 = ~((~(vec4<u32>(arg_0.x, 4294967295u, 4294967295u, arg_0.x) ^ vec4<u32>(arg_0.x, 4390u, arg_0.x, arg_0.x)) >> (vec4<u32>(26802u, 45219u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 1u, 4294967295u), vec4<u32>(arg_0.x, 3694u, arg_0.x, arg_0.x)), ~arg_0.x) % vec4<u32>(32u))) << (abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(37223u, arg_0.x, arg_0.x, 96468u), vec4<u32>(arg_0.x, arg_0.x, 1454u, arg_0.x), vec4<u32>(43502u, 1710u, arg_0.x, arg_0.x))) % vec4<u32>(32u)));
    var_0 = select(!vec4<bool>(!(52229u < arg_0.x), true, global0.x, true), select(vec4<bool>(true, any(vec4<bool>(true, true, global0.x, false)) && any(vec4<bool>(global0.x, var_0.x, global0.x, var_0.x)), (u_input.a.x >> (var_1.x % 32u)) >= u_input.a.x, !any(vec2<bool>(true, var_0.x))), vec4<bool>(true, global0.x && true, var_0.x, select(any(vec2<bool>(global0.x, true)), true, all(vec2<bool>(false, true)))), true), vec4<bool>(all(!select(vec4<bool>(global0.x, true, var_0.x, var_0.x), vec4<bool>(global0.x, var_0.x, false, var_0.x), vec4<bool>(false, false, true, true))), var_0.x, true, all(select(vec2<bool>(var_0.x, global0.x), select(vec2<bool>(global0.x, true), var_0.xw, vec2<bool>(false, true)), var_0.ww))));
    let var_2 = !vec2<bool>(any(select(vec4<bool>(global0.x, global0.x, true, var_0.x), select(vec4<bool>(true, true, global0.x, var_0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(var_0.x, global0.x, var_0.x, var_0.x)), var_0.x)), select(true, -1577f >= arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1) == _wgslsmith_f_op_f32(f32(-1f) * -332f)));
    let var_3 = select(global0.xzx, vec3<bool>(!(arg_0.x != ~arg_0.x), all(!select(vec4<bool>(var_2.x, true, var_2.x, global0.x), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, global0.x, false, var_0.x))), var_0.x), true);
    return global0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    var var_0 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(false, true, global0.x, arg_1.b)), !vec4<bool>(func_3(vec2<u32>(1u, arg_2), arg_0.a.x, arg_1.a.x), !global0.x, any(vec4<bool>(true, false, true, arg_0.b)), u_input.a.x > 2147483647i), vec4<bool>(global0.x, any(global0.zz), true, global0.x)));
    var var_1 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(min(arg_1.a, arg_1.a)), all(!(!vec3<bool>(true, arg_0.b, arg_1.b)))), arg_0, global0.xyz);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(arg_0.a.zw, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -684f), _wgslsmith_f_op_f32(var_1.c.a.x * 435f))))))));
    let var_3 = min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 21308u) & (vec2<u32>(arg_2, 1u) ^ vec2<u32>(1u, arg_2)), ~(~vec2<u32>(arg_2, 164782u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(arg_2, 0u)), select(vec2<u32>(arg_2, 66631u), vec2<u32>(arg_2, 4836u), true))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_2, 4294967295u) ^ ~vec2<u32>(arg_2, arg_2)), _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(arg_2, 74381u)), ~vec2<u32>(arg_2, 26578u) >> (~vec2<u32>(4294967295u, arg_2) % vec2<u32>(32u)))));
    var var_4 = select(vec4<bool>(!(!all(global0.wz)), -u_input.a.x <= select(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), arg_0.b), true, true), vec4<bool>(!(all(var_1.d) || arg_1.b), -u_input.a.x >= (-u_input.a.x << (16222u % 32u)), !any(vec4<bool>(true, true, true, true)), false), all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true)) || true);
    return vec3<u32>(max(~(~abs(arg_2)), var_3.x), 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(34323u), 1u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(vec2<u32>(_wgslsmith_dot_vec3_u32(~func_2(Struct_1(vec4<f32>(-1420f, -108f, arg_3.a.x, 1492f), arg_3.b), arg_3, arg_0.x), _wgslsmith_sub_vec3_u32(firstTrailingBit(arg_0), reverseBits(vec3<u32>(arg_0.x, 1u, 4294967295u)))), abs(41733u)), ~countOneBits(arg_0.zz), true);
    let var_1 = arg_3;
    var var_2 = Struct_2(var_1, Struct_1(var_1.a, _wgslsmith_f_op_f32(floor(arg_1.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(var_1.a.x)), 932f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -2147483647i, 35398i) >> (vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 0u) % vec4<u32>(32u)), vec4<i32>(1i, 2258i, -1i, u_input.a.x)) != 16099i), global0.wyy);
    var var_3 = _wgslsmith_mult_i32(-u_input.a.x, 1i);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_3.a, _wgslsmith_f_op_vec4_f32(step(var_1.a, var_1.a)), func_3(var_0 ^ vec2<u32>(8208u, 43403u), arg_1.x, _wgslsmith_f_op_f32(119f + arg_1.x)))), (max(u_input.a.x, -56115i) >> (~4294967295u % 32u)) < -2147483647i), var_2.a, var_1, var_2.d);
    return Struct_1(arg_3.a, arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), global0.x), func_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1677f, -1292f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, 426f))))), select(true, true, !global0.x || true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1444f, -1384f, 1596f, -433f)))), any(select(global0.yzz, global0.yzy, global0.zyx)))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(657f, -1979f, -730f, -740f), vec4<f32>(-1587f, 241f, 1038f, 619f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, -232f, 956f, 905f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1075f, 126f, -161f, -394f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1777f, 1901f, -954f, -314f))), vec4<bool>(global0.x, global0.x, false, global0.x))))), true), select(vec3<bool>(true & (global0.x == true), global0.x, true), select(!select(vec3<bool>(global0.x, global0.x, true), global0.wwz, false), global0.zyy, vec3<bool>(global0.x, false, false)), select(true, true, !global0.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a.a, vec4<f32>(_wgslsmith_f_op_f32(-337f - var_0.a.a.x), _wgslsmith_f_op_f32(round(-252f)), _wgslsmith_f_op_f32(max(-2224f, var_0.c.a.x)), var_0.c.a.x), true))), !global0.x);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-539f, 963f, var_0.a.a.x, 550f))) - vec4<f32>(-292f, _wgslsmith_div_f32(1481f, -1497f), _wgslsmith_div_f32(var_1.a.x, var_0.c.a.x), _wgslsmith_div_f32(var_1.a.x, 1360f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) - _wgslsmith_f_op_f32(996f + -1000f)) < _wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(-var_0.b.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 1652f, var_1.a.x) + var_1.a)) + vec4<f32>(1f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(floor(var_0.c.a.x)), var_0.b.a.x)), !select(false, false, global0.x) || select(func_3(vec2<u32>(0u, 0u), var_0.b.a.x, var_0.c.a.x), 28228i == u_input.a.x, var_0.c.b & true)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b.a), false), !(!global0.zww));
    var_0 = Struct_2(var_1, var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)), var_1.b), !var_0.d);
    var_0 = Struct_2(func_1(firstLeadingBit(vec3<u32>(~1u, ~1u, firstTrailingBit(25295u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, var_1.a.x)), vec2<f32>(var_0.b.a.x, var_1.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.a.x, 2557f), var_1.a.zy), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(850f, 1104f), vec2<f32>(-741f, var_0.a.a.x))), vec2<bool>(var_0.a.b, false))), true)), all(vec2<bool>(select(false, true, global0.x), any(global0.zz))), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a), true | (true && var_1.b))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(var_1.a.x + -424f), var_0.b.a.x, _wgslsmith_f_op_f32(select(-682f, -1777f, true)))), true), var_1, select(vec3<bool>(!var_0.a.b, false, func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(15738u, 18560u), vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x)), select(select(global0.zzw, select(global0.wyz, vec3<bool>(true, true, var_0.c.b), var_0.d), !vec3<bool>(false, var_1.b, global0.x)), !vec3<bool>(false, var_0.a.b, var_0.a.b), select(select(global0.zww, vec3<bool>(var_0.b.b, var_1.b, global0.x), var_0.d), var_0.d, func_1(vec3<u32>(0u, 0u, 1u), vec2<f32>(var_1.a.x, var_1.a.x), var_0.a.b, var_0.c).b)), select(select(select(var_0.d, vec3<bool>(false, var_1.b, var_0.a.b), vec3<bool>(false, var_0.d.x, true)), var_0.d, vec3<bool>(global0.x, false, var_0.c.b)), select(!vec3<bool>(true, global0.x, false), global0.zyz, var_1.b), select(!vec3<bool>(true, true, var_1.b), vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, var_0.d.x)))));
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(_wgslsmith_clamp_u32(1u, 0u, 16698u)) ^ 1598u, 1u, 19187u, min(0u, 9156u)));
}

