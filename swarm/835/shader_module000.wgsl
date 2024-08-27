struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: i32) -> vec2<u32> {
    let var_0 = Struct_1(vec3<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(65532u, 1u, u_input.a.x), vec3<u32>(u_input.b, u_input.c.x, 4294967295u)), u_input.c.x), firstLeadingBit(u_input.c.x | 8804u), _wgslsmith_mod_u32(11131u | u_input.a.x, _wgslsmith_div_u32(0u, u_input.b))) << (u_input.a.yxz % vec3<u32>(32u)), !any(!vec3<bool>(true, false, arg_2.x)), _wgslsmith_f_op_f32(exp2(arg_0)), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, arg_1.x, u_input.e, arg_3) << (u_input.c % vec4<u32>(32u)), abs(vec4<i32>(-16019i, 2147483647i, 33970i, arg_1.x))), abs(select(vec4<i32>(-7534i, -1i, arg_3, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, -24802i, 44287i), true)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-237f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1114f, -1787f)) + _wgslsmith_f_op_f32(arg_0 * var_0.c)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2270f))))), var_0.c, arg_0);
    let var_2 = 4294967295u;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-799f, var_0.c, var_0.c, var_1.x))) - vec4<f32>(-2812f, _wgslsmith_f_op_f32(1346f + 680f), _wgslsmith_f_op_f32(201f + -842f), _wgslsmith_f_op_f32(187f * arg_0))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-476f, 527f) + vec2<f32>(var_0.c, arg_0)) + vec2<f32>(var_1.x, -414f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c, var_1.x))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-491f, var_1.x)))))), select(arg_2.yy, arg_2.yx, true))));
    return firstTrailingBit(select(vec2<u32>(countOneBits(4294967295u), ~1u), ~var_0.a.xx, !(arg_2.x || arg_2.x))) & (vec2<u32>(~4294967295u, 1u) | u_input.c.zw);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(vec3<u32>(~1u | u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 42617u), u_input.c.zx)), abs(~u_input.a.x)), false, -102f, vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.d.x, 6736i, u_input.d.x, 22427i))), _wgslsmith_mod_vec2_u32(u_input.c.zz, vec2<u32>(3738u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.c.zw))), u_input.c.x);
    var var_1 = Struct_2(var_0.a, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(func_3(-1428f, vec2<i32>(var_0.a.d.x, u_input.d.x), vec3<bool>(true, var_0.a.b, var_0.a.b), firstLeadingBit(-1i)), ~vec2<u32>(10318u, var_0.a.a.x)), ~vec2<u32>(reverseBits(u_input.b), var_0.b.x)), 58401u);
    let var_2 = var_0.a.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3864f) - -874f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.c))) - var_1.a.c)));
    let var_4 = select(~0i, -41030i, var_0.a.b);
    return var_1.a.d;
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(select(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 123429u), ~u_input.b, 28118u), u_input.a.yxz, vec3<bool>(true, select(false, false, true), all(vec4<bool>(true, true, false, false)))) ^ u_input.a.zzx, !(!any(vec4<bool>(true, true, true, true))), -243f, _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.e, 0i, u_input.e, 2147483647i) | vec4<i32>(u_input.d.x, -18186i, 2147483647i, 30661i)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.e, u_input.e, u_input.e, -1i), min(vec4<i32>(-28204i, 2147483647i, u_input.e, -31770i), vec4<i32>(u_input.d.x, 20097i, u_input.d.x, -1i)))), ~func_2()));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_div_f32(var_0.c, var_0.c)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-285f * _wgslsmith_f_op_f32(-var_0.c)) - var_0.c);
    var var_2 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, var_0.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))));
    return ~_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(38436u, 1997u, _wgslsmith_mult_u32(var_2.a.x, var_2.a.x >> (6865u % 32u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2343f, 479f)) + _wgslsmith_f_op_f32(f32(-1f) * -1301f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1602f, -705f)), -1000f)))) > -452f;
    let var_1 = ~abs(vec4<i32>(-u_input.d.x, 23939i, ~(-18172i), 0i) << (func_1() % vec4<u32>(32u)));
    let var_2 = countOneBits(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(~u_input.d, u_input.d), -43748i));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1157f * 393f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1140f)), -1511f)))) - _wgslsmith_f_op_f32(abs(-662f)))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f))));
    var var_4 = vec4<i32>(var_2, select(27329i, -1i, var_0), ~_wgslsmith_add_i32(-2147483647i, select(var_1.x, -2147483647i, all(vec2<bool>(var_0, var_0)))), max(0i & firstTrailingBit(firstTrailingBit(u_input.d.x)), reverseBits(var_2 ^ -u_input.d.x)));
    let var_5 = vec4<bool>(var_0, any(!select(select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, true, true)), !vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, var_0, true, true))), true, true);
    let var_6 = ~(~(~vec4<i32>(var_2, ~2147483647i, 2147483647i, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f + 1980f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(131f, 398f, true)), _wgslsmith_f_op_f32(floor(729f)))))) - 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-534f * 517f))), -802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(131f + 1357f) * _wgslsmith_f_op_f32(round(267f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1959f), -587f, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), 295f, -220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(284f + -429f) - _wgslsmith_f_op_f32(1447f + -470f))), var_0)));
}

