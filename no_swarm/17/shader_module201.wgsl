struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = countOneBits(~(~(~abs(vec3<u32>(1u, arg_0.a.b, 0u)))));
    var var_1 = arg_0.a.d.x;
    var var_2 = all(select(select(vec4<bool>(false, arg_0.a.e.x, false, arg_0.a.c.x), select(vec4<bool>(false, false, true, arg_0.a.c.x), vec4<bool>(true, true, false, true), true), true && arg_0.a.e.x), vec4<bool>(true, all(arg_0.a.c), arg_0.a.c.x, u_input.a.x < -30813i), vec4<bool>(all(vec4<bool>(false, false, arg_0.a.e.x, false)), !arg_0.a.e.x, any(vec3<bool>(arg_0.a.e.x, false, true)), all(arg_0.a.c)))) && !(!all(vec3<bool>(arg_0.a.e.x, false, false)));
    var var_3 = _wgslsmith_clamp_i32(37181i, u_input.a.x, select(-_wgslsmith_dot_vec3_i32(vec3<i32>(16004i, u_input.b, u_input.a.x), vec3<i32>(u_input.b, u_input.a.x, 39849i)), abs(1i), true) | u_input.b);
    let var_4 = firstTrailingBit(-min(vec3<i32>(-7875i, _wgslsmith_clamp_i32(u_input.a.x, -47196i, 2147483647i), 0i), firstLeadingBit(~vec3<i32>(1i, -5744i, -41924i))));
    return vec3<f32>(_wgslsmith_f_op_f32(298f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-179f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(round(488f)))))), 1296f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.a.d.x, arg_0.a.d.x)))));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = !vec2<bool>(true, all(vec3<bool>(true, true, true)));
    let var_1 = reverseBits(vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(-949f, 1193f, 266f), var_1.x, vec2<bool>(true, var_0.x), vec3<f32>(-2356f, 1661f, 1000f), vec3<bool>(false, true, false))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 399f, 434f))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(509f, 305f, 460f), 4294967295u, vec2<bool>(false, var_0.x), vec3<f32>(553f, 1381f, -253f), vec3<bool>(false, true, var_0.x))))).x, _wgslsmith_f_op_f32(max(415f, -1854f)), _wgslsmith_f_op_f32(-883f * -417f))), var_1.x, !select(!vec2<bool>(var_0.x, false), vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f * 384f) - _wgslsmith_f_op_f32(-1286f * -783f)), -328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(147f, 224f)) - _wgslsmith_f_op_f32(abs(538f)))), vec3<bool>(any(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, false))), var_0.x, any(vec2<bool>(true, true)))), ~var_1.zx);
    let var_3 = Struct_2(var_2.a);
    var var_4 = Struct_4(Struct_1(var_2.a.d, var_2.b.x, var_3.a.e.zx, _wgslsmith_f_op_vec3_f32(-var_3.a.a), var_3.a.e), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(113321u, 2618u) >> (var_2.b % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_3.a.b), vec2<u32>(var_3.a.b, var_2.b.x)), true) | var_2.b, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_3.a.b) ^ var_1.wx, var_1.xy << (vec2<u32>(34519u, var_3.a.b) % vec2<u32>(32u))) | var_1.wx, firstTrailingBit(~vec2<u32>(1u, var_2.b.x))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.a.d.yy), var_2.a.a.yx);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f + -529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), 541f)), arg_2, vec2<bool>(arg_0.x, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-670f, 1000f, 833f))) - vec3<f32>(-1565f, arg_1.x, 1125f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -411f)), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), 1644f)), select(vec3<bool>(true, (arg_3 >> (arg_2 % 32u)) != -2147483647i, arg_0.x), vec3<bool>(true, !arg_0.x, !arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x != arg_0.x), select(arg_0.wwx, arg_0.wyw, arg_0.x || arg_0.x), arg_0.xxx)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, arg_1.x) - vec2<f32>(872f, -705f)), _wgslsmith_f_op_vec2_f32(func_2(u_input.a)))) * var_0.d.xy), var_0.d.yz)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.zz)))))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_0.d, _wgslsmith_f_op_vec3_f32(-var_0.a))))), var_0.b, select(var_0.e.yx, !select(var_0.e.xx, vec2<bool>(arg_0.x, arg_0.x), false), arg_0.x), vec3<f32>(arg_1.x, _wgslsmith_f_op_vec2_f32(func_2(u_input.a)).x, var_1.x), vec3<bool>(any(vec4<bool>(false, true, arg_0.x, arg_0.x)) && (var_0.c.x | true), true, true)), select(~(vec2<u32>(arg_2, 37470u) | vec2<u32>(var_0.b, 1u)) >> (vec2<u32>(var_0.b, 0u) % vec2<u32>(32u)), (~vec2<u32>(var_0.b, arg_2) & (vec2<u32>(0u, var_0.b) ^ vec2<u32>(arg_2, var_0.b))) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u)), select(!(!vec2<bool>(arg_0.x, arg_0.x)), !select(var_0.c, var_0.e.yz, arg_0.zz), any(!var_0.e.xz))));
    return select(select(select(select(!arg_0.xxw, select(arg_0.xxz, vec3<bool>(false, arg_0.x, var_2.a.c.x), var_2.a.e.x), select(arg_0.wzw, vec3<bool>(false, false, true), var_2.a.e)), select(select(vec3<bool>(true, false, true), vec3<bool>(var_2.a.c.x, arg_0.x, var_0.c.x), var_0.e.x), arg_0.xzz, vec3<bool>(true, var_2.a.c.x, var_2.a.e.x)), arg_0.yxx), !(!(!vec3<bool>(false, arg_0.x, arg_0.x))), vec3<bool>(true, select(var_0.b > var_0.b, arg_3 > u_input.a.x, any(arg_0)), var_0.e.x)), arg_0.zxx, !(!select(select(vec3<bool>(var_0.c.x, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, var_2.a.e.x)), vec3<bool>(false, false, true), var_0.e.x)));
}

fn func_1() -> f32 {
    var var_0 = func_4(vec4<bool>(any(vec2<bool>(true, any(vec4<bool>(true, false, false, true)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.b, 0i) & u_input.a) < _wgslsmith_clamp_i32(u_input.b << (1u % 32u), u_input.a.x | -2147483647i, ~(-1i)), false, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(u_input.a.x | u_input.b, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1925f, 1287f)), _wgslsmith_f_op_f32(sign(538f)))), _wgslsmith_f_op_f32(-252f * -1121f))), _wgslsmith_mult_u32(0u, 4294967295u), ~_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 23649i) | vec3<i32>(0i, u_input.a.x, -23114i), select(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(3386i, u_input.b, u_input.b), vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-969f, -486f)))))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(437f, -1263f, -1116f), 60768u, var_0.xz, vec3<f32>(-1290f, -1204f, 239f), vec3<bool>(true, var_0.x, false))))).xx)));
    let var_2 = !select(vec2<bool>(true, var_0.x), select(var_0.zx, vec2<bool>(var_0.x, var_0.x), !func_4(vec4<bool>(false, var_0.x, true, false), vec2<f32>(var_1.x, -1814f), 81525u, -2147483647i).zy), var_0.x);
    var var_3 = -1754f;
    let var_4 = -max(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i, -76181i, 31942i)), -vec3<i32>(u_input.b, -4817i, u_input.a.x)), vec3<i32>(1i, -22643i, 5835i)), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-763i, -41400i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 44738i, -2147483647i)), abs(vec4<i32>(u_input.b, u_input.b, u_input.b, 16537i))), u_input.a.x));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(!vec3<bool>(all(vec3<bool>(false, false, false)), true, any(vec3<bool>(true, true, false)))), false);
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_1()));
    let var_3 = ~abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-54505i, u_input.a.x, u_input.b, 0i), ~vec4<i32>(u_input.a.x, -17293i, 4996i, -1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-14592i, u_input.a.x, 30973i, 1i), vec4<i32>(-1i, 4520i, u_input.a.x, u_input.b))));
    var_0 = !select(!vec2<bool>(true, all(vec4<bool>(var_0.x, false, true, false))), func_4(select(vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(584f, var_2) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1444f, var_2))), _wgslsmith_div_u32(var_1 >> (var_1 % 32u), var_1 >> (var_1 % 32u)), u_input.b ^ u_input.b).zz, !(!func_4(vec4<bool>(true, var_0.x, false, true), vec2<f32>(1393f, var_2), 85961u, var_3.x).yy));
    var_0 = vec2<bool>(!(!(var_2 > -563f)), var_0.x);
    let var_4 = ~((var_1 ^ (_wgslsmith_add_u32(1u, var_1) | var_1)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1, 78959u, 133167u, 1u), ~vec4<u32>(77346u, var_1, 1u, var_1)), firstLeadingBit(~vec4<u32>(0u, var_1, var_1, var_1))));
    var_0 = vec2<bool>(true, true);
    var var_5 = Struct_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1768f, -906f, -1172f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, 515f), vec3<f32>(376f, var_2, 1514f))))), var_4, func_4(select(!vec4<bool>(false, var_0.x, var_0.x, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, var_2), vec2<f32>(-353f, var_2), vec2<bool>(var_0.x, var_0.x))))), firstTrailingBit(137404u), var_3.x).yx, vec3<f32>(var_2, 1000f, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<f32>(-242f, -931f, 848f), var_1, vec2<bool>(false, true), vec3<f32>(var_2, var_2, -134f), vec3<bool>(false, var_0.x, var_0.x))))).x), !(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_0.x))), ~vec2<u32>(~1u, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_3.yyy, vec3<i32>(-(~u_input.b), -u_input.b >> (_wgslsmith_div_u32(var_1, var_5.a.b) % 32u), max(max(2147483647i, u_input.b), -2147483647i)), 15583u > var_4), var_5.a.d.xx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-598f))))), _wgslsmith_sub_u32(countOneBits(var_5.b.x), var_5.b.x), var_5.b.x);
}

