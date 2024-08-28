struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_i32(~u_input.c & u_input.b.x, u_input.b.x ^ -(abs(-7482i) | _wgslsmith_sub_i32(u_input.c, u_input.c)));
    let var_1 = ~(~arg_0);
    var var_2 = true;
    var var_3 = -u_input.c;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-735f * 2457f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1412f)) * -511f), true))) - 1000f);
    return select(!select(vec3<bool>(false, select(true, false, false), var_1.x == 0u), vec3<bool>(true, true, false), true), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), vec3<bool>(any(vec4<bool>(true, true, false, true)), true, select(false, true, true))), select(vec3<bool>(true, select(true, false, false), true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false)), vec3<bool>(false, true, any(vec3<bool>(false, true, false)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>((1u ^ ~arg_0.x) >= 41069u, true, true));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(reverseBits(~max(4294967295u, ~96636u)), ~2678u << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(~33553u, ~15260u, 34512u), firstLeadingBit(~1u)) % 32u));
    let var_1 = vec2<bool>(all(vec3<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), true, true)), all(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), u_input.a.xz))));
    var var_2 = Struct_4(-_wgslsmith_mod_vec4_i32(-u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), Struct_3(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, 0u, 52803u, 6229u), vec4<u32>(1u, var_0.x, 0u, 0u)) << (abs(vec4<u32>(var_0.x, var_0.x, 1u, 67138u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(340f, 498f) - vec2<f32>(-492f, -1333f)), _wgslsmith_div_vec2_f32(vec2<f32>(1695f, 601f), vec2<f32>(-1012f, 847f)), true)), 2147483647i, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(232f, -356f, -1000f)))))), vec2<u32>(19066u, 1u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(select(27564u, var_0.x, var_1.x), reverseBits(4294967295u), var_0.x), vec3<u32>(135794u, var_0.x >> (7951u % 32u), var_0.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), ~vec3<u32>(var_0.x, 0u, 1047u))));
    let var_3 = Struct_2(!var_2.b.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.c.yy) - vec2<f32>(-776f, var_2.b.b.a.x))), max(-13177i, -(u_input.c ^ u_input.a.x)), false), _wgslsmith_mult_vec2_i32(var_2.a.wz, select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_2.b.b.b) | u_input.a.zx, select(vec2<i32>(u_input.c, var_2.a.x), var_2.a.yw, vec2<bool>(var_2.b.a.x, false))), -vec2<i32>(u_input.c, u_input.b.x), func_3(vec4<u32>(0u, var_0.x, 4294967295u, 4294967295u)).x)), _wgslsmith_div_f32(var_2.b.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1193f - 546f), var_2.b.c.x)))), _wgslsmith_mod_u32(~var_2.b.d.x, var_2.b.d.x));
    let var_4 = ~(reverseBits(abs(vec3<u32>(4294967295u, 90647u, var_0.x))) | firstLeadingBit(select(~vec3<u32>(var_2.c, var_0.x, 18964u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.e, var_0.x, var_3.e), vec3<u32>(var_3.e, 21788u, var_3.e)), vec3<bool>(var_1.x, var_3.a.x, true))));
    return _wgslsmith_f_op_f32(-var_3.d);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.a.x << (reverseBits(firstLeadingBit(_wgslsmith_mult_u32(5273u, 1u) >> (1u % 32u))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(min(-717f, 427f))));
    let var_2 = countOneBits(firstTrailingBit(1u) << (0u % 32u)) << (1u % 32u);
    var_1 = -1282f;
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(~var_2), 17882u, _wgslsmith_div_u32(var_2, 1u)), firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(1u, var_2), ~var_2, firstLeadingBit(42701u)))), vec3<u32>(_wgslsmith_mult_u32(1u | var_2, _wgslsmith_sub_u32(~var_2, ~var_2)), (min(var_2, 1u) & var_2) | var_2, 0u));
    return arg_0.a.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = arg_0.zx;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.wy), ~(~_wgslsmith_mod_i32(-arg_1.b, ~arg_3.x)), true);
    var var_2 = arg_1.b;
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -591f), -187f)) < arg_1.a.x, 865f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -106f))), var_1.c);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2()), 660f), _wgslsmith_dot_vec3_i32(~vec3<i32>(-21418i, arg_3.x, -13568i), abs(vec3<i32>(var_1.b, 0i, var_1.b))), any(select(vec3<bool>(true, var_3.x, false), vec3<bool>(arg_2, false, false), vec3<bool>(arg_1.c, true, false)))))));
    return vec3<bool>(var_3.x, all(select(select(!var_3.xz, func_3(vec4<u32>(1u, 1u, 18616u, 0u)).zy, true), !vec2<bool>(true, arg_1.c), vec2<bool>(true, var_3.x))), u_input.a.x > (var_1.b >> (~55307u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -1i, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(0i, 5535i, -2147483647i)), vec3<i32>(-1i) * -vec3<i32>(1i, -15888i, u_input.a.x))), select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.b.x)), select(u_input.b, u_input.b, vec4<bool>(true, true, true, false))) << (vec4<u32>(1u, ~21547u, _wgslsmith_mod_u32(1u, 4294967295u), ~1u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.a.x), false));
    var var_1 = Struct_3(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(494f - 229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1195f, true)) * -482f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - _wgslsmith_f_op_f32(f32(-1f) * -115f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(1980f, -514f)), _wgslsmith_f_op_f32(-375f - -1029f)), -var_0.x, false), any(vec3<bool>(true, true, true)), max(var_0.yy, vec2<i32>(0i, ~63350i))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -708f), -1671f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-526f, 799f) * vec2<f32>(323f, 261f)), vec2<f32>(644f, -191f))), false)), i32(-1i) * -2147483647i, !func_3(~vec4<u32>(55355u, 4294967295u, 4294967295u, 266u)).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1321f, -255f, 1496f)), vec3<f32>(293f, 1163f, 689f), true)) * vec3<f32>(1f, 1f, 1f)) - vec3<f32>(-1091f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(473f - -355f) * 783f), -238f)), vec2<u32>(4294967295u, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 144413u), vec3<u32>(8440u, 13432u, 1u)))));
    var var_2 = Struct_4((~(var_0 ^ vec4<i32>(var_1.b.b, 21092i, var_0.x, var_0.x)) ^ ~abs(vec4<i32>(u_input.b.x, var_1.b.b, -2147483647i, 72023i))) ^ ~(-var_0), Struct_3(vec3<bool>(true, true, func_1(vec4<f32>(var_1.c.x, 1000f, -510f, 1263f), var_1.b, var_1.b.c, u_input.a.zy).x), var_1.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1197f, var_1.c.x))), var_1.c)), ~vec2<u32>(_wgslsmith_mod_u32(0u, 1u), firstTrailingBit(var_1.d.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.b.b.a, vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1301f), !select(vec2<bool>(true, var_2.b.b.c), var_2.b.a.zz, false)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.c.x, var_1.b.a.x, var_1.c.x, var_2.b.c.x))))), vec4<f32>(_wgslsmith_div_f32(-617f, _wgslsmith_f_op_f32(abs(var_2.b.b.a.x))), var_1.b.a.x, 900f, 1672f))), u_input.b.x);
}

