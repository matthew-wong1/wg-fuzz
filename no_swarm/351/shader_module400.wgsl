struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, -1325f)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), vec3<i32>(-2147483647i, 21883i, arg_1) | u_input.c, -(~vec3<i32>(6615i, u_input.c.x, 0i)), abs(-u_input.c.yx))), vec2<i32>(_wgslsmith_div_i32(107065i, -abs(arg_1)), arg_1), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-1i, 1i, arg_1)), countOneBits(arg_1), 26703i), u_input.c, ~u_input.c.xy | vec2<i32>(arg_1, arg_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -67129i, _wgslsmith_div_i32(11016i, -1i), countOneBits(-1i), abs(-19817i)), select(min(vec4<i32>(1i, u_input.c.x, u_input.c.x, arg_1), vec4<i32>(arg_1, u_input.a, 68443i, 7843i)), vec4<i32>(-24999i, -13704i, u_input.c.x, 0i), vec4<bool>(false, true, true, true))), arg_2.a.zx));
    var var_1 = -1i;
    let var_2 = var_0.c.a;
    var var_3 = ~_wgslsmith_mod_u32(~reverseBits(countOneBits(u_input.d)), 10865u);
    var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~37809u, arg_2.b.x) & arg_0, ~arg_2.b.zw);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-476f, -499f))))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.d, 1u), u_input.b, Struct_5(vec4<f32>(-917f, 561f, -1548f, 115f), vec4<u32>(0u, arg_0, 44842u, 4294967295u)))) + -641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1408f, -415f)) - _wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(f32(-1f) * -476f)))), vec4<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, firstTrailingBit(arg_1.x), countOneBits(u_input.d)), ~vec4<u32>(arg_1.x, 10052u, 3991u, 4294967295u)), 1u, arg_0));
    var var_1 = -(~abs(vec4<i32>(~u_input.a, select(0i, -9161i, false), u_input.b, _wgslsmith_mod_i32(2827i, 39719i))));
    let var_2 = Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -301f)), vec4<bool>(all(vec3<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, true)))), true, true, !(any(vec4<bool>(false, true, true, true)) || true)), ~vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-var_1.x, ~6867i), ~var_1.x), ~vec3<i32>(~(-2147483647i), -u_input.b, u_input.a) | u_input.c, u_input.c.zx);
    var var_3 = false;
    var_1 = ~vec4<i32>(u_input.a, firstTrailingBit(_wgslsmith_sub_i32(-1i, u_input.c.x)) & var_2.e.x, -(~_wgslsmith_div_i32(var_1.x, var_1.x)), 62797i);
    return abs(vec2<i32>(-2147483647i, i32(-1i) * -(u_input.b ^ u_input.b)));
}

fn func_1() -> vec2<bool> {
    var var_0 = firstTrailingBit(-(countOneBits(vec2<i32>(37094i, 0i)) & func_2(~4294967295u, vec3<u32>(u_input.d, 17203u, 1u) | vec3<u32>(u_input.d, 58193u, u_input.d))));
    var_0 = ~u_input.c.yz;
    var_0 = vec2<i32>(func_2(u_input.d, max(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, 39393u) & vec3<u32>(7600u, u_input.d, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.d), vec3<u32>(24133u, 4294967295u, u_input.d)) | ~vec3<u32>(0u, 27337u, 4294967295u))).x, 33752i);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1484f, -1740f, 997f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, -932f, -1146f))), vec3<f32>(_wgslsmith_div_f32(-800f, 166f), 244f, _wgslsmith_div_f32(-511f, -168f)))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, true, false)), true), ~vec3<i32>(-2147483647i, ~var_0.x, -9177i ^ u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.c.x), _wgslsmith_sub_i32(-2147483647i, var_0.x), var_0.x), min(abs(vec3<i32>(u_input.b, 2147483647i, var_0.x)), vec3<i32>(var_0.x, var_0.x, var_0.x))), ~u_input.c.yx));
    let var_2 = -222f;
    return vec2<bool>(any(vec4<bool>(var_0.x >= var_1.a.e.x, !var_1.a.b.x, !var_1.a.b.x & var_1.a.b.x, any(!vec2<bool>(var_1.a.b.x, false)))), var_1.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~firstTrailingBit(~u_input.d) | ~14038u) < 4294967295u;
    var_0 = all(select(vec2<bool>(any(vec4<bool>(true, true, false, false)), true), func_1(), func_1()));
    let var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-42078i, 22545i, -1i, 3020i), abs(vec4<i32>(u_input.b, u_input.c.x, u_input.a, -1i))), ~reverseBits(vec4<i32>(39683i, 0i, 1i, u_input.c.x) & vec4<i32>(-57557i, u_input.c.x, u_input.c.x, -13594i))) << (max(vec4<u32>(min(_wgslsmith_add_u32(u_input.d, u_input.d), u_input.d | u_input.d), firstTrailingBit(u_input.d), _wgslsmith_mod_u32(1u ^ u_input.d, u_input.d), min(reverseBits(u_input.d), ~u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d | 5116u, 4294967295u, select(u_input.d, u_input.d, true), u_input.d >> (u_input.d % 32u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.d, 0u, 31905u)), vec4<u32>(4294967295u, 14858u, 4294967295u, 0u)))) % vec4<u32>(32u));
    var_0 = any(select(vec2<bool>(_wgslsmith_mult_i32(u_input.a, u_input.c.x) != 1i, (48145u >> (u_input.d % 32u)) != _wgslsmith_clamp_u32(62647u, 35147u, 1u)), !vec2<bool>(func_1().x, true), func_1()));
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

