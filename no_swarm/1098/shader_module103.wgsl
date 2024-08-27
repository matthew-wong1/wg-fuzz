struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(max(-436f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(arg_0, 1017f)))), _wgslsmith_add_vec3_u32(u_input.a.yyw, u_input.a.zxy), vec2<i32>(-22826i, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(705f, 410f, _wgslsmith_f_op_f32(-1188f + 138f)), vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), -131f, _wgslsmith_f_op_f32(-arg_0)), true))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    let var_0 = false;
    var var_1 = select(!vec4<bool>(_wgslsmith_mod_i32(arg_1.c.x, arg_2.a) > (arg_3.a ^ -1i), select(var_0, var_0, true) & true, -659f <= arg_3.b, true), !select(!(!vec4<bool>(false, true, var_0, true)), vec4<bool>(33506u == arg_2.c, var_0, !var_0, arg_3.c > arg_1.b.x), any(vec3<bool>(false, false, var_0))), !vec4<bool>(var_0, !var_0 | !var_0, var_0, !var_0));
    let var_2 = Struct_3(Struct_2(arg_3, ~vec2<i32>(arg_2.a & arg_3.a, ~arg_3.a), arg_1.d.x >= -746f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_1.d.x, _wgslsmith_f_op_f32(1000f - arg_1.a), _wgslsmith_f_op_f32(-arg_1.a))), -1157f), abs(vec4<i32>(firstTrailingBit(~0i), -2147483647i, arg_2.a, -(i32(-1i) * -41988i))), Struct_2(arg_2, ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, arg_1.c.x, arg_3.a), vec3<i32>(-1i, 1i, u_input.c)), ~(-1i)), any(!(!vec2<bool>(true, var_1.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_3.b * -1770f), _wgslsmith_f_op_f32(select(arg_2.b, 1000f, var_0)), _wgslsmith_f_op_f32(round(arg_3.b)), _wgslsmith_f_op_f32(f32(-1f) * -2020f)))), arg_3.b));
    var_1 = vec4<bool>(var_0, var_2.c.c, any(vec4<bool>(true, true, true, true)), any(select(var_1.wy, !select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), var_2.c.c), true)));
    var var_3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xy ^ u_input.a.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1.b.x) | arg_1.b.xy, abs(u_input.a.yy))), ~(~(~arg_1.b.xz)));
    return func_2(_wgslsmith_f_op_f32(-arg_2.b), arg_1.c.x > reverseBits(var_2.a.a.a), _wgslsmith_div_i32(min(5802i, arg_2.a >> (4294967295u % 32u)), firstLeadingBit(-46042i)) ^ -2147483647i);
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_4(1250f, vec3<u32>(arg_0.b.x >> (1u % 32u), _wgslsmith_mod_u32(reverseBits(u_input.b), func_2(arg_0.d.x, false, 0i).b.x) & 18382u, arg_0.b.x >> (13346u % 32u)), firstLeadingBit(-select(func_3(105180u, Struct_4(arg_0.d.x, vec3<u32>(27058u, arg_0.b.x, arg_0.b.x), arg_0.c, arg_0.d), Struct_1(arg_0.c.x, arg_0.d.x, u_input.a.x), Struct_1(-24172i, -134f, 1u)).c, -vec2<i32>(10363i, arg_0.c.x), true || arg_1)), _wgslsmith_f_op_vec3_f32(-func_3(1u, arg_0, Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(f32(-1f) * -333f), ~arg_0.b.x), Struct_1(-2147483647i, -168f, reverseBits(arg_0.b.x))).d));
    var var_1 = Struct_3(Struct_2(Struct_1(arg_0.c.x, func_2(var_0.d.x, arg_1, var_0.c.x).d.x, arg_0.b.x), vec2<i32>(~0i, func_2(_wgslsmith_f_op_f32(arg_0.a + 662f), all(vec4<bool>(false, false, arg_1, true)), var_0.c.x | -1i).c.x), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, -233f, var_0.a, -1454f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.d.x, -456f, var_0.d.x) - vec4<f32>(645f, var_0.d.x, 1000f, var_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1405f, -1365f, arg_0.a, arg_0.d.x) * vec4<f32>(-743f, -454f, -161f, 399f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-853f - var_0.d.x), 508f)))), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, arg_0.c.x, u_input.c), vec4<i32>(2147483647i, -3034i, 11009i, var_0.c.x)), -_wgslsmith_mod_i32(1i, -2147483647i), -u_input.c << (~u_input.a.x % 32u)), vec4<i32>(countOneBits(u_input.c), -1i, -22128i, var_0.c.x >> (~6556u % 32u))), Struct_2(Struct_1(u_input.d, arg_0.d.x, ~(~1u)), ~(~(~var_0.c)), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, arg_0.a) - 1656f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f * arg_0.a)), arg_0.a), func_3(_wgslsmith_dot_vec2_u32(reverseBits(var_0.b.yy), _wgslsmith_mult_vec2_u32(arg_0.b.zx, arg_0.b.xy)), arg_0, Struct_1(~47634i, _wgslsmith_f_op_f32(-var_0.a), ~38795u), Struct_1(arg_0.c.x, var_0.d.x, 52914u)).a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.yz - var_0.d.xx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d.yz))))));
    var var_3 = ~(countOneBits(~(vec3<u32>(var_1.a.a.c, var_1.a.a.c, arg_0.b.x) | u_input.a.wxz)) << (~arg_0.b % vec3<u32>(32u)));
    var var_4 = -1000f;
    return var_1.a.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = !(!any(vec2<bool>(false, false))) | true;
    var_0 = true;
    var var_1 = Struct_3(Struct_2(arg_0, -_wgslsmith_clamp_vec2_i32(max(vec2<i32>(-1i, u_input.c), vec2<i32>(arg_0.a, 33914i)), firstLeadingBit(vec2<i32>(-2147483647i, -29435i)), vec2<i32>(u_input.d, -8343i)), !(0u >= reverseBits(arg_0.c)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-807f)))), _wgslsmith_f_op_f32(trunc(293f)), 357f, -1502f), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), ~_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -89369i, 0i, u_input.d) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(arg_0.a, arg_0.a, u_input.c, abs(u_input.c))), Struct_2(arg_0, max(~abs(vec2<i32>(u_input.d, 0i)), _wgslsmith_mult_vec2_i32(func_3(u_input.a.x, Struct_4(arg_1, u_input.a.xyz, vec2<i32>(u_input.d, arg_0.a), vec3<f32>(arg_0.b, arg_1, -504f)), arg_0, Struct_1(0i, 1330f, u_input.a.x)).c, _wgslsmith_sub_vec2_i32(vec2<i32>(-23318i, arg_0.a), vec2<i32>(arg_0.a, arg_0.a)))), any(vec2<bool>(false, -457f >= arg_0.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f * 1862f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), arg_1)), 728f, func_2(_wgslsmith_f_op_f32(-arg_0.b), all(vec2<bool>(false, true)), arg_0.a).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * -152f)));
    let var_2 = var_1.a.d.ww;
    let var_3 = var_1.a;
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(541f * -1727f) - 1516f))) + _wgslsmith_f_op_f32(select(func_4(func_2(949f, var_1.a.c, var_3.a.a), false || var_1.c.c).b, arg_1, arg_0.c != 1u))), var_3.c, var_1.a.b.x);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_2(Struct_1(-42333i, -1958f, ~countOneBits(_wgslsmith_mod_u32(4294967295u, 4294967295u))), _wgslsmith_div_vec2_i32(abs(~vec2<i32>(u_input.d, -15474i)), ~select(max(vec2<i32>(26115i, -6979i), vec2<i32>(-2147483647i, arg_0.c.x)), ~arg_0.c, select(vec2<bool>(true, false), vec2<bool>(false, true), false))), !(abs(~2836i) <= (26601i << (~u_input.a.x % 32u))), _wgslsmith_f_op_vec4_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-169f)) - -570f));
    var var_1 = (7409u >> (arg_0.b.x % 32u)) & _wgslsmith_sub_u32(73061u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), vec4<u32>(89781u, var_0.a.c, arg_0.b.x, u_input.a.x))));
    var var_2 = false & ((var_0.c & (false || var_0.c)) || var_0.c);
    let var_3 = arg_1.zxx;
    let var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.x, ~u_input.c, ~(-53506i >> (func_4(arg_0, var_0.c).c % 32u)), ~_wgslsmith_sub_i32(-9414i & arg_0.c.x, -3027i)), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.x, arg_0.c.x, -2147483647i, u_input.c), vec4<i32>(2147483647i, -11112i, 6024i, 52539i)), -(~vec4<i32>(arg_0.c.x, 2147483647i, 2147483647i, 21929i))) >> (vec4<u32>(1u << (arg_2.x % 32u), 0u, 66993u, arg_0.b.x) % vec4<u32>(32u)));
    return Struct_5(-30187i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(select(-765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1234f + arg_0.d.x)), select(all(vec2<bool>(var_0.c, true)), var_0.c & true, var_0.c))), func_3(_wgslsmith_mult_u32(u_input.b, 33222u) ^ arg_0.b.x, arg_0, var_0.a, func_4(arg_0, var_4.x < u_input.d)).d.x, var_0.a.b), (_wgslsmith_div_i32(1i, -var_4.x) | _wgslsmith_clamp_i32(-23114i ^ u_input.c, var_0.a.a | arg_0.c.x, -2147483647i ^ arg_0.c.x)) != _wgslsmith_sub_i32(34390i, 25824i), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))), var_0.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, 1856f))))));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = func_6(func_5(func_4(func_3(u_input.b << (u_input.b % 32u), func_2(-1000f, false, -11120i), Struct_1(-42221i, arg_0, 83421u), Struct_1(u_input.d, 898f, u_input.b)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(728f + 784f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, arg_0), 1915f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(689f)), arg_0, -932f, arg_0))), select(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(u_input.a.x, 33266u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 0u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 0u), select(vec2<u32>(u_input.a.x, u_input.b) | vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 1u), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))));
    var var_1 = u_input.a.x;
    let var_2 = func_4(Struct_4(arg_0, u_input.a.xzz | u_input.a.zwy, vec2<i32>(~var_0.a, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.d), vec2<i32>(-1i, -1i), true), vec2<i32>(-2147483647i, u_input.d) | vec2<i32>(var_0.a, u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.wwz, vec3<f32>(-1865f, var_0.e, 1000f), false)) * _wgslsmith_f_op_vec3_f32(-var_0.b.yxx))), !all(select(select(vec3<bool>(false, var_0.c, false), vec3<bool>(false, true, var_0.c), vec3<bool>(var_0.c, false, var_0.c)), !vec3<bool>(var_0.c, var_0.c, true), false)));
    let var_3 = var_0.a;
    var_1 = _wgslsmith_sub_u32(~u_input.b, _wgslsmith_sub_u32(u_input.a.x, ~(~_wgslsmith_mod_u32(81585u, var_2.c))));
    return select(firstTrailingBit(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.c, 0i, u_input.d)), max(vec3<i32>(var_2.a, 1i, u_input.d), vec3<i32>(-2147483647i, var_2.a, -60432i)))), _wgslsmith_add_vec3_i32(~(~vec3<i32>(u_input.c, var_0.a, -2147483647i)), firstLeadingBit(-vec3<i32>(u_input.d, u_input.d, var_2.a))), !select(!vec3<bool>(var_0.c, var_0.c, false), select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(var_0.c, false, false)), true)) ^ vec3<i32>(var_2.a, -(i32(-1i) * -2147483647i), _wgslsmith_mult_i32(i32(-1i) * -10927i, u_input.d) & ~var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstLeadingBit(func_1(1011f));
    var var_1 = Struct_4(1000f, _wgslsmith_mult_vec3_u32(~max(~u_input.a.ywx, _wgslsmith_div_vec3_u32(vec3<u32>(26694u, 110399u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 4294967295u))), abs(select(vec3<u32>(0u, u_input.a.x, u_input.b), u_input.a.xzw, vec3<bool>(true, true, true)) ^ _wgslsmith_sub_vec3_u32(u_input.a.wxx, vec3<u32>(52669u, 0u, 4294967295u)))), var_0.xz, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(293f)), _wgslsmith_f_op_f32(abs(537f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -592f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1810f * -483f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 606f, -560f) - vec3<f32>(301f, 468f, 700f))))));
    var_1 = func_2(var_1.a, !(!all(vec4<bool>(false, false, false, false)) | (u_input.a.x <= 1u)), var_1.c.x);
    let var_2 = vec4<u32>(abs(~0u) & (var_1.b.x << (803u % 32u)), firstTrailingBit(_wgslsmith_mult_u32(~func_4(Struct_4(var_1.d.x, vec3<u32>(u_input.b, var_1.b.x, u_input.b), vec2<i32>(u_input.d, u_input.c), vec3<f32>(473f, 446f, var_1.d.x)), false).c, abs(~var_1.b.x))), 29689u, ~(~(~abs(4294967295u))));
    var_1 = func_2(898f, false, 2147483647i);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_3(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_2.xzw), ~vec3<u32>(1u, u_input.a.x, var_2.x)), func_3(reverseBits(57355u), Struct_4(var_1.d.x, vec3<u32>(var_1.b.x, u_input.a.x, 1u), vec2<i32>(u_input.c, u_input.d), vec3<f32>(var_1.d.x, 319f, var_1.d.x)), func_4(Struct_4(-1000f, vec3<u32>(4294967295u, u_input.a.x, u_input.b), vec2<i32>(-1i, -60644i), vec3<f32>(var_1.d.x, var_1.d.x, -1000f)), false), Struct_1(-19700i, var_1.d.x, 68654u)), Struct_1(var_0.x, _wgslsmith_f_op_f32(var_1.d.x - -1026f), var_1.b.x), func_4(func_3(u_input.a.x, Struct_4(var_1.a, vec3<u32>(var_2.x, var_1.b.x, 0u), var_1.c, var_1.d), Struct_1(0i, 1576f, 145866u), Struct_1(u_input.d, var_1.d.x, u_input.a.x)), true)).d.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, _wgslsmith_f_op_f32(f32(-1f) * -1895f), 228f, var_3)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3, -1166f, var_1.a, 545f), vec4<f32>(-1000f, var_1.d.x, 625f, 1000f))))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3, var_3))), func_3(0u, Struct_4(var_1.a, vec3<u32>(u_input.b, 23235u, 0u), var_0.xx, vec3<f32>(var_1.a, 740f, 1000f)), Struct_1(28890i, 524f, 31922u), Struct_1(-38045i, var_1.d.x, 1u)).d.x, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x ^ -func_6(Struct_4(var_1.d.x, var_2.wyy, vec2<i32>(-1i, u_input.c), var_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -240f, var_1.d.x, var_4.x) * vec4<f32>(var_3, -1131f, var_4.x, -473f)), ~u_input.a.zz).a, min(_wgslsmith_clamp_vec4_u32(~(~u_input.a), firstTrailingBit(vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x)), vec4<u32>(var_1.b.x, _wgslsmith_sub_u32(u_input.a.x, var_1.b.x), 0u, var_2.x)), u_input.a << (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b.x, 1u, var_1.b.x, var_1.b.x), ~vec4<u32>(u_input.a.x, 4294967295u, var_1.b.x, 53399u)) % vec4<u32>(32u))));
}

