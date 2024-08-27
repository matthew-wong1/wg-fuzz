struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(-2024f, 29117i), vec3<bool>(true, false, false), Struct_1(2147483647i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: vec4<bool>) -> Struct_5 {
    global0 = Struct_4(arg_1.b, !vec3<bool>(true, true == (arg_1.c.x >= 37967u), arg_0), global0.c);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.a) + _wgslsmith_f_op_f32(-global0.a.a))))), vec2<f32>(global0.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-213f - arg_1.a.a.a) - _wgslsmith_f_op_f32(global0.a.a * -465f))))));
    global0 = arg_1.a;
    global0 = arg_1.a;
    global0 = arg_1.a;
    return arg_1;
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = 5835u;
    global0 = arg_1.a;
    let var_1 = func_2(arg_0, func_2(arg_3, Struct_5(arg_1.a, global0.a, arg_1.c), !(!select(vec4<bool>(false, false, false, arg_3), vec4<bool>(false, false, arg_3, true), vec4<bool>(arg_2, false, arg_1.a.b.x, false)))), !select(!vec4<bool>(true, arg_3, arg_2, arg_3), select(vec4<bool>(arg_1.a.b.x, true, true, arg_3), !vec4<bool>(arg_2, arg_3, true, arg_1.a.b.x), all(vec3<bool>(arg_1.a.b.x, true, false))), !(!vec4<bool>(true, global0.b.x, false, false))));
    global0 = func_2(!(!(!(arg_1.b.a < 1637f))), arg_1, vec4<bool>(!var_1.a.b.x, true, max(_wgslsmith_clamp_i32(global0.c.a, arg_1.b.b, -12857i), func_2(arg_1.a.b.x, Struct_5(var_1.a, Struct_2(arg_1.b.a, 1102i), vec3<u32>(arg_1.c.x, 4294967295u, 0u)), vec4<bool>(var_1.a.b.x, false, arg_1.a.b.x, true)).a.c.a) == _wgslsmith_mult_i32(var_1.b.b ^ 2147483647i, arg_1.a.c.a), arg_3)).a;
    let var_2 = -vec2<i32>(_wgslsmith_mod_i32(u_input.b, countOneBits(u_input.c << (var_0 % 32u))), select(var_1.b.b, abs(~global0.c.a), arg_2));
    return func_2(var_1.a.b.x, arg_1, vec4<bool>(false, func_2(true, func_2(arg_0, Struct_5(var_1.a, arg_1.a.a, var_1.c), vec4<bool>(false, false, false, true)), select(vec4<bool>(arg_2, false, false, arg_1.a.b.x), vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, arg_3, true), vec4<bool>(false, arg_1.a.b.x, arg_0, arg_1.a.b.x))).a.b.x || !select(arg_1.a.b.x, true, false), !(!(!arg_3)), false || !all(vec4<bool>(arg_0, true, false, arg_2)))).a.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(~32072i);
    let var_1 = Struct_3(Struct_1(~0i | func_2(true, func_2(true, Struct_5(Struct_4(Struct_2(global0.a.a, 34083i), vec3<bool>(true, global0.b.x, false), Struct_1(arg_0)), Struct_2(-1641f, 56382i), vec3<u32>(u_input.d, 24036u, 17128u)), vec4<bool>(true, false, global0.b.x, false)), !vec4<bool>(global0.b.x, false, false, global0.b.x)).a.a.b), u_input.a.wy);
    var var_2 = select(true, any(global0.b.zy), global0.b.x);
    var_2 = global0.b.x;
    var_0 = global0.c;
    return !global0.b.x;
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_2 {
    var var_0 = Struct_3(global0.c, select(vec2<u32>(~u_input.a.x, ~u_input.d), abs(select(_wgslsmith_add_vec2_u32(u_input.a.yz, arg_1.c.zy), _wgslsmith_mod_vec2_u32(arg_1.c.xz, vec2<u32>(u_input.d, 4294967295u)), !global0.b.zy)), !func_2(global0.b.x, Struct_5(Struct_4(arg_1.b, vec3<bool>(arg_1.a.b.x, global0.b.x, global0.b.x), Struct_1(30960i)), global0.a, arg_1.c), !vec4<bool>(false, arg_1.a.b.x, global0.b.x, true)).a.b.x));
    var var_1 = select(global0.b.zx, vec2<bool>(!all(select(vec4<bool>(arg_0, true, true, true), vec4<bool>(true, false, true, true), arg_0)), false), arg_0 & ((true | all(arg_1.a.b.zz)) || false));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.a)) * _wgslsmith_div_f32(global0.a.a, arg_1.a.a.a)), 339f) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(898f, -233f))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a.a, global0.a.a))), _wgslsmith_div_f32(arg_1.a.a.a, _wgslsmith_f_op_f32(-1000f + 1603f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1154f), global0.a.a), arg_1.a.b.x)));
    let var_3 = vec2<i32>(u_input.b, func_2(any(vec3<bool>(false, !arg_0, any(arg_1.a.b.zx))), func_2(arg_0, Struct_5(func_2(global0.b.x, Struct_5(Struct_4(Struct_2(991f, -20875i), arg_1.a.b, global0.c), Struct_2(-1723f, 0i), u_input.a.xzx), vec4<bool>(global0.b.x, false, global0.b.x, true)).a, func_3(var_1.x, Struct_5(Struct_4(Struct_2(var_2.x, arg_1.a.c.a), global0.b, global0.c), Struct_2(613f, u_input.b), vec3<u32>(7697u, 32321u, 1u)), arg_1.a.b.x, true), select(u_input.a.xyx, u_input.a.zyx, var_1.x)), select(select(vec4<bool>(true, var_1.x, true, global0.b.x), vec4<bool>(var_1.x, var_1.x, var_1.x, arg_1.a.b.x), false), select(vec4<bool>(false, arg_0, false, true), vec4<bool>(false, false, var_1.x, true), global0.b.x), var_1.x)), select(select(select(vec4<bool>(true, true, arg_1.a.b.x, true), vec4<bool>(arg_1.a.b.x, true, false, global0.b.x), var_1.x), vec4<bool>(var_1.x, true, var_1.x, arg_1.a.b.x), vec4<bool>(true, true, false, var_1.x)), !(!vec4<bool>(true, global0.b.x, var_1.x, false)), !(!vec4<bool>(false, false, false, var_1.x)))).b.b);
    var_0 = Struct_3(arg_1.a.c, u_input.a.xx);
    return func_3(var_1.x, Struct_5(Struct_4(global0.a, !func_2(var_1.x, Struct_5(arg_1.a, Struct_2(global0.a.a, -6809i), vec3<u32>(4294967295u, 4294967295u, 0u)), vec4<bool>(false, false, arg_1.a.b.x, var_1.x)).a.b, Struct_1(-var_0.a.a)), func_3(arg_1.a.a.a != -483f, arg_1, _wgslsmith_f_op_f32(-var_2.x) < _wgslsmith_f_op_f32(abs(-664f)), false), ~countOneBits(arg_1.c)), (i32(-1i) * -2147483647i) == (~arg_1.a.c.a ^ _wgslsmith_div_i32(u_input.c & 12648i, ~(-10261i))), all(!arg_1.a.b.zz));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global0 = Struct_4(func_5(func_4(u_input.b, func_3(all(vec4<bool>(global0.b.x, global0.b.x, false, false)), func_2(false, Struct_5(Struct_4(global0.a, global0.b, global0.c), global0.a, arg_0), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)), 47922u <= arg_0.x, true)), Struct_5(func_2(!global0.b.x, Struct_5(Struct_4(global0.a, vec3<bool>(global0.b.x, global0.b.x, true), global0.c), Struct_2(1473f, -39685i), u_input.a.yxw), select(vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, true, true), vec4<bool>(global0.b.x, true, true, false))).a, Struct_2(_wgslsmith_f_op_f32(trunc(global0.a.a)), 1i), u_input.a.wwz)), global0.b, global0.c);
    var var_0 = max(vec4<u32>(0u, reverseBits(25209u) ^ arg_0.x, min(_wgslsmith_div_u32(arg_0.x, arg_0.x), 1u), select(countOneBits(0u), u_input.d, !global0.b.x)) ^ max(select(vec4<u32>(arg_0.x, u_input.d, 0u, u_input.d) | u_input.a, u_input.a, !vec4<bool>(false, global0.b.x, false, global0.b.x)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39949u, 0u, 74954u, arg_0.x), u_input.a), ~vec4<u32>(arg_0.x, 4294967295u, 59984u, 4294967295u))), ~(~u_input.a));
    global0 = func_2(!(!(!global0.b.x)) | (0u < abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, 29229u), u_input.a))), func_2(global0.b.x, Struct_5(func_2(u_input.a.x < u_input.a.x, func_2(false, Struct_5(Struct_4(global0.a, vec3<bool>(true, global0.b.x, global0.b.x), Struct_1(30379i)), global0.a, vec3<u32>(u_input.a.x, arg_0.x, arg_0.x)), vec4<bool>(global0.b.x, false, false, false)), select(vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x))).a, func_5(global0.b.x, func_2(global0.b.x, Struct_5(Struct_4(global0.a, global0.b, global0.c), Struct_2(-1076f, -2147483647i), vec3<u32>(1u, 56351u, var_0.x)), vec4<bool>(false, global0.b.x, true, global0.b.x))), arg_0), vec4<bool>(true, global0.b.x || true, any(!global0.b.zz), func_4(func_3(false, Struct_5(Struct_4(global0.a, global0.b, global0.c), global0.a, vec3<u32>(88368u, 45823u, 139654u)), false, false).b, func_5(false, Struct_5(Struct_4(Struct_2(global0.a.a, -1i), global0.b, global0.c), Struct_2(1430f, u_input.c), var_0.xyx))))), select(select(vec4<bool>(any(vec4<bool>(global0.b.x, true, global0.b.x, true)), true, !global0.b.x, true), select(vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), vec4<bool>(true, global0.b.x, true, global0.b.x), select(vec4<bool>(false, global0.b.x, false, false), vec4<bool>(true, true, true, global0.b.x), vec4<bool>(true, true, global0.b.x, global0.b.x))), !global0.b.x), !vec4<bool>(select(false, global0.b.x, global0.b.x), all(vec3<bool>(global0.b.x, true, true)), true, true), select(!vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), select(vec4<bool>(global0.b.x, false, false, global0.b.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global0.b.x, global0.b.x, true), vec4<bool>(false, global0.b.x, true, true)), !vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), _wgslsmith_f_op_f32(abs(597f)) <= _wgslsmith_f_op_f32(-global0.a.a)))).a;
    let var_1 = vec4<u32>(_wgslsmith_div_u32(min(u_input.a.x, u_input.d) << (_wgslsmith_clamp_u32(~0u, arg_0.x, 1u) % 32u), ~4294967295u), 11808u, ~(~_wgslsmith_div_u32(4294967295u, abs(30261u))), 4294967295u);
    global0 = Struct_4(Struct_2(global0.a.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, global0.a.b), abs(~vec2<i32>(-1i, 36305i)))), select(func_2(all(select(vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(true, global0.b.x, false), global0.b)), func_2(false, func_2(global0.b.x, Struct_5(Struct_4(global0.a, vec3<bool>(global0.b.x, global0.b.x, false), Struct_1(-2147483647i)), global0.a, var_1.wxy), vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x)), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x)), vec4<bool>(true, true, true, true)).a.b, !(!func_2(global0.b.x, Struct_5(Struct_4(Struct_2(global0.a.a, u_input.b), global0.b, Struct_1(global0.c.a)), Struct_2(1459f, -2147483647i), arg_0), vec4<bool>(true, global0.b.x, true, false)).a.b), global0.b.x), Struct_1(42595i | -u_input.c));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(vec3<u32>(38496u, ~93333u, ~u_input.d) ^ ~(~vec3<u32>(u_input.a.x, 17696u, 11335u))), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.yy << (reverseBits(u_input.a.zx) % vec2<u32>(32u)), u_input.a.yz), firstLeadingBit(func_2(global0.b.x, func_2(true, Struct_5(Struct_4(Struct_2(-542f, global0.a.b), global0.b, global0.c), global0.a, vec3<u32>(u_input.d, u_input.d, 8161u)), vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x)), select(vec4<bool>(false, global0.b.x, global0.b.x, false), vec4<bool>(global0.b.x, global0.b.x, true, false), true)).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.ww)), select(vec4<i32>(u_input.c, u_input.c, _wgslsmith_clamp_i32(var_0.a.a, 2147483647i, -48521i), global0.a.b) << (min(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(47993u, var_0.b.x, var_0.b.x, u_input.d), vec4<u32>(var_0.b.x, 1u, 1u, u_input.d), u_input.a)) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_sub_i32(u_input.b, global0.c.a), 35039i, u_input.b), vec4<bool>(true, !global0.b.x, func_4(0i, global0.a), true && !global0.b.x)));
}

