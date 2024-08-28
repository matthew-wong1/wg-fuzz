struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec4<bool> {
    let var_0 = Struct_1(vec4<bool>(true, false, !any(vec4<bool>(arg_1, false, arg_1, false)), arg_1 || arg_1), ~u_input.a.x, vec2<bool>(select(arg_1, false, arg_1), arg_1), u_input.a.x, select(vec2<bool>(true, true), vec2<bool>(u_input.c != 65877u, true), true));
    var var_1 = Struct_1(!select(var_0.a, var_0.a, _wgslsmith_f_op_f32(step(-1029f, -498f)) != _wgslsmith_div_f32(-696f, -2038f)), u_input.c, !var_0.e, 4294967295u, !var_0.e);
    var var_2 = arg_0.x;
    let var_3 = !(!var_0.e);
    var_2 = select(1u, select(_wgslsmith_div_u32(firstTrailingBit(arg_0.x ^ u_input.a.x), 80088u), (~u_input.c >> (u_input.a.x % 32u)) << (~(~4294967295u) % 32u), u_input.d <= -u_input.d), all(select(!select(var_1.a, var_0.a, arg_1), var_1.a, var_3.x)));
    return select(select(vec4<bool>(true, true, _wgslsmith_f_op_f32(624f * -898f) > _wgslsmith_f_op_f32(ceil(1000f)), !var_3.x), !vec4<bool>(all(vec2<bool>(false, true)), select(var_0.c.x, var_3.x, false), var_1.a.x, !var_3.x), select(all(var_0.c), (u_input.d == u_input.d) != (u_input.c <= arg_0.x), all(var_1.a.yxy) != false)), select(var_0.a, var_1.a, vec4<bool>(false, false, all(var_0.a.wwx), !var_1.a.x || true)), !vec4<bool>(_wgslsmith_f_op_f32(1053f + -1161f) > _wgslsmith_f_op_f32(round(829f)), false, true, !var_3.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_3.a);
    let var_1 = vec2<i32>((u_input.b.x & _wgslsmith_add_i32(-27456i, -u_input.d)) ^ _wgslsmith_mod_i32(-(~28679i), u_input.b.x), countOneBits(1562i));
    let var_2 = ~u_input.a.xzz;
    var var_3 = Struct_1(select(!arg_3.a.a, select(func_3(select(vec4<u32>(4397u, 9254u, arg_0.x, arg_1.a.d), u_input.a, arg_3.a.e.x), !arg_3.a.c.x), var_0.a.a, arg_3.a.a), vec4<bool>(!arg_3.a.a.x, arg_3.a.b > 6275u, arg_1.a.a.x, true)), firstTrailingBit(0u), select(!vec2<bool>(arg_1.a.e.x, false), select(!select(arg_1.a.a.xz, vec2<bool>(false, true), false), arg_3.a.a.xw, vec2<bool>(true, arg_3.a.a.x)), true), _wgslsmith_div_u32(arg_2, ~19262u), !(!func_3(~u_input.a, arg_3.a.c.x || true).zw));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(828f, -1000f) + _wgslsmith_f_op_f32(-1617f - -525f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-853f - -604f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), 974f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(249f))))))));
    return Struct_2(Struct_1(arg_3.a.a, arg_0.x, vec2<bool>(true, true), ~(~1u), var_0.a.a.yy));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = min(u_input.b.x, -_wgslsmith_div_i32(-u_input.d, 0i));
    let var_1 = ~u_input.a.xyy;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - -1173f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3))), arg_3) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -229f), -743f, -948f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, -1453f, 1342f, arg_3) - vec4<f32>(arg_3, arg_3, -1348f, arg_3)))));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 13565i & u_input.b.x, 16006i, u_input.d), -vec4<i32>(u_input.b.x, u_input.d, 0i, 43012i)), firstLeadingBit(countOneBits(-1i)), _wgslsmith_dot_vec2_i32(u_input.b.xy, -vec2<i32>(u_input.b.x, 2147483647i))) >> (_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, arg_2.a.b, arg_2.a.b), u_input.a.ywz) << (~(~u_input.a.zww) % vec3<u32>(32u)), vec3<u32>(4294967295u, var_1.x, firstLeadingBit(arg_2.a.b))) % vec3<u32>(32u));
    let var_4 = arg_0;
    return ~(~(arg_2.a.d >> ((arg_2.a.b | var_4.a.d) % 32u))) >> ((_wgslsmith_add_u32(~u_input.c, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(69529u, u_input.a.x, 60514u), countOneBits(0u))) | ~arg_2.a.d) % 32u);
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_div_u32(countOneBits(u_input.a.x), ~_wgslsmith_div_u32(func_4(func_2(u_input.a.zz, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1u, vec2<bool>(false, true), 4294967295u, vec2<bool>(false, false))), 4294967295u, Struct_2(Struct_1(vec4<bool>(true, true, true, true), u_input.c, vec2<bool>(false, true), 23647u, vec2<bool>(true, false)))), true, func_2(u_input.a.xx, Struct_2(Struct_1(vec4<bool>(false, true, true, true), u_input.c, vec2<bool>(true, false), u_input.a.x, vec2<bool>(true, true))), 1u, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 39132u, vec2<bool>(false, true), 106639u, vec2<bool>(true, true)))), _wgslsmith_f_op_f32(step(-241f, 1000f))), firstTrailingBit(871u) << (~u_input.a.x % 32u)));
    let var_1 = func_2(_wgslsmith_clamp_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 42454u), vec2<u32>(48738u, 1u))), vec2<u32>(54536u, ~u_input.a.x), vec2<u32>(~(~u_input.c), u_input.a.x)), Struct_2(func_2(~firstTrailingBit(u_input.a.xx), func_2(u_input.a.wx, func_2(u_input.a.zz, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 429u, vec2<bool>(false, true), u_input.a.x, vec2<bool>(false, true))), 24209u, Struct_2(Struct_1(vec4<bool>(false, false, false, true), u_input.a.x, vec2<bool>(true, true), 1u, vec2<bool>(false, true)))), u_input.c, func_2(u_input.a.zw, Struct_2(Struct_1(vec4<bool>(false, true, true, false), u_input.c, vec2<bool>(false, true), 37917u, vec2<bool>(false, true))), u_input.a.x, Struct_2(Struct_1(vec4<bool>(true, false, false, true), u_input.c, vec2<bool>(false, true), u_input.a.x, vec2<bool>(false, true))))), ~1u, Struct_2(func_2(u_input.a.yw, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 67234u, vec2<bool>(true, true), 54865u, vec2<bool>(false, true))), 15021u, Struct_2(Struct_1(vec4<bool>(false, false, true, true), u_input.c, vec2<bool>(true, true), 6765u, vec2<bool>(false, true)))).a)).a), u_input.c, Struct_2(func_2(u_input.a.yw, Struct_2(Struct_1(vec4<bool>(true, true, false, true), u_input.a.x, vec2<bool>(false, false), 0u, vec2<bool>(true, false))), u_input.c >> ((u_input.a.x ^ 1u) % 32u), func_2(~vec2<u32>(14676u, 0u), func_2(vec2<u32>(u_input.c, u_input.a.x), Struct_2(Struct_1(vec4<bool>(false, true, false, false), u_input.c, vec2<bool>(false, true), u_input.c, vec2<bool>(true, true))), 4294967295u, Struct_2(Struct_1(vec4<bool>(false, true, true, false), 4294967295u, vec2<bool>(true, true), 1u, vec2<bool>(false, true)))), ~u_input.a.x, Struct_2(Struct_1(vec4<bool>(true, true, false, false), u_input.c, vec2<bool>(true, false), u_input.a.x, vec2<bool>(false, false))))).a)).a;
    var_0 = 1u;
    let var_2 = var_1.a.x;
    let var_3 = !func_3(u_input.a, any(!vec3<bool>(var_1.c.x, var_2, true))).x;
    return vec4<bool>(false, !(u_input.b.x == ~_wgslsmith_div_i32(-6654i, u_input.b.x)), reverseBits(abs(-u_input.d)) <= (u_input.d ^ firstLeadingBit(-19668i)), _wgslsmith_clamp_u32(~abs(u_input.c), select(66142u, abs(var_1.b), var_2), _wgslsmith_div_u32(~4294967295u, 700u)) != _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(1u, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(select(func_1(), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), true), vec4<bool>(all(vec4<bool>(false, true, false, true)), func_2(u_input.a.xx, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 20759u, vec2<bool>(true, true), u_input.a.x, vec2<bool>(false, true))), u_input.c, Struct_2(Struct_1(vec4<bool>(true, true, false, true), u_input.a.x, vec2<bool>(false, true), u_input.a.x, vec2<bool>(false, false)))).a.a.x, false, true), true || func_3(vec4<u32>(u_input.c, 24068u, u_input.a.x, 8546u), false).x), select(!func_1(), vec4<bool>(true, true, false, true), u_input.a.x < u_input.c), !all(vec3<bool>(true, false, false))), 0u, func_1().yw, ~select(u_input.c, ~1u, true), vec2<bool>(true, false));
    let var_1 = -(2147483647i & (u_input.b.x & ((i32(-1i) * -47035i) & (-21942i << (u_input.c % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-30182i, ~u_input.b.x | 2147483647i), _wgslsmith_clamp_vec2_u32(u_input.a.wz, u_input.a.zw, u_input.a.zw) ^ reverseBits(~u_input.a.ww));
}

