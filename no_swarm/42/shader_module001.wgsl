struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(4294967295u, u_input.d, true, arg_0.c.x), arg_0.b, vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.d + 1272f), _wgslsmith_f_op_f32(-arg_0.c.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, max(arg_0.b.a, 4294967295u)), arg_0.d));
    var var_1 = Struct_1(_wgslsmith_mod_u32(14830u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, 46800u), ~vec3<u32>(15590u, var_0.d.x, arg_1.a.a), ~u_input.b), ~u_input.b)), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.d, arg_1.a.b, -24268i, -21741i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, arg_0.a.b, u_input.c.x, -2147483647i), u_input.c)), !select(vec4<bool>(arg_0.b.c, var_0.b.c, arg_0.a.c, var_0.b.c), vec4<bool>(arg_1.a.c, var_0.a.c, false, var_0.b.c), var_0.b.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -20135i, -10597i, ~arg_0.b.b, 0i), u_input.c)), any(!(!(!vec2<bool>(false, arg_0.a.c)))), 2140f);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1547f, 477f, arg_0.c.x, 663f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(trunc(-185f)), -953f, _wgslsmith_f_op_f32(-arg_1.c.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.d, -2408f, -1351f, -199f)))) * vec4<f32>(-1067f, -376f, var_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.d, 406f)))))));
    let var_3 = select(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, ~u_input.b), max(~vec3<u32>(var_0.d.x, 0u, 1u), vec3<u32>(u_input.b.x, 0u, u_input.b.x))), firstLeadingBit(~_wgslsmith_div_vec3_u32(u_input.b << (vec3<u32>(var_0.b.a, 19607u, var_0.a.a) % vec3<u32>(32u)), abs(vec3<u32>(arg_0.d.x, 1u, var_1.a)))), vec3<bool>(select(true, any(vec4<bool>(true, var_0.a.c, arg_1.a.c, true)), var_1.c | !arg_1.a.c), true, var_0.a.c));
    let var_4 = vec4<bool>(true, _wgslsmith_f_op_f32(-arg_0.b.d) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.b.d)))) - _wgslsmith_f_op_f32(436f - _wgslsmith_f_op_f32(step(-1000f, var_0.c.x)))), all(vec2<bool>(var_1.c, _wgslsmith_mod_i32(u_input.d, -1i) >= ~u_input.a.x)), true);
    return true;
}

fn func_2() -> u32 {
    let var_0 = any(vec4<bool>((u_input.b.x < u_input.b.x) && func_3(Struct_2(Struct_1(u_input.b.x, 4220i, false, 845f), Struct_1(76423u, -1i, false, 967f), vec2<f32>(-649f, -1828f), u_input.b.zy), Struct_2(Struct_1(38640u, -12884i, true, -1556f), Struct_1(u_input.b.x, 8144i, false, -1000f), vec2<f32>(840f, 356f), u_input.b.yz)), select(true, u_input.d == u_input.c.x, false), true & all(vec4<bool>(false, false, true, true)), true)) || true;
    let var_1 = Struct_3(!select(!(!vec4<bool>(var_0, false, false, false)), !(!vec4<bool>(var_0, false, var_0, false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1405f - -338f) - _wgslsmith_f_op_f32(sign(-699f))), -996f))), select(!(!(!vec3<bool>(var_0, var_0, true))), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, var_0))), !select(!vec3<bool>(var_0, false, var_0), !vec3<bool>(var_0, false, var_0), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(var_0, false, false)))), Struct_2(Struct_1(u_input.b.x, u_input.d, any(vec3<bool>(var_0, true, var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(2431f, 1931f))))), Struct_1(u_input.b.x, u_input.c.x, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2548f * 851f) - -1343f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-976f, -1184f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -617f)))), u_input.b.zy), _wgslsmith_dot_vec4_i32(-(~reverseBits(u_input.c)), vec4<i32>(countOneBits(-13895i), -8802i, u_input.d, 1i) << (~(~vec4<u32>(31506u, u_input.b.x, u_input.b.x, 108597u)) % vec4<u32>(32u))));
    let var_2 = var_1.d.b;
    var var_3 = ~var_2.a;
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_2.a, var_1.d.d.x, u_input.b.x, u_input.b.x)), vec4<u32>(3021u, ~u_input.b.x, firstTrailingBit(18673u), 4294967295u)), 29160u, 5115u), u_input.b);
    return var_2.a;
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))));
    let var_1 = _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), _wgslsmith_mult_i32(~13651i >> (_wgslsmith_mult_u32(u_input.b.x, 28843u) % 32u), u_input.d)) >= -1i;
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, func_2()), ~89974u), -2147483647i, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f - -1576f) + _wgslsmith_f_op_f32(max(-1000f, 527f)))) + -1555f));
    var_0 = vec4<bool>(!(!(var_0.x || var_0.x)), true, 32310u < u_input.b.x, all(select(var_0.yz, vec2<bool>(var_1, any(vec2<bool>(true, true))), true)));
    return StorageBuffer(vec2<u32>(~u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, var_3.d, -185f) * vec3<f32>(var_3.d, -528f, var_3.d)) * vec3<f32>(2037f, var_3.d, -621f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, -451f, -309f))) + vec3<f32>(328f, var_3.d, 1664f)), vec3<bool>(var_0.x, true, var_3.c))), ~max(select(vec4<u32>(u_input.b.x, 7176u, var_3.a, u_input.b.x), vec4<u32>(3010u, var_3.a, var_3.a, var_3.a), vec4<bool>(var_0.x, true, true, true)), ~vec4<u32>(22565u, 11065u, 0u, var_3.a)) >> (~vec4<u32>(53771u, _wgslsmith_add_u32(u_input.b.x, 11450u), 0u, ~u_input.b.x) % vec4<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, var_3.a))), ~(~(u_input.b.x & var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)));
    var var_1 = reverseBits(~(~u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67042u, 67202u), vec3<u32>(4294967295u, 1u, u_input.b.x)) % 32u))) << (~u_input.b.x % 32u);
    let x = u_input.a;
    s_output = func_1();
}

