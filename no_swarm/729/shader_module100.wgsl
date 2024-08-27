struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = global0.x;
    let var_1 = true;
    global0 = vec4<bool>(arg_0, !(!all(vec4<bool>(true, true, false, var_1))), var_1, any(global0.xz));
    global0 = select(!select(select(vec4<bool>(var_1, arg_0, var_1, global0.x), vec4<bool>(var_1, true, false, arg_0), true), !vec4<bool>(arg_0, true, arg_0, arg_0), any(!global0.zz)), !(!select(!vec4<bool>(false, arg_0, false, true), vec4<bool>(false, var_1, global0.x, false), vec4<bool>(arg_0, false, global0.x, global0.x))), true);
    global0 = !select(select(select(select(vec4<bool>(global0.x, arg_0, arg_0, true), vec4<bool>(var_1, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, var_1)), !vec4<bool>(global0.x, true, arg_0, false), !vec4<bool>(global0.x, global0.x, var_1, false)), select(!vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, true, false, var_1), true), false), !select(!vec4<bool>(true, var_1, true, arg_0), vec4<bool>(var_1, var_1, arg_0, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false)), global0.x);
    return _wgslsmith_div_i32(u_input.c.x, 23514i);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = vec4<bool>(any(vec3<bool>(true, false, global0.x)), !global0.x, all(global0.wx) && any(vec4<bool>(any(vec4<bool>(true, true, global0.x, global0.x)), all(vec4<bool>(global0.x, global0.x, false, false)), false, any(global0.wx))), any(select(!select(vec2<bool>(global0.x, global0.x), global0.wx, global0.x), vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), !global0.zw, !global0.x))));
    var var_0 = Struct_2(_wgslsmith_div_u32(~arg_2, 1u));
    let var_1 = Struct_2(6700u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(641f)), u_input.c.zzz >> (abs(vec3<u32>(4294967295u, firstTrailingBit(45323u), _wgslsmith_clamp_u32(11970u, 0u, var_1.a))) % vec3<u32>(32u)));
    var var_3 = vec3<bool>(true, !global0.x, any(select(global0.xy, select(select(vec2<bool>(global0.x, true), global0.zz, global0.x), vec2<bool>(true, false), true), global0.x)));
    return select(select(vec4<bool>(-2147483647i > ~arg_0, all(!global0.wzw), global0.x && false, global0.x), vec4<bool>(!(var_2.a >= 1805f), 953f > _wgslsmith_f_op_f32(abs(var_2.a)), true, _wgslsmith_f_op_f32(-var_2.a) == -1055f), vec4<bool>(false, (u_input.b >= u_input.c.x) && all(global0.xx), all(global0.ywy), !all(vec3<bool>(false, false, var_3.x)))), select(!vec4<bool>(true, global0.x && var_3.x, true, true), select(select(!vec4<bool>(true, true, false, global0.x), !vec4<bool>(var_3.x, global0.x, var_3.x, global0.x), vec4<bool>(false, true, false, false)), vec4<bool>(true, all(var_3.xx), true, true && global0.x), global0.x), true), var_3.x);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_1 {
    global0 = func_4(-func_3(global0.x || global0.x, Struct_1(arg_0, vec3<i32>(u_input.a, arg_2.x, arg_2.x)), select(vec3<u32>(30675u, arg_1.x, 35198u), vec3<u32>(arg_1.x, arg_1.x, 26247u), global0.zxy)) ^ ~_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(u_input.a, arg_2.x)), (~5631u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 83983u, 88190u, arg_1.x), vec4<u32>(53440u, arg_1.x, 27285u, arg_1.x))) >> (0u % 32u), arg_1.x, _wgslsmith_clamp_vec2_i32(select(max(vec2<i32>(12849i, 2147483647i), vec2<i32>(u_input.c.x, u_input.c.x)) >> (arg_1 % vec2<u32>(32u)), arg_2.ww ^ countOneBits(u_input.c.wy), vec2<bool>(true, false)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, arg_2.x), select(vec2<i32>(arg_2.x, arg_2.x), u_input.c.zx, global0.yx)), arg_2.xy), ~abs(u_input.c.wx)));
    let var_0 = Struct_2(arg_1.x);
    global0 = vec4<bool>(global0.x, !func_4(u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.x, 33741u, 26327u, var_0.a), vec4<u32>(4294967295u, var_0.a, 1u, arg_1.x), false), vec4<u32>(arg_1.x, 0u, 4294967295u, 1136u)), abs(var_0.a), -select(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.c.x, u_input.c.x), false)).x, global0.x, all(func_4(arg_2.x, 33683u, _wgslsmith_div_u32(~32882u, ~arg_1.x), u_input.c.yz)));
    var var_1 = all(!(!global0.zx));
    global0 = func_4(u_input.b, select(1u, ~35697u, true), ~0u, firstLeadingBit(min(firstLeadingBit(-vec2<i32>(1i, arg_2.x)), u_input.c.xx >> (~arg_1 % vec2<u32>(32u)))));
    return Struct_1(arg_0, -firstTrailingBit(select(max(vec3<i32>(u_input.a, 74176i, u_input.b), vec3<i32>(arg_2.x, -13665i, 19781i)), arg_2.xxw, !global0.x)));
}

fn func_1() -> bool {
    var var_0 = all(vec4<bool>(true, any(vec2<bool>(true, true)), abs(~u_input.a) > _wgslsmith_mult_i32(77941i, _wgslsmith_mod_i32(0i, -11281i)), true));
    var var_1 = Struct_1(-1695f, abs(vec3<i32>(u_input.b, u_input.b, ~u_input.c.x)) ^ countOneBits(_wgslsmith_div_vec3_i32(u_input.c.zyw, u_input.c.zzy ^ vec3<i32>(u_input.a, u_input.b, u_input.c.x))));
    let var_2 = func_2(-1856f, ~firstLeadingBit(~(~vec2<u32>(16430u, 1u))), select(u_input.c, vec4<i32>(-24075i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, var_1.b.x), vec3<i32>(var_1.b.x, -11474i, 2147483647i))), var_1.b.x, var_1.b.x), select(select(!vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(true, global0.x, true, global0.x), global0.x), vec4<bool>(all(vec3<bool>(global0.x, false, false)), any(global0.wzw), true, false), any(select(vec2<bool>(true, global0.x), global0.yw, vec2<bool>(false, false))))));
    var var_3 = var_2.b.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_div_f32(var_2.a, var_1.a)) + _wgslsmith_f_op_f32(-1f));
    return any(vec3<bool>(firstTrailingBit(~0u) <= abs(1u), select(true, true, global0.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f + -979f))))))));
    global0 = !vec4<bool>(func_1(), true, global0.x, global0.x);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(407f, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -712f)), -454f);
    let var_2 = vec4<bool>(true, select(1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), global0.x) >= 0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -876f))) != -1000f, global0.x || func_4(-8743i, 1u, ~1u, vec2<i32>(u_input.b, -u_input.c.x)).x);
    let var_3 = select(-(~vec2<i32>(u_input.c.x, u_input.b)), u_input.c.zw, !select(var_1.x <= var_0, !global0.x, true) | var_2.x);
    let var_4 = func_2(var_1.x, ~abs(~(~vec2<u32>(52460u, 4294967295u))), ~vec4<i32>(_wgslsmith_mult_i32(-2529i, var_3.x & var_3.x), var_3.x >> (4294967295u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_3.x, u_input.b, 1i), u_input.c), -25511i), -2147483647i));
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 136f, var_1.x, var_0)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, var_0, 899f, -1569f), vec4<f32>(1355f, -1020f, -176f, -1552f)))) - vec4<f32>(876f, _wgslsmith_f_op_f32(step(var_4.a, _wgslsmith_f_op_f32(267f * var_1.x))), _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1697f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0, var_4.a), vec4<f32>(var_1.x, -1414f, 237f, var_4.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, 1170f, -1000f, -877f)))), vec4<f32>(var_0, -427f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(118f)) - _wgslsmith_f_op_f32(-var_0)))), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.yxz, -2147483647i, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(70520u, 4294967295u), vec2<u32>(4294967295u, 66584u)), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), ~vec2<u32>(0u, 4294967295u)), func_2(var_0, ~(~reverseBits(vec2<u32>(1u, 64241u))), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(var_4.b.x, min(1i, var_3.x)), var_4.b.x, _wgslsmith_mod_i32(firstLeadingBit(u_input.b), var_4.b.x))).b.zx, 1795f);
}

