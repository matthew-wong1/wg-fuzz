struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> u32 {
    return arg_0.a.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: u32, arg_3: f32) -> vec2<i32> {
    var var_0 = Struct_2(~70405u, arg_0.x, _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(2147483647i, -1i, 1i, -38914i)), ~_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(40735i, -2147483647i, 48266i, -2147483647i)), abs(vec4<i32>(-2147483647i, 2147483647i, 1i, 20515i))), vec4<i32>(-(i32(-1i) * -1i), _wgslsmith_sub_i32(~1i, 1i), 44997i, max(-9050i, i32(-1i) * -51316i))), 2034f, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~(~43779u), arg_2, ~_wgslsmith_sub_u32(arg_2, 32909u)), vec4<u32>(func_3(Struct_1(vec3<u32>(u_input.a.x, 1u, 0u)), all(vec3<bool>(true, true, false)), Struct_2(arg_2, 130f, vec4<i32>(-22330i, 18672i, 9966i, 0i), 621f, 1u)), 1u, u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, min(u_input.b.ywz, vec3<u32>(u_input.a.x, arg_2, arg_2))))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-591f)) + -1000f)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1133f - 2373f) - _wgslsmith_f_op_f32(arg_0.x * 1127f))), 1000f, -2710f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1000f, arg_1, var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 1946f, var_0.b, -713f), vec4<f32>(arg_0.x, arg_3, arg_3, arg_1))))));
    var var_2 = vec3<bool>(true, select(true, false, false), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, false, false), true)));
    let var_3 = Struct_3(Struct_1(vec3<u32>(4294967295u << (_wgslsmith_sub_u32(u_input.b.x, arg_2) % 32u), ~countOneBits(72085u), var_0.e)), Struct_2(4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.x)))), var_0.c, 485f, _wgslsmith_mult_u32(35540u, 7526u)), all(vec3<bool>(true, true, !var_2.x)), Struct_2(24355u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + 748f) + _wgslsmith_f_op_f32(394f - -240f))), _wgslsmith_div_vec4_i32(-var_0.c >> (u_input.b % vec4<u32>(32u)), var_0.c), arg_0.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yw, vec2<u32>(var_0.e, 17984u)), u_input.a.zz)));
    var_2 = !vec3<bool>(all(select(vec3<bool>(var_2.x, false, var_3.c), !vec3<bool>(true, false, var_3.c), var_3.c | true)), var_2.x, !all(!vec3<bool>(false, true, var_3.c)));
    return var_0.c.zy;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_2));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-arg_0.x, arg_0.x, _wgslsmith_mult_i32(arg_0.x, 2147483647i)), arg_0.x), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(arg_0), arg_0), func_2(vec2<f32>(644f, arg_3), arg_2, u_input.b.x, arg_1) << (u_input.a.xx % vec2<u32>(32u)))) | reverseBits(i32(-1i) * -_wgslsmith_add_i32(arg_0.x, arg_0.x));
    let var_2 = ~(~u_input.b.x);
    let var_3 = Struct_2(_wgslsmith_sub_u32(4452u, _wgslsmith_dot_vec2_u32(u_input.b.yy, max(u_input.b.yz, vec2<u32>(33079u, var_2)))) >> (min(_wgslsmith_clamp_u32(~34409u, 119685u | u_input.b.x, ~var_2), 1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) + _wgslsmith_f_op_f32(-1421f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_1)))), _wgslsmith_mod_vec4_i32(~(vec4<i32>(2147483647i, 10437i, -2147483647i, 24302i) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-7679i, 1i, var_1, var_1), select(vec4<i32>(var_1, -2147483647i, 2147483647i, arg_0.x), vec4<i32>(arg_0.x, var_1, arg_0.x, 2847i), true))) | -select(vec4<i32>(arg_0.x, arg_0.x, 16546i, arg_0.x), select(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(0i, 2147483647i, arg_0.x, -2147483647i), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(294f, arg_3)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)))))), ~27241u);
    var_0 = -270f;
    return Struct_2(var_3.a, arg_2, var_3.c | (~var_3.c >> (select(u_input.b, u_input.b, false) % vec4<u32>(32u))), -531f, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyw, reverseBits(vec3<u32>(4294967295u, 27434u, 4294967295u))), abs(u_input.b.x | var_3.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    let var_0 = arg_0.c || true;
    var var_1 = arg_0.d.d;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.d)) - _wgslsmith_f_op_f32(arg_0.b.d - 1001f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0.b.d)))), -305f, arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f))));
    let var_2 = true;
    var_1 = -486f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.d, arg_0.d.d)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.b, arg_0.b.d))), all(vec2<bool>(true, true)))), arg_0.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.zyz, u_input.b.zyx))), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(43832u, u_input.b.x, u_input.a.x), u_input.b.zzz)), func_1(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(10868i, -44679i)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -460f), -581f), true, func_1(func_1(vec2<i32>(41646i, 3737i), -1322f, -1633f, -699f).c.yw, -491f, _wgslsmith_f_op_f32(f32(-1f) * -988f), -1982f)), u_input.a.yy)), ~(~(~vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f * -605f), _wgslsmith_div_f32(589f, -503f)))), select(~115229u, ~u_input.a.x | 1u, !(u_input.a.x >= u_input.b.x) && (u_input.b.x == countOneBits(u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 168f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -1541f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1058f * 1292f), var_0.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -1000f) - vec2<f32>(var_0.d, 1054f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d, 1000f), vec2<f32>(422f, var_0.b))), vec2<bool>(false, false))), any(vec3<bool>(false, true, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-678f, -731f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, -553f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -681f)));
    let var_2 = Struct_2(u_input.a.x, 171f, var_0.c, -660f, firstTrailingBit(select(~u_input.a.x ^ 66573u, abs(11466u), select(true, false, true) == true)));
    var var_3 = _wgslsmith_mult_i32(var_0.c.x, i32(-1i) * -2147483647i);
    var_0 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(742f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f - -802f)))), firstLeadingBit(firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, var_0.c.x, -48527i), vec4<i32>(var_2.c.x, 2147483647i, var_2.c.x, 18909i)))), 648f, select(1u, 4294967295u, any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true))));
    var var_4 = Struct_3(Struct_1(u_input.a), var_2, (var_2.c.x ^ countOneBits(-1i)) < -(~(-2147483647i)), func_1(vec2<i32>(34743i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(417f, 528f)) * 314f)), func_1(-func_1(vec2<i32>(-2147483647i, var_0.c.x), var_0.d, 1810f, var_0.b).c.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-862f)) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, var_1.x) + _wgslsmith_f_op_f32(sign(var_0.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b)))).d, -277f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, abs(_wgslsmith_mult_u32(u_input.b.x | 43000u, max(_wgslsmith_dot_vec3_u32(var_4.a.a, var_4.a.a), abs(4294967295u)))), func_3(var_4.a, false, Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d))), var_4.d.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.b, -391f)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_4.b.a, 53453u), ~30026u))));
}

