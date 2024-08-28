struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    let var_0 = reverseBits(_wgslsmith_mult_i32(max(min(~arg_1.x, ~arg_1.x), _wgslsmith_dot_vec3_i32(arg_1, arg_1)), countOneBits(arg_1.x)));
    let var_1 = Struct_3(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(min(2313f, -1560f)) <= _wgslsmith_f_op_f32(min(889f, arg_0)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0, -540f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))));
    let var_3 = Struct_1(select(select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, true, false), !vec3<bool>(true, var_1.a, var_1.a)), !vec3<bool>(var_1.a, true, false), vec3<bool>(false, !var_1.a, false)), !(!select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(false, var_1.a, true), var_1.a)), vec3<bool>(var_1.a, (true | var_1.a) || var_1.a, var_1.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(min(~vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(~u_input.a.x, 30490u)), vec2<u32>(1u, u_input.a.x)), _wgslsmith_div_u32(~u_input.a.x >> (abs(11667u) % 32u), min(1u, 0u ^ u_input.b.x)) > ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-579f, arg_0, 1206f, var_2)))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, arg_0, -759f, _wgslsmith_f_op_f32(arg_0 + 600f))))));
    let var_4 = _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(1i, -arg_1.x, 0i, max(var_0, 45419i))), vec4<i32>((_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, 5013i, arg_1.x)) ^ ~arg_1.x) << (0u % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1.x, var_0), _wgslsmith_sub_i32(-1i, -2147483647i)), var_0), -(~9521i >> (~u_input.a.x % 32u)), i32(-1i) * -1i));
    return _wgslsmith_clamp_i32(~min(_wgslsmith_dot_vec2_i32(arg_1.zx, arg_1.zx), -arg_1.x), abs(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(select(var_0, var_4, var_1.a), i32(-1i) * -1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -max(var_4, 23792i), -_wgslsmith_mod_i32(var_4, var_4), ~arg_1.x << (4294967295u % 32u)), vec4<i32>(-(-2534i >> (u_input.b.x % 32u)), i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -75810i), -vec2<i32>(23026i, -1i)), -1i)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_3(-1528f, _wgslsmith_add_vec3_i32(vec3<i32>(-65651i, -49024i, 25535i), vec3<i32>(-1i, 30880i, -2147483647i))), -2147483647i), max(1i, _wgslsmith_mult_i32(2147483647i, 1i)), -15943i), _wgslsmith_dot_vec3_i32(vec3<i32>(-69645i, -2485i, _wgslsmith_div_i32(select(-18829i, -2147483647i, false), 52429i)), ~firstLeadingBit(abs(vec3<i32>(-3431i, 19479i, 2147483647i)))));
    let var_1 = vec2<i32>(-2147483647i, 20675i);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2073f, 487f, -501f)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(374f, 568f, 833f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(131f, -853f, -1000f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1498f, -188f, -569f) - vec3<f32>(1000f, 1329f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2201f, -673f, -1057f)))))));
    var_0 = var_1.x;
    var var_3 = vec2<bool>(true, true);
    return Struct_3(true);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(vec3<bool>(all(!select(vec4<bool>(false, false, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, true, false), arg_0.a)), false, arg_0.a), vec2<u32>(u_input.b.x | u_input.a.x, u_input.b.x), select(any(vec3<bool>(true, !arg_0.a, arg_0.a)), true, true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-898f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(643f, -260f, arg_0.a)), _wgslsmith_f_op_f32(-1000f - 1673f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -338f))), _wgslsmith_f_op_f32(-631f * 633f)))));
    let var_1 = func_2();
    let var_2 = select(59315u, 1u, !(!arg_0.a));
    var_0 = Struct_1(var_0.a, ~_wgslsmith_sub_vec2_u32(u_input.b.ww, _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.b.x), var_0.b)), true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, var_0.d.x, 1000f, var_0.d.x)))))), _wgslsmith_f_op_vec4_f32(ceil(var_0.d)))));
    let var_3 = Struct_3(all(!(!vec4<bool>(var_0.a.x, false, var_0.c, true))));
    return 2711i;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1126f)));
    var var_1 = _wgslsmith_mod_i32(func_4(func_2(), -15657i, _wgslsmith_clamp_i32(-47762i, 2147483647i, 36106i), _wgslsmith_mod_vec2_i32(vec2<i32>(-14048i, -2147483647i), firstLeadingBit(~vec2<i32>(10590i, 1i)))), 12994i);
    let var_2 = Struct_1(!vec3<bool>(any(!vec4<bool>(false, arg_1.x, true, false)), (arg_1.x | true) == arg_0.a, !(arg_1.x | arg_1.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u | u_input.b.x, ~u_input.b.x), vec2<u32>(34463u, 1u), vec2<u32>(u_input.b.x ^ 15719u, u_input.a.x)) ^ vec2<u32>(~(~u_input.a.x), firstTrailingBit(u_input.b.x)), !arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(941f)) - _wgslsmith_f_op_f32(var_0 + var_0)), var_0)));
    var_1 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-var_0))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(max(~u_input.b.xwx, u_input.b.xwz) >> (firstLeadingBit(~_wgslsmith_mod_vec3_u32(u_input.b.wzy, vec3<u32>(0u, u_input.a.x, 9288u))) % vec3<u32>(32u)));
    let var_1 = func_1(Struct_3(true), vec3<bool>(!all(vec4<bool>(true, false, false, true)), !any(vec2<bool>(true, true)), !(true && all(vec4<bool>(false, true, false, true)))));
    let var_2 = Struct_2(func_1(func_2(), var_1.a), ~(~(~vec4<u32>(4101u, 50130u, 38573u, u_input.b.x) << ((u_input.b | vec4<u32>(1u, 4294967295u, 35321u, var_0.x)) % vec4<u32>(32u)))), func_1(func_2(), vec3<bool>(var_1.c, var_1.a.x, func_2().a)), vec4<u32>(u_input.b.x, 1u, func_1(Struct_3(!var_1.a.x), var_1.a).b.x, ~abs(~46369u)), abs(-countOneBits(select(vec2<i32>(2147483647i, -1i), vec2<i32>(-77596i, 0i), true))));
    let var_3 = !all(select(var_2.c.a.xz, !select(vec2<bool>(false, true), vec2<bool>(true, true), true), !func_2().a));
    let var_4 = Struct_2(func_1(func_2(), !var_1.a), var_2.d, Struct_1(var_1.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) << (vec2<u32>(33717u, 22331u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(var_1.b, var_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 25075u), vec2<u32>(0u, 0u)), reverseBits(vec2<u32>(var_1.b.x, u_input.a.x)))), var_1.c, var_2.a.d), ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(var_0.x, var_2.d.x, var_0.x, 91369u) ^ var_2.d), firstTrailingBit(_wgslsmith_mod_vec4_u32(var_2.b, vec4<u32>(0u, 1u, var_2.a.b.x, var_2.a.b.x)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -var_2.e, vec2<i32>(var_2.e.x & -30372i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.e.x), vec4<i32>(var_2.e.x, 26065i, var_2.e.x, 16640i))), vec2<i32>(-1i & var_2.e.x, min(0i, -25111i))) | _wgslsmith_sub_vec2_i32(var_2.e, ~firstLeadingBit(var_2.e)));
    var_0 = vec3<u32>(_wgslsmith_sub_u32(79592u, abs(var_2.d.x) ^ _wgslsmith_sub_u32(firstLeadingBit(21451u), var_1.b.x)), 56973u, var_2.b.x);
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-495f, _wgslsmith_f_op_f32(f32(-1f) * -1278f))) - _wgslsmith_f_op_f32(round(-1327f)))));
}

