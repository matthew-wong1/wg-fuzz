struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    global1 = Struct_5(global1.a, vec4<u32>(global1.e.x, 0u, u_input.a, global1.e.x), vec3<f32>(_wgslsmith_div_f32(global1.c.x, -529f), _wgslsmith_f_op_f32(sign(global1.c.x)), global1.c.x), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(38129i, u_input.b), _wgslsmith_mult_i32(-32406i, global1.d)) & ~38520i, vec4<u32>(global1.e.x, _wgslsmith_add_u32(12558u, u_input.a), ~arg_0.x, arg_0.x));
    global1 = Struct_5(!vec4<bool>(~20116u <= countOneBits(global1.b.x), !global1.a.x, global1.a.x, true & (global1.a.x && global1.a.x)), ~(max(vec4<u32>(arg_0.x, global1.e.x, global1.e.x, 0u), ~vec4<u32>(arg_0.x, u_input.c.x, global1.e.x, arg_0.x)) << (_wgslsmith_add_vec4_u32(~global1.b, abs(vec4<u32>(4294967295u, u_input.a, u_input.c.x, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, global1.c.x) * vec3<f32>(-445f, -1081f, global1.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, global1.c.x, -1089f) + _wgslsmith_div_vec3_f32(global1.c, vec3<f32>(arg_1.x, -212f, -977f)))), global1.c, global1.a.yxw)), -44447i, vec4<u32>(u_input.e, ~arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(18494u, u_input.e, global1.e.x, 8951u), vec4<u32>(129948u, u_input.e, 42525u, 29070u)), _wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(arg_0.x, global1.b.x, 40332u, 40589u), global1.e)), vec4<u32>(arg_0.x, arg_0.x, 29535u, 0u) & ~vec4<u32>(u_input.a, arg_0.x, global1.b.x, global1.e.x)), 4294967295u));
    let var_0 = Struct_4(_wgslsmith_mult_u32(u_input.e, ~firstLeadingBit(29434u)), Struct_1(!(!(!vec3<bool>(false, global1.a.x, global1.a.x)))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(min(0u, arg_0.x), 4294967295u, select(1u, u_input.a, true)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, u_input.a), u_input.c), u_input.c) % 32u), u_input.c.x));
    global1 = Struct_5(vec4<bool>(!((global1.c.x != -1840f) && all(vec3<bool>(false, var_0.b.a.x, false))), global1.a.x & (all(global1.a.wwy) | all(vec2<bool>(false, false))), all(select(select(global1.a.wz, vec2<bool>(var_0.b.a.x, global1.a.x), var_0.b.a.x), !vec2<bool>(global1.a.x, var_0.b.a.x), !var_0.b.a.xx)), global1.a.x), vec4<u32>(~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(34552u, var_0.c)), ~4294967295u, global1.e.x, _wgslsmith_mult_u32(~firstTrailingBit(4294967295u), 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c.x, 1801f, arg_1.x), _wgslsmith_f_op_vec3_f32(global1.c * global1.c))), global1.a.yzz))), global1.d, vec4<u32>(~35125u, 27662u, 0u, ~(~reverseBits(var_0.c))));
    var var_1 = vec2<bool>(true, global1.a.x);
    return global1.a;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(global1.a.wwy);
    global1 = Struct_5(select(select(select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), select(global1.a, global1.a, global1.a.x), vec4<bool>(false, true, false, false)), select(vec4<bool>(var_0.a.x, var_0.a.x, global1.a.x, var_0.a.x), select(vec4<bool>(false, true, var_0.a.x, true), global1.a, var_0.a.x), select(var_0.a.x, var_0.a.x, true)), select(!vec4<bool>(false, false, var_0.a.x, true), func_3(global1.b.xz, vec2<f32>(635f, global1.c.x)), global1.a)), select(vec4<bool>(global1.d < -2147483647i, global1.a.x, global1.a.x, false), select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), global1.a, global1.a), all(vec3<bool>(var_0.a.x, var_0.a.x, false))), var_0.a.x), ~(~global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, global1.c.x, 450f)))), countOneBits(global1.d | (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, global1.d), vec3<i32>(-1i, 0i, global1.d)) << (select(u_input.c.x, global1.b.x, global1.a.x) % 32u))), firstLeadingBit(countOneBits(global1.e << (global1.b % vec4<u32>(32u)))) | vec4<u32>(14680u, 0u, abs(global1.e.x), global1.e.x));
    global1 = Struct_5(select(!global1.a, global1.a, all(vec4<bool>(u_input.d > global1.d, all(vec3<bool>(var_0.a.x, true, true)), !global1.a.x, var_0.a.x | true))), firstLeadingBit(~global1.e), _wgslsmith_f_op_vec3_f32(select(global1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -355f, _wgslsmith_f_op_f32(max(244f, global1.c.x))) * vec3<f32>(_wgslsmith_f_op_f32(1298f * global1.c.x), _wgslsmith_f_op_f32(abs(-145f)), _wgslsmith_f_op_f32(round(global1.c.x)))), !global1.a.zwz)), select(1602i, -1i, !var_0.a.x) << (max(~min(global1.b.x, global1.b.x), global1.e.x & u_input.a) % 32u), global1.b | ~vec4<u32>(u_input.a, ~u_input.c.x, _wgslsmith_dot_vec3_u32(global1.b.xzy, vec3<u32>(58310u, 4294967295u, 0u)), 4294967295u));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.e), max(u_input.c.x, global1.e.x), _wgslsmith_add_u32(global1.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, global1.b.x, 56558u), global1.b.yyw)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 121320u, u_input.c.x), abs(global1.e))) << (_wgslsmith_sub_u32(13826u, 1u) % 32u), 28u)], Struct_1(vec3<bool>(true, global1.a.x, !(true || global1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - 796f)), 410f), !(!func_3(select(global1.b.xx, vec2<u32>(18326u, global1.b.x), false), _wgslsmith_div_vec2_f32(global1.c.zx, global1.c.zy)).wxz), Struct_1(vec3<bool>(!(global1.c.x > global1.c.x), true, true)));
    var var_2 = Struct_5(global1.a, global1.e ^ ~(global1.e ^ (vec4<u32>(u_input.a, 52533u, global1.b.x, 1u) ^ vec4<u32>(1u, 1u, 5095u, 1496u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + global1.c) * vec3<f32>(1717f, global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1900f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.c, vec3<f32>(global1.c.x, -2116f, var_1.c))))), 1i, ~(~vec4<u32>(u_input.c.x << (375u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.e.x, global1.b.x, 4294967295u), global1.e), 4294967295u, 28244u)));
    return Struct_3(_wgslsmith_sub_u32(63510u, u_input.e));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_i32(-(reverseBits(vec4<i32>(u_input.b, global1.d, global1.d, global1.d)) | min(vec4<i32>(-1i, -1i, -20793i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global1.d, 26513i, -11565i), vec4<i32>(2147483647i, u_input.b, -7647i, -72541i)))), _wgslsmith_add_vec4_i32(select(select(vec4<i32>(-36434i, global1.d, -77624i, 50310i), vec4<i32>(global1.d, global1.d, u_input.d, 1i), global1.a) << (global1.b % vec4<u32>(32u)), vec4<i32>(26633i, -1i, 1i, 1i) ^ -vec4<i32>(global1.d, 0i, 0i, 25316i), !global1.a), vec4<i32>(-1i) * -max(vec4<i32>(27664i, 2147483647i, global1.d, 0i), vec4<i32>(-13998i, global1.d, 2147483647i, 0i))));
    global0 = array<Struct_1, 28>();
    global1 = Struct_5(!(!global1.a), global1.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.c.x, -1904f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -521f, global1.c.x))) - _wgslsmith_f_op_vec3_f32(exp2(global1.c)))), -_wgslsmith_div_i32(global1.d, 14996i), ~(~firstTrailingBit(global1.b)));
    let var_1 = func_2();
    var var_2 = Struct_5(func_3(~(~(~global1.b.yz)), vec2<f32>(_wgslsmith_f_op_f32(-1091f - global1.c.x), _wgslsmith_f_op_f32(-global1.c.x))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, var_1.a), ~var_1.a), global1.b.x, ~(~2417u), _wgslsmith_add_u32(global1.e.x, 4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-1220f * _wgslsmith_f_op_f32(-global1.c.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f))), firstLeadingBit(_wgslsmith_mod_i32(firstTrailingBit(countOneBits(global1.d)), -_wgslsmith_mult_i32(-28021i, var_0.x))), global1.b);
    return global0[_wgslsmith_index_u32(var_2.e.x, 28u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: f32) -> Struct_5 {
    var var_0 = func_1(Struct_3(u_input.a)).a.yz;
    let var_1 = reverseBits(u_input.e);
    let var_2 = arg_0;
    var var_3 = arg_2;
    let var_4 = arg_1.x;
    return Struct_5(select(!(!select(arg_2.a, vec4<bool>(arg_0.a.a.x, true, global1.a.x, var_4), arg_2.a.x)), vec4<bool>(!any(vec4<bool>(false, true, false, true)), all(func_3(global1.b.zw, vec2<f32>(476f, -439f))), !global1.a.x, var_0.x), select(global1.a, select(!arg_2.a, global1.a, !vec4<bool>(false, global1.a.x, false, false)), !vec4<bool>(var_3.a.x, arg_1.x, true, var_0.x))), ~(~vec4<u32>(func_2().a, _wgslsmith_mod_u32(var_3.b.x, var_1), _wgslsmith_mod_u32(var_3.e.x, var_3.e.x), 0u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, -515f, -338f)))))), -590i, vec4<u32>(abs(var_3.e.x), ~(_wgslsmith_div_u32(1u, 1u) ^ min(u_input.c.x, u_input.c.x)), var_1, firstLeadingBit(_wgslsmith_clamp_u32(max(87351u, arg_2.e.x), ~119325u, select(var_3.e.x, 16984u, false)))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global1.e, arg_0.e), arg_0.e)) & ~select(arg_1.a, 4294967295u, arg_0.a.x);
    global1 = func_4(Struct_2(func_1(arg_1), global0[_wgslsmith_index_u32(min(firstLeadingBit(arg_2), 0u), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1116f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-global1.c.x))), vec3<bool>(true, true, true), Struct_1(vec3<bool>(arg_3.x, arg_3.x, all(vec3<bool>(arg_3.x, arg_0.a.x, arg_3.x))))), !vec3<bool>(any(vec4<bool>(true, true, global1.a.x, true)), (global1.a.x || false) != true, !all(vec2<bool>(global1.a.x, false))), Struct_5(select(arg_0.a, !(!vec4<bool>(arg_0.a.x, true, global1.a.x, global1.a.x)), ~0i > u_input.d), select(global1.e, vec4<u32>(_wgslsmith_sub_u32(arg_2, 22447u), 31998u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.e.x, 1u), global1.b.yy)), arg_3.x), global1.c, -2147483647i << (arg_2 % 32u), vec4<u32>(1480u, _wgslsmith_add_u32(arg_2, 0u), 10806u, 35346u)), global1.c.x);
    global1 = func_4(Struct_2(func_1(func_2()), global0[_wgslsmith_index_u32(abs(var_0 ^ firstLeadingBit(arg_2)), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-arg_0.c.x))), select(!global1.a.zyz, !arg_0.a.wwz, func_4(Struct_2(global0[_wgslsmith_index_u32(arg_1.a, 28u)], global0[_wgslsmith_index_u32(global1.b.x, 28u)], -426f, arg_0.a.wyx, global0[_wgslsmith_index_u32(global1.b.x, 28u)]), select(vec3<bool>(arg_0.a.x, true, global1.a.x), vec3<bool>(arg_0.a.x, true, arg_3.x), true), Struct_5(vec4<bool>(true, true, global1.a.x, true), vec4<u32>(arg_0.e.x, arg_2, arg_2, global1.b.x), global1.c, u_input.b, global1.e), _wgslsmith_f_op_f32(select(global1.c.x, 1000f, true))).a.zxy), func_1(arg_1)), !global1.a.ywz, arg_0, 1948f);
    var var_1 = max(abs(global1.b.x), ~(~u_input.c.x));
    let var_2 = Struct_5(!(!arg_0.a), arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c, global1.c), vec3<f32>(1601f, -2382f, global1.c.x)))), firstTrailingBit(min((global1.d >> (4750u % 32u)) >> (1u % 32u), _wgslsmith_mod_i32(arg_0.d, ~u_input.d))), global1.e | vec4<u32>(select(arg_2, ~0u, arg_3.x || arg_0.a.x), global1.e.x, func_2().a, 1u));
    return -256f;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, global1.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-208f * 780f), global1.c.x, arg_1, _wgslsmith_f_op_f32(trunc(global1.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 247f, -1000f, 938f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(169f, 518f, arg_1, global1.c.x)))))));
    var var_1 = _wgslsmith_f_op_f32(arg_1 + global1.c.x);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(~arg_3.a), ~_wgslsmith_mod_u32(global1.e.x, arg_3.a) << (~_wgslsmith_clamp_u32(global1.b.x, 0u, arg_3.a) % 32u)), u_input.c.zx);
    let var_3 = -vec3<i32>(u_input.b, ~2147483647i, 1i);
    let var_4 = Struct_2(Struct_1(vec3<bool>(true, all(!global1.a.wwy), true)), arg_2, -339f, vec3<bool>(!any(arg_2.a) && !(arg_2.a.x || true), true & any(func_3(u_input.c.yy, vec2<f32>(var_0.x, -338f)).zxx), true), func_1(Struct_3(_wgslsmith_clamp_u32(firstLeadingBit(arg_3.a), 15874u, ~0u))));
    return Struct_4(select(global1.b.x << (4294967295u % 32u), ~abs(arg_3.a) << (4294967295u % 32u), (global1.c.x != 565f) & (_wgslsmith_f_op_f32(func_5(Struct_5(global1.a, global1.b, var_0.wyx, 5667i, vec4<u32>(14634u, global1.e.x, u_input.e, arg_3.a)), Struct_3(global1.b.x), u_input.c.x, vec2<bool>(global1.a.x, arg_2.a.x))) > global1.c.x)), Struct_1(func_1(Struct_3(4294967295u)).a), ~firstTrailingBit(countOneBits(arg_3.a)) << (~(~countOneBits(global1.e.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(i32(-1i) * -global1.d, _wgslsmith_f_op_f32(func_5(func_4(Struct_2(Struct_1(global1.a.wyz), func_1(Struct_3(58279u)), -674f, !global1.a.wzz, global0[_wgslsmith_index_u32(u_input.e, 28u)]), func_3(vec2<u32>(u_input.a, 4294967295u), global1.c.yz).zwx, Struct_5(func_3(u_input.c.zz, global1.c.zy), global1.b, global1.c, u_input.b, abs(global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.x, 1367f, true)))), Struct_3(4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.e.yzy, vec3<u32>(u_input.e, global1.b.x, global1.b.x)), _wgslsmith_div_u32(reverseBits(26450u), func_2().a)), !(!(!global1.a.xy)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(73934u, 30690u), 28u)], func_2());
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(938f + global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, global1.c.x)))), func_4(Struct_2(func_1(func_2()), func_6(_wgslsmith_clamp_i32(-67455i, 14066i, global1.d), -1000f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(26676u, 0u, 64657u), 28u)], Struct_3(u_input.a)).b, global1.c.x, !(!vec3<bool>(true, var_0.b.a.x, var_0.b.a.x)), func_1(Struct_3(3092u))), var_0.b.a, Struct_5(global1.a, select(vec4<u32>(var_0.a, 61452u, 0u, var_0.a), min(global1.e, vec4<u32>(u_input.a, 0u, 52413u, 0u)), select(var_0.b.a.x, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, 1614f, global1.c.x), vec3<f32>(global1.c.x, global1.c.x, global1.c.x))), ~(global1.d ^ global1.d), global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.x)))).c.x, global1.c.x);
    global1 = Struct_5(vec4<bool>(false, all(global1.a.ywx), !any(vec3<bool>(true, global1.a.x, true)) & global1.a.x, true), global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(max(var_1.x, -731f)), 862f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.c))))), -2147483647i, global1.e);
    let var_2 = Struct_3(~105509u);
    var_1 = func_4(Struct_2(Struct_1(global1.a.zzw), global0[_wgslsmith_index_u32(abs(~(var_0.c & var_0.a)), 28u)], _wgslsmith_f_op_f32(f32(-1f) * -1191f), select(!global1.a.xzy, vec3<bool>(func_4(Struct_2(var_0.b, Struct_1(var_0.b.a), 191f, var_0.b.a, var_0.b), var_0.b.a, Struct_5(global1.a, global1.e, global1.c, -1i, vec4<u32>(1u, 56473u, var_0.c, global1.e.x)), var_1.x).a.x, true != var_0.b.a.x, all(global1.a.yw)), func_1(func_2()).a), var_0.b), !(!func_4(Struct_2(Struct_1(var_0.b.a), Struct_1(global1.a.yxy), 2231f, vec3<bool>(var_0.b.a.x, false, false), Struct_1(vec3<bool>(false, var_0.b.a.x, false))), vec3<bool>(false, true, true), Struct_5(global1.a, vec4<u32>(var_0.a, var_2.a, u_input.a, global1.e.x), global1.c, global1.d, global1.e), _wgslsmith_f_op_f32(112f * global1.c.x)).a.wwx), func_4(Struct_2(Struct_1(func_6(-2147483647i, 310f, global0[_wgslsmith_index_u32(global1.e.x, 28u)], var_2).b.a), var_0.b, _wgslsmith_f_op_f32(trunc(global1.c.x)), select(global1.a.ywy, !global1.a.zxx, var_0.b.a.x), global0[_wgslsmith_index_u32(~max(7721u, 33157u), 28u)]), !global1.a.wzx, func_4(Struct_2(Struct_1(vec3<bool>(false, global1.a.x, false)), global0[_wgslsmith_index_u32(~u_input.a, 28u)], _wgslsmith_f_op_f32(1099f * var_1.x), !vec3<bool>(true, false, global1.a.x), global0[_wgslsmith_index_u32(1u, 28u)]), func_4(Struct_2(global0[_wgslsmith_index_u32(u_input.e, 28u)], Struct_1(vec3<bool>(false, var_0.b.a.x, var_0.b.a.x)), -229f, vec3<bool>(true, global1.a.x, true), var_0.b), var_0.b.a, func_4(Struct_2(Struct_1(var_0.b.a), global0[_wgslsmith_index_u32(u_input.e, 28u)], var_1.x, vec3<bool>(false, true, true), Struct_1(global1.a.zwx)), vec3<bool>(var_0.b.a.x, var_0.b.a.x, global1.a.x), Struct_5(global1.a, vec4<u32>(var_0.c, 4596u, 21210u, 37333u), vec3<f32>(global1.c.x, global1.c.x, 1317f), u_input.d, global1.e), 1000f), 1688f).a.yyy, func_4(Struct_2(var_0.b, global0[_wgslsmith_index_u32(u_input.a, 28u)], global1.c.x, var_0.b.a, var_0.b), vec3<bool>(var_0.b.a.x, var_0.b.a.x, global1.a.x), func_4(Struct_2(var_0.b, Struct_1(var_0.b.a), 410f, vec3<bool>(global1.a.x, true, global1.a.x), var_0.b), var_0.b.a, Struct_5(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), global1.b, global1.c, global1.d, vec4<u32>(var_2.a, u_input.e, 0u, 0u)), 1000f), _wgslsmith_f_op_f32(var_1.x + 1000f)), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) + var_1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(706f, var_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-328f, var_1.x))))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(round(global1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_5(global1.a, vec4<u32>(1u, u_input.e, 4294967295u, 24102u), vec3<f32>(var_1.x, 345f, 1463f), -2147483647i, global1.b), var_2, u_input.e, vec2<bool>(true, var_0.b.a.x))) + _wgslsmith_f_op_f32(global1.c.x - var_1.x)), _wgslsmith_f_op_f32(-1000f + 786f)), func_6(u_input.b, -284f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.e, 4294967295u), 28u)], Struct_3(u_input.e)).b.a.xz)), abs(~min(var_0.c, 39937u ^ var_2.a)), vec2<i32>(-1166i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(countOneBits(u_input.b), 1i, 1976i), func_4(Struct_2(Struct_1(global1.a.xwy), Struct_1(vec3<bool>(var_0.b.a.x, true, var_0.b.a.x)), global1.c.x, vec3<bool>(true, global1.a.x, global1.a.x), global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(true, false, false), Struct_5(global1.a, global1.e, global1.c, 0i, vec4<u32>(4294967295u, global1.e.x, 4294967295u, 1u)), global1.c.x).d | 43922i, func_4(Struct_2(var_0.b, var_0.b, 418f, vec3<bool>(true, true, var_0.b.a.x), Struct_1(var_0.b.a)), var_0.b.a, func_4(Struct_2(Struct_1(global1.a.xwx), var_0.b, global1.c.x, var_0.b.a, Struct_1(global1.a.zzw)), global1.a.xxz, Struct_5(global1.a, vec4<u32>(1u, 108053u, 24467u, 3136u), vec3<f32>(1246f, 177f, -1627f), u_input.b, vec4<u32>(var_0.c, 30825u, 50382u, global1.e.x)), 311f), _wgslsmith_f_op_f32(-var_1.x)).d)));
}

