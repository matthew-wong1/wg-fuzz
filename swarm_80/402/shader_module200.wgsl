struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = select(vec4<bool>(global0.b.x, true, 0u < ~arg_2.a.a.x, all(vec4<bool>(false, arg_0.b.x, true, global0.b.x != true))), select(select(select(vec4<bool>(true, false, arg_0.b.x, arg_3.b.x), select(vec4<bool>(true, arg_2.a.b.b.x, false, arg_3.b.x), vec4<bool>(global0.b.x, global0.b.x, arg_2.c.b.b.x, true), true), select(vec4<bool>(true, arg_3.b.x, true, arg_0.b.x), vec4<bool>(false, false, global0.b.x, arg_0.b.x), vec4<bool>(arg_2.c.b.b.x, false, true, global0.b.x))), !(!vec4<bool>(arg_3.b.x, arg_0.b.x, false, arg_0.b.x)), !(!vec4<bool>(arg_2.a.b.b.x, true, false, arg_0.b.x))), select(!vec4<bool>(true, global0.b.x, global0.b.x, true), !select(vec4<bool>(arg_2.a.b.b.x, arg_0.b.x, false, arg_2.c.b.b.x), vec4<bool>(true, false, false, true), arg_0.b.x), vec4<bool>(!arg_2.c.b.b.x, any(vec3<bool>(true, false, false)), true, any(vec2<bool>(arg_3.b.x, arg_3.b.x)))), true), select(!(!vec4<bool>(global0.b.x, arg_0.b.x, false, true)), select(select(select(vec4<bool>(global0.b.x, true, global0.b.x, false), vec4<bool>(true, arg_2.c.b.b.x, false, arg_3.b.x), vec4<bool>(global0.b.x, false, false, false)), vec4<bool>(global0.b.x, global0.b.x, arg_2.a.b.b.x, true), -1523f <= arg_1.x), vec4<bool>(arg_2.a.b.b.x, true, true, false), !select(vec4<bool>(arg_0.b.x, true, arg_2.a.b.b.x, false), vec4<bool>(false, false, false, arg_2.a.b.b.x), vec4<bool>(arg_0.b.x, global0.b.x, arg_2.c.b.b.x, arg_0.b.x))), vec4<bool>(true, select(arg_0.b.x, any(arg_0.b), -588f <= global0.a), any(vec2<bool>(true, arg_2.c.b.b.x)), false)));
    var_0 = select(!vec4<bool>(true, true, true, arg_3.b.x), vec4<bool>(false, !global0.b.x, -4413i <= (1i ^ firstLeadingBit(u_input.a)), 7400i >= _wgslsmith_mod_i32(-12475i, _wgslsmith_clamp_i32(u_input.a, u_input.b, -2147483647i))), all(select(vec4<bool>(true, any(vec4<bool>(global0.b.x, arg_3.b.x, arg_3.b.x, false)), all(arg_3.b), false), select(select(vec4<bool>(arg_2.a.b.b.x, true, arg_2.a.b.b.x, false), vec4<bool>(arg_0.b.x, true, true, arg_2.c.b.b.x), vec4<bool>(false, var_0.x, false, false)), !vec4<bool>(true, arg_2.a.b.b.x, false, arg_3.b.x), vec4<bool>(true, arg_2.c.b.b.x, arg_3.b.x, false)), select(select(vec4<bool>(var_0.x, true, global0.b.x, false), vec4<bool>(false, arg_0.b.x, arg_2.a.b.b.x, false), false), !vec4<bool>(false, arg_2.c.b.b.x, arg_2.c.b.b.x, true), !vec4<bool>(true, arg_0.b.x, false, arg_2.a.b.b.x)))));
    var var_1 = 4294967295u ^ _wgslsmith_div_u32(abs(~(18859u & arg_2.a.a.x)), 45131u);
    var var_2 = arg_3.a >= global0.a;
    let var_3 = max(~_wgslsmith_mult_i32(-1i, u_input.b), u_input.b);
    return ~select(u_input.a, countOneBits(_wgslsmith_div_i32(11746i, var_3)), ~(arg_2.a.a.x & arg_2.c.a.x) < (~5221u & _wgslsmith_dot_vec4_u32(arg_2.b, arg_2.b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>) -> bool {
    let var_0 = ~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 30277u, 1u) << (firstTrailingBit(vec3<u32>(1u, 0u, arg_1.x)) % vec3<u32>(32u)), reverseBits(vec3<u32>(arg_1.x, 4294967295u, arg_1.x))));
    global0 = Struct_1(459f, vec3<bool>(true, true, !select(!global0.b.x, all(vec3<bool>(true, global0.b.x, global0.b.x)), u_input.b != -2147483647i)));
    var var_1 = Struct_4(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(abs(u_input.a), u_input.a), func_3(Struct_1(-1000f, global0.b), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(629f, arg_0.x))), Struct_3(Struct_2(vec4<u32>(arg_1.x, var_0.x, 0u, 1u), Struct_1(arg_0.x, global0.b)), vec4<u32>(4294967295u, 67548u, var_0.x, 111365u), Struct_2(vec4<u32>(41371u, var_0.x, 0u, 14288u), Struct_1(1149f, global0.b))), Struct_1(-1000f, global0.b)))), Struct_2(vec4<u32>(0u, abs(arg_1.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~var_0.x), ~(~var_0.x)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(163f, 572f, false)))), global0.b)), global0.b.zx, vec4<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, -16322i)) | ~vec2<i32>(-54132i, 1i), (vec2<i32>(u_input.a, -1596i) & vec2<i32>(u_input.a, u_input.b)) & -vec2<i32>(2147483647i, -1i)), u_input.b, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(20922i, u_input.a, 1i)) & firstTrailingBit(vec3<i32>(-12195i, -53618i, u_input.a)), firstLeadingBit(max(vec3<i32>(14630i, u_input.b, u_input.b), vec3<i32>(2147483647i, 2147483647i, u_input.b))))), 3556i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1298f) - _wgslsmith_f_op_f32(-global0.a))))), var_1.b.b.b);
    var var_3 = -vec4<i32>(~min(u_input.a, u_input.a >> (var_1.b.a.x % 32u)), var_1.d.x, min((u_input.a | u_input.a) & 2147483647i, -u_input.b), u_input.a);
    return var_2.b.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_5 {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-405f, -1055f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec3<bool>(any(vec4<bool>(arg_1.x, false, true, true)), false, arg_0.b.b.a == _wgslsmith_f_op_f32(exp2(arg_0.b.b.a))), vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_0.b.b.a)), arg_3), all(arg_0.c), arg_3.x > 4294967295u), !(!select(arg_1.x, arg_1.x, arg_0.b.b.b.x))));
    var var_0 = Struct_5(arg_3.x);
    let var_1 = !global0.b;
    let var_2 = select(select(vec3<bool>(all(vec2<bool>(arg_1.x, arg_0.c.x)), false, any(select(vec3<bool>(false, var_1.x, false), vec3<bool>(arg_1.x, true, global0.b.x), global0.b.x))), !(!select(var_1, var_1, false)), true), vec3<bool>(!any(select(vec4<bool>(false, global0.b.x, false, arg_1.x), vec4<bool>(global0.b.x, arg_1.x, global0.b.x, true), vec4<bool>(true, true, false, var_1.x))), any(select(vec3<bool>(true, true, var_1.x), global0.b, true)), global0.b.x), select(vec3<bool>(var_1.x, true, arg_0.b.b.b.x), select(var_1, select(vec3<bool>(false, true, true), vec3<bool>(global0.b.x, false, false), vec3<bool>(arg_0.b.b.b.x, global0.b.x, global0.b.x)), select(select(arg_0.b.b.b, var_1, global0.b), var_1, vec3<bool>(arg_1.x, true, arg_1.x))), !(!(arg_0.c.x && arg_1.x))));
    var_0 = Struct_5(arg_3.x);
    return Struct_5(~1u);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_5) -> u32 {
    global0 = Struct_1(global0.a, !select(!vec3<bool>(global0.b.x, arg_0, global0.b.x), select(!vec3<bool>(global0.b.x, global0.b.x, arg_0), vec3<bool>(true, true, global0.b.x), !arg_0), vec3<bool>(true, true, global0.b.x)));
    var var_0 = Struct_4(u_input.a, Struct_2(select(~(~arg_1), ~(arg_1 ^ vec4<u32>(24592u, arg_1.x, 0u, 0u)), select(vec4<bool>(true, arg_0, global0.b.x, arg_0), !vec4<bool>(false, true, global0.b.x, false), select(vec4<bool>(false, global0.b.x, true, true), vec4<bool>(global0.b.x, false, arg_0, true), true))), Struct_1(global0.a, global0.b)), global0.b.xy, vec4<i32>(-(~u_input.b), -1i, 1i, ~abs(u_input.b)) | vec4<i32>(abs(_wgslsmith_mult_i32(u_input.a, u_input.a)), func_3(Struct_1(global0.a, global0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1215f, 194f)), Struct_3(Struct_2(arg_1, Struct_1(1000f, global0.b)), arg_1, Struct_2(vec4<u32>(arg_2.a, arg_1.x, arg_1.x, 4294967295u), Struct_1(-550f, global0.b))), Struct_1(global0.a, global0.b)), _wgslsmith_clamp_i32(u_input.a, ~(-2147483647i), 6880i), select(u_input.b, 0i, true || global0.b.x)), ~_wgslsmith_mod_i32(-2062i, ~u_input.a) ^ _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(6652i, 2147483647i), vec2<i32>(u_input.b, 24866i)), firstLeadingBit(-35894i)));
    var_0 = Struct_4(countOneBits(u_input.b), Struct_2(vec4<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(var_0.b.a.yw, min(arg_1.wy, arg_1.wy)), 1503u, _wgslsmith_add_u32(~52805u, firstLeadingBit(arg_1.x))), Struct_1(var_0.b.b.a, select(select(vec3<bool>(global0.b.x, false, var_0.b.b.b.x), vec3<bool>(true, true, false), true), global0.b, var_0.b.b.b))), global0.b.yy, ~_wgslsmith_div_vec4_i32(-abs(vec4<i32>(2147483647i, 36412i, -23093i, var_0.a)), vec4<i32>(u_input.a, func_3(Struct_1(global0.a, vec3<bool>(var_0.c.x, false, true)), vec2<f32>(var_0.b.b.a, var_0.b.b.a), Struct_3(var_0.b, vec4<u32>(61733u, arg_1.x, 9690u, 9743u), var_0.b), Struct_1(-925f, vec3<bool>(false, arg_0, false))), -2147483647i, ~8435i)), countOneBits(u_input.a));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-581f - 2209f))))));
    let var_2 = vec2<bool>(var_0.c.x, arg_0 != arg_0);
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~50595u, ~abs(~(1u << (1u % 32u))), ~_wgslsmith_mod_u32(func_4(global0.b.x, vec4<u32>(1u, 4294967295u, 68641u, 48397u), func_1(Struct_4(-38057i, Struct_2(vec4<u32>(7289u, 139456u, 1u, 39809u), Struct_1(global0.a, global0.b)), vec2<bool>(global0.b.x, global0.b.x), vec4<i32>(16290i, u_input.b, u_input.a, u_input.a), -2147483647i), global0.b.zy, vec2<f32>(global0.a, global0.a), vec2<u32>(1u, 1u)), Struct_5(4294967295u)), ~25524u));
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1594f)), vec3<bool>(all(select(vec4<bool>(global0.b.x, false, global0.b.x, true), !vec4<bool>(false, global0.b.x, false, true), -1i <= u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, -1610f, true))) < -834f, true));
    let var_1 = !global0.b;
    var var_2 = 25698i;
    let var_3 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 1u) << (vec4<u32>(0u, var_0.x, 2306u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, 4294967295u, var_0.x, 43406u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 1u)))), vec4<u32>(var_0.x, 19865u, 0u, var_0.x) >> (countOneBits(vec4<u32>(var_0.x, 4294967295u, var_0.x, 86339u) | vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(21109u, 4294967295u, 97284u, var_0.x)), ~vec4<u32>(10625u, var_0.x, var_0.x, var_0.x)), vec4<u32>(18522u, abs(0u), 40640u, var_0.x), ~firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + 992f) * 1f) * -1311f)), select(vec3<bool>(false, var_1.x, global0.b.x), var_1, vec3<bool>(global0.a >= _wgslsmith_f_op_f32(step(1027f, 347f)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, var_0.zz);
}

