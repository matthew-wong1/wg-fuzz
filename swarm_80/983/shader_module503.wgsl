struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 27032i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-734f, arg_1.d, !arg_1.b.x)) * 1451f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-arg_1.e))))), 1692f);
    let var_2 = Struct_4(arg_1, ~(~(~(-1i))), vec4<u32>(0u, ~0u, 0u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(20459u, 27u, 4294967295u, 36089u)), ~countOneBits(vec4<u32>(20769u, 73800u, 4294967295u, 106629u)))), select(~firstLeadingBit(~vec4<u32>(1u, 4294967295u, 1u, 56039u)), vec4<u32>(1u, 1u, 1u, 1u), !(!vec4<bool>(false, arg_0.b, true, false))), _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(1u, 1u, 1u, 1u)), firstTrailingBit(select(abs(vec4<u32>(8090u, 1u, 15530u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(arg_0.b, arg_1.c, arg_1.c, arg_1.b.x)))));
    let var_3 = Struct_4(arg_1, select(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(var_2.b, 0i)), var_2.b, any(vec4<bool>(false, var_2.a.c, false, false))), _wgslsmith_clamp_i32(5936i, -36133i, var_2.b & 2147483647i), arg_1.b.x) & var_2.b, vec4<u32>(0u, countOneBits(countOneBits(var_2.e.x)), ~_wgslsmith_clamp_u32(49446u, var_2.d.x, 1u), 16322u) | var_2.c, ~var_2.c, vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(46754u, var_2.d.x), _wgslsmith_dot_vec3_u32(var_2.e.wyx, var_2.e.xwz))), ~(~firstTrailingBit(var_2.c.x)), var_2.c.x, _wgslsmith_dot_vec3_u32(~(~var_2.c.wxy), countOneBits(var_2.e.yxx) ^ ~vec3<u32>(var_2.e.x, var_2.e.x, var_2.c.x))));
    var var_4 = var_2.b;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(min(-408f, var_2.a.a))))), -1318f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(924f, 936f)), var_1)))), -146f);
}

fn func_2(arg_0: vec4<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1141f, -456f, -221f, 338f), vec4<f32>(-262f, -1912f, -422f, -198f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(257f, 589f, 211f, 725f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, true), Struct_1(_wgslsmith_f_op_f32(-2075f + -420f), vec3<bool>(true, true, true), true, -1079f, _wgslsmith_f_op_f32(abs(-159f))))) * vec4<f32>(_wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(189f - -768f)), 1426f, _wgslsmith_f_op_f32(ceil(-1364f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -693f))))));
    var var_1 = abs(select(countOneBits(vec4<u32>(abs(5791u), abs(9795u), 1u, 41281u)), vec4<u32>(1u, _wgslsmith_sub_u32(~1u, 1u), 1u, 1u), select(all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -1607f) <= var_0.x, all(vec3<bool>(true, false, false)))));
    return Struct_5(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~26940u, var_1.x), ~(~var_1.wy)), vec2<u32>(~select(var_1.x, var_1.x, true), 51673u)), vec4<i32>(countOneBits(2147483647i), 0i, u_input.b, countOneBits(-abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, -778f, -236f, var_0.x)))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -207f)) - arg_1.c.x)), vec3<bool>(true, true, true), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) != any(vec2<bool>(true, true)), arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1508f)))));
    global0 = arg_1.b.x;
    var var_1 = Struct_2(var_0.c, all(vec3<bool>(true, arg_1.c.x == var_0.e, false)) & select(true, var_0.b.x, true));
    var_1 = Struct_2(var_1.a, false);
    var_1 = Struct_2(true, var_0.c);
    return ~_wgslsmith_div_u32(abs(countOneBits(9821u)), _wgslsmith_sub_u32(42387u, _wgslsmith_dot_vec2_u32(arg_0.yz, arg_1.a)));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = -arg_1.zx;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1344f * 1000f)))), vec3<bool>(any(vec2<bool>(true, false)) & all(vec4<bool>(false, true, false, false)), true, true), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1369f)), 875f));
    var var_2 = vec3<i32>(min(~var_0.x, _wgslsmith_sub_i32(u_input.a, -1i)), arg_1.x, _wgslsmith_div_i32(abs(2147483647i), countOneBits(u_input.a)));
    let var_3 = Struct_4(Struct_1(func_2(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(48070i, var_2.x, arg_1.x, 20777i), vec4<i32>(var_0.x, u_input.a, arg_1.x, -2147483647i), vec4<bool>(var_1.a.b.x, true, false, true)), vec4<i32>(2147483647i, arg_1.x, arg_1.x, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, 37996i, u_input.b, 1i), vec4<i32>(var_2.x, arg_1.x, 2147483647i, 13611i)))).c.x, vec3<bool>(!(false & var_1.a.c), all(select(var_1.a.b, vec3<bool>(true, var_1.a.b.x, var_1.a.c), var_1.a.b)), !all(vec3<bool>(var_1.a.c, var_1.a.b.x, true))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.d + 280f), -817f))), var_1.a.d), ~arg_1.x, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, arg_0 ^ 46929u, abs(arg_0)), ~(0u << (arg_0 % 32u)), 30000u << (0u % 32u), ~arg_0), _wgslsmith_add_vec4_u32(abs(reverseBits(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u))), firstLeadingBit(vec4<u32>(arg_0, arg_0, 81903u, arg_0)))), vec4<u32>(arg_0, ~reverseBits(40964u), arg_0, 0u), firstLeadingBit(~(~vec4<u32>(0u, 1u, arg_0, arg_0))));
    var var_4 = Struct_3(Struct_1(1221f, vec3<bool>(true, false, true || var_3.a.c), !(!(!var_3.a.b.x)), 1987f, var_3.a.e));
    return var_1;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_mult_u32(~_wgslsmith_add_u32(~0u, 0u), ~func_4(min(vec4<u32>(0u, 28977u, 0u, 20280u), vec4<u32>(4294967295u, 10509u, 1u, 306u)), func_2(vec4<i32>(-2147483647i, u_input.b, 2147483647i, u_input.a)))), ~vec3<i32>(u_input.b, -2147483647i, 0i) >> (vec3<u32>(_wgslsmith_add_u32(~4657u, func_2(vec4<i32>(u_input.a, 44438i, 2147483647i, u_input.b)).a.x), ~reverseBits(4294967295u), _wgslsmith_mod_u32(4294967295u, abs(1u))) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_mod_i32(-(~u_input.a ^ -2147483647i), ~(-14038i));
    var var_2 = Struct_5(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(23927u, 4294967295u, 26008u), firstLeadingBit(vec3<u32>(0u, 0u, 0u)), !arg_0.x), min(~vec3<u32>(65315u, 0u, 4294967295u), select(vec3<u32>(4294967295u, 36642u, 4294967295u), vec3<u32>(72065u, 4294967295u, 1u), var_0.a.b)))), vec4<i32>(-(~var_1), u_input.b, _wgslsmith_clamp_i32(u_input.a, var_1, max(~(-2147483647i), u_input.b & u_input.a)), _wgslsmith_add_i32(-2147483647i, u_input.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2175f, -1000f, var_0.a.a, 177f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.e, -110f, var_0.a.d, var_0.a.a)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a), -1594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(383f))))), !select(vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(false, true, arg_0.x, var_0.a.b.x), var_0.a.c))));
    var_0 = func_5(_wgslsmith_mod_u32(var_2.a.x >> (max(6802u, countOneBits(var_2.a.x)) % 32u), var_2.a.x), _wgslsmith_add_vec3_i32(func_2(var_2.b).b.xyy, vec3<i32>(0i, 1i, var_1)));
    let var_3 = Struct_2(!(!(!var_0.a.c)), func_5(~9714u, ~(vec3<i32>(-1i) * -vec3<i32>(var_1, 16279i, var_2.b.x))).a.b.x);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1387f, 1412f)) * 1f)))) * 592f);
    var var_1 = func_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var var_2 = func_2(~vec4<i32>(26659i, ~(~u_input.a), ~25681i, -2147483647i));
    var var_3 = var_2.c.x;
    let var_4 = _wgslsmith_div_i32(_wgslsmith_sub_i32(41472i, firstTrailingBit(u_input.a)), -2147483647i) >> (1u % 32u);
    var var_5 = !vec3<bool>(any(!var_1.b) & !func_5(1u, vec3<i32>(var_4, var_2.b.x, -1i)).a.b.x, var_1.c & true, !all(var_1.b));
    var_1 = func_5(reverseBits(var_2.a.x), -min(abs(_wgslsmith_add_vec3_i32(var_2.b.zxw, vec3<i32>(var_4, u_input.b, -2147483647i))), vec3<i32>(-1i) * -vec3<i32>(u_input.b, var_4, var_4))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, vec3<u32>(~_wgslsmith_mult_u32(max(var_2.a.x, var_2.a.x), ~var_2.a.x), var_2.a.x, var_2.a.x), -732f);
}

