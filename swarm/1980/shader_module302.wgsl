struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), 897f);
    var var_1 = arg_2.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.b, 103f), -1041f, arg_1.a.x || arg_2.b.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.c.x, -286f, !arg_1.a.x))))));
    var_0 = arg_2.c.x;
    var var_2 = Struct_4(Struct_1(-1i, vec3<u32>(u_input.a.x, 23086u, 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(220f, 669f, arg_2.c.x, arg_2.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 510f, arg_1.b, arg_1.b))), select(arg_0 <= 134685u, true, arg_1.a.x | arg_1.a.x))), vec2<bool>(all(!vec3<bool>(true, arg_2.b.x, true)), false), 1i));
    return _wgslsmith_f_op_vec4_f32(-var_2.a.c);
}

fn func_2() -> vec4<bool> {
    let var_0 = firstLeadingBit(countOneBits(-(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    let var_1 = Struct_1(abs(var_0.x), firstLeadingBit(firstLeadingBit(~vec3<u32>(u_input.a.x, u_input.a.x, 0u)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(15516u, u_input.a.x, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(~u_input.a.x, Struct_3(vec2<bool>(false, false), -292f), Struct_2(vec4<u32>(u_input.a.x, 0u, 19906u, 0u), vec3<bool>(true, false, false), vec3<f32>(1841f, 289f, -197f), vec4<i32>(0i, var_0.x, 0i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(128f, 950f, 420f, -346f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, -1241f, -200f, -329f)), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, false))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(321f, _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(f32(-1f) * -1633f), _wgslsmith_f_op_f32(f32(-1f) * -726f))))), select(vec2<bool>(true, select(true, any(vec3<bool>(true, false, true)), true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), true), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(10859i, var_0.x), u_input.c ^ 0i), -35845i), min(reverseBits(var_0), vec3<i32>(u_input.b.x << (59277u % 32u), 0i, countOneBits(u_input.b.x)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(var_1.c.wyw, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, 2100f, _wgslsmith_f_op_f32(step(127f, -1887f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(floor(-604f)), var_1.c.x)))), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.c, u_input.c, -21174i), select(vec4<i32>(u_input.c, 2147483647i, -33274i, 10021i), vec4<i32>(16851i, var_1.e, var_0.x, u_input.c), true))) < -2147483647i));
    var_2 = var_1.c.zzz;
    let var_3 = u_input.b | _wgslsmith_div_vec3_i32(-_wgslsmith_clamp_vec3_i32(max(u_input.b, vec3<i32>(var_1.a, var_1.a, var_0.x)), min(u_input.b, var_0), select(u_input.b, var_0, var_1.d.x)), u_input.b);
    return !select(vec4<bool>(var_1.d.x, !(var_1.b.x <= u_input.a.x), false, true), vec4<bool>(!all(vec2<bool>(var_1.d.x, var_1.d.x)), false, !(false & var_1.d.x), false), vec4<bool>(var_1.d.x, var_1.d.x, false, true));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_1 {
    return Struct_1(u_input.c, abs(abs(select(~vec3<u32>(u_input.a.x, 42322u, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(2196u, 1u, u_input.a.x)), select(vec3<bool>(arg_1.x, arg_0.x, arg_0.x), vec3<bool>(arg_1.x, arg_0.x, arg_0.x), arg_0.yxz)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-972f, 480f) - _wgslsmith_div_f32(1469f, -150f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f - 325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(200f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, Struct_3(arg_1.xx, 448f), Struct_2(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 51206u), vec3<bool>(arg_1.x, arg_0.x, arg_1.x), vec3<f32>(-1000f, 995f, -1102f), vec4<i32>(-7992i, -1i, u_input.b.x, u_input.b.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, -879f, -600f, -2260f)))))), vec2<bool>(arg_0.x, true & (22328u >= u_input.a.x)), -40734i);
}

fn func_1() -> bool {
    var var_0 = Struct_4(func_4(!func_2(), select(func_2(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = ~21838u;
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(ceil(var_0.a.c.xwz)), vec3<u32>(reverseBits(var_0.a.b.x), 24397u, var_0.a.b.x));
    var_0 = Struct_4(Struct_1(-1i, ~(~(~vec3<u32>(var_0.a.b.x, u_input.a.x, 15873u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 887f, -1254f, var_2.a.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.a.c), vec4<f32>(var_0.a.c.x, var_2.a.x, 851f, var_2.a.x)))), var_0.a.d, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, -28224i), vec4<i32>(var_0.a.e, -1i, -12609i, -15736i), false), vec4<i32>(1i, -2147483647i, var_0.a.a, u_input.b.x) >> (vec4<u32>(5209u, u_input.a.x, var_2.b.x, var_0.a.b.x) % vec4<u32>(32u))), _wgslsmith_add_i32(-2147483647i, select(-2147483647i, -4146i, false)))));
    let var_3 = var_0.a.d.x;
    return !func_4(!select(func_2(), select(vec4<bool>(true, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x), vec4<bool>(var_0.a.d.x, var_0.a.d.x, true, var_0.a.d.x), var_0.a.d.x), vec4<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, true)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.a.d.x, var_0.a.d.x, true, true), select(vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, false), vec4<bool>(true, true, var_0.a.d.x, var_0.a.d.x), vec4<bool>(var_0.a.d.x, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x)))).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-822f, 596f)), _wgslsmith_f_op_f32(818f - -887f)), func_1() & true)), _wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(-1000f))), Struct_2(vec4<u32>(24610u, 1u, u_input.a.x, u_input.a.x) | vec4<u32>(0u, 39452u, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-958f, 1319f, 1000f))), -vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -23920i)))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f + -410f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(1411f))) - 458f))));
    var var_1 = !func_2().xxz;
    var_0 = _wgslsmith_f_op_f32(-1804f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(346f * _wgslsmith_f_op_f32(-1162f + -179f)))) - -1000f));
    let var_2 = Struct_4(Struct_1(u_input.c, vec3<u32>(min(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 0u)), 20199u, ~52741u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -675f, 231f, 958f) * vec4<f32>(-590f, -1288f, -1444f, 363f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1280f, 863f, -688f, -123f))))), func_2().yy, -1i));
    let var_3 = Struct_3(var_1.yz, _wgslsmith_f_op_f32(max(986f, var_2.a.c.x)));
    var_0 = -1517f;
    var_0 = -1074f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~reverseBits(~vec4<u32>(1u, var_2.a.b.x, var_2.a.b.x, var_2.a.b.x)), (~vec4<u32>(var_2.a.b.x, 0u, u_input.a.x, 24502u) ^ reverseBits(vec4<u32>(21747u, var_2.a.b.x, var_2.a.b.x, 42816u))) << (~(vec4<u32>(50921u, 4294967295u, 32905u, 31899u) >> (vec4<u32>(24467u, u_input.a.x, 18475u, var_2.a.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-var_2.a.c), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-119f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-198f, var_2.a.c.x)) + var_2.a.c.x))));
}

