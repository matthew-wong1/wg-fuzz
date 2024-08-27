struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e.x * 865f), -909f) + _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-366f, arg_1.e.x)), 16184u, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.c, ~arg_1.c, arg_1.c), ~(~vec4<u32>(u_input.a, 35120u, 7094u, 7637u))), vec3<bool>(false, !arg_1.d.x, arg_1.d.x), arg_1.e), Struct_1(-1762f, ~0u, max(arg_1.c, abs(~vec4<u32>(37691u, 31268u, arg_1.c.x, 18612u))), arg_1.d, arg_1.e), vec3<bool>(arg_1.d.x, !(arg_1.d.x || any(vec3<bool>(arg_3.a.x, true, false))), firstTrailingBit(22516u) != firstLeadingBit(92307u)));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1516f * -1925f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1803f)))), 25609u, var_1.a.c, select(var_1.c, !vec3<bool>(var_1.c.x, false, false), vec3<bool>(!var_1.a.d.x, any(vec4<bool>(arg_3.a.x, var_1.a.d.x, true, false)), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(var_1.b.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.a, var_1.b.a, arg_0.b.x, var_1.a.e.x))) * var_1.a.e)))), Struct_1(_wgslsmith_f_op_f32(step(-440f, arg_1.a)), _wgslsmith_mult_u32(0u, u_input.d), arg_1.c, !select(!arg_1.d, var_1.a.d, false || var_1.c.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - 551f)), _wgslsmith_f_op_f32(f32(-1f) * -664f), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * var_1.b.e.x))), var_1.a.d);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2385f), _wgslsmith_f_op_f32(arg_0.b.x * arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, arg_0.b.x)) + arg_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1407f * -502f))) * arg_1.a));
    var var_3 = Struct_3(-1752f);
    return firstTrailingBit(1i);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, min(-2147483647i, u_input.b.x), u_input.b.x), vec3<i32>(-44055i & u_input.b.x, ~(-31075i), u_input.b.x)), -1i, u_input.b.x | countOneBits(u_input.b.x), 14307i), vec4<i32>(select(u_input.b.x, 2147483647i, true), u_input.b.x, u_input.b.x, 32996i) & vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-2147483647i, 1i)), -u_input.b), u_input.b.x, func_3(Struct_4(u_input.b, vec2<f32>(-533f, -978f)), Struct_1(-738f, 24731u, vec4<u32>(52969u, u_input.a, 52115u, u_input.d), vec3<bool>(true, false, false), vec4<f32>(127f, -805f, -1000f, -773f)), -vec3<i32>(u_input.b.x, u_input.b.x, -34057i), Struct_5(vec2<bool>(true, false))), ~u_input.b.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(-747f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)))), true)), 4294967295u, vec4<u32>(80288u, u_input.c, max(_wgslsmith_mod_u32(1u, 39866u), u_input.a), u_input.c), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, false, false, true))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(140f, 699f)), 958f, -137f, -1048f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(659f, 1000f, 617f, 768f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, -171f, -489f) + vec4<f32>(-491f, 703f, -738f, 826f)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f + _wgslsmith_f_op_f32(-1434f + -2613f)))));
    let var_3 = u_input.d == _wgslsmith_sub_u32(u_input.a, 19121u);
    var var_4 = var_1.b;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec3<bool>) -> bool {
    var var_0 = min(abs(_wgslsmith_add_vec3_i32(-vec3<i32>(8913i, u_input.b.x, u_input.b.x), -(vec3<i32>(u_input.b.x, u_input.b.x, 38642i) << (vec3<u32>(22113u, 4294967295u, arg_1.x) % vec3<u32>(32u))))), vec3<i32>(-1i) * -vec3<i32>(~0i, func_2(), u_input.b.x >> (u_input.a % 32u)));
    var_0 = ~(-vec3<i32>(i32(-1i) * -var_0.x, _wgslsmith_div_i32(1i, select(u_input.b.x, 1i, arg_0.a.x)), -u_input.b.x));
    var_0 = ~_wgslsmith_sub_vec3_i32(-(~(~vec3<i32>(var_0.x, 24785i, 1814i))), vec3<i32>(u_input.b.x, 1i, -1i));
    var var_1 = ~(-2234i);
    var_0 = -(~(vec3<i32>(-1i) * -vec3<i32>(12926i, var_0.x, var_0.x)) | _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, abs(0i), -1i), countOneBits(vec3<i32>(-11662i, u_input.b.x, -1726i))));
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~reverseBits(u_input.a)), _wgslsmith_add_vec2_u32(max(~vec2<u32>(7848u, 31761u), _wgslsmith_mod_vec2_u32(vec2<u32>(8959u, 0u), vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(u_input.d, u_input.a) << (vec2<u32>(10140u, 0u) % vec2<u32>(32u)))));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(abs(-2239f))))), reverseBits(countOneBits(~var_0.x ^ max(var_0.x, 4294967295u))), ~vec4<u32>(min(u_input.d ^ var_0.x, var_0.x), ~var_0.x, var_0.x, abs(_wgslsmith_add_u32(0u, 1u))), select(!vec3<bool>(all(vec3<bool>(arg_0, true, false)), !arg_0, var_0.x > 102015u), select(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(true, true, false), vec3<bool>(arg_0, arg_0, arg_0), true), 0u <= u_input.c), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, false), vec3<bool>(true, false, false)), arg_0), select(vec3<bool>(arg_0, arg_1.a.x <= arg_2.x, arg_0), !(!vec3<bool>(false, arg_0, true)), all(vec3<bool>(true, true, true)))), vec4<f32>(889f, 1325f, _wgslsmith_f_op_f32(round(arg_1.b.x)), 1083f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_3.x;
    var var_1 = Struct_3(arg_2);
    let var_2 = -1079f;
    let var_3 = Struct_3(arg_0.e.x);
    var var_4 = !(!select(select(select(vec4<bool>(false, false, arg_0.d.x, arg_1.a.x), vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_0.d.x)), !vec4<bool>(arg_1.a.x, true, false, arg_1.a.x), !arg_0.d.x), select(select(vec4<bool>(arg_0.d.x, false, arg_1.a.x, arg_1.a.x), vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_0.d.x), true), select(vec4<bool>(arg_1.a.x, true, false, true), vec4<bool>(arg_1.a.x, false, false, true), false), any(vec3<bool>(arg_1.a.x, true, true))), any(select(vec4<bool>(arg_1.a.x, true, true, arg_0.d.x), vec4<bool>(true, arg_0.d.x, arg_0.d.x, false), vec4<bool>(arg_1.a.x, false, false, true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_4(vec2<i32>(0i, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)))), 1276f));
    var var_2 = func_5(func_4(any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(Struct_5(vec2<bool>(true, false)), vec2<u32>(u_input.c, 4294967295u), vec3<bool>(false, false, false)))), Struct_4(u_input.b, vec2<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), vec4<i32>(-(~23789i), 0i, var_1.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(3963u, u_input.d)) % 32u), u_input.b.x)), Struct_5(vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), ~u_input.a != (u_input.a >> (u_input.c % 32u)))), 230f, (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 29319u, 1u), vec4<u32>(0u, u_input.c, u_input.c, u_input.d)), u_input.d | 14925u) ^ countOneBits(vec2<u32>(29109u, u_input.a))) | reverseBits(vec2<u32>(u_input.c >> (u_input.a % 32u), 10587u)));
    var_0 = var_1.a.x != firstTrailingBit(-43232i);
    var var_3 = vec2<u32>(min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(43240u, 0u), 4294967295u), select(var_2.b, func_5(Struct_1(-376f, u_input.c, var_2.c, vec3<bool>(var_2.d.x, var_2.d.x, true), var_2.e), Struct_5(var_2.d.yz), -1895f, var_2.c.zx).b, var_2.d.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_2.b), vec2<u32>(17883u, var_2.c.x))), firstTrailingBit(37248u));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(-419f, -1701f)) + _wgslsmith_f_op_vec2_f32(min(var_2.e.wx, var_2.e.xx))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1002f, 718f), var_1.b, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1059f, var_1.b.x))))))));
    var_2 = func_4(var_2.d.x, Struct_4(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, -21775i), var_1.a, var_1.a), -firstLeadingBit(vec2<i32>(35519i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(func_5(func_5(Struct_1(-1000f, 1u, var_2.c, vec3<bool>(var_2.d.x, false, true), var_2.e), Struct_5(var_2.d.xz), -139f, vec2<u32>(97062u, var_3.x)), Struct_5(var_2.d.yz), func_5(Struct_1(var_1.b.x, var_3.x, vec4<u32>(107903u, 2175u, 13893u, var_2.c.x), vec3<bool>(var_2.d.x, true, true), var_2.e), Struct_5(var_2.d.yy), var_2.a, vec2<u32>(4294967295u, 1u)).a, vec2<u32>(4294967295u, 78094u) >> (vec2<u32>(var_3.x, 1u) % vec2<u32>(32u))).e.xx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.x, -2028f), var_1.b)), var_2.d.zy))), -vec4<i32>(_wgslsmith_mod_i32(~11701i, var_1.a.x << (5245u % 32u)), 1i, u_input.b.x, u_input.b.x));
    var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(select(var_1.b.x, -650f, var_2.d.x))) * _wgslsmith_f_op_f32(f32(-1f) * -228f)), reverseBits(~u_input.d), ~vec4<u32>(1u, var_2.b, var_2.b, u_input.a) & var_2.c, vec3<bool>(true, !var_2.d.x, all(select(vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, true), vec4<bool>(true, true, var_2.d.x, var_2.d.x), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(-var_2.e)), Struct_5(!var_2.d.zz), _wgslsmith_f_op_f32(abs(154f)), var_2.c.wx);
    let var_5 = all(vec3<bool>(all(vec4<bool>(all(vec3<bool>(var_2.d.x, var_2.d.x, false)), true, any(vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x)), var_2.d.x)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~13654i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_div_f32(var_1.b.x, var_4.x)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 63267u, var_2.b, 0u), vec4<u32>(0u, var_3.x, var_3.x, var_2.c.x)), ~vec4<u32>(9444u, 2055u, 3344u, 51484u)), var_2.c), var_3.x);
}

