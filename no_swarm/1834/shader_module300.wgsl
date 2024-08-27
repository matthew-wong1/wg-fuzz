struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(5718u, 1i, 0i, vec2<f32>(-1318f, -924f));

var<private> global1: u32 = 51624u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = arg_2;
    global1 = arg_1.a;
    var var_1 = 1i;
    global1 = arg_1.a;
    let var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_0 * -1119f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.d.x + -172f), 213f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.d.x, 332f), var_0), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(abs(-182f))))), arg_1.d.x), vec4<f32>(global0.d.x, -692f, -1567f, global0.d.x), (u_input.d > u_input.d) || any(arg_0.xy), 0i <= (-_wgslsmith_mod_i32(u_input.c, u_input.a) | (~global0.b >> (firstLeadingBit(global0.a) % 32u))));
    return ~(~(~u_input.d));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> bool {
    global0 = Struct_1(29786u, min(30592i, ~(-2147483647i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global0.c, -6893i, arg_0.x) | vec4<i32>(16161i, arg_1, 17508i, arg_1), -vec4<i32>(u_input.c, -10245i, 22325i, -1i)), -reverseBits(88795i)) << ((u_input.d & (reverseBits(global0.a) | 4294967295u)) % 32u), _wgslsmith_f_op_vec2_f32(-global0.d));
    global0 = Struct_1(36264u, _wgslsmith_mult_i32(~(-17158i), i32(-1i) * -47165i), 1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.d.x - global0.d.x), _wgslsmith_f_op_f32(sign(global0.d.x)))))));
    let var_0 = firstLeadingBit(~(~abs(vec4<u32>(u_input.d, u_input.d, global0.a, 0u))));
    return all(select(vec2<bool>(~arg_1 < abs(-2147483647i), !all(vec2<bool>(true, true))), !vec2<bool>(select(false, true, true), true), vec2<bool>(true, 0u == func_3(vec3<bool>(false, false, false), Struct_1(1u, global0.b, -1i, global0.d), -302f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    let var_0 = -734f;
    var var_1 = select(select(-_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.x, u_input.c, arg_3.x, 36474i), vec4<i32>(4531i, -1i, 18618i, -1i)), vec4<i32>(arg_3.x, global0.b, arg_3.x, -456i) << (arg_1 % vec4<u32>(32u)), vec4<i32>(global0.c, 2147483647i, -6566i, u_input.c)), firstLeadingBit(max(vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<i32>(-43402i, 0i, global0.c, u_input.c)) & max(vec4<i32>(-670i, 25362i, u_input.a, arg_3.x), vec4<i32>(1i, 0i, global0.b, arg_2))), true), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, -59891i, 25953i) >> (_wgslsmith_mult_vec4_u32(arg_1, arg_1) % vec4<u32>(32u)), select(vec4<i32>(2055i, 2147483647i, 0i, -2147483647i), select(vec4<i32>(u_input.c, u_input.c, global0.b, global0.c), vec4<i32>(-2147483647i, 2147483647i, global0.b, global0.c), vec4<bool>(true, true, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), all(!vec4<bool>(arg_0.x & arg_0.x, arg_0.x, arg_0.x && true, !arg_0.x)));
    var var_2 = arg_0.x;
    global1 = 4294967295u;
    let var_3 = Struct_4(vec4<f32>(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1040f))))), _wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-464f, 1348f))))), Struct_3(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1447f - global0.d.x) - _wgslsmith_f_op_f32(step(global0.d.x, 577f)))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, -259f), vec4<f32>(-1083f, -1211f, global0.d.x, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1209f, -358f, 435f, -1000f) * vec4<f32>(-195f, 143f, global0.d.x, 695f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(global0.d.x + 829f), var_0, _wgslsmith_f_op_f32(global0.d.x - 1698f)), true & (var_1.x != arg_3.x), true), any(vec4<bool>(true != arg_0.x, false, select(false, arg_0.x, arg_0.x), true)), arg_2), Struct_3(var_0, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_0 - var_0), global0.d.x, -1619f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1818f, -1132f, 379f, var_0) + vec4<f32>(var_0, var_0, -369f, -1000f))), !arg_0.x, false), !func_2(vec3<i32>(14980i, var_1.x, arg_3.x), firstTrailingBit(45446i)), var_1.x));
    return _wgslsmith_clamp_u32(abs(5022u), u_input.d, arg_1.x);
}

fn func_1() -> Struct_5 {
    let var_0 = global0.b;
    var var_1 = vec4<bool>(false, true, true, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))));
    var var_2 = func_4(!vec3<bool>(func_2(vec3<i32>(10696i, -15946i, global0.b) | vec3<i32>(-1i, 1i, global0.b), global0.b << (50808u % 32u)), (false & var_1.x) && true, any(vec3<bool>(true, false, true))), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global0.a, 13515u, u_input.b, 16552u)), ~(~vec4<u32>(global0.a, u_input.d, global0.a, global0.a)), vec4<u32>(u_input.d >> (global0.a % 32u), global0.a, global0.a, u_input.b)), -2147483647i >> (0u % 32u), max(max(vec3<i32>(~global0.c, ~global0.b, u_input.c), abs(vec3<i32>(-21234i, global0.b, global0.b)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global0.a, 24365u, 1574u), vec3<u32>(19843u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), vec3<i32>(1i ^ global0.c, firstTrailingBit(-11086i), _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.c, 11305i, u_input.a), vec3<i32>(global0.c, u_input.c, -1i)))));
    var_2 = ~76312u;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1115f);
    return Struct_5(u_input.b < 1u, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(19795i, -1i, 0i, 0i) ^ vec4<i32>(global0.c, -76761i, -1i, global0.c)), vec4<i32>(2147483647i, i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, global0.b, u_input.a), 24969i, 1i), ~global0.b << (0u % 32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(777f - _wgslsmith_f_op_f32(sign(global0.d.x))), _wgslsmith_f_op_f32(trunc(global0.d.x)), !(!var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.d.x))))));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: f32, arg_3: Struct_5) -> u32 {
    var var_0 = Struct_5(!arg_3.a, ~(~_wgslsmith_clamp_i32(2147483647i, global0.c, 34775i) & countOneBits(_wgslsmith_mod_i32(1i, arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -1000f))), 755f);
    var var_1 = _wgslsmith_div_f32(-1356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-283f, 2435f)))));
    let var_2 = abs(vec4<i32>(i32(-1i) * -52789i, ~(~(~15598i)), arg_3.b, arg_1.b));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_u32(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(4106u, 1u, arg_0), vec3<u32>(global0.a, 0u, 41607u)), vec3<u32>(1u, u_input.b, 4294967295u), vec3<bool>(arg_3.a, true, var_0.a)), countOneBits(vec3<u32>(31694u, global0.a, global0.a)) & (~vec3<u32>(81281u, 111173u, 4294967295u) ^ vec3<u32>(arg_0, 0u, 43859u))), abs(~(-(u_input.a & arg_3.b))), _wgslsmith_clamp_i32(-global0.b, min(-11241i, var_0.b), var_0.b) ^ firstLeadingBit(1i), _wgslsmith_f_op_vec2_f32(floor(global0.d)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 118011u;
    let var_0 = _wgslsmith_add_u32(func_5(37789u, Struct_5(true, global0.b, 184f, -749f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1409f + _wgslsmith_f_op_f32(f32(-1f) * -207f)), global0.d.x), func_1()), 15331u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-2096f)), 382f, -129f) + vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))), -688f));
    let var_2 = all(select(vec4<bool>(!select(false, false, false), !any(vec3<bool>(true, true, false)), true, false), vec4<bool>(true, true, false, true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, true), true)));
    global1 = u_input.d;
    let var_3 = !vec2<bool>(true & var_2, false);
    var var_4 = global0.b;
    global1 = ~abs(96101u);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.d.x, -404f, var_1.x)))))))), vec2<i32>(min(global0.b >> (_wgslsmith_div_u32(u_input.b, u_input.d) % 32u), global0.c), _wgslsmith_div_i32(global0.b, _wgslsmith_div_i32(-2136i, 2147483647i)) >> ((~var_0 << (~59130u % 32u)) % 32u)), abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(24944i, 2147483647i, u_input.c, u_input.c)), ~vec4<i32>(u_input.a, u_input.c, -63272i, -2147483647i))), ~u_input.b);
}

