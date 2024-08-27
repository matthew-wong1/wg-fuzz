struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 9113u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = select(vec4<bool>(all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), true)), true, true | (~global0.c <= ~global0.c), abs(global0.c) == global0.c), !(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false))), global0.a >= _wgslsmith_div_u32(min(~global0.a, global0.a), ~(~41973u)));
    global0 = Struct_2(countOneBits(abs(u_input.b.x)), arg_0.b, _wgslsmith_mod_i32(14257i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, u_input.a, 2147483647i, u_input.a), ~vec4<i32>(1i, u_input.a, arg_0.c, global0.c)))), 308f);
    global0 = Struct_2(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.d, -646f, var_0.x)) + _wgslsmith_f_op_f32(arg_0.b - -375f)) + arg_0.b)), _wgslsmith_div_i32(1i, arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(f32(-1f) * -1502f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) + global0.d)) + _wgslsmith_f_op_f32(-1382f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.d)), arg_0.d)))));
    global0 = arg_0;
    global0 = Struct_2(u_input.c, 575f, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -(~global0.c), abs(~(-33729i))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, global0.c, -40708i, 2147483647i), vec4<i32>(7371i, u_input.a, global0.c, -49674i)), -1i), 1i, _wgslsmith_add_i32(~u_input.a, 55497i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1402f)))));
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = Struct_2(max(_wgslsmith_sub_u32(u_input.b.x, 1u), 0u), _wgslsmith_f_op_f32(arg_3.b + -2353f), (arg_0.x ^ reverseBits(-2147483647i)) << (global0.a % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_3.b))))), _wgslsmith_f_op_f32(1087f + _wgslsmith_f_op_f32(f32(-1f) * -108f))));
    global0 = Struct_2(1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - arg_3.c.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.c.x - -973f))), false)), _wgslsmith_mod_i32(firstLeadingBit(-10058i), -34648i), 321f);
    let var_0 = vec3<bool>(false, false, arg_3.d.x);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.x, -791f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -240f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(255f)) - _wgslsmith_f_op_f32(sign(global0.d)))), true))));
    var var_1 = ~(~(~89071u));
    global0 = Struct_2(6366u, -528f, 48034i, 433f);
    var var_2 = ~_wgslsmith_add_u32(~func_4(abs(vec2<i32>(arg_0.a, global0.c)), func_3(Struct_2(0u, global0.d, u_input.a, -2421f)), countOneBits(global0.a), arg_0), 1u);
    var var_3 = select(arg_0.d, !arg_0.d, select(select(select(select(vec2<bool>(true, false), arg_0.d, arg_0.d), !arg_0.d, select(vec2<bool>(true, arg_0.d.x), arg_0.d, arg_0.d)), select(select(arg_0.d, vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(arg_0.d.x, arg_0.d.x)), arg_0.d, !arg_0.d), vec2<bool>(false, false)), select(vec2<bool>(true, true), !arg_0.d, vec2<bool>(true, arg_0.d.x)), true));
    return Struct_2(global0.a & 0u, 1000f, global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1516f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), global0.d)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(i32(-1i) * -(i32(-1i) * -2147483647i), ~_wgslsmith_mod_i32(arg_0.c, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(149f, 1065f)), vec2<f32>(global0.b, _wgslsmith_f_op_f32(round(arg_0.d))), select(vec2<bool>(true, true), vec2<bool>(true, min(23700u, global0.a) <= u_input.c), select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true)))), 13010i);
    var var_1 = Struct_2(4294967295u, _wgslsmith_f_op_f32(ceil(-379f)), max(u_input.a, 1i), arg_0.d);
    global0 = Struct_2(firstLeadingBit(29963u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -1341f)), _wgslsmith_add_i32(reverseBits(7920i), 1i << (1u % 32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(55740i, 1206f, vec2<f32>(arg_0.b, -1403f), var_0.d, u_input.a), vec2<f32>(var_1.b, global0.d)).d * 302f) - _wgslsmith_f_op_f32(-2546f * _wgslsmith_f_op_f32(select(var_1.b, -138f, false)))))));
    var var_2 = _wgslsmith_f_op_f32(173f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x))))))));
    global1 = arg_0.a;
    return func_2(Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * arg_0.b)) - func_2(Struct_1(arg_0.c, global0.b, vec2<f32>(var_1.b, -801f), var_0.d, 4879i), vec2<f32>(var_1.b, -1597f)).b), var_0.c, select(var_0.d, select(var_0.d, !vec2<bool>(var_0.d.x, false), all(vec3<bool>(var_0.d.x, true, var_0.d.x))), vec2<bool>(false, var_0.d.x)), 9526i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - var_0.c)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1400f, _wgslsmith_f_op_f32(select(1148f, -450f, true))), _wgslsmith_f_op_vec2_f32(-var_0.c)))));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> i32 {
    global0 = func_2(Struct_1(arg_0.c, global0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(152f, global0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -1973f) * vec2<f32>(-480f, arg_0.d)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_5(func_2(Struct_1(-2147483647i, arg_0.b, vec2<f32>(1000f, global0.b), vec2<bool>(true, false), global0.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.b) + vec2<f32>(global0.b, 675f)))).c), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b, _wgslsmith_div_f32(695f, 1475f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.b)), arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-342f, -448f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(max(global0.b, arg_0.d))))));
    var var_0 = ~(_wgslsmith_sub_vec3_u32(u_input.b.wyx, select(vec3<u32>(1u, 0u, arg_0.a), u_input.b.wyz, vec3<bool>(true, true, true))) << (~_wgslsmith_div_vec3_u32(u_input.b.xwx, ~vec3<u32>(u_input.b.x, arg_0.a, 1u)) % vec3<u32>(32u)));
    let var_1 = u_input.c;
    var var_2 = -(~arg_0.c) <= u_input.a;
    var var_3 = all(select(select(vec3<bool>(true, true, arg_0.c != global0.c), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.c >= 291i), true), !(global0.d >= arg_0.d)));
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(~(~u_input.a), -(-arg_0.c >> (arg_0.a % 32u))), abs(25307i));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(-global0.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b), arg_0.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.c, arg_0.c)) - arg_0.c)));
    global0 = Struct_2(82106u, -1000f, firstLeadingBit(func_6(func_5(func_2(arg_0, var_0)), 52380u, _wgslsmith_mod_u32(u_input.c << (global0.a % 32u), ~1u))), 1228f);
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(~u_input.c, 451u), ~0u >> (~u_input.b.x % 32u), 0u, 77722u);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_3 = min(_wgslsmith_add_vec4_u32(select(abs(vec4<u32>(0u, 53095u, 4294967295u, global0.a) & u_input.b), abs(~vec4<u32>(global0.a, 4413u, var_1.x, var_1.x)), arg_1), ~u_input.b), vec4<u32>((~21759u | ~var_1.x) >> (4294967295u % 32u), _wgslsmith_mod_u32(~u_input.c, 4294967295u), _wgslsmith_mod_u32(12092u, ~(~38577u)), min(1u >> ((0u << (u_input.b.x % 32u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1u), vec2<u32>(4294967295u, 84800u)))));
    return all(vec3<bool>(true, global0.a > var_3.x, select(all(!vec4<bool>(true, true, arg_0.d.x, arg_0.d.x)), arg_1, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(func_1(Struct_1(-26904i, 765f, vec2<f32>(2200f, global0.d), vec2<bool>(true, false), u_input.a), true), func_1(Struct_1(1i, global0.d, vec2<f32>(global0.d, -678f), vec2<bool>(false, true), 28201i), true), true)));
    global1 = _wgslsmith_mod_u32(~u_input.c & ~(~21689u), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.b, global0.b, global0.d), vec4<f32>(global0.b, 306f, 850f, -1000f), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, 187f, global0.d, 494f) - vec4<f32>(150f, 1131f, 1478f, 1070f)))))), _wgslsmith_dot_vec3_u32(~u_input.b.zww, ~(~(u_input.b.ywy & vec3<u32>(821u, u_input.b.x, global0.a)))), -vec4<i32>(global0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.c, -44652i), vec3<i32>(global0.c, u_input.a, global0.c)), ~u_input.a, 31032i) & vec4<i32>(_wgslsmith_div_i32(global0.c & u_input.a, global0.c), global0.c, u_input.a, u_input.a), global0.d);
}

