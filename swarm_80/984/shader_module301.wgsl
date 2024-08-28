struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true), all(vec4<bool>(true, true, true, true))), true, 0u, Struct_1(_wgslsmith_clamp_u32(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 19633u), vec3<u32>(4294967295u, 1u, 1u)), ~abs(38337u)), any(vec3<bool>(true, true, true)) != (true & all(vec3<bool>(false, false, true))), 1931f), Struct_1(1u, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -722f)))));
    return 28012u;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    var var_0 = u_input.b;
    var var_1 = 51090u;
    var_1 = func_3();
    let var_2 = select(!(!select(select(vec3<bool>(false, arg_0.b, false), vec3<bool>(true, arg_0.b, false), vec3<bool>(true, arg_0.b, false)), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b), true), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), !(!select(select(vec3<bool>(arg_0.b, false, false), vec3<bool>(false, true, true), arg_0.b), !vec3<bool>(true, arg_0.b, arg_0.b), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), !select(select(select(vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, true), arg_0.b), vec3<bool>(false, arg_0.b, true), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(false, arg_0.b, arg_0.b))), !select(vec3<bool>(false, arg_0.b, true), vec3<bool>(false, true, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b)), select(vec3<bool>(arg_0.b, arg_0.b, false), !vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b))));
    var_1 = ~1u;
    return _wgslsmith_clamp_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_mult_u32(arg_0.a, 1u) ^ (46989u << (arg_0.a % 32u))), firstTrailingBit(0u)), ~(firstLeadingBit(0u) & arg_2.x), 72463u);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -vec2<i32>(u_input.a, countOneBits(firstTrailingBit(-25535i)));
    let var_1 = abs(var_0);
    var var_2 = Struct_1(38931u, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(146f)) * _wgslsmith_f_op_f32(arg_2.e.c * 105f))))));
    let var_3 = var_1.x;
    var var_4 = ~_wgslsmith_div_u32(~1u | _wgslsmith_dot_vec2_u32(vec2<u32>(81906u, arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(44201u, arg_2.c), vec2<u32>(52354u, arg_2.d.a))), ~arg_0);
    return arg_2.e;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, min(113226u, 1u)), _wgslsmith_add_u32(func_2(Struct_1(4294967295u, true, -999f), -1127f, vec2<u32>(52285u, 60142u)), ~17382u)) >> (~(~(~0u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -878f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(881f)) * _wgslsmith_f_op_f32(-572f - 124f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-558f, 724f)))), Struct_2(!vec3<bool>(u_input.b == -22608i, select(false, true, true), any(vec4<bool>(true, true, false, false))), all(vec3<bool>(true, true, true)), 0u, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 5808u), ~vec2<u32>(1u, 20588u)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))), -456f), Struct_1(54408u, all(vec2<bool>(true, true)), 904f)));
    var var_1 = vec3<u32>(18735u, 34782u, var_0.a);
    var_0 = func_4(select(84617u, abs(1u) | (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(50892u, var_0.a, var_1.x)) & var_1.x), var_0.b), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, 658f) * vec2<f32>(-139f, -1000f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(399f, var_0.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1326f, var_0.c)))), _wgslsmith_div_vec2_f32(vec2<f32>(-737f, 224f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, var_0.c)))))), Struct_2(vec3<bool>(func_4(1u ^ var_0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-393f, var_0.c))), Struct_2(vec3<bool>(true, var_0.b, false), var_0.b, 20718u, Struct_1(23568u, false, var_0.c), Struct_1(var_1.x, true, var_0.c))).b, true, var_0.b), var_0.b && !var_0.b, var_0.a, Struct_1(1u, all(!vec4<bool>(true, false, true, var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), func_4(1u & _wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(0u, 70036u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(step(480f, var_0.c))), Struct_2(vec3<bool>(false, var_0.b, var_0.b), any(vec3<bool>(false, false, var_0.b)), var_1.x, func_4(1u, vec2<f32>(var_0.c, 1398f), Struct_2(vec3<bool>(var_0.b, true, false), var_0.b, var_0.a, Struct_1(4294967295u, var_0.b, 1398f), Struct_1(1392u, false, -646f))), Struct_1(49824u, var_0.b, -766f)))));
    let var_2 = vec4<u32>(max(countOneBits(var_0.a), var_1.x), 4294967295u, ~(~var_0.a), var_1.x);
    var_1 = vec3<u32>(96078u, ~9102u, _wgslsmith_dot_vec3_u32(var_2.wwx, firstTrailingBit(firstLeadingBit(~vec3<u32>(0u, var_2.x, var_0.a)))));
    return Struct_2(select(!select(select(vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, var_0.b, var_0.b), var_0.b), vec3<bool>(var_0.b, true, false), 1u != var_2.x), vec3<bool>(false, false, false), false), var_0.b, ~var_1.x, func_4(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, var_0.c)))), Struct_2(select(select(vec3<bool>(true, false, var_0.b), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, true, true), vec3<bool>(var_0.b, var_0.b, true)), vec3<bool>(false, var_0.b, true)), !var_0.b, 1u, func_4(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 177f)), Struct_2(vec3<bool>(var_0.b, true, true), false, var_0.a, Struct_1(var_2.x, var_0.b, 693f), Struct_1(87582u, var_0.b, 1310f))), Struct_1(_wgslsmith_add_u32(0u, 5798u), var_0.b, _wgslsmith_div_f32(1318f, var_0.c)))), func_4(func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 1794f) - vec2<f32>(var_0.c, var_0.c)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-746f, var_0.c), vec2<f32>(var_0.c, 165f)))))), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, var_0.b, true), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, var_0.b, true))), true && var_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_2.zy, var_2.xx), ~var_2.yx), Struct_1(var_1.x, all(vec2<bool>(var_0.b, true)), _wgslsmith_f_op_f32(-var_0.c)), Struct_1(0u, true, var_0.c))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_3;
    let var_1 = select(select(vec4<bool>(false, false, arg_1.d.b, !(var_0.x > arg_3.x)), vec4<bool>(false, any(select(vec4<bool>(true, arg_1.e.b, arg_0.d.b, true), vec4<bool>(arg_0.e.b, arg_1.d.b, false, true), arg_1.e.b)), all(func_1().a.zy), arg_1.a.x), select(!vec4<bool>(arg_0.d.b, true, arg_1.d.b, false), select(select(vec4<bool>(arg_1.a.x, true, arg_1.d.b, arg_0.e.b), vec4<bool>(false, false, arg_1.b, true), arg_0.d.b), select(vec4<bool>(arg_0.e.b, true, arg_1.d.b, false), vec4<bool>(arg_1.a.x, arg_0.e.b, false, arg_0.d.b), vec4<bool>(arg_0.d.b, arg_0.e.b, false, arg_1.e.b)), !vec4<bool>(false, arg_0.d.b, arg_0.d.b, false)), vec4<bool>(true, true, true, func_1().a.x))), select(select(!vec4<bool>(arg_1.e.b, true, true, arg_0.b), select(!vec4<bool>(arg_1.e.b, true, arg_1.d.b, arg_1.d.b), select(vec4<bool>(true, arg_0.a.x, arg_1.d.b, false), vec4<bool>(true, true, true, arg_0.b), vec4<bool>(true, arg_1.b, arg_1.e.b, false)), true), true), vec4<bool>(any(select(vec3<bool>(true, arg_1.e.b, false), arg_0.a, arg_1.a)), true, 4294967295u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32972u), var_0.zz), !arg_0.e.b || (arg_0.d.c == 1012f)), func_1().d.b), select(select(!select(vec4<bool>(arg_1.d.b, false, arg_0.e.b, true), vec4<bool>(arg_0.b, arg_1.d.b, arg_0.a.x, false), true), !(!vec4<bool>(arg_1.b, arg_0.e.b, true, arg_0.a.x)), (u_input.b > u_input.b) && (true | arg_1.e.b)), !vec4<bool>(true, true, true, arg_0.b), vec4<bool>(!any(arg_0.a), true, !(arg_1.d.b && true), false)));
    let var_2 = func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.x, 23743u), ~arg_3.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, var_0.x), ~9139u)), vec2<u32>(15978u, func_2(Struct_1(4294967295u, var_1.x, arg_0.d.c), -286f, vec2<u32>(var_0.x, var_0.x)) >> (arg_1.d.a % 32u))), arg_2, arg_0);
    var var_3 = arg_1.e;
    let var_4 = var_1.x;
    return u_input.b;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = !func_4(arg_3.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-374f, arg_1.c)), _wgslsmith_f_op_f32(trunc(-1052f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, arg_1.c) - vec2<f32>(-380f, arg_1.c)))), func_1()).b;
    var var_1 = 4294967295u;
    let var_2 = false;
    var var_3 = Struct_2(!vec3<bool>(arg_1.b, false, !(!arg_1.b)), var_2, abs(func_1().d.a), arg_1, Struct_1(arg_1.a, !select(!var_2, all(vec2<bool>(true, var_2)), !var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))));
    var var_4 = var_3.d.c;
    return func_4(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(615f * -814f), 340f)))), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = func_6(~(~vec2<u32>(0u, 1u)), Struct_1(1u, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-957f - -2411f))), _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(-87634i, 18079i, u_input.a, 0i), vec4<i32>(u_input.a, -1i, -19925i, 2147483647i) >> (vec4<u32>(0u, 47628u, 58346u, 1727u) % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), vec4<i32>(-44269i, max(-u_input.b, u_input.a), func_5(func_1(), Struct_2(vec3<bool>(true, false, false), false, 83333u, Struct_1(17586u, true, 1607f), Struct_1(42714u, true, -1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-570f, -775f), vec2<f32>(870f, 602f))), vec3<u32>(1u, 1u, 1u)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 48926i, u_input.a, u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, u_input.b, 16837i, 21942i))))), vec3<u32>(_wgslsmith_mod_u32(~reverseBits(4294967295u), 1u), ~(~(~4294967295u)), 12302u));
    var var_2 = func_6(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(abs(var_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2536u, var_1.a), vec3<u32>(var_1.a, 82080u, 38777u))), countOneBits(~vec2<u32>(var_1.a, var_1.a))), vec2<u32>(var_1.a, ~4294967295u)), func_1().e, ((-vec4<i32>(u_input.a, -50098i, -28620i, -2147483647i) << (countOneBits(vec4<u32>(var_1.a, var_1.a, 121065u, var_1.a)) % vec4<u32>(32u))) ^ vec4<i32>(i32(-1i) * -2533i, u_input.a, u_input.a, abs(-50301i))) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -30236i, -13721i, 26445i), vec4<i32>(u_input.a, u_input.a, u_input.b, 23636i), vec4<i32>(-27046i, u_input.b, u_input.b, u_input.a)), vec4<i32>(u_input.a, -955i, -3428i, -1i)), -vec4<i32>(-2147483647i, u_input.a, u_input.b, u_input.b) | vec4<i32>(u_input.b, 2147483647i, 0i, u_input.a)), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(func_1().d.a, var_1.a << (4294967295u % 32u), max(50791u, var_1.a)), vec3<u32>(0u, _wgslsmith_add_u32(var_1.a, 0u), ~4294967295u)), abs(select(vec3<u32>(4294967295u, 1u, var_1.a), vec3<u32>(4294967295u, var_1.a, var_1.a), !vec3<bool>(false, var_1.b, var_1.b)))));
    var_0 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(0i, u_input.a) & -44154i, 64274i) | -1i;
    var var_3 = func_6(vec2<u32>(0u, _wgslsmith_div_u32(1u, func_3())), func_1().d, vec4<i32>(-(46127i >> (firstLeadingBit(1u) % 32u)), u_input.a, u_input.a, _wgslsmith_sub_i32(-67511i, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(22432u, 1u, var_1.a, var_1.a), vec4<u32>(4294967295u, 69319u, 4294967295u, var_1.a)), var_1.a ^ 0u, _wgslsmith_add_u32(func_3(), select(38714u, 43262u, var_2.b))), _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, 33467u, 27366u), vec3<u32>(0u, 0u, var_2.a)), ~firstTrailingBit(vec3<u32>(var_1.a, var_1.a, 4294967295u))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, ~(~(~vec4<u32>(var_2.a, var_2.a, 15192u, var_1.a))));
}

