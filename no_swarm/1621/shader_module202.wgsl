struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.x)) * -1917f), _wgslsmith_f_op_f32(floor(-145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - arg_0.a.x))), ~_wgslsmith_dot_vec2_u32(~u_input.b.zy, max(vec2<u32>(65614u, 1u) & vec2<u32>(u_input.b.x, 73651u), firstTrailingBit(vec2<u32>(2818u, 4294967295u)))), vec3<bool>(true, any(global0.zw), true));
    var var_1 = select(vec3<u32>(578u, 4294967295u, arg_1.b), u_input.b.zzw, false);
    let var_2 = u_input.d;
    let var_3 = arg_0;
    global0 = select(vec4<bool>(arg_1.c.x, arg_1.c.x, ~arg_1.b >= arg_0.b, arg_0.c.x), select(vec4<bool>(any(vec2<bool>(var_0.c.x, false)), any(vec4<bool>(global0.x, true, global0.x, arg_0.c.x)) && false, false, true), select(select(!vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(true, arg_1.c.x, global0.x, arg_0.c.x), arg_0.c.x), select(vec4<bool>(true, false, false, false), select(vec4<bool>(arg_1.c.x, true, false, var_0.c.x), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.c.x, var_3.c.x, false, false)), global0.x), !select(vec4<bool>(true, var_3.c.x, true, global0.x), vec4<bool>(var_0.c.x, true, global0.x, var_0.c.x), vec4<bool>(false, false, false, false))), !(_wgslsmith_clamp_u32(4294967295u, 42999u, arg_1.b) < ~32294u)), true);
    return _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.b, var_0.b, 70929u), u_input.b) | ~u_input.b), 13612u);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: i32) -> bool {
    var var_0 = arg_2.x;
    global0 = select(vec4<bool>(arg_2.x, arg_2.x, arg_0 == -1406f, global0.x), !select(select(!vec4<bool>(true, arg_2.x, true, false), !vec4<bool>(true, arg_2.x, arg_2.x, false), u_input.a.x > arg_3), vec4<bool>(select(global0.x, false, false), any(vec4<bool>(global0.x, arg_2.x, true, global0.x)), true, arg_2.x), vec4<bool>(!global0.x, false | global0.x, any(global0.yx), true & global0.x)), select(!vec4<bool>(arg_2.x, false || arg_2.x, arg_2.x, 1000f >= arg_1.x), !select(select(vec4<bool>(false, global0.x, arg_2.x, global0.x), vec4<bool>(arg_2.x, false, false, global0.x), vec4<bool>(arg_2.x, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, true)), !vec4<bool>(arg_2.x, global0.x, arg_2.x, arg_2.x)), all(!arg_2.yx)));
    let var_1 = min(_wgslsmith_div_vec2_i32(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(4005i, arg_3), vec2<i32>(arg_3, arg_3))), ~vec2<i32>(select(arg_3, -36090i, false), 0i)), u_input.a);
    return any(vec3<bool>(_wgslsmith_mult_u32(1u, 4551u) < ~u_input.d, select(true, false, global0.x || global0.x), !arg_2.x)) || !global0.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> vec4<bool> {
    global0 = select(vec4<bool>(all(!select(vec4<bool>(arg_2.x, true, global0.x, arg_0.c.x), vec4<bool>(global0.x, arg_2.x, true, arg_0.c.x), true)), true, false, false), vec4<bool>(true, !(countOneBits(71853u) > (1u << (arg_1 % 32u))), true, true || !(!global0.x)), vec4<bool>(false, true, func_4(_wgslsmith_f_op_f32(ceil(187f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.a.yw, arg_0.a.xw)) - arg_0.a.wx), global0.xxy, u_input.c >> (func_3(Struct_1(vec4<f32>(arg_0.a.x, 300f, arg_0.a.x, -487f), 4294967295u, arg_0.c), Struct_1(arg_0.a, 0u, global0.xzz), u_input.e, arg_0.a) % 32u)), -2147483647i < _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, -47485i), _wgslsmith_mod_i32(-2286i, u_input.c))));
    var var_0 = vec2<bool>(!(true || global0.x), (1u << (firstTrailingBit(~arg_0.b) % 32u)) == 0u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(trunc(-1165f)), arg_0.a.x);
    global0 = vec4<bool>(var_0.x, true, var_0.x, false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)), abs(arg_0.b), vec3<bool>(any(select(arg_2, arg_2, !vec2<bool>(global0.x, global0.x))), all(select(select(vec4<bool>(true, var_0.x, arg_2.x, true), vec4<bool>(false, arg_2.x, true, true), arg_0.c.x), vec4<bool>(true, global0.x, arg_2.x, global0.x), any(global0.yxz))), false));
    return select(vec4<bool>(select(!global0.x && false, true, true), ~(~arg_0.b) > _wgslsmith_mult_u32(~var_2.b, ~arg_0.b), all(var_2.c.xx), !global0.x), select(select(select(!vec4<bool>(arg_2.x, arg_0.c.x, false, arg_2.x), select(vec4<bool>(false, true, arg_2.x, global0.x), vec4<bool>(var_2.c.x, false, true, var_0.x), vec4<bool>(var_2.c.x, arg_0.c.x, var_0.x, arg_0.c.x)), !global0.x), select(!vec4<bool>(var_2.c.x, global0.x, false, arg_2.x), !vec4<bool>(arg_0.c.x, arg_0.c.x, false, global0.x), select(true, false, true)), arg_2.x), !vec4<bool>(any(vec4<bool>(true, arg_0.c.x, false, false)), true, !arg_2.x, func_4(arg_0.a.x, arg_0.a.wy, arg_0.c, u_input.c)), vec4<bool>(all(select(vec4<bool>(var_2.c.x, true, var_2.c.x, false), vec4<bool>(false, false, false, true), arg_2.x)), min(u_input.c, 1i) != 1i, arg_2.x, arg_0.c.x)), true);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(349f, 113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-553f)) - 952f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1209f))))))), arg_1, select(global0.yzw, global0.yzy, vec3<bool>(false, func_3(Struct_1(vec4<f32>(-1000f, -1201f, 646f, 2600f), u_input.d, vec3<bool>(false, false, arg_0)), Struct_1(vec4<f32>(315f, -1185f, -1932f, 2144f), 4294967295u, global0.zxx), u_input.a.x, vec4<f32>(-497f, -763f, -1000f, 1632f)) > countOneBits(1u), arg_0)));
    global0 = vec4<bool>(false, (u_input.c | ~u_input.a.x) == (_wgslsmith_mult_i32(7932i, 0i) << (min(31787u, 1u) % 32u)), true, arg_1 <= arg_1);
    var_0 = Struct_1(var_0.a, select(arg_2.x, 82552u, !func_2(Struct_1(var_0.a, 36938u, var_0.c), var_0.b, func_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 583f, -965f), 1u, vec3<bool>(arg_0, arg_3, var_0.c.x)), var_0.b, vec2<bool>(false, true)).xy).x), global0.wxx);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * 547f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(943f * -571f)))), 982f, var_0.a.x);
    let var_2 = _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(~abs(4294967295u), min(func_3(Struct_1(vec4<f32>(980f, -471f, var_0.a.x, var_0.a.x), arg_2.x, var_0.c), Struct_1(vec4<f32>(1650f, var_0.a.x, -369f, 1458f), var_0.b, global0.yzw), u_input.e, vec4<f32>(1225f, var_1.x, -555f, -1209f)), u_input.b.x)), select(var_0.b, arg_1, false), select((arg_2.x | u_input.b.x) <= 20711u, false, !global0.x)), func_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), _wgslsmith_f_op_vec4_f32(-var_0.a)), min(45774u, 4294967295u) ^ u_input.b.x, vec3<bool>(!var_0.c.x, false, !arg_3)), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a)), vec4<f32>(var_1.x, -605f, -2109f, var_1.x))), max(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, arg_1, 23405u, 1u)), abs(arg_2.x)), vec3<bool>(true, true, true)), _wgslsmith_add_i32(2147483647i & _wgslsmith_mod_i32(-49533i, u_input.c), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1843f), _wgslsmith_f_op_f32(sign(-195f)), _wgslsmith_f_op_f32(max(484f, -845f)), _wgslsmith_div_f32(-778f, var_0.a.x)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(362f, _wgslsmith_div_f32(var_1.x, var_1.x), var_0.a.x, -896f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.a)))))), countOneBits(_wgslsmith_add_u32(u_input.d, u_input.d)), select(!vec3<bool>(false, all(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x)), true), vec3<bool>(true, !arg_0 == true, true), func_2(Struct_1(var_0.a, 4294967295u, global0.wxx), func_3(Struct_1(vec4<f32>(-981f, -363f, 492f, 188f), arg_1, vec3<bool>(arg_3, var_0.c.x, global0.x)), Struct_1(vec4<f32>(var_0.a.x, var_1.x, 940f, var_0.a.x), 4294967295u, vec3<bool>(true, false, arg_3)), -u_input.e, _wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(var_0.a.x, -1189f, -1278f, var_0.a.x))), global0.wz).zyy));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0.a.wx;
    let var_1 = (((~u_input.e >= -13466i) | any(vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x))) != all(func_2(func_5(true, 76741u, u_input.b.ww, false), ~1u, !global0.zz).yxy)) | !all(!vec4<bool>(true, arg_0.c.x, arg_2, arg_2));
    let var_2 = Struct_1(arg_0.a, 65542u, !arg_0.c);
    global0 = vec4<bool>(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-927f + arg_0.a.x))) > _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x))), false, true, false);
    var_0 = arg_0.a.zy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-868f, arg_0.a.x))), -359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f * var_0.x) * _wgslsmith_f_op_f32(-var_2.a.x)), 1543f)), _wgslsmith_add_u32(min(0u, arg_0.b) ^ (countOneBits(arg_0.b) >> (53230u % 32u)), 0u), vec3<bool>(!var_2.c.x | false, arg_0.c.x, var_2.c.x));
}

fn func_1() -> i32 {
    var var_0 = func_6(func_5(any(func_2(Struct_1(vec4<f32>(926f, 2617f, 1239f, 2089f), 0u, global0.yzw), 1u, global0.yz)) | true, 1u, abs(u_input.b.yz), true), ~_wgslsmith_clamp_u32(u_input.b.x, u_input.d, ~u_input.b.x), true == global0.x);
    let var_1 = Struct_1(var_0.a, var_0.b, func_5(false, 0u, vec2<u32>(u_input.b.x, ~4294967295u), ~(~4294967295u) <= ~u_input.d).c);
    var var_2 = max(-980i, 1i);
    var var_3 = true;
    var var_4 = ~(~30031i ^ ~(u_input.e << (4464u % 32u))) >> (~(~select(u_input.b.x, 4294967295u, true)) % 32u);
    return -_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), -2147483647i, -(u_input.a.x & u_input.a.x), u_input.a.x), vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 0i >> ((9723u | var_1.b) % 32u), -2147483647i, u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~(u_input.c ^ 2147483647i), -4368i), u_input.e, func_1()), -(~firstTrailingBit(vec3<i32>(-30442i, -32701i, u_input.a.x))), firstTrailingBit(vec3<i32>(u_input.c >> ((u_input.d & 1u) % 32u), u_input.a.x, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(17220u, u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_u32(u_input.b.ywx, vec3<u32>(50041u, u_input.d, 0u))), ~u_input.d >> (u_input.d % 32u))));
}

