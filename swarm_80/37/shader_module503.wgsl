struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_2(~vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(min(select(43005u, 35442u, arg_0.b), countOneBits(1u)), ~(1u << (1u % 32u)), ~0u, abs(min(113577u, 62362u))), vec2<f32>(754f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1038f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - 393f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(round(202f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1));
    var var_3 = select(!global0.a, select(select(vec4<bool>(global0.b || arg_0.b, var_0.a.x > var_0.a.x, all(global0.a), true), vec4<bool>(37742i > arg_1.x, select(arg_0.b, true, arg_0.b), false, false), !(!vec4<bool>(true, arg_0.a.x, false, true))), arg_0.a, global0.a), select(!global0.a, vec4<bool>(select(false, 0u >= var_0.a.x, global0.a.x), !(!arg_0.a.x), arg_0.a.x, !arg_0.a.x), !(!vec4<bool>(global0.a.x, false, false, true))));
    let var_4 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.yz + var_2.wz), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_0.b.x) + 920f), _wgslsmith_f_op_f32(var_1.x * -771f)), true)));
    return (firstLeadingBit(var_4.a.x) | var_0.a.x) >= 86637u;
}

fn func_2() -> u32 {
    var var_0 = false;
    var_0 = -231f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(f32(-1f) * -905f)) + -1000f)));
    let var_1 = !vec3<bool>(true, (global0.a.x & true) | (true && func_3(Struct_1(global0.a, global0.a.x), u_input.c.zzy)), global0.a.x);
    let var_2 = u_input.b;
    var var_3 = Struct_3(~_wgslsmith_add_i32(-select(u_input.b.x, u_input.b.x, true), var_2.x), Struct_1(vec4<bool>(false, false, true, !global0.b), true), Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, 48169u), _wgslsmith_clamp_u32(4294967295u, 1u, 1u), 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, 415f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(397f - -726f)))), _wgslsmith_f_op_f32(round(-732f))), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(26035i, u_input.a.x, 40704i), var_2.yyy), var_2.x, u_input.a.x), _wgslsmith_clamp_vec3_i32(countOneBits(u_input.c.yww), ~vec3<i32>(u_input.a.x, u_input.c.x, 0i), min(vec3<i32>(11646i, u_input.a.x, -29726i), vec3<i32>(u_input.c.x, 2147483647i, -35465i)))));
    return min(9306u, var_3.c.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    var var_0 = ~(select(~1u, 58877u, false) | 1u);
    var_0 = func_2();
    global1 = array<vec2<bool>, 22>();
    global1 = array<vec2<bool>, 22>();
    global0 = Struct_1(global0.a, any(!global1[_wgslsmith_index_u32(53922u, 22u)]));
    return Struct_2(select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(17514u, 4294967295u, 1u, 1u), vec4<u32>(0u, 9448u, 24472u, 1u), true), select(vec4<u32>(4294967295u, 0u, 42831u, 0u), vec4<u32>(37536u, 22073u, 4294967295u, 70467u), global0.a.x)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, ~select(84936u, 4294967295u, arg_1), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 57924u, 11822u), vec3<u32>(1u, 1u, 1u)), ~1u), arg_1), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(arg_0.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2980f, 1153f)))))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = all(!global0.a.wyx);
    return Struct_3(u_input.b.x, Struct_1(!(!global0.a), func_3(Struct_1(vec4<bool>(true, var_0, true, true), global0.b), vec3<i32>(firstLeadingBit(46308i), u_input.a.x | u_input.b.x, u_input.b.x))), arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_f_op_f32(-arg_2.b.x)))), 56146i);
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_4(true, arg_2.b.a, func_4(any(!vec4<bool>(false, false, arg_2.b.a.x, arg_2.b.a.x)), arg_2.b.a, arg_2.c).c);
    let var_1 = !(!(!((false && arg_2.b.a.x) || arg_2.b.b)));
    global1 = array<vec2<bool>, 22>();
    let var_2 = func_4(arg_2.b.b, !select(vec4<bool>(arg_2.b.a.x, arg_2.b.a.x, false && var_1, global0.b), vec4<bool>(true, true, 894f == var_0.c.b.x, func_4(global0.a.x, vec4<bool>(var_1, true, var_0.b.b, false), Struct_2(vec4<u32>(arg_0.x, arg_2.c.a.x, 20049u, arg_2.c.a.x), vec2<f32>(329f, 594f))).b.a.x), !select(vec4<bool>(false, false, arg_2.b.b, global0.a.x), arg_2.b.a, vec4<bool>(true, true, false, false))), func_4(!arg_2.b.a.x, vec4<bool>(func_4(global0.a.x | arg_2.b.b, func_4(true, arg_2.b.a, Struct_2(vec4<u32>(0u, arg_2.c.a.x, arg_2.c.a.x, 4294967295u), vec2<f32>(881f, -1146f))).b.a, Struct_2(vec4<u32>(1u, 4294967295u, var_0.c.a.x, 4294967295u), arg_2.c.b)).b.a.x, !all(vec4<bool>(false, var_1, var_0.b.b, true)), true, true), arg_2.c).c).c;
    let var_3 = arg_2.c;
    return func_4(any(select(var_0.b.a, select(vec4<bool>(global0.b, false, var_1, false), func_4(global0.b, arg_2.b.a, Struct_2(vec4<u32>(660u, var_3.a.x, 0u, 0u), vec2<f32>(-626f, -1330f))).b.a, !arg_2.b.a), any(global1[_wgslsmith_index_u32(var_0.c.a.x, 22u)]) & true)), vec4<bool>(true, global0.b == true, false, true), var_0.c).b;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1(vec4<f32>(2553f, _wgslsmith_f_op_f32(step(-716f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, arg_1)), _wgslsmith_f_op_f32(1093f * 141f)))), _wgslsmith_div_f32(-890f, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_1))))), true, _wgslsmith_f_op_f32(step(arg_1, arg_1))).a;
    global2 = arg_2.b;
    var var_1 = min(var_0.x ^ ((1u << (arg_0 % 32u)) << (4294967295u % 32u)), 4294967295u);
    var var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(1393f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) - -888f), arg_1);
    let var_3 = select(select(func_4(arg_2.b, global0.a, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, 1164f, arg_1, var_2.x)), false, _wgslsmith_f_op_f32(arg_1 - var_2.x))).b.a, func_4(false, !arg_2.a, func_4(true, arg_3.a, Struct_2(vec4<u32>(1u, arg_0, var_0.x, 45752u), vec2<f32>(536f, var_2.x))).c).b.a, true), arg_3.a, vec4<bool>(all(select(vec3<bool>(false, false, arg_2.a.x), vec3<bool>(arg_2.b, arg_2.a.x, arg_3.a.x), false != arg_3.a.x)), !(!arg_3.b), _wgslsmith_mult_u32(abs(arg_0), ~26856u) >= _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.zy, vec2<u32>(arg_0, 15138u), var_0.yx), countOneBits(var_0.zx)), true));
    return Struct_1(vec4<bool>(any(select(func_4(arg_2.a.x, arg_2.a, Struct_2(vec4<u32>(var_0.x, var_0.x, 1u, arg_0), vec2<f32>(var_2.x, 570f))).b.a.yz, !arg_3.a.yz, !var_3.x)), all(func_4(!global0.a.x, !vec4<bool>(false, global0.a.x, false, false), func_4(true, vec4<bool>(true, arg_3.a.x, global0.b, false), Struct_2(vec4<u32>(var_0.x, 1u, 4294967295u, 6990u), vec2<f32>(477f, -1324f))).c).b.a.wz), var_3.x, arg_3.a.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(max(1139f, -535f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(191f, 1096f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-141f, 1433f, global0.a.x))))), func_5(~abs(vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_i32(55011i, 1i), func_4(-1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 47906i, 1i), u_input.b), vec4<bool>(true, !global0.a.x, true, global0.a.x), func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1334f, 1380f, 319f, -153f))), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(global0.a, func_3(func_4(true, vec4<bool>(false, global0.a.x, true, true), Struct_2(vec4<u32>(4294967295u, 25839u, 82450u, 1u), vec2<f32>(-1000f, 1781f))).b, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)) & all(func_4(false, vec4<bool>(global0.b, global0.a.x, global0.b, true), Struct_2(vec4<u32>(4294967295u, 7367u, 35313u, 51507u), vec2<f32>(-1460f, -300f))).b.a.zzw)));
    global0 = func_6(0u, -386f, Struct_1(func_5(~(~vec3<u32>(69573u, 4294967295u, 0u)), u_input.c.x, func_4(u_input.b.x > 2147483647i, !var_0.a, Struct_2(vec4<u32>(34070u, 59038u, 61865u, 4294967295u), vec2<f32>(-270f, 788f)))).a, !var_0.a.x), Struct_1(vec4<bool>(true, func_5(vec3<u32>(4294967295u, 49139u, 45084u), -2147483647i, Struct_3(52901i, Struct_1(var_0.a, false), Struct_2(vec4<u32>(19050u, 12918u, 35891u, 4294967295u), vec2<f32>(607f, -814f)), 1263f, u_input.a.x)).a.x || !global0.b, true, true), true));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(reverseBits(vec3<u32>(44149u, 47913u, 50627u))), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), _wgslsmith_div_u32(~4294967295u, abs(~firstLeadingBit(1u))), ~(57034u << (_wgslsmith_dot_vec3_u32(func_1(vec4<f32>(-205f, -255f, -155f, 826f), global0.b, 149f).a.yyz, ~vec3<u32>(4294967295u, 1u, 52388u)) % 32u)), _wgslsmith_div_u32(~func_4(false, !var_0.a, Struct_2(vec4<u32>(1u, 4687u, 0u, 52874u), vec2<f32>(1326f, -1726f))).c.a.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, 1u), ~1u)));
    var_1 = countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, 50397u, var_1.x, 7242u), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) << (vec4<u32>(var_1.x, var_1.x, var_1.x, 1u) % vec4<u32>(32u))), max(vec4<u32>(var_1.x, 41763u, 0u, 1u), ~vec4<u32>(4294967295u, 67878u, 14734u, var_1.x))) | select(vec4<u32>(var_1.x, ~24439u, ~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, var_1.x), vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x))), vec4<u32>(var_1.x >> (var_1.x % 32u), var_1.x, 119822u, var_1.x), !vec4<bool>(var_0.b, true, var_0.b, global0.a.x)));
    let var_2 = -1i;
    global0 = Struct_1(global0.a, any(vec2<bool>(var_0.a.x, true)));
    var var_3 = func_4(!(!(!global0.a.x) || all(vec2<bool>(true, var_0.a.x))), !(!select(!vec4<bool>(true, global0.a.x, false, global0.b), vec4<bool>(true, false, global0.a.x, false), vec4<bool>(false, global0.b, false, false))), func_4(true, vec4<bool>(var_0.a.x, !(var_0.a.x | true), any(!var_0.a.yzy), !(!var_0.a.x)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(10602u, var_1.x, var_1.x, 1u), ~vec4<u32>(var_1.x, var_1.x, var_1.x, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -935f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2080f, 1000f), vec2<f32>(-382f, -195f)))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, 4294967295u), countOneBits(54568i), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -658f))), -1771f), firstLeadingBit(27159u));
}

