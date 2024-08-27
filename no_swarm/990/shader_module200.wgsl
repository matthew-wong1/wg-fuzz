struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = arg_1.c;
    var_0 = _wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * arg_1.c)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.c))))), arg_1.c))));
    var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c)));
    var var_2 = Struct_3(Struct_1(33895u, min(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, arg_2)) & min(vec2<u32>(arg_1.d, 1u), vec2<u32>(1u, arg_2)), ~vec2<u32>(0u, 4294967295u) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 41352u), vec2<u32>(arg_2, 18637u))), arg_1.a.x), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47383u, ~u_input.b, 31290u), ~abs(vec4<u32>(4294967295u, arg_2, arg_1.d, 45651u))), abs(_wgslsmith_sub_u32(u_input.b, 5955u)), u_input.b), select(min(firstLeadingBit(-9245i), -arg_1.b.x) & -(i32(-1i) * -1i), _wgslsmith_dot_vec3_i32((vec3<i32>(arg_0.x, arg_1.b.x, -674i) & vec3<i32>(-2147483647i, -1i, -2147483647i)) & u_input.d, -u_input.d), true), Struct_2(arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.c)), arg_1.c, arg_1.c, _wgslsmith_f_op_f32(round(1f))), _wgslsmith_sub_i32(36272i, u_input.a), arg_1.d));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = i32(-1i) * -arg_1.b.x;
    var var_1 = vec4<bool>(func_3(vec3<i32>(-(~u_input.d.x), abs(u_input.d.x), -15484i), Struct_4(!arg_1.a, ~vec4<i32>(-29041i, 42808i, 0i, arg_1.b.x), arg_1.c, 4294967295u), 4294967295u), false, true, false);
    var_1 = arg_1.a;
    var_0 = arg_1.b.x;
    let var_2 = arg_1.a.x;
    return !(!vec4<bool>(!var_2, func_3(~u_input.d, arg_1, 1u), var_2 && var_2, any(arg_1.a.yxw)));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = vec3<bool>(!any(select(vec4<bool>(true, false, false, arg_1.a.c), !vec4<bool>(arg_1.a.c, false, arg_1.a.c, arg_1.a.c), select(vec4<bool>(false, false, arg_1.a.c, arg_1.a.c), vec4<bool>(false, true, arg_1.a.c, false), vec4<bool>(true, false, false, arg_1.a.c)))), arg_1.a.c, !arg_1.a.c);
    let var_1 = !(!select(!(!vec4<bool>(arg_1.a.c, false, arg_1.a.c, var_0.x)), select(vec4<bool>(var_0.x, arg_1.a.c, true, arg_1.a.c), func_2(vec2<f32>(-644f, 401f), Struct_4(vec4<bool>(false, false, var_0.x, true), arg_1.d.a, arg_0, 2752u)), vec4<bool>(true, var_0.x, var_0.x, false)), !func_2(arg_1.d.b.yw, Struct_4(vec4<bool>(true, var_0.x, false, false), vec4<i32>(u_input.d.x, 0i, arg_1.c, -19559i), 760f, 53871u))));
    var_0 = var_1.xzy;
    var_0 = vec3<bool>(func_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_1.d.b.x), _wgslsmith_f_op_f32(330f - arg_0)), Struct_4(select(var_1, vec4<bool>(arg_1.a.c, true, var_0.x, false), var_1), arg_1.d.a & arg_1.d.a, arg_1.d.b.x, u_input.b)).x & var_1.x, true, true);
    var_0 = vec3<bool>(var_0.x, !(!all(var_1.wx)), var_0.x & any(!vec4<bool>(var_0.x, true, false, var_0.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-137f + arg_1.d.b.x), arg_1.d.b.x)), 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.d.b.x, arg_0)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.d.b.x, _wgslsmith_f_op_f32(sign(arg_1.d.b.x))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec2<bool>(!((_wgslsmith_sub_i32(arg_3.c, arg_3.a.x) > _wgslsmith_sub_i32(-2147483647i, arg_3.a.x)) != true), false & (_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_3.d, arg_2), vec2<u32>(23104u, u_input.b)), ~vec2<u32>(u_input.b, 26718u)) != ~(arg_2 << (27380u % 32u))));
    var var_1 = _wgslsmith_f_op_f32(-190f - _wgslsmith_f_op_f32(f32(-1f) * -821f));
    var var_2 = vec4<f32>(-729f, 660f, arg_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f - arg_0.x)))), arg_0.x));
    let var_3 = Struct_5(u_input.d.x, Struct_4(!vec4<bool>(var_0.x & var_0.x, arg_1, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true), -firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_3.a, arg_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(681f - arg_0.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - var_2.x), -1059f))), _wgslsmith_sub_u32(~firstTrailingBit(arg_3.d), 62695u)), !var_0.x, Struct_1(_wgslsmith_add_u32(40814u, firstTrailingBit(abs(29452u))), ~vec2<u32>(arg_2, reverseBits(8234u)), true));
    let var_4 = _wgslsmith_mult_i32(var_3.b.b.x, _wgslsmith_sub_i32(u_input.d.x, -2887i));
    return Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(u_input.b), 4294967295u), u_input.b), _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_3.d.b, var_3.d.b, vec2<u32>(u_input.b, var_3.b.d)), ~vec2<u32>(0u, arg_2)), any(var_3.b.a.www)), ~vec4<u32>(6715u, _wgslsmith_mult_u32(15859u, u_input.b), 4294967295u, 64695u) | abs(max(vec4<u32>(arg_3.d, 0u, u_input.b, 11362u) << (vec4<u32>(u_input.b, var_3.d.b.x, 0u, 11234u) % vec4<u32>(32u)), vec4<u32>(var_3.d.b.x, 0u, var_3.b.d, 1u))), ~(max(firstLeadingBit(2147483647i), 33845i) << (1u % 32u)), arg_3);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(!select(select(select(vec4<bool>(false, true, arg_2.a.c, arg_2.a.c), vec4<bool>(arg_2.a.c, arg_2.a.c, true, false), arg_2.a.c), select(vec4<bool>(false, arg_2.a.c, true, arg_2.a.c), vec4<bool>(false, arg_2.a.c, false, arg_2.a.c), arg_2.a.c), arg_2.a.c), !func_2(vec2<f32>(1775f, arg_1), Struct_4(vec4<bool>(true, true, arg_2.a.c, false), arg_2.d.a, 226f, u_input.b)), vec4<bool>(arg_2.a.c || true, arg_2.a.c, arg_2.a.c, arg_2.a.c)), _wgslsmith_mult_vec4_i32(arg_2.d.a, arg_2.d.a), arg_1, 58207u);
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 329f)) * -1480f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + var_0.c), arg_2.d.b.x))), any(var_0.a.xwx) & func_3(vec3<i32>(~var_0.b.x, abs(-2431i), ~arg_0), Struct_4(!var_0.a, firstTrailingBit(arg_2.d.a), _wgslsmith_f_op_f32(arg_2.d.b.x + arg_1), ~4294967295u), 8206u), ~arg_2.b.x, arg_2.d).a.c;
    let var_2 = var_0.a.xy;
    var var_3 = ~arg_2.d.a;
    return _wgslsmith_f_op_f32(-var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1195f), func_4(_wgslsmith_f_op_vec4_f32(func_1(210f, Struct_3(Struct_1(4294967295u, vec2<u32>(0u, 75066u), false), vec4<u32>(1u, u_input.b, u_input.b, 4294967295u), 0i, Struct_2(vec4<i32>(2147483647i, -16364i, u_input.d.x, u_input.a), vec4<f32>(-623f, 363f, 1000f, 1619f), -1i, u_input.b)))), false, u_input.b >> (1u % 32u), Struct_2(vec4<i32>(-1i, u_input.d.x, u_input.c, u_input.a), vec4<f32>(971f, 2594f, -746f, -665f), -2147483647i, 1u))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-828f, -1104f))) * 1417f))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-192f, -1046f, 504f, 1000f) - vec4<f32>(309f, -289f, -136f, 817f))), vec4<f32>(-1220f, -1000f, _wgslsmith_f_op_f32(-325f - -243f), _wgslsmith_f_op_f32(284f * -628f)), vec4<bool>(true, all(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false)), func_3(u_input.d, Struct_4(vec4<bool>(false, false, false, true), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, -15888i), -688f, 55944u), u_input.b)))), true, 1u, Struct_2(vec4<i32>(u_input.d.x, -33452i, u_input.c, -5722i) | -vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1153f, 522f, -1080f, -1066f), vec4<f32>(569f, -187f, -1527f, -1000f))))), _wgslsmith_mod_i32(-14626i, ~u_input.c), abs(~0u))).b.x, countOneBits(1i), 773f);
}

