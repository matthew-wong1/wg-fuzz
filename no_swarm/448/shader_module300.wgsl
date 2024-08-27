struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> bool {
    var var_0 = Struct_1(~(~u_input.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 493f)) + vec2<f32>(_wgslsmith_f_op_f32(sign(329f)), 1178f)))), vec2<i32>(arg_0.x | -arg_1.x, -81531i), 1874f, false);
    var var_1 = select(vec3<bool>(select(var_0.e, var_0.e, true), false, var_0.e), vec3<bool>(true, true, var_0.e), vec3<bool>(false, all(select(vec4<bool>(true, true, var_0.e, false), vec4<bool>(true, true, var_0.e, true), var_0.e)) != true, any(select(select(vec2<bool>(true, var_0.e), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), var_0.e), true))));
    var var_2 = vec4<bool>(any(vec2<bool>(!(!var_0.e), _wgslsmith_f_op_f32(var_0.d - 276f) < _wgslsmith_f_op_f32(ceil(var_0.b.x)))), var_1.x, true, all(select(select(select(vec4<bool>(var_1.x, var_0.e, var_1.x, var_1.x), vec4<bool>(var_0.e, var_0.e, true, var_1.x), vec4<bool>(var_0.e, true, false, var_0.e)), !vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, var_0.e, true, var_0.e)), !select(vec4<bool>(var_0.e, false, true, false), vec4<bool>(var_1.x, var_0.e, false, false), vec4<bool>(false, var_0.e, var_0.e, false)), -16892i >= _wgslsmith_mult_i32(arg_1.x, arg_1.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, 1553f))) - var_0.b.x));
    var_0 = Struct_1(~(~(~u_input.b.x)) | _wgslsmith_mult_u32(~max(1u, 1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(36290u, 0u, var_0.a)), u_input.b.wzy)), vec2<f32>(_wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1579f)) + var_0.b.x)), _wgslsmith_f_op_f32(abs(var_0.b.x))), (arg_1 >> (u_input.c % vec2<u32>(32u))) | arg_0.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1598f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-202f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(var_0.b.x))))), -5294i != arg_1.x);
    return u_input.d.x <= ~27401u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(abs(~u_input.c));
    var var_1 = true & !((41989u > u_input.d.x) || func_3(vec4<i32>(1i, 1i, 1i, 1i), -vec2<i32>(1i, -36060i)));
    let var_2 = 304f;
    let var_3 = -2147483647i;
    let var_4 = countOneBits(0u);
    return Struct_3(select(abs(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3, -1i, -2147483647i, var_3), vec4<i32>(-11990i, 1i, -2147483647i, var_3)))), vec4<i32>(23700i, -var_3, var_3, ~(var_3 << (u_input.e % 32u))), vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true)), firstTrailingBit(var_3) | (var_3 ^ firstTrailingBit(select(2147483647i, var_3, true))), vec3<bool>(false, any(vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, false, true)), true)), !(!(var_2 <= var_2))), Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), u_input.b.x), vec2<f32>(747f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -415f), -1000f))), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_3, -32706i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), true), Struct_1(50585u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(135f, var_2) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(-323f, var_2)))), vec2<i32>(abs(1i), var_3) & min(_wgslsmith_add_vec2_i32(vec2<i32>(var_3, -36102i), vec2<i32>(var_3, var_3)), vec2<i32>(var_3, var_3)), _wgslsmith_f_op_f32(-var_2), true));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = Struct_4(func_2().e, Struct_2(arg_1.e.e, arg_1.d, -2147483647i), abs(-arg_1.b));
    let var_1 = false;
    var var_2 = var_0.a.b;
    var var_3 = all(vec2<bool>(true, false));
    let var_4 = false & var_1;
    return Struct_5(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(4294967295u, 0u)) | var_0.b.b.a, 1u));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec2<bool>(!func_3(abs(vec4<i32>(arg_3.c, arg_3.b.b.c.x, 0i, -42109i)), vec2<i32>(countOneBits(1i), arg_3.b.c)), arg_3.a.e);
    let var_1 = func_2().d;
    var var_2 = func_2();
    let var_3 = Struct_1(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_3.a.d) + _wgslsmith_div_vec2_f32(vec2<f32>(963f, arg_3.a.b.x), _wgslsmith_f_op_vec2_f32(arg_3.b.b.b - vec2<f32>(749f, -241f)))), var_2.d.b), -vec2<i32>(-1i, -arg_3.b.b.c.x << ((u_input.c.x >> (30131u % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)), !all(vec4<bool>(true, true, false, var_0.x)) | true);
    var var_4 = ~40698u != ((abs(0u & arg_2.a.x) | _wgslsmith_dot_vec3_u32(u_input.d.yzy, vec3<u32>(arg_2.a.x, arg_1.x, 0u))) & arg_1.x);
    return Struct_2(true, func_2().d, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, 2147483647i)), var_2.a.yz) << (~0u % 32u));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = 14648u;
    let var_2 = func_5(~(~firstLeadingBit(u_input.d.yy)), ~u_input.a.yw, func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), func_2(), u_input.d.yz, ~(-(vec3<i32>(-2147483647i, 15488i, -83i) << (vec3<u32>(var_1, 1u, 18203u) % vec3<u32>(32u))))), Struct_4(func_2().d, Struct_2(true, func_2().e, -(~(-23969i))), -6343i));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)))), _wgslsmith_f_op_f32(exp2(var_2.b.d))));
    var var_4 = u_input.d.yww;
    return func_5(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, min(var_4.x, u_input.b.x)), u_input.d.zx, func_2().c.xy), ~u_input.c, vec2<u32>(var_4.x, firstLeadingBit(~8548u))), vec2<u32>(var_4.x, abs(~(u_input.d.x ^ var_4.x))), func_4(~_wgslsmith_add_vec4_i32(vec4<i32>(-5996i, var_2.b.c.x, var_2.c, -2147483647i), select(vec4<i32>(-31024i, var_2.b.c.x, -1i, var_2.c), vec4<i32>(-16051i, var_2.c, -10183i, -1i), vec4<bool>(var_2.a, true, true, var_2.b.e))), Struct_3(vec4<i32>(var_2.c, _wgslsmith_clamp_i32(1i, var_2.c, var_2.b.c.x), -18152i, i32(-1i) * -1i), var_2.c, !select(vec3<bool>(var_2.a, false, true), vec3<bool>(true, var_2.b.e, false), true), var_2.b, Struct_1(28115u, vec2<f32>(var_2.b.b.x, 115f), ~vec2<i32>(-1i, 28767i), _wgslsmith_f_op_f32(floor(var_2.b.b.x)), var_2.b.e)), firstTrailingBit(vec2<u32>(4294967295u, 1u)) ^ _wgslsmith_mod_vec2_u32(select(u_input.a.yw, vec2<u32>(var_4.x, 55050u), false), u_input.c), ~vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.b.c, var_2.b.c), var_2.c, _wgslsmith_div_i32(-1i, var_2.b.c.x))), Struct_4(func_5(u_input.c, var_4.zx, func_4(vec4<i32>(57534i, var_2.c, 4041i, var_2.b.c.x), Struct_3(vec4<i32>(var_2.b.c.x, var_2.c, var_2.b.c.x, -2147483647i), var_2.b.c.x, vec3<bool>(true, var_2.b.e, true), var_2.b, Struct_1(u_input.a.x, vec2<f32>(967f, var_2.b.b.x), vec2<i32>(var_2.b.c.x, var_2.c), var_2.b.d, var_2.b.e)), var_4.zx, vec3<i32>(-12379i, 2147483647i, -2147483647i)), Struct_4(func_2().e, var_2, var_2.c)).b, Struct_2(func_2().d.e, func_5(~vec2<u32>(u_input.d.x, 60587u), ~var_4.zz, Struct_5(var_4.zy), Struct_4(Struct_1(162645u, vec2<f32>(var_2.b.d, -843f), var_2.b.c, -1497f, true), var_2, 0i)).b, var_2.b.c.x), firstTrailingBit(~(-1i)) ^ 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(i32(-1i) * -24905i, -(~abs(-34560i))) != _wgslsmith_mult_i32(-max(1i, abs(43110i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 12488i, -1i), -vec3<i32>(1i, 12804i, -49424i)) ^ abs(-2147483647i));
    let var_1 = func_1();
    let var_2 = func_5(vec2<u32>(var_1.b.a, var_1.b.a) << (vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, ~0u, u_input.a.x & 10129u)) % vec2<u32>(32u)), u_input.a.xx, func_4(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_1.c, var_1.b.c.x, var_1.c), vec4<i32>(var_1.b.c.x, var_1.b.c.x, 44069i, var_1.c)), var_1.b.c.x, var_1.b.c.x, var_1.b.c.x)), Struct_3(countOneBits(~vec4<i32>(var_1.c, -18386i, -8749i, -18960i)), ~2147483647i, select(vec3<bool>(var_1.a, false, true), vec3<bool>(true, true, true), var_1.a || var_1.b.e), var_1.b, var_1.b), ~countOneBits(vec2<u32>(var_1.b.a, 4294967295u) ^ u_input.c), min(vec3<i32>(-2147483647i, 1i, 1i) ^ select(vec3<i32>(var_1.c, -18071i, 16978i), vec3<i32>(var_1.b.c.x, var_1.c, var_1.b.c.x), vec3<bool>(false, true, true)), select(vec3<i32>(-60573i, var_1.b.c.x, var_1.b.c.x), vec3<i32>(var_1.c, var_1.b.c.x, -2147483647i), true))), Struct_4(func_1().b, func_5(select(~u_input.d.yx, u_input.d.zw, func_3(vec4<i32>(var_1.b.c.x, -2147483647i, var_1.c, -533i), vec2<i32>(2147483647i, var_1.b.c.x))), min(u_input.a.xz, u_input.a.zy), func_4(vec4<i32>(0i, var_1.c, var_1.b.c.x, -2147483647i), Struct_3(vec4<i32>(0i, -1i, var_1.b.c.x, var_1.b.c.x), 2147483647i, vec3<bool>(false, var_1.a, false), Struct_1(4294967295u, vec2<f32>(-1147f, var_1.b.b.x), vec2<i32>(var_1.c, -39499i), var_1.b.b.x, var_1.a), Struct_1(1u, vec2<f32>(var_1.b.d, var_1.b.d), var_1.b.c, var_1.b.b.x, true)), vec2<u32>(u_input.d.x, 4090u), reverseBits(vec3<i32>(-2147483647i, var_1.b.c.x, -14983i))), Struct_4(var_1.b, var_1, _wgslsmith_div_i32(var_1.b.c.x, 1i))), 2147483647i)).b.e;
    var var_3 = Struct_3(~(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(1i, var_1.c, 48792i, 45789i)), -vec4<i32>(var_1.c, -2147483647i, 988i, var_1.c)) << (select(_wgslsmith_add_vec4_u32(u_input.d, u_input.a), u_input.b, select(vec4<bool>(var_1.b.e, true, var_1.a, false), vec4<bool>(var_1.b.e, true, var_2, false), vec4<bool>(var_1.b.e, false, false, false))) % vec4<u32>(32u))), -4888i, !vec3<bool>(var_1.a, var_2, !var_1.b.e), func_5(u_input.b.xx, ~u_input.d.yx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(24395u, 17306u), _wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(var_1.b.a, 7129u))) % vec2<u32>(32u)), func_4(-(~vec4<i32>(1i, var_1.b.c.x, var_1.b.c.x, -2147483647i)), func_2(), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.d.ww) | ~vec2<u32>(u_input.c.x, 1u), vec3<i32>(9450i, reverseBits(var_1.b.c.x), var_1.b.c.x)), Struct_4(Struct_1(var_1.b.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b.x, 1031f)), select(var_1.b.c, vec2<i32>(var_1.b.c.x, var_1.c), vec2<bool>(var_1.b.e, var_1.b.e)), _wgslsmith_div_f32(var_1.b.d, var_1.b.b.x), var_2 || false), func_5(u_input.a.wz, vec2<u32>(0u, 0u), func_4(vec4<i32>(-36387i, 0i, var_1.c, var_1.b.c.x), Struct_3(vec4<i32>(var_1.c, -1i, -1i, -2147483647i), -52396i, vec3<bool>(false, true, var_1.b.e), Struct_1(1u, vec2<f32>(-1951f, var_1.b.b.x), vec2<i32>(var_1.c, var_1.b.c.x), var_1.b.b.x, var_2), Struct_1(0u, var_1.b.b, vec2<i32>(var_1.c, var_1.c), -1221f, false)), u_input.b.xz, vec3<i32>(var_1.c, var_1.c, 3237i)), Struct_4(Struct_1(38942u, vec2<f32>(-994f, 290f), vec2<i32>(var_1.c, var_1.c), -2458f, true), var_1, var_1.b.c.x)), _wgslsmith_mult_i32(-var_1.c, _wgslsmith_sub_i32(51031i, var_1.c)))).b, func_2().d);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.b.d, -1018f)), var_3.e.b.x))));
    var var_5 = Struct_4(var_1.b, var_1, select(~var_3.a.x, -2147483647i, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.b.x * -2186f), var_1.b.d, 1494f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_1.b.b.x, var_3.d.b.x) + vec3<f32>(-1000f, var_4.x, var_5.a.b.x)))))), ~(~(firstLeadingBit(0u) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_5.a.a, var_5.a.a, var_3.e.a, var_5.b.b.a), u_input.d))), -515f);
}

