struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = u_input.d;
    var var_1 = !arg_3;
    var var_2 = min(1u, _wgslsmith_dot_vec4_u32(reverseBits(abs(firstTrailingBit(u_input.a))), _wgslsmith_mod_vec4_u32(min(firstLeadingBit(vec4<u32>(1u, 122295u, u_input.a.x, u_input.a.x)), u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(9884u, u_input.c, 0u, u_input.c), ~vec4<u32>(u_input.c, u_input.a.x, 0u, u_input.b)))));
    var_1 = arg_3;
    let var_3 = arg_3.x;
    return !vec3<bool>(true, true & (firstLeadingBit(var_0.x) > reverseBits(arg_0)), true);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    var var_0 = !vec3<bool>(all(func_3(~u_input.d.x, ~33722i, arg_2, func_3(-1i, 13408i, arg_3.c, vec3<bool>(false, arg_0, false))).xy), all(!arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) + _wgslsmith_f_op_f32(-2385f - 1000f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-855f)) + _wgslsmith_f_op_f32(-872f * 577f)));
    return max(u_input.c, arg_3.b) <= 1u;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1530f, -142f)) + _wgslsmith_f_op_f32(-605f * -1196f))))) > 692f;
    let var_1 = select(!(!(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)))), vec4<bool>(false, all(!vec2<bool>(false, arg_0.a)), !(~(-26749i) == ~u_input.d.x), countOneBits(_wgslsmith_sub_u32(u_input.b, u_input.a.x)) != 4272u), !(-46796i == _wgslsmith_div_i32(abs(25911i), -u_input.d.x)));
    var var_2 = Struct_2(Struct_1(func_4(any(func_3(0i, 2764i, vec2<bool>(arg_0.a, arg_0.a), var_1.yxz)), arg_0, var_1.ww, Struct_2(Struct_1(false), u_input.a.x & 56340u, vec2<bool>(false, true), _wgslsmith_div_u32(0u, 20678u), all(var_1.wwy)))), u_input.b, select(vec2<bool>(all(var_1.zwy), false), !select(select(var_1.zx, var_1.xx, var_1.x), var_1.wx, any(vec3<bool>(true, var_1.x, var_1.x))), select(var_1.yx, var_1.wz, var_1.zy)), u_input.c | u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b) & _wgslsmith_clamp_vec3_u32(u_input.a.xww, u_input.a.zxw, u_input.a.yxy), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x) << (u_input.a.wzy % vec3<u32>(32u)), vec3<u32>(35192u, 84782u, u_input.b))) < _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 22284u, u_input.c), true), ~vec4<u32>(34319u, 44090u, 1u, u_input.b) | ~u_input.a));
    let var_3 = Struct_1(var_1.x);
    let var_4 = min(vec3<i32>(1i, _wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, ~u_input.d.x, u_input.d.x & u_input.d.x)), _wgslsmith_dot_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(u_input.d ^ vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -2147483647i, (u_input.d.x | u_input.d.x) << (_wgslsmith_add_u32(u_input.b, 44219u) % 32u)), firstTrailingBit(-vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), ~(-u_input.d) & (-vec3<i32>(u_input.d.x, u_input.d.x, -14066i) & -u_input.d)));
    return select(var_1.zy, var_2.c, !arg_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = vec4<i32>(-1i, 1i, u_input.d.x & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), ~(-1i), u_input.d.x), ~vec3<i32>(-68i, 0i, 1i) ^ -vec3<i32>(u_input.d.x, 11380i, 29829i)), -2147483647i);
    var var_1 = Struct_2(Struct_1(true), arg_1, select(vec2<bool>(all(vec4<bool>(arg_0.a, false, true, true)) | !arg_0.a, !any(vec3<bool>(true, arg_0.a, false))), func_2(Struct_1(!arg_0.a)), any(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), select(vec4<bool>(arg_0.a, true, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, false, false), arg_0.a), !vec4<bool>(true, true, arg_0.a, true)))), 1u, func_2(arg_0).x);
    var_1 = Struct_2(Struct_1(false), ~_wgslsmith_mult_u32(1u << (arg_1 % 32u), _wgslsmith_clamp_u32(~var_1.d, max(arg_2, 9279u), abs(23221u))), var_1.c, abs(_wgslsmith_mult_u32(85507u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 14271u, 0u), ~vec3<u32>(0u, u_input.a.x, 109049u)))), any(vec3<bool>(true, var_1.e, false)));
    var var_2 = -firstTrailingBit(u_input.d);
    var_2 = var_0.xyx;
    return Struct_2(var_1.a, u_input.c, var_1.c, arg_2, (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17005u, 16481u), u_input.a.zzw | u_input.a.wwz) >= 67475u) != !func_4(true, Struct_1(false), var_1.c, Struct_2(var_1.a, 1u, var_1.c, 55168u, true)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_add_u32(33268u, 1u) != ~arg_1.d);
    var_0 = func_1(func_1(arg_1.a, arg_1.d, abs(0u)).a, 4294967295u, _wgslsmith_dot_vec2_u32(~(~u_input.a.yw), u_input.a.yw)).a;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(447f, arg_0) - vec2<f32>(-573f, -321f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(511f, -1000f)))))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))) + arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, var_0.a))) - _wgslsmith_f_op_f32(step(arg_0, arg_0)))), func_2(arg_1.a)));
    let var_2 = arg_1.e;
    var var_3 = func_1(arg_1.a, ~u_input.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(u_input.a.zz, abs(vec2<u32>(u_input.b, 18785u)))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 24418u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(37050u, u_input.b), u_input.a.wx)))));
    return func_1(Struct_1(!var_3.c.x), 0u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-335f, func_1(Struct_1(true), 1u, _wgslsmith_add_u32(u_input.a.x, 35115u)), select(_wgslsmith_div_i32(0i, ~u_input.d.x), u_input.d.x, true && any(vec4<bool>(false, false, false, false))) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 25153u, u_input.b, 12898u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 77045u)) >> (~vec4<u32>(u_input.b, u_input.b, 41453u, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, u_input.a.x, 59758u)) % 32u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1171f + 421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1000f, 1f);
    var var_2 = 32735i;
    let var_3 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(29467u, var_0.d, 95797u) >> (~u_input.a.wzz % vec3<u32>(32u)), vec3<u32>(var_0.b, _wgslsmith_clamp_u32(u_input.b, u_input.a.x, 32878u), ~u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.b, var_0.d, ~var_0.d), vec3<u32>(4294967295u, u_input.b, 86448u) >> (u_input.a.yyw % vec3<u32>(32u))) | u_input.a.xzw);
    var var_4 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.x, ~u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a.xw, ~(~vec2<u32>(4294967295u, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(round(var_1.x))))), -1200f, -794f, _wgslsmith_f_op_f32(-var_1.x)));
}

