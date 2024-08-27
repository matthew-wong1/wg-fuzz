struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> vec2<i32> {
    var var_0 = countOneBits(~u_input.b.x);
    return vec2<i32>(firstLeadingBit(u_input.c.x), countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.e.a.x, 2147483647i, -2147483647i, u_input.d.x), ~vec4<i32>(1i, arg_0.e.a.x, u_input.c.x, u_input.c.x) ^ select(vec4<i32>(1i, -34642i, -1i, -45965i), vec4<i32>(0i, -2147483647i, arg_0.e.a.x, 2147483647i), vec4<bool>(false, false, false, true)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2142f, arg_0.b.x, 1000f, arg_2) - vec4<f32>(arg_0.b.x, -171f, arg_0.b.x, arg_2)))))), arg_1.a ^ u_input.c);
    var var_1 = true;
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.a, ~_wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, 38749i, u_input.c.x), u_input.a)), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a) >> (~u_input.b % vec3<u32>(32u))));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1047f, 1608f, -1668f, arg_2), vec4<f32>(1000f, arg_0.b.x, -785f, -383f)))))), reverseBits(reverseBits(func_3(Struct_4(0u, Struct_3(false, var_0.a.zy), arg_0.a, vec2<u32>(0u, u_input.b.x), arg_1), ~u_input.b.x, all(vec4<bool>(false, arg_0.a, true, arg_0.a))))));
    var_1 = !(u_input.b.x > reverseBits(~0u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-474f, _wgslsmith_f_op_f32(-arg_2))) - 355f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = -125f;
    let var_1 = -u_input.d;
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-591f - _wgslsmith_f_op_f32(-730f - arg_0.x)))), _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), vec2<i32>(-1i) * -vec2<i32>(max(-49230i, 10750i), 2147483647i));
    let var_3 = var_2.a.wwx;
    let var_4 = Struct_2(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1.x, -31984i), select(var_1, u_input.d, true) | ~u_input.d)), select(!vec3<bool>(-11502i > var_1.x, any(vec4<bool>(false, false, true, false)), true), vec3<bool>(true, !all(vec2<bool>(true, false)), false), true), Struct_1(vec2<i32>(0i, var_2.b.x) | countOneBits(u_input.d)), select(vec4<bool>(true, true, (u_input.b.x & 27525u) > u_input.b.x, ~67619u < abs(u_input.b.x)), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, true), all(vec4<bool>(false, false, false, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), false))));
    return var_4;
}

fn func_1() -> Struct_2 {
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-153f, 471f, 496f, -1019f))))) + vec4<f32>(-639f, 117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - -314f) * 1f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2(Struct_3(true, vec2<f32>(-954f, 783f)), Struct_1(vec2<i32>(-3730i, -2147483647i)), 252f))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_5 {
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = vec4<bool>(arg_2.c.x, arg_2.e.x, true && arg_0.x, !arg_2.c.x);
    let var_2 = Struct_4(u_input.b.x, Struct_3(arg_0.x, vec2<f32>(1f, 1f)), false, vec2<u32>(38285u, 0u) & (firstTrailingBit(u_input.b.zx) >> (~(vec2<u32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(u_input.b.x, 51446u) % vec2<u32>(32u))) % vec2<u32>(32u))), func_1().b);
    let var_3 = 0u;
    var var_4 = 4294967295u;
    return Struct_5(vec4<f32>(var_2.b.b.x, var_2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), -1229f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.b.x))))), _wgslsmith_mod_vec2_i32(-reverseBits(u_input.a.zy ^ vec2<i32>(arg_2.b.a.x, u_input.c.x)), vec2<i32>(_wgslsmith_mult_i32(14169i, ~arg_2.d.a.x), max(firstTrailingBit(arg_3), 1i))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_2) -> f32 {
    var var_0 = 1u;
    var var_1 = Struct_3(!(!all(vec3<bool>(true, true, arg_2.e.x)) == arg_2.e.x), arg_1.a.wx);
    var_0 = u_input.b.x;
    var_0 = 4294967295u << (u_input.b.x % 32u);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - var_1.b.x)))));
}

fn func_7(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = -500f;
    let var_1 = ~_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 76165u), vec4<u32>(u_input.b.x, 27799u, u_input.b.x, 0u) ^ vec4<u32>(u_input.b.x, u_input.b.x, 70888u, u_input.b.x)), firstTrailingBit(~(~vec4<u32>(31070u, u_input.b.x, u_input.b.x, 27388u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 58310u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 22475u), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))) & vec4<u32>(80532u, abs(11910u), 28176u >> (u_input.b.x % 32u), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 15333u)));
    let var_2 = 10109u;
    var var_3 = vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), any(vec3<bool>(false, false, true)))), all(!vec2<bool>(-1274f >= var_0, all(vec4<bool>(true, false, false, false)))), false);
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2740f - -576f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1274f)), -188f, _wgslsmith_f_op_f32(-arg_0.x)));
    return func_5(func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_4.x, arg_0.x, 632f, 1259f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -115f, -1642f, var_0))))))).e, _wgslsmith_div_vec4_f32(vec4<f32>(818f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(206f + -421f))), var_4.x, -615f), func_5(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_4.x, 1418f, var_4.x), vec4<f32>(arg_0.x, 1151f, 141f, 1000f), vec4<bool>(false, false, var_3.x, true)))).e, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_4.x, -1379f, var_4.x), vec4<f32>(var_4.x, arg_0.x, arg_0.x, var_4.x)), Struct_2(u_input.d.x > -2147483647i, func_1().d, select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(true, var_3.x, true)), func_4(vec4<f32>(var_4.x, arg_0.x, arg_0.x, 899f)).b, select(vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(true, var_3.x, var_3.x, true), vec4<bool>(false, false, true, true))), func_3(Struct_4(4294967295u, Struct_3(true, vec2<f32>(-312f, var_0)), true, vec2<u32>(var_2, var_1.x), Struct_1(u_input.d)), ~var_1.x, false).x).a), func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1154f - var_4.x))), _wgslsmith_f_op_f32(step(-165f, -2979f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1726f * -1821f)), _wgslsmith_f_op_f32(func_6(u_input.a.zx, Struct_5(vec4<f32>(var_0, var_4.x, -683f, var_0), vec2<i32>(u_input.d.x, u_input.c.x)), Struct_2(var_3.x, Struct_1(u_input.a.yx), vec3<bool>(false, var_3.x, var_3.x), Struct_1(vec2<i32>(u_input.a.x, u_input.d.x)), vec4<bool>(true, false, false, false)))))), ~(~u_input.a.x >> (var_1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 32114i;
    var var_1 = countOneBits(reverseBits(~(-u_input.a.x))) >> ((u_input.b.x & u_input.b.x) % 32u);
    var var_2 = func_7(vec2<f32>(_wgslsmith_f_op_f32(func_6(u_input.d, func_5(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), _wgslsmith_div_vec4_f32(vec4<f32>(-1209f, 1956f, -969f, 131f), vec4<f32>(808f, 330f, 705f, -640f)), func_1(), select(u_input.c.x, u_input.d.x, false)), Struct_2(any(vec4<bool>(true, true, false, true)), func_1().b, vec3<bool>(true, true, true), Struct_1(u_input.a.yx), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)))), _wgslsmith_f_op_f32(func_6(func_3(Struct_4(u_input.b.x, Struct_3(false, vec2<f32>(944f, -968f)), true, u_input.b.yx, Struct_1(vec2<i32>(-1i, -38507i))), ~1u, true), func_5(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-885f, -1356f, -566f, -551f))), Struct_2(true, Struct_1(vec2<i32>(u_input.d.x, var_0)), vec3<bool>(false, true, false), Struct_1(vec2<i32>(var_0, -37193i)), vec4<bool>(true, false, true, false)), _wgslsmith_mult_i32(u_input.d.x, var_0)), func_1()))));
    var var_3 = ~1u;
    var var_4 = (_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, u_input.b.x), firstLeadingBit(0u | u_input.b.x)) << (~u_input.b.x % 32u)) & u_input.b.x;
    let var_5 = func_4(var_2.a);
    var var_6 = false;
    let var_7 = Struct_4(~u_input.b.x, Struct_3(true, _wgslsmith_f_op_vec2_f32(-func_5(vec4<bool>(true, true, var_5.e.x, true), func_5(var_5.e, vec4<f32>(var_2.a.x, 394f, -558f, 1000f), Struct_2(true, Struct_1(var_5.d.a), var_5.e.xyy, var_5.b, vec4<bool>(var_5.c.x, false, var_5.c.x, var_5.a)), u_input.d.x).a, Struct_2(true, Struct_1(vec2<i32>(var_5.d.a.x, -1i)), vec3<bool>(false, var_5.e.x, var_5.a), var_5.d, vec4<bool>(false, var_5.c.x, true, false)), var_2.b.x << (u_input.b.x % 32u)).a.zw)), var_5.e.x, ~(~select(vec2<u32>(1u, u_input.b.x) ^ u_input.b.zy, vec2<u32>(84221u, 38472u), var_5.c.x)), func_1().d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(423i, u_input.a.x), _wgslsmith_add_vec2_i32(~(vec2<i32>(var_0, var_5.b.a.x) << (abs(u_input.b.xy) % vec2<u32>(32u))), select(var_5.d.a & (vec2<i32>(u_input.d.x, var_0) << (var_7.d % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(u_input.a.zz, vec2<i32>(2147483647i, u_input.c.x)), func_1().e.ww)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.a.wyy))), ~countOneBits(6965i) << (abs(u_input.b.x) % 32u));
}

