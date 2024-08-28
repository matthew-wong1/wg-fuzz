struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = u_input.a.yx;
    var var_1 = Struct_5(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x) >> (min(vec4<u32>(1u, 19546u, var_0.x, 29922u), vec4<u32>(4294967295u, 5337u, 0u, u_input.a.x)) % vec4<u32>(32u)), reverseBits(~vec4<u32>(10511u, u_input.a.x, 4294967295u, 6747u))), Struct_1(true, abs(~vec4<u32>(var_0.x, 29461u, u_input.a.x, var_0.x)), ~(~vec4<u32>(4294967295u, 100279u, var_0.x, var_0.x))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-283f - arg_0), _wgslsmith_f_op_f32(154f - -680f)), _wgslsmith_f_op_f32(sign(530f)))), vec2<bool>(all(vec2<bool>(true, true)), true), !(3074u > u_input.a.x));
    var_1 = Struct_5(var_1.a, vec2<bool>(var_1.a.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 855f), var_1.b.x & (select(2454u, u_input.d.x, var_1.b.x) > ~var_0.x)), -41695i == u_input.c);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~abs(1u), ~1u), ~(~vec2<u32>(0u, var_0.x))) | ~vec2<u32>(48124u, ~_wgslsmith_dot_vec2_u32(var_1.a.b.c.ww, u_input.d.zx));
    var_0 = vec2<u32>(abs(1u ^ ~var_1.a.b.b.x) | 1u, 0u);
    return !all(vec3<bool>(var_1.c, !select(var_1.b.x, true, var_1.c), true));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, 2513f)) * vec2<f32>(-780f, 1392f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2901f, -1000f) + vec2<f32>(-1403f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-572f, -142f, arg_0.a)), -745f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(139f, 1090f), _wgslsmith_f_op_f32(-494f * 185f)), vec2<f32>(1297f, -694f), func_3(_wgslsmith_f_op_f32(trunc(-501f))))))));
    let var_1 = Struct_4(~abs(firstTrailingBit(u_input.a.yx) | vec2<u32>(0u, 4294967295u)), _wgslsmith_mult_i32((-u_input.b & u_input.c) >> (max(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(54937u, u_input.d.x, u_input.a.x), arg_0.b.xww)) % 32u), u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, var_0.x, -599f, -540f)), Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(arg_0.c.x, u_input.a.x, arg_0.b.x, arg_0.b.x)) << (~arg_0.b % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~arg_0.c, firstLeadingBit(arg_0.c)), min(~arg_0.c, ~arg_0.b)), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(step(var_0, var_0))))));
    return abs(_wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b, var_1.b) << (u_input.d.xx % vec2<u32>(32u)), -vec2<i32>(1i, u_input.c)), max(vec2<i32>(-var_1.b, var_1.b), vec2<i32>(1i, 1i))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = func_4(Struct_1(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(437f)) * 742f)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 72826u, arg_0, arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(27803u, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 60240u, arg_0))), vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 0u, ~38834u, ~7676u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), abs(arg_0), abs(u_input.a.x), _wgslsmith_mod_u32(arg_0, 96153u))));
    let var_1 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f * 956f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(596f, -897f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-716f, 1387f) - vec2<f32>(-706f, 493f))), vec2<f32>(_wgslsmith_f_op_f32(sign(-304f)), _wgslsmith_f_op_f32(trunc(-1145f))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -702f), -567f, var_1.x)), _wgslsmith_f_op_f32(-1f))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1612f, -420f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1397f), vec2<f32>(-112f, 520f), true)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-364f, var_2.x))))))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, 1102f), vec2<f32>(-2093f, var_2.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(2094f, 1448f)))))), vec2<f32>(-674f, 687f));
    return Struct_1(!(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 37723u), ~vec4<u32>(1u, 30271u, arg_0, u_input.d.x)) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), u_input.a.zx)), abs(select(abs(vec4<u32>(u_input.a.x, 49321u, u_input.d.x, arg_0)), select(vec4<u32>(0u, 48396u, u_input.d.x, u_input.d.x), vec4<u32>(64052u, arg_0, 16615u, 14035u), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, true, true, true), 4294967295u <= u_input.a.x))), ~(~(~countOneBits(vec4<u32>(4294967295u, 1u, u_input.a.x, arg_0)))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.d.x, ~1u), 30549u, 4294967295u, 1u);
    let var_1 = _wgslsmith_sub_u32(abs(abs(_wgslsmith_sub_u32(select(125134u, 26170u, true), ~var_0.x))), _wgslsmith_div_u32(1u, 1u));
    let var_2 = false;
    return Struct_2(var_0, func_2(~(~var_0.x) ^ _wgslsmith_div_u32(~u_input.d.x, var_0.x ^ var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, _wgslsmith_f_op_f32(sign(-555f))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-757f, -387f, false)), _wgslsmith_f_op_f32(step(-257f, -800f))), vec2<f32>(486f, _wgslsmith_div_f32(-226f, -1161f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(vec4<u32>(~63213u, 24546u, _wgslsmith_sub_u32(u_input.a.x, 1u << (1u % 32u)), min(_wgslsmith_dot_vec4_u32(var_0.b.c, vec4<u32>(4294967295u, 0u, u_input.d.x, 1u)), 1u)) >> (~func_1().b.b % vec4<u32>(32u)), Struct_1(var_0.b.a, _wgslsmith_sub_vec4_u32(var_0.a, ~(var_0.a ^ var_0.b.c)), vec4<u32>(_wgslsmith_mult_u32(countOneBits(u_input.d.x), 27526u), _wgslsmith_add_u32(10646u, _wgslsmith_add_u32(var_0.a.x, var_0.a.x)), var_0.b.b.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(func_1().c)), _wgslsmith_f_op_vec2_f32(var_0.c - var_0.c))));
    var_0 = Struct_2(select(reverseBits(~firstLeadingBit(vec4<u32>(1u, 4294967295u, 104377u, var_0.a.x))), reverseBits(abs(_wgslsmith_div_vec4_u32(var_0.a, var_0.b.c))), !(var_0.c.x == _wgslsmith_f_op_f32(floor(786f)))), func_1().b, _wgslsmith_f_op_vec2_f32(-var_0.c));
    var_0 = Struct_2(~var_0.a, func_2(~var_0.b.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)));
    let var_1 = var_0.b.b.x;
    let var_2 = func_2(abs(39213u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0.b.b.xw, vec2<u32>(0u, 12916u)), 4294967295u, u_input.d.x, ~_wgslsmith_mult_u32(1u, ~var_2.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(var_0.c.x, 717f), _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, false))), vec2<f32>(_wgslsmith_f_op_f32(abs(1756f)), _wgslsmith_f_op_f32(select(376f, -1256f, false)))))), -(_wgslsmith_sub_vec2_i32(vec2<i32>(-7556i, -1i), vec2<i32>(1i, u_input.c)) ^ select(vec2<i32>(11535i, 2147483647i), vec2<i32>(33648i, u_input.b), var_2.a)) << (_wgslsmith_mult_vec2_u32(var_2.c.zz, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_2.b.x, var_2.b.x))) % vec2<u32>(32u)));
}

