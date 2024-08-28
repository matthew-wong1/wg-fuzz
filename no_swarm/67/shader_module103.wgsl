struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<f32> {
    let var_0 = Struct_5(Struct_2(Struct_1(firstTrailingBit(2147483647i), vec2<i32>(~(-1i), 71738i)), Struct_1(2147483647i, (vec2<i32>(1i, 1i) >> (u_input.a.zy % vec2<u32>(32u))) & vec2<i32>(-1i, -40410i)), Struct_1(-1i, firstLeadingBit(vec2<i32>(1i, 1i))), all(!(!vec3<bool>(arg_1, arg_1, arg_1))), -(1i << (u_input.c % 32u))), arg_0, select(!select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, true, arg_1, false), arg_1), select(vec4<bool>(arg_1, true, arg_1, arg_1 & arg_1), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), select(!vec4<bool>(arg_1, true, arg_1, true), select(vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, false, arg_1, true)), arg_1)), !select(vec4<bool>(arg_1, false, arg_1, arg_1), !vec4<bool>(true, arg_1, false, arg_1), arg_1)), arg_0, Struct_2(Struct_1(-(~11386i), ~vec2<i32>(1i, 1i)), Struct_1(~(~(-1i)), max(~vec2<i32>(42615i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-38076i, 35449i)))), Struct_1(-1i, max(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), all(!vec4<bool>(arg_1, true, arg_1, true)), _wgslsmith_sub_i32(-52001i << (u_input.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(37232i, -2147483647i, 75098i), vec3<i32>(1i, -18724i, 8928i))) & 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = var_0;
    var var_3 = u_input.d;
    var_3 = u_input.b;
    return _wgslsmith_f_op_vec4_f32(-arg_0.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> vec2<u32> {
    var var_0 = u_input.c;
    var_0 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, ~0u, _wgslsmith_mult_u32(51120u, u_input.b), u_input.b ^ u_input.d) ^ ~u_input.a), select(firstLeadingBit(~(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b) | vec4<u32>(67451u, 2917u, 109323u, 0u))), u_input.a >> ((vec4<u32>(u_input.b, 32512u, u_input.c, 0u) ^ ~u_input.a) % vec4<u32>(32u)), all(select(select(arg_0.wx, arg_0.yx, true), arg_0.zx, false | arg_3))));
    var_0 = u_input.d;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(588f, -693f, 293f, arg_1) + vec4<f32>(-963f, 1000f, -1032f, arg_2.x))))), arg_0.x)));
    let var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f - -295f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) * _wgslsmith_div_f32(var_1.a.x, -111f))), arg_2.x, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_1)), -1242f)));
    return ~u_input.a.yw;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1397f))));
    var var_1 = abs(func_2(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), 413f, vec2<f32>(var_0, _wgslsmith_div_f32(-464f, 314f)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zx), vec2<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f * -889f))), vec2<bool>(select(select(false, true, true), all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, false, false))), false)))));
    var_1 = _wgslsmith_div_vec2_u32(vec2<u32>((~var_1.x | var_1.x) << (54351u % 32u), firstLeadingBit(~var_1.x >> (u_input.c % 32u))), u_input.a.zz);
    let var_3 = !(!vec2<bool>(true, _wgslsmith_mod_u32(u_input.d, arg_1.a) != (arg_1.a ^ 0u)));
    return !(!all(vec4<bool>(u_input.a.x != 4294967295u, true, any(vec3<bool>(var_3.x, var_3.x, true)), false)));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = Struct_5(Struct_2(Struct_1(-2147483647i, vec2<i32>(-1i) * -vec2<i32>(-8167i, -17732i)), Struct_1(~(-20343i), reverseBits(select(vec2<i32>(2147483647i, -1i), vec2<i32>(-16235i, -42493i), arg_0.x))), Struct_1(max(0i, -46663i), _wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(-15366i, -10005i))), arg_0.x, countOneBits(max(-6394i, -1i)) & -(59438i >> (u_input.a.x % 32u))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(726f, -884f, 553f, 748f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, -1532f, 478f, -2023f)))))), vec4<bool>(any(select(!arg_0, arg_0, false && arg_0.x)), false, _wgslsmith_f_op_f32(sign(-1903f)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(select(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, arg_0.x)), !arg_0.x))), Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, -1000f, -1391f, -823f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(561f, 519f, -1065f, 502f), vec4<f32>(1037f, 1000f, -1000f, -1668f))))))), Struct_2(Struct_1(firstTrailingBit(1i), vec2<i32>(-5053i, 33483i)), Struct_1(_wgslsmith_mod_i32(~2147483647i, -9068i), -(vec2<i32>(-1i, 13682i) << (u_input.a.xy % vec2<u32>(32u)))), Struct_1(0i, vec2<i32>(~(-2147483647i), -1i)), arg_0.x, -30171i));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.zw, vec2<u32>(~firstLeadingBit(u_input.c) << (~u_input.b % 32u), ~1u));
    var var_2 = _wgslsmith_mult_u32(var_1.x, firstLeadingBit(u_input.b & (~u_input.b | var_1.x)));
    var var_3 = var_0.a.a;
    let var_4 = var_3.b.x;
    return ~_wgslsmith_dot_vec2_i32(countOneBits(var_3.b), abs(reverseBits(var_0.a.c.b)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = !select(vec2<bool>((arg_1.x != 827f) || func_1(vec2<f32>(arg_2.x, arg_2.x), Struct_4(u_input.b, Struct_3(vec4<f32>(arg_1.x, -2387f, -1000f, arg_1.x)), arg_0)), ~u_input.d > _wgslsmith_mult_u32(1u, 41380u)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true));
    let var_1 = Struct_2(arg_0, arg_0, Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, -24873i, arg_0.a, 4212i), vec4<i32>(arg_0.a, -24506i, 1i, arg_0.b.x)), 1i), arg_0.b), select(select((var_0.x || var_0.x) && any(vec3<bool>(false, false, var_0.x)), true, true), true, any(!vec3<bool>(true, var_0.x, true))), arg_0.a);
    var_0 = vec2<bool>(false, any(!vec2<bool>(true, func_1(vec2<f32>(arg_1.x, arg_2.x), Struct_4(1u, Struct_3(vec4<f32>(arg_1.x, arg_1.x, 695f, 846f)), var_1.c)))));
    var_0 = !vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.a.x), u_input.a.zzx) == ~0u, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -649f, -1025f, -1290f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_2.x, arg_2.x, 918f))), true)))), vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.x, 1241f)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))), select(vec4<bool>(func_1(arg_2.yz, Struct_4(55643u, Struct_3(vec4<f32>(1706f, 1701f, -1223f, -1816f)), var_1.c)), var_1.d & false, false, any(vec2<bool>(true, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_1.d), var_0.x), vec4<bool>(var_1.d, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, false)), !(!var_0.x)))));
    return StorageBuffer(vec3<u32>(213u, _wgslsmith_mult_u32(40209u, ~_wgslsmith_add_u32(u_input.c, u_input.b)), max(_wgslsmith_dot_vec2_u32(u_input.a.wy >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(50816u, u_input.c)), 40425u)), arg_2, ~vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_add_u32(u_input.b, 10644u)), countOneBits(u_input.c & 20285u)), _wgslsmith_dot_vec3_i32(~min(vec3<i32>(-7096i, 615i, var_1.a.b.x), vec3<i32>(var_1.b.a, -1i, 1i)), vec3<i32>(1i, reverseBits(var_1.e), countOneBits(9964i))), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), reverseBits(1030u), countOneBits(u_input.b), 1u), select(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 0u, u_input.c, 16292u)), ~u_input.a, !vec4<bool>(var_0.x, true, var_1.d, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(351f, -232f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_div_f32(1000f, -707f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(619f + _wgslsmith_f_op_f32(1701f - var_0.x)))));
    let x = u_input.a;
    s_output = func_5(Struct_1(func_4(vec3<bool>(func_1(vec2<f32>(var_0.x, 1452f), Struct_4(u_input.d, Struct_3(vec4<f32>(var_0.x, var_0.x, -1000f, 288f)), Struct_1(-8012i, vec2<i32>(-1i, 21432i)))), false, true)), vec2<i32>(countOneBits(-9740i), reverseBits(22744i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1462f, -1149f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 543f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, _wgslsmith_f_op_f32(f32(-1f) * -102f)) - vec2<f32>(729f, _wgslsmith_f_op_f32(floor(946f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1187f))))));
}

