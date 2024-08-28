struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    let var_1 = Struct_1(arg_0.a, false, _wgslsmith_f_op_vec2_f32(-arg_0.c));
    global1 = arg_0;
    var var_2 = firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, abs(_wgslsmith_sub_u32(4294967295u, 0u)), ~4294967295u, 4294967295u)));
    var var_3 = reverseBits(_wgslsmith_mod_u32(~var_1.a, u_input.c));
    return ~abs(global1.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = select(select(!vec4<bool>(arg_0.b, true, false, arg_1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.b, arg_2.b, false, true), select(!vec4<bool>(arg_0.b, true, true, false), vec4<bool>(arg_1.x, arg_0.b, global1.b, false), arg_1.x || true)), vec4<bool>(!arg_2.b, false, _wgslsmith_div_f32(-1000f, 762f) > _wgslsmith_f_op_f32(min(arg_0.c.x, 1423f)), arg_0.b)), select(vec4<bool>(arg_0.c.x < global1.c.x, global1.b, true, true), vec4<bool>(~(-2147483647i) > _wgslsmith_mult_i32(1i, u_input.d), _wgslsmith_f_op_f32(global1.c.x + -297f) > _wgslsmith_f_op_f32(-arg_0.c.x), global1.b, false & (arg_3 >= 1i)), func_3(Struct_1(1u, true, arg_2.c)) == 28831u), arg_2.b);
    var var_1 = vec4<f32>(-188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_2.c.x, _wgslsmith_f_op_f32(-global1.c.x))))) * -628f), -1254f);
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.c.x)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * -877f), _wgslsmith_f_op_f32(exp2(global1.c.x)))))));
    let var_2 = -(vec4<i32>(-1i) * -vec4<i32>(arg_3, u_input.b, arg_3, ~(-6620i)));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(-910f + -849f), -2232f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -566f), 262f)))))));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = arg_2;
    global0 = -2147483647i;
    var var_1 = vec4<bool>(func_2(func_2(Struct_1(1u, true, var_0.c), vec2<bool>(arg_1, arg_1), arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -34339i), vec2<i32>(0i, 2147483647i))), vec2<bool>(any(vec3<bool>(false, false, false)), true), func_2(func_2(Struct_1(var_0.a, true, vec2<f32>(167f, global1.c.x)), vec2<bool>(arg_2.b, true), var_0, u_input.a), vec2<bool>(true, true), var_0, 0i), u_input.a).b == true, !(!(false == !var_0.b)), any(select(select(select(vec4<bool>(false, true, arg_2.b, arg_1), vec4<bool>(true, arg_2.b, arg_1, var_0.b), vec4<bool>(false, arg_1, false, true)), vec4<bool>(arg_1, true, arg_2.b, arg_1), !arg_1), !select(vec4<bool>(arg_2.b, true, arg_2.b, false), vec4<bool>(arg_2.b, arg_2.b, false, arg_1), true), u_input.c <= arg_2.a)), min(reverseBits(u_input.c) >> (_wgslsmith_div_u32(u_input.c, global1.a) % 32u), u_input.c) > ~0u);
    let var_2 = vec3<u32>(arg_0, (var_0.a << (arg_0 % 32u)) << (~u_input.c % 32u), func_2(func_2(arg_2, vec2<bool>(true, true), Struct_1(arg_0, true, vec2<f32>(global1.c.x, var_0.c.x)), u_input.b), !select(!var_1.zw, !vec2<bool>(true, global1.b), var_1.x), var_0, max(min(_wgslsmith_clamp_i32(u_input.a, u_input.d, u_input.d), -65282i), -85031i)).a);
    let var_3 = true;
    return true;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = u_input.e;
    var var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~global1.a, abs(4294967295u)), _wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, 2672u), vec2<u32>(1u, 12801u), global1.b), vec2<u32>(29533u, global1.a))), 4294967295u);
    let var_2 = vec4<bool>(true, !(all(!vec4<bool>(global1.b, global1.b, true, false)) & func_4(~u_input.c, 413f < global1.c.x, func_2(Struct_1(0u, false, vec2<f32>(global1.c.x, 776f)), vec2<bool>(false, true), Struct_1(21637u, false, vec2<f32>(global1.c.x, global1.c.x)), 1i), vec4<f32>(-228f, -1000f, global1.c.x, -111f))), true, false);
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(max(_wgslsmith_mult_i32(arg_0, 1i), var_0 << (33336u % 32u)), countOneBits(u_input.b));
    var var_4 = func_2(Struct_1(~var_1.x << (0u % 32u), true && (0u != u_input.c), _wgslsmith_f_op_vec2_f32(exp2(global1.c))), !(!var_2.zx), func_2(func_2(Struct_1(1u, global1.b, _wgslsmith_f_op_vec2_f32(global1.c * global1.c)), !vec2<bool>(false, global1.b), Struct_1(countOneBits(var_1.x), var_2.x == true, vec2<f32>(global1.c.x, global1.c.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(1i, 22265i))), select(select(vec2<bool>(false, var_2.x), vec2<bool>(true, true), !var_2.wx), var_2.yy, true), func_2(func_2(Struct_1(global1.a, var_2.x, global1.c), !var_2.zz, func_2(Struct_1(global1.a, var_2.x, vec2<f32>(-963f, global1.c.x)), var_2.ww, Struct_1(global1.a, var_2.x, global1.c), -9967i), select(arg_0, -2147483647i, global1.b)), select(select(var_2.zz, vec2<bool>(true, false), global1.b), !var_2.zy, vec2<bool>(false, true)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 1u), vec2<u32>(0u, 1u)), global1.c.x >= -615f, vec2<f32>(global1.c.x, global1.c.x)), ~arg_0), select(abs(21140i), reverseBits(arg_0), func_4(var_1.x, all(var_2.zyx), func_2(Struct_1(43807u, global1.b, global1.c), vec2<bool>(var_2.x, false), Struct_1(124761u, true, vec2<f32>(-2374f, global1.c.x)), -16564i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, global1.c.x, -539f, -481f) - vec4<f32>(global1.c.x, global1.c.x, 1560f, global1.c.x))))), _wgslsmith_div_i32(~_wgslsmith_div_i32(var_3.x, u_input.e), arg_0));
    return global1.a == firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 0u, 1u, u_input.c), vec4<u32>(6156u, global1.a, 0u, u_input.c)), abs(~global1.a)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = -1i;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(1u, 0u, 15303u), ~var_0.a) >> (abs(~(vec2<u32>(u_input.c, var_0.a) | vec2<u32>(var_0.a, var_0.a))) % vec2<u32>(32u)), ~vec2<u32>(arg_2.a, abs(arg_1)));
    var var_3 = func_2(func_2(func_2(Struct_1(0u, false, _wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(964f, var_0.c.x))), vec2<bool>(false, global1.c.x > var_0.c.x), func_2(var_0, select(vec2<bool>(var_0.b, false), vec2<bool>(global1.b, false), false), Struct_1(44695u, false, vec2<f32>(-1525f, 657f)), _wgslsmith_clamp_i32(var_1, u_input.d, u_input.b)), select(countOneBits(var_1), -var_1, arg_0)), select(!(!vec2<bool>(var_0.b, false)), !select(vec2<bool>(true, arg_0), vec2<bool>(global1.b, global1.b), vec2<bool>(true, arg_0)), true), arg_2, 13176i), vec2<bool>(false, arg_2.b), var_0, _wgslsmith_mult_i32(u_input.a, -2147483647i));
    var var_4 = vec4<bool>(!(!(select(var_1, u_input.b, true) <= (var_1 >> (arg_2.a % 32u)))), func_4(40847u, u_input.e > (~var_1 & abs(-41769i)), var_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c.x, global1.c.x, var_0.b))), _wgslsmith_f_op_f32(round(963f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-354f - var_3.c.x))))), min(u_input.c, _wgslsmith_add_u32(u_input.c, var_0.a) >> (_wgslsmith_add_u32(4294967295u, var_0.a) % 32u)) > _wgslsmith_mod_u32(global1.a, ~(20688u ^ u_input.c)), !all(vec2<bool>(!var_3.b, false)));
    return Struct_1(36590u, arg_0, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(select(global1.b, func_1(_wgslsmith_mod_i32(0i, -73403i)) && true, any(vec3<bool>(true, true & global1.b, true))), global1.a, Struct_1(~firstTrailingBit(global1.a | 0u), any(!vec4<bool>(true, global1.b, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(433f, -562f), vec2<f32>(global1.c.x, global1.c.x)))))));
    var var_0 = u_input.c;
    let var_1 = Struct_1((_wgslsmith_sub_u32(~0u, 10127u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(global1.a, global1.a)) % 32u)) | (~func_3(Struct_1(1u, global1.b, vec2<f32>(418f, -450f))) | ~(32388u >> (global1.a % 32u))), func_4(~4294967295u, func_2(Struct_1(14622u, global1.b && false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x))), vec2<bool>(!global1.b, select(global1.b, global1.b, true)), Struct_1(4294967295u, global1.c.x < -656f, _wgslsmith_f_op_vec2_f32(-global1.c)), u_input.a).b, func_5(global1.b, 0u, Struct_1(u_input.c, func_2(Struct_1(5431u, global1.b, global1.c), vec2<bool>(global1.b, global1.b), Struct_1(global1.a, true, vec2<f32>(global1.c.x, 1094f)), 16471i).b, _wgslsmith_f_op_vec2_f32(global1.c - global1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, 374f, global1.c.x, -1140f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-283f, -367f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)))));
    var var_2 = func_5(true, ~_wgslsmith_div_u32(~39904u, ~0u), Struct_1(~49051u, var_1.b, func_2(var_1, !select(vec2<bool>(var_1.b, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, false)), Struct_1(1344u, !global1.b, vec2<f32>(var_1.c.x, 1000f)), -u_input.a).c)).b;
    var_0 = var_1.a;
    var var_3 = u_input.a;
    global1 = var_1;
    global1 = Struct_1(29186u << (_wgslsmith_div_u32(110u, 10025u) % 32u), all(!vec3<bool>(!global1.b, true, any(vec4<bool>(var_1.b, global1.b, false, global1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.c)), var_1.c), vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(select(1156f, 1679f, global1.b)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1311f, _wgslsmith_div_f32(global1.c.x, -467f)))));
    let var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(-31627i, u_input.d, u_input.e) | abs(vec3<i32>(-2147483647i, 0i, u_input.a))), min(-(~vec3<i32>(1i, -4337i, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 13830i), vec3<i32>(u_input.d, 1i, u_input.b)) | -vec3<i32>(-2147483647i, u_input.d, u_input.e))), func_2(func_5(_wgslsmith_f_op_f32(2017f - var_1.c.x) == _wgslsmith_f_op_f32(756f * global1.c.x), ~func_3(var_1), func_2(func_5(false, u_input.c, Struct_1(4294967295u, global1.b, vec2<f32>(-595f, 264f))), select(vec2<bool>(true, global1.b), vec2<bool>(var_1.b, false), vec2<bool>(true, true)), func_5(global1.b, 31453u, var_1), _wgslsmith_clamp_i32(32973i, 28079i, u_input.b))), vec2<bool>(true, !any(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b))), Struct_1(~0u, var_1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, 577f), vec2<f32>(var_1.c.x, global1.c.x)), var_1.c))), firstTrailingBit(~u_input.b)).c);
}

