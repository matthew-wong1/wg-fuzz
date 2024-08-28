struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = select(select(vec4<bool>(select(true, u_input.c.x > u_input.c.x, all(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, false)), !(u_input.b.x < 18385u), true), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, false, any(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, true)))), select(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)), true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true)))), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-502f, -479f, 1000f, _wgslsmith_f_op_f32(-1563f + 1278f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1836f, 627f, -414f, -617f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2116f, -778f)), -160f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1041f, 323f), _wgslsmith_f_op_f32(select(-1000f, 1036f, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -174f)))));
    var var_2 = Struct_1(~vec2<u32>(4294967295u, _wgslsmith_clamp_u32(~10146u, 1u, ~u_input.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, var_1.x) - vec2<f32>(var_1.x, var_1.x))) * var_1.yy) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_1.ww, var_1.wx))))), min(firstTrailingBit(vec2<u32>(73320u, u_input.b.x) >> ((vec2<u32>(4294967295u, 9008u) | vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u))), ~vec2<u32>(39268u, 1u) & vec2<u32>(0u ^ u_input.b.x, u_input.b.x)), var_0.yw, ~min(~u_input.b.x, 1u) >> ((u_input.b.x & ~_wgslsmith_clamp_u32(27768u, u_input.b.x, u_input.b.x)) % 32u));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_2.b.x, -578f, var_2.b.x))))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f)), _wgslsmith_f_op_f32(min(-1259f, -529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) + 1000f))));
    let var_3 = Struct_1(~u_input.b.zz, _wgslsmith_f_op_vec2_f32(max(var_1.wy, var_2.b)), _wgslsmith_div_vec2_u32(var_2.a, var_2.c), var_0.yw, 8240u);
    return var_2.a.x | ~(~(~abs(var_3.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = firstTrailingBit(~u_input.b.x);
    var var_1 = vec4<u32>(0u, arg_2.x, ~(72841u & (_wgslsmith_add_u32(var_0, var_0) & arg_0.c.x)), ~arg_0.a.x);
    var var_2 = arg_0;
    let var_3 = !select(vec4<bool>(_wgslsmith_add_u32(8523u, var_1.x) >= ~1u, true, select(false, all(vec3<bool>(false, true, true)), 48727u != arg_0.a.x), true), select(!vec4<bool>(arg_0.d.x, true, false, true), vec4<bool>(true || arg_0.d.x, arg_1 <= u_input.a.x, true, var_2.d.x), !(var_1.x == var_2.e)), true);
    let var_4 = arg_1;
    return vec3<u32>(u_input.b.x, select(func_3(), ~(~0u), any(!vec4<bool>(false, var_2.d.x, false, false))) | _wgslsmith_mod_u32(min(~4294967295u, ~var_1.x), _wgslsmith_mod_u32(arg_0.c.x, u_input.b.x) | ~var_0), arg_2.x & _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.b.x, var_0 >> (var_0 % 32u)), _wgslsmith_sub_u32(u_input.b.x << (90188u % 32u), ~24366u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = ~u_input.b;
    var_0 = func_2(Struct_1(~(~vec2<u32>(var_0.x, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), arg_2))), ~_wgslsmith_div_vec2_u32(var_0.yz, arg_0.a) ^ ~(vec2<u32>(var_0.x, arg_1.c.x) << (vec2<u32>(36093u, arg_1.c.x) % vec2<u32>(32u))), arg_1.d, firstLeadingBit(_wgslsmith_div_u32(1u, reverseBits(var_0.x)))), reverseBits(u_input.a.x) << (u_input.b.x % 32u), ~u_input.b ^ vec3<u32>(~reverseBits(arg_0.c.x), arg_0.e, ~1u));
    let var_1 = u_input.c.x;
    return _wgslsmith_f_op_f32(arg_1.b.x * -731f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, !(-695f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b.xy, vec2<f32>(-1000f, 533f), u_input.b.zy, vec2<bool>(true, true), u_input.b.x), Struct_1(u_input.b.zz, vec2<f32>(2315f, -1036f), vec2<u32>(1u, 40269u), vec2<bool>(true, false), u_input.b.x), -462f, vec2<bool>(false, false))))), !((4817u <= u_input.b.x) || true) || any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = all(!select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(false, true), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(u_input.b.xy, max(vec2<u32>(func_2(Struct_1(u_input.b.xz, vec2<f32>(1639f, 1223f), u_input.b.zz, vec2<bool>(true, true), 1u), u_input.a.x, vec3<u32>(1u, u_input.b.x, 1u)).x, 1u), ~(~vec2<u32>(0u, 6171u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-352f, 2147f), vec2<f32>(832f, -974f))) + vec2<f32>(-569f, -931f)) * vec2<f32>(1304f, _wgslsmith_f_op_f32(step(-1104f, 2138f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(914f, 656f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(375f, 375f)))), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), any(vec2<bool>(true, false))))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zx, u_input.b.xx), abs(vec2<u32>(41521u, u_input.b.x))) >> (u_input.b.xy % vec2<u32>(32u)), vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1754f)), _wgslsmith_f_op_f32(step(2376f, 1654f)), false)) >= _wgslsmith_div_f32(547f, -228f), true), _wgslsmith_div_u32(reverseBits(~u_input.b.x | u_input.b.x), 1u >> (u_input.b.x % 32u)));
    var_1 = Struct_1(u_input.b.zz, vec2<f32>(675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x - -711f))))), vec2<u32>(_wgslsmith_add_u32(var_1.e, _wgslsmith_mult_u32(u_input.b.x | 4294967295u, select(u_input.b.x, var_1.a.x, var_1.d.x))), u_input.b.x), !vec2<bool>(false, all(var_1.d)), max(min(_wgslsmith_sub_u32(0u, u_input.b.x), 4294967295u), 1u >> ((0u & u_input.b.x) % 32u)) << (func_2(Struct_1(~vec2<u32>(u_input.b.x, var_1.c.x), _wgslsmith_f_op_vec2_f32(max(var_1.b, var_1.b)), u_input.b.yz, var_1.d, ~22721u), _wgslsmith_clamp_i32(u_input.c.x, min(4345i, u_input.a.x), _wgslsmith_mult_i32(-33308i, u_input.c.x)), select(vec3<u32>(u_input.b.x, var_1.e, u_input.b.x), vec3<u32>(var_1.a.x, 1u, u_input.b.x), var_1.d.x)).x % 32u));
    let var_2 = var_1.b.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(var_1.e, u_input.b.x), vec2<f32>(-557f, -3146f), ~u_input.b.yy, var_1.d, var_1.a.x ^ 87521u), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(16477u, 1u), var_1.c), vec2<f32>(1f, 1f), var_1.c, var_1.d, var_1.a.x), _wgslsmith_f_op_f32(1f * 575f), var_1.d))) + -2176f);
    var var_4 = vec4<bool>(true, var_1.d.x, any(vec4<bool>(true, !var_1.d.x & any(vec3<bool>(var_1.d.x, var_1.d.x, false)), true, ~var_1.e < (var_1.a.x ^ u_input.b.x))), abs(~(15135i >> (u_input.b.x % 32u))) == (-u_input.c.x | u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, max(~vec4<u32>(_wgslsmith_mult_u32(0u, var_1.e), 43431u, abs(4294967295u), ~79327u), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b.x, var_1.c.x, 4294967295u, 1u), vec4<u32>(var_1.e, 30450u, 1u, 34913u), false), ~vec4<u32>(u_input.b.x, var_1.c.x, var_1.a.x, 4294967295u)))));
}

