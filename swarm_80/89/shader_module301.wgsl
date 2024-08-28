struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    var var_0 = min(u_input.e, firstLeadingBit(_wgslsmith_div_i32(-7164i | u_input.a.x, ~countOneBits(39494i))));
    let var_1 = !select(vec4<bool>(true, true, all(vec2<bool>(true, true)), !(-40670i <= u_input.a.x)), vec4<bool>(any(vec2<bool>(false, false)) && true, select(true, any(vec4<bool>(true, true, false, true)), u_input.b.x > 1u), true, true), u_input.e >= ~(~u_input.a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-436f, 756f, -1023f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1462f, 424f, 548f) - vec3<f32>(-704f, 561f, -216f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -322f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1264f, var_2.x, var_2.x), vec3<f32>(var_2.x, 578f, 415f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(386f, var_2.x, -2112f) + vec3<f32>(var_2.x, var_2.x, 1218f)))))));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), u_input.e), vec2<i32>(-43055i, _wgslsmith_div_i32(u_input.a.x, min(u_input.e, 2147483647i)))));
    return vec4<bool>(all(select(select(var_1.yxw, !vec3<bool>(var_1.x, false, false), all(var_1.xzy)), select(var_1.zyy, vec3<bool>(false, var_1.x, false), !var_1.zww), vec3<bool>(var_1.x, true, true))), var_1.x, any(!var_1.xx) || ((16154i != -var_3.a.x) && true), ~u_input.e >= max(-(u_input.e | 1i), _wgslsmith_mult_i32(u_input.e, ~var_3.a.x)));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec4<bool>(false, all(!(!func_3())), all(select(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-279f, 966f, false)), -455f))) > _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f - -432f) + -311f)));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(u_input.a);
    var var_3 = var_2;
    let var_4 = Struct_1(vec2<i32>(~(~abs(43616i)), 1i));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<u32> {
    let var_0 = -(~u_input.e);
    let var_1 = _wgslsmith_mult_vec4_u32(~(vec4<u32>(func_2(111948u), _wgslsmith_div_u32(4294967295u, 20148u), u_input.b.x, ~arg_0) | vec4<u32>(_wgslsmith_div_u32(41295u, u_input.b.x), _wgslsmith_clamp_u32(arg_0, 4052u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(22881u, u_input.c.x, u_input.d, 1u), vec4<u32>(u_input.c.x, 43222u, 13834u, 26763u)), reverseBits(arg_0))), _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0, 0u, arg_0), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c.x)) << (vec4<u32>(arg_0, _wgslsmith_clamp_u32(arg_0, arg_0, arg_0), ~36514u, _wgslsmith_mult_u32(arg_0, u_input.d)) % vec4<u32>(32u)), min(vec4<u32>(u_input.d, 145306u, 4294967295u, 39902u) ^ abs(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.d)), reverseBits(vec4<u32>(0u, arg_0, 23562u, 110418u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.b.x, 4294967295u, 44843u), vec4<u32>(u_input.c.x, 46631u, u_input.c.x, u_input.b.x), vec4<u32>(70308u, 4294967295u, 1426u, arg_0)) % vec4<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, select(u_input.a, min(u_input.a, vec2<i32>(var_0, var_0)), select(true, true, false))));
    var var_3 = var_2;
    var_3 = var_2;
    return vec4<u32>(~_wgslsmith_sub_u32(u_input.d, min(u_input.b.x, 2191u)), func_2(1u), 0u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~((vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.b.x) >> (vec4<u32>(u_input.d, 1u, u_input.d, u_input.b.x) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.b.x, 0u, 45401u, u_input.d)) & _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.b.x), func_1(u_input.c.x, 1184f), vec4<u32>(0u, 1u, 1u, u_input.b.x) << (vec4<u32>(u_input.b.x, 1u, u_input.c.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), u_input.b.x, u_input.b.x, _wgslsmith_add_u32(1u, 15806u)))) >> (~(vec4<u32>(u_input.d, 1u & u_input.d, u_input.d, ~1u) << (~countOneBits(vec4<u32>(4294967295u, 426u, u_input.d, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 686f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-888f, 132f, 523f)))), vec3<bool>(true, true, true))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f * -856f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(332f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(470f))), 461f, -1441f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(984f, 121f, -1085f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, -1351f, 705f) * vec3<f32>(-189f, -710f, 2140f)) - vec3<f32>(238f, -521f, 817f)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(195f, -621f)), var_1.x, _wgslsmith_f_op_f32(min(951f, var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-451f - 1106f), _wgslsmith_f_op_f32(-656f * 305f), -2275f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -827f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 475f, var_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, var_1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1446f, -366f, var_1.x))))));
    let var_2 = Struct_1(u_input.a);
    var_0 = countOneBits(abs(vec4<u32>(1u, ~u_input.c.x, u_input.d, min(u_input.d, u_input.d))) & vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 30504u), ~u_input.d), ~1652u, max(~53358u, _wgslsmith_dot_vec3_u32(vec3<u32>(95019u, var_0.x, 1u), vec3<u32>(u_input.d, u_input.d, var_0.x))), _wgslsmith_clamp_u32(~0u, 104991u & u_input.b.x, 1u)));
    var_1 = vec3<f32>(_wgslsmith_div_f32(var_1.x, -772f), 1000f, -206f);
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, abs(u_input.a.x))), _wgslsmith_add_vec2_i32(-firstTrailingBit(u_input.a), firstLeadingBit(u_input.a))));
    let var_4 = func_3().zww;
    let var_5 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(9945u, 38473u, u_input.c.x, 52290u), vec4<u32>(22191u, 17413u, u_input.b.x, 0u)))), -firstTrailingBit(min(vec4<i32>(-47650i, 9445i, var_2.a.x, u_input.e) << (vec4<u32>(var_0.x, 4294967295u, 4294967295u, u_input.d) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -2147483647i, 77630i, -2147483647i) & vec4<i32>(-34594i, 2147483647i, 2147483647i, -28180i))), -11180i, vec3<i32>(var_5, _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(31533i, var_5, 2147483647i), vec3<i32>(-5219i, var_2.a.x, 2147483647i)), vec3<i32>(var_2.a.x, abs(var_2.a.x), -41569i)), 1i), ~vec4<i32>(_wgslsmith_mod_i32(-var_3.a.x, firstLeadingBit(var_2.a.x)), var_2.a.x, 1i, -2147483647i));
}

