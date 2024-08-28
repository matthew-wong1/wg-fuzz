struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(firstLeadingBit(-1i), arg_0.a), ~((i32(-1i) * -18472i) ^ -arg_0.a)), firstLeadingBit(-11983i), 7015i, ~(-533i));
    let var_1 = Struct_5(Struct_4(arg_2, !select(vec2<bool>(true, true), vec2<bool>(true, true), true), arg_2, countOneBits(~(~arg_3.x)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true))), Struct_2(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f - 942f))), arg_1.x, arg_2), select(false, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 2147483647i, -1i, -9259i) & vec4<i32>(0i, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, var_0.x, 33126i, 2147483647i)) > 1i, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true))));
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(608f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1283f)), _wgslsmith_f_op_f32(sign(1000f))))) - _wgslsmith_f_op_f32(-arg_2.c)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(780f, _wgslsmith_f_op_f32(arg_2.b - arg_2.c), !arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b - -265f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - -1000f)));
    var_0 = _wgslsmith_f_op_f32(step(arg_2.b, 345f));
    var var_1 = max(vec4<u32>(firstTrailingBit(~u_input.a.x), u_input.a.x, 1u, firstTrailingBit(u_input.a.x)), vec4<u32>(17982u, _wgslsmith_mult_u32(~31372u, ~firstTrailingBit(4294967295u)), ~3173u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, 73202u)), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 0u)))));
    var var_2 = !vec3<bool>(true, !(arg_1 || true) & any(select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, arg_1, true, false), arg_1)), !(_wgslsmith_mod_u32(0u, var_1.x) != u_input.a.x));
    return (_wgslsmith_add_u32(~(~u_input.a.x), 1u) == var_1.x) || true;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(-47860i, -_wgslsmith_dot_vec3_i32(vec3<i32>(54555i, 2147483647i, -2147483647i), vec3<i32>(7419i, 3707i, 2147483647i))) ^ _wgslsmith_add_i32(1i, -firstTrailingBit(-60464i)));
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1781f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1583f + -1016f)) + -1494f))), func_2(func_2(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-120f, 1326f, -722f, 618f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-156f, 1009f, 113f, -1065f)))), func_2(Struct_1(3741i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-280f, 542f, -664f, 3004f))), Struct_1(-2147483647i), countOneBits(u_input.a.zxw)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(78620u, u_input.a.x, u_input.a.x), vec3<u32>(6953u, 13862u, u_input.a.x)), firstLeadingBit(vec3<u32>(arg_0, 47758u, 1u)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, 1719f, 2054f, 1210f)), vec4<f32>(679f, -449f, -2934f, 791f)))), var_0, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 18985u, 0u), ~(u_input.a.yzw << (u_input.a.wzz % vec3<u32>(32u))))));
    var_1 = Struct_2(Struct_1(var_1.a.a), -1053f, _wgslsmith_f_op_f32(-var_1.b), func_2(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -542f, var_1.c, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -1253f, var_1.b, -1235f)))), func_2(var_0, vec4<f32>(1f, -1283f, _wgslsmith_f_op_f32(f32(-1f) * -400f), 1141f), func_2(func_2(var_0, vec4<f32>(-890f, 569f, 229f, var_1.c), Struct_1(-1i), vec3<u32>(0u, 4920u, 100872u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-477f, var_1.b, var_1.c, var_1.c), vec4<f32>(var_1.b, var_1.c, var_1.c, var_1.c))), Struct_1(var_1.a.a), select(u_input.a.wyx, u_input.a.wxz, arg_1.x)), u_input.a.zwy ^ u_input.a.wzy), _wgslsmith_clamp_vec3_u32(u_input.a.xwy, u_input.a.wzw >> (~u_input.a.xzw % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 51443u))));
    var_1 = Struct_2(func_2(Struct_1(firstLeadingBit(_wgslsmith_div_i32(var_0.a, var_1.a.a))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-786f, -847f)), _wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(max(-1707f, -1152f)), _wgslsmith_f_op_f32(step(var_1.c, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1677f, var_1.b, var_1.c, var_1.c))), func_2(Struct_1(select(var_0.a, var_1.d.a, arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.b, var_1.c, var_1.b), vec4<f32>(var_1.c, 1246f, var_1.c, var_1.b)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 280f, -150f, -1356f), vec4<f32>(-384f, var_1.b, var_1.b, -246f)))), var_1.d, abs(~vec3<u32>(1583u, 4294967295u, 46955u))), vec3<u32>(u_input.a.x, arg_0, ~57685u)), _wgslsmith_f_op_f32(-var_1.b), -569f, Struct_1(-2147483647i));
    var var_2 = ~select(~0u, 1u, true);
    return Struct_3(Struct_2(func_2(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-250f, var_1.b, var_1.b, var_1.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1376f, var_1.b, var_1.b) + vec4<f32>(var_1.c, var_1.c, var_1.b, var_1.c))), var_0, ~(~u_input.a.zzx)), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) + var_1.c)), var_1.c, var_0), Struct_2(func_2(var_1.d, vec4<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.b + 2264f), _wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(max(var_1.b, 1266f))), func_2(func_2(Struct_1(var_1.d.a), vec4<f32>(-372f, -1000f, var_1.c, var_1.b), Struct_1(17541i), vec3<u32>(4294967295u, 4294967295u, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.c, 110f, var_1.b)), var_1.a, vec3<u32>(arg_0, arg_0, 21450u)), ~vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(min(-2166f, var_1.b))) + var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1254f, _wgslsmith_f_op_f32(-224f + var_1.c)))), var_1.d), _wgslsmith_div_f32(var_1.c, -427f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.c * var_1.c)))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: Struct_3) -> Struct_2 {
    let var_0 = 1i;
    let var_1 = u_input.a.yxz;
    let var_2 = func_4(_wgslsmith_mult_u32(0u, countOneBits(~var_1.x)), vec4<bool>(!(true && arg_2.a.b.x), _wgslsmith_f_op_f32(round(268f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_2.b.c)))), false, (false == arg_2.a.b.x) && all(!vec2<bool>(arg_2.c, arg_2.a.e.x))), !func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b.a.a, 10111i), vec2<i32>(arg_1, -26472i)), arg_2.a.e.x, Struct_2(func_2(Struct_1(var_0), vec4<f32>(397f, arg_2.b.b, arg_2.b.c, 510f), Struct_1(var_0), u_input.a.zxx), _wgslsmith_f_op_f32(-arg_3.d.x), arg_3.c, func_2(arg_3.b.d, vec4<f32>(433f, arg_2.b.c, arg_3.d.x, 934f), Struct_1(arg_1), vec3<u32>(1u, 4294967295u, 1u)))));
    let var_3 = var_2.a;
    let var_4 = -_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(2147483647i, -1i)) & vec2<i32>(-38388i, var_0), -_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.d.a, arg_1), vec2<i32>(1i, arg_2.a.a.a))), vec2<i32>(var_0 ^ (arg_1 ^ var_0), -arg_1), vec2<i32>(17457i, max(arg_3.b.a.a, _wgslsmith_mod_i32(arg_1, -6770i))));
    return Struct_2(Struct_1(var_2.a.d.a), -250f, var_3.c, func_4(((1u >> (arg_0 % 32u)) >> (abs(4178u) % 32u)) << (min(~1u, arg_2.a.d) % 32u), vec4<bool>(all(arg_2.a.b), any(!arg_2.a.e.yyw), !(false & arg_2.c), false), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(floor(var_2.c))) != _wgslsmith_f_op_f32(-arg_3.c)).b.a);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(~(~1i), arg_1));
    let var_1 = arg_0.d;
    var var_2 = arg_0.d;
    var_0 = func_4(select(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(52012u, u_input.a.x), countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(u_input.a.wzx, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, 15755u), vec3<u32>(23783u, 65726u, arg_3.a.d)))), ~_wgslsmith_mod_u32(63045u, arg_3.a.d) << (arg_3.a.d % 32u), !select(false, any(arg_3.a.e.xxw), arg_1 < arg_3.a.c.a)), vec4<bool>(false, any(arg_3.a.b), true, true), false).b.d;
    var_0 = Struct_1(arg_0.a.a);
    return -_wgslsmith_add_i32(-31540i | (var_2.a & -arg_3.b.a.a), min(-2147483647i, -36357i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(25164i, -65164i);
    let var_1 = reverseBits(-vec3<i32>(func_5(func_1(u_input.a.x, -1i, Struct_5(Struct_4(Struct_1(var_0.x), vec2<bool>(false, false), Struct_1(var_0.x), u_input.a.x, vec4<bool>(false, false, true, true)), Struct_2(Struct_1(var_0.x), -1000f, -351f, Struct_1(2147483647i)), true), Struct_3(Struct_2(Struct_1(1i), 415f, 436f, Struct_1(var_0.x)), Struct_2(Struct_1(1i), 108f, -1000f, Struct_1(var_0.x)), 534f, vec2<f32>(-134f, 912f))), _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(-1212i, -32586i)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_1(var_0.x), vec2<bool>(true, false), Struct_1(2463i), 4294967295u, vec4<bool>(true, true, false, true)), Struct_2(Struct_1(var_0.x), 401f, -1110f, Struct_1(-1304i)), true)), (var_0.x >> (u_input.a.x % 32u)) >> (86738u % 32u), i32(-1i) * -var_0.x));
    var var_2 = Struct_5(Struct_4(func_4(~_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(44742u, u_input.a.x)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))).b.a, vec2<bool>(true, true), func_4(_wgslsmith_clamp_u32(121565u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 26890u), u_input.a.xz), 1u), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false))).a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~0u, u_input.a.x >> (4294967295u % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 54468u, u_input.a.x) | vec4<u32>(u_input.a.x, 15600u, 3054u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16449u), u_input.a))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(true, false, true))), func_4(u_input.a.x, vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, true, true), -369f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-848f * -1412f)))).a, !select(false, true != func_3(-1i, true, Struct_2(Struct_1(var_1.x), 781f, 839f, Struct_1(53418i))), all(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_5(Struct_4(Struct_1(var_2.a.a.a), !var_2.a.b, func_4(_wgslsmith_clamp_u32(reverseBits(var_2.a.d), 1u, ~u_input.a.x), var_2.a.e, var_2.a.e.x).a.d, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u >> (u_input.a.x % 32u)), 0u), !(!vec4<bool>(true, var_2.c, true, true))), var_2.b, true);
    var var_4 = select(var_3.a.e.ww, var_2.a.b, vec2<bool>(!var_3.c, any(select(select(vec3<bool>(var_2.c, var_2.c, false), var_2.a.e.yzx, vec3<bool>(true, var_2.a.b.x, false)), select(vec3<bool>(false, false, true), var_2.a.e.yzy, var_3.c), var_3.a.e.yxy))));
    let var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_3.b.c, -251f, var_3.b.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, 376f, var_3.b.c, -1000f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.b.b, 1000f, var_3.b.b, var_2.b.b), vec4<f32>(1279f, var_2.b.c, var_3.b.c, var_3.b.b))), vec4<f32>(var_2.b.c, var_2.b.c, 1000f, var_3.b.c))), vec4<bool>(func_3(1i, true, Struct_2(Struct_1(2147483647i), 636f, var_3.b.c, Struct_1(-1i))), false, any(var_3.a.e), all(var_3.a.e)))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_3.b.c * -1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_3.b.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1653f, var_2.b.c, var_3.b.b, -1538f)))))));
}

