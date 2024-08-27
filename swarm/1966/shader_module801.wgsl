struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_4,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    global1 = Struct_1(698f, i32(-1i) * -37531i, arg_0, vec2<bool>(global1.d.x, true));
    let var_0 = !(!arg_3.x);
    var var_1 = arg_2.a.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(875f + -957f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))))));
    let var_3 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)))), global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-114f * 253f) * _wgslsmith_f_op_f32(-359f + global1.c.x)) + -133f), _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(-global1.c.x), true))));
    return arg_2.a.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = u_input.a ^ (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a & 59635u, 1u), countOneBits(~u_input.a)) << (1u % 32u));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_0.x), ~(vec2<i32>(func_3(vec2<f32>(global1.a, global1.a), vec3<bool>(global1.d.x, false, false), Struct_3(Struct_2(global1.b, vec3<u32>(u_input.a, u_input.a, 1u), vec3<i32>(arg_2, 25045i, 2147483647i), u_input.a)), vec2<bool>(global1.d.x, global1.d.x)), _wgslsmith_dot_vec2_i32(arg_0.zx, vec2<i32>(-1i, arg_2))) >> (_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false), abs(vec2<u32>(0u, 0u))) % vec2<u32>(32u))));
    let var_1 = true;
    let var_2 = Struct_5(global1.c, Struct_4(-global1.b < (_wgslsmith_dot_vec3_i32(arg_0, arg_0) | global0.x), Struct_2(1i, vec3<u32>(~54010u, ~25498u, _wgslsmith_sub_u32(u_input.a, 0u)), _wgslsmith_sub_vec3_i32(-arg_0, vec3<i32>(arg_2, 19139i, 11680i)), _wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), u_input.a)), Struct_1(-801f, -10894i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, global1.c.x), global1.c))), !(!global1.d)), Struct_3(Struct_2(0i, vec3<u32>(57198u, 4294967295u, 1u) & vec3<u32>(52607u, u_input.a, 25087u), ~arg_0, reverseBits(84010u)))), Struct_4(all(global1.d), Struct_2(abs(arg_0.x) | 1i, vec3<u32>(~u_input.a, abs(u_input.a), ~10406u), arg_0, 84789u), Struct_1(231f, 1i, vec2<f32>(_wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(-global1.a)), global1.d), Struct_3(Struct_2(i32(-1i) * -2309i, vec3<u32>(u_input.a, u_input.a, 26606u), vec3<i32>(-20606i, -2147483647i, 1i), 30852u << (1u % 32u)))), all(select(vec2<bool>(false, all(vec3<bool>(arg_1, true, false))), !select(vec2<bool>(false, false), global1.d, vec2<bool>(var_1, arg_1)), any(select(vec3<bool>(global1.d.x, var_1, global1.d.x), vec3<bool>(true, arg_1, var_1), vec3<bool>(true, arg_1, true))))), Struct_2(abs(global0.x), abs(~vec3<u32>(u_input.a, 1u, u_input.a)) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 29311u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(7570u, 71580u, u_input.a), vec3<u32>(u_input.a, 46467u, 1u))), select(vec3<i32>(1i | arg_2, arg_2, global1.b & -1i), arg_0, select(var_1, arg_1, arg_1) || (global1.c.x <= global1.c.x)), u_input.a));
    var_0 = 40872u;
    return _wgslsmith_clamp_u32(u_input.a, 1u, var_2.e.b.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = Struct_3(Struct_2(-((arg_2.x << (38005u % 32u)) | global1.b), vec3<u32>(~(~4294967295u), abs(7361u), u_input.a >> (func_4(arg_2.yxy, true, 0i) % 32u)), vec3<i32>(-2147483647i, firstLeadingBit(32524i), _wgslsmith_mod_i32(21653i, 2147483647i)), ~u_input.a));
    let var_1 = select(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(21640u, 11905u, 7701u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(var_0.a.b ^ arg_0.xyw, arg_0.wyw))), _wgslsmith_mult_vec3_u32((vec3<u32>(4294967295u, 44530u, u_input.a) >> (~arg_0.zyx % vec3<u32>(32u))) >> (countOneBits(var_0.a.b) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(arg_0.wzw ^ vec3<u32>(u_input.a, u_input.a, u_input.a), abs(arg_0.xxz))), !(!select(vec3<bool>(arg_1, false, true), !vec3<bool>(arg_3, false, global1.d.x), vec3<bool>(arg_3, false, false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a));
    var_0 = Struct_3(var_0.a);
    var var_3 = any(vec2<bool>(arg_1, true));
    return arg_1;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c.x)), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(268f)), global1.c.x)) - _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_div_f32(949f, global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -117f, global1.a, -699f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.c.x, global1.a, -2120f) + vec4<f32>(global1.c.x, global1.a, 2114f, global1.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1743f, -865f, -288f, 805f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 333f, 1070f, global1.a))))), func_5(vec4<u32>(u_input.a, 1u, func_4(~vec3<i32>(2147483647i, -1i, -1i), global1.d.x, func_3(vec2<f32>(global1.a, -222f), vec3<bool>(global1.d.x, global1.d.x, false), Struct_3(Struct_2(global1.b, vec3<u32>(u_input.a, 5424u, u_input.a), vec3<i32>(53628i, global0.x, -1i), u_input.a)), global1.d)), _wgslsmith_add_u32(1u, ~u_input.a)), false, vec4<i32>(global1.b, 0i, 11230i, ~global0.x), true)));
    let var_1 = ~(~49901u);
    let var_2 = !(!(!vec2<bool>(true, global1.d.x)));
    var var_3 = -global1.b | ~(-58110i);
    let var_4 = select(global1.b, firstLeadingBit(-global0.x << (~u_input.a % 32u)), select(true, global1.d.x, true));
    return vec3<u32>(0u, ~abs(~36125u), ~(~_wgslsmith_sub_u32(u_input.a, 43111u) << (u_input.a % 32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_2 {
    global0 = select(_wgslsmith_clamp_vec2_i32(~arg_0, ~arg_1, vec2<i32>(-firstLeadingBit(global1.b), arg_1.x ^ 1i)), firstTrailingBit(arg_1) | arg_1, false);
    global0 = arg_1;
    var var_0 = Struct_2(firstLeadingBit(-72407i), ~(~func_2()), vec3<i32>(~arg_0.x, arg_1.x, _wgslsmith_div_i32(0i, arg_1.x)), ~_wgslsmith_sub_u32(~u_input.a, abs(25808u)));
    var var_1 = Struct_2(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_add_i32(-global1.b, ~(-2147483647i))) & 2147483647i, reverseBits(var_0.b), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~2147483647i, firstTrailingBit(arg_1.x)), ~(-var_0.a)), 62119i, ~(~1757i)), firstTrailingBit(func_2().x));
    var_0 = Struct_2(abs(~(~(~var_1.a))), vec3<u32>(1u, ~1u, ~func_4(var_1.c & var_1.c, global1.d.x, -var_1.c.x)), var_1.c, var_1.d);
    return Struct_2(-1i << (var_1.b.x % 32u), ~var_0.b, reverseBits(select(firstLeadingBit(var_1.c), ~(~var_0.c), !select(vec3<bool>(global1.d.x, global1.d.x, false), vec3<bool>(global1.d.x, false, false), false))), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(global1.d) == any(select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.d.x, global1.d.x), global1.d.x));
    var var_1 = func_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(~1i, 2147483647i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b, global0.x), vec2<i32>(1i, global0.x), vec2<i32>(global1.b, 23714i))), -vec2<i32>(countOneBits(global0.x), i32(-1i) * -41356i) & max(select(-vec2<i32>(global1.b, -46313i), vec2<i32>(global0.x, global1.b) << (vec2<u32>(91206u, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(global1.d.x, false), global1.d, global1.d.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.x), -vec2<i32>(global0.x, global0.x))));
    let var_2 = Struct_3(func_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b, var_1.a), var_1.c.xz), var_1.c.zx, var_1.c.xy & func_1(vec2<i32>(-1i, 0i), vec2<i32>(var_1.a, global1.b)).c.xy), -_wgslsmith_sub_vec2_i32(var_1.c.yz, var_1.c.zy | var_1.c.yy)));
    var var_3 = 28124u;
    var_1 = Struct_2(-1i, firstLeadingBit(vec3<u32>(min(u_input.a, ~var_2.a.b.x), select(1u, var_2.a.b.x, all(global1.d)), _wgslsmith_div_u32(func_4(var_1.c, global1.d.x, 35282i), 4294967295u | var_1.b.x))), ~_wgslsmith_mod_vec3_i32(var_1.c, vec3<i32>(4909i, var_1.c.x, var_1.c.x) >> (vec3<u32>(1u, 71011u, var_2.a.d) % vec3<u32>(32u))) << (vec3<u32>(~firstLeadingBit(18554u), _wgslsmith_mod_u32(var_2.a.d, 4294967295u), u_input.a) % vec3<u32>(32u)), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_div_f32(global1.a, -2144f))) + _wgslsmith_f_op_f32(global1.a - 471f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c, vec2<f32>(global1.a, global1.c.x)))))));
}

