struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> bool {
    let var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(907f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-408f)))), u_input.b == u_input.a)));
    let var_2 = 3566u;
    var var_3 = (-arg_1 < arg_1) | true;
    var var_4 = vec4<i32>(~(-arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.x, ~(i32(-1i) * -8152i), ~1i, -50982i), vec4<i32>(-_wgslsmith_add_i32(global0.x, 0i), global0.x, 2147483647i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 7625i, arg_0.x), vec3<i32>(94332i, 0i, 2147483647i)), arg_1))), -1i, abs(arg_1));
    return !any(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec4<bool>(false, true, false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = u_input.a;
    let var_1 = Struct_2(firstTrailingBit(2147483647i), -22482i, false);
    var var_2 = vec3<bool>(all(arg_2.d), arg_2.d.x, var_1.c);
    var var_3 = ~vec3<u32>(7288u, 112005u ^ u_input.b, 0u) & vec3<u32>(min(u_input.b, _wgslsmith_mult_u32(u_input.b, 1u)) ^ _wgslsmith_mod_u32(u_input.b, u_input.b), 1u, u_input.a);
    let var_4 = var_2.x;
    return vec4<bool>(true && func_3(max(firstLeadingBit(vec3<i32>(arg_0.a, 2147483647i, arg_2.a)), -vec3<i32>(var_1.a, 2147483647i, arg_2.a)), firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -31943i))), !(!(arg_0.c && var_1.c)) & func_3(vec3<i32>(var_1.b, -8545i, reverseBits(var_1.a)), var_1.a), true, false);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(abs(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 12905i, -1i), vec3<i32>(arg_2.b, arg_2.a, 30354i)), vec3<i32>(-1i, -77878i, arg_2.b) << (vec3<u32>(u_input.a, arg_1.x, 17235u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_2.a, global0.x, arg_2.b), _wgslsmith_mod_vec3_i32(~vec3<i32>(79739i, global0.x, -1i), -vec3<i32>(27839i, global0.x, global0.x)))), _wgslsmith_f_op_f32(step(arg_3.b, -1083f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b))))), func_4(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - -164f) * _wgslsmith_f_op_f32(max(-692f, _wgslsmith_f_op_f32(164f - arg_0.b)))), Struct_1(global0.x, arg_0.b, _wgslsmith_div_f32(-1407f, arg_3.b), vec4<bool>(arg_0.a, func_3(vec3<i32>(0i, global0.x, 2147483647i), global0.x), arg_0.a | false, false), select(_wgslsmith_div_vec2_i32(global0.xx, global0.yy), global0.zz | vec2<i32>(0i, global0.x), !vec2<bool>(arg_2.c, arg_3.a)))), _wgslsmith_div_vec2_i32(~(global0.zy >> (arg_1 % vec2<u32>(32u))) | global0.zx, global0.yx));
    let var_1 = ~(-arg_2.b);
    global0 = vec3<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(20168i, 44465i)) ^ 1i)), max(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(66191i, -1i, arg_2.a, global0.x) ^ vec4<i32>(var_0.a, var_0.e.x, 0i, global0.x), vec4<i32>(arg_2.a, global0.x, 0i, -59916i))) << (arg_1.x % 32u), var_1);
    var var_2 = Struct_1(var_1, -439f, var_0.b, !(!vec4<bool>(arg_2.c, false, arg_3.a, true)), vec2<i32>(global0.x, ~var_1));
    global0 = ~(~vec3<i32>(0i, 55284i, -1i));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = select(select(!func_2(Struct_3(true, -957f), vec2<u32>(u_input.b, u_input.a), Struct_2(-2147483647i, 34524i, arg_0), Struct_3(arg_0, 1530f)).d.zzy, vec3<bool>(arg_1.d.x, any(!vec4<bool>(false, false, arg_0, arg_1.d.x)), arg_0), arg_0), !(!arg_1.d.xzx), select(!arg_1.d.x, false, false));
    var var_1 = arg_1;
    return arg_1.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(818f * -1662f), _wgslsmith_f_op_f32(func_5(arg_1, func_2(Struct_3(arg_0.x, -1019f), vec2<u32>(4294967295u, 18014u), Struct_2(global0.x, global0.x, arg_1), Struct_3(true, -896f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1090f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f + -154f) - 191f), _wgslsmith_f_op_f32(func_5(true, func_2(Struct_3(false, -863f), vec2<u32>(1u, 47196u), Struct_2(2147483647i, global0.x, true), Struct_3(false, -247f))))))), !(!func_2(Struct_3(arg_0.x, 534f), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 16584u), vec2<u32>(u_input.b, 67962u), vec2<u32>(u_input.a, u_input.b)), Struct_2(global0.x, global0.x, false), Struct_3(true, -385f)).d.x)));
    let var_0 = func_2(Struct_3(arg_1, _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(ceil(-772f)))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 33602u), vec2<u32>(0u, u_input.a)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a, u_input.b))) ^ vec2<u32>(~u_input.b ^ (u_input.a | 79307u), u_input.b), Struct_2(-44826i, 304i, all(arg_0.xw)), Struct_3(select(u_input.a >= 5139u, true, false) && (_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 0i, -246i, global0.x), vec4<i32>(global0.x, 1i, global0.x, global0.x)) < _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), global0.yz)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - -1433f))))));
    let var_1 = Struct_2(i32(-1i) * -5481i, 1i, 1u >= firstTrailingBit(1u));
    let var_2 = Struct_3(all(select(!var_0.d.yxz, !vec3<bool>(true, arg_0.x, var_1.c), true)), -588f);
    var var_3 = Struct_2(global0.x, max(var_1.b, var_1.a), any(var_0.d.wzz) | (func_2(var_2, ~vec2<u32>(40901u, u_input.b), var_1, var_2).d.x && !any(var_0.d.yxz)));
    return Struct_2(-(~(~var_1.a)), 1i, !(!(!var_1.c) == !(!var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(494f));
    let var_0 = countOneBits(vec2<u32>(~(~u_input.b), u_input.a));
    var var_1 = func_1(select(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, !any(vec2<bool>(false, false)), true, !(17843u > var_0.x))), all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = ((_wgslsmith_mod_u32(0u, 14127u) & var_0.x) << (countOneBits(~1u) % 32u)) | var_0.x;
    let var_3 = Struct_3(!var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)));
    let var_4 = vec2<f32>(1482f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.b, var_3.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b)))), _wgslsmith_f_op_f32(min(1628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - _wgslsmith_f_op_f32(round(194f))))))));
    var var_5 = func_2(var_3, _wgslsmith_add_vec2_u32(var_0, vec2<u32>(34947u, 1u)), func_1(vec4<bool>(var_3.a, var_1.c, false, (false == var_3.a) || false), true), var_3);
    let var_6 = Struct_1(1i, var_5.b, _wgslsmith_f_op_f32(-var_5.b), vec4<bool>(var_1.c, ((var_0.x != 4294967295u) && true) | !(!var_5.d.x), (2147483647i < ~var_5.a) & any(func_4(Struct_2(global0.x, 2147483647i, true), 2003f, Struct_1(-1i, var_5.b, 867f, vec4<bool>(false, var_3.a, false, true), vec2<i32>(var_1.b, 2147483647i)))), !(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_2, var_0.x, u_input.a), vec4<u32>(4294967295u, 51112u, 119000u, 32058u)) >= 1u)), max(firstLeadingBit(~var_5.e), var_5.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(34359u, 6492u, 82808u), -9370i, 4294967295u);
}

