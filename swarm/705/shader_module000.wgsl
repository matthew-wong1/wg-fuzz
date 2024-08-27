struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(65871i, Struct_1(vec3<i32>(14612i, 44565i, -84861i), vec3<i32>(i32(-2147483648), -33599i, 2147483647i), vec4<f32>(1822f, 516f, -1353f, -1045f), -162f, 20595u), false, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_2(firstTrailingBit(firstLeadingBit(-1i)), Struct_1(_wgslsmith_add_vec3_i32(global1.b.b, reverseBits(vec3<i32>(0i, global1.b.b.x, 22246i))) & vec3<i32>(u_input.a, 8617i, ~14012i), vec3<i32>(1i, countOneBits(_wgslsmith_mult_i32(global1.d, -15124i)), ~31348i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.b.c, global1.b.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(1887f, -259f, global1.b.d, global1.b.c.x), vec4<f32>(-1783f, 953f, global1.b.d, global1.b.c.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(global1.b.c))))), global1.b.c.x, global1.b.e), !global1.c, ~global1.a);
    var var_1 = var_0.b.c.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(1802f, _wgslsmith_div_f32(175f, global1.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x)), var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.x, var_0.b.d) * global1.b.d), any(select(vec3<bool>(var_0.c, global1.c, false), vec3<bool>(var_0.c, false, false), vec3<bool>(global1.c, false, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-497f * -344f))))));
    return !any(select(select(vec3<bool>(false, false, false), !vec3<bool>(false, false, global1.c), false), vec3<bool>(global1.c, any(vec2<bool>(global1.c, true)), any(vec2<bool>(global1.c, var_0.c))), !select(vec3<bool>(global1.c, global1.c, var_0.c), vec3<bool>(global1.c, false, global1.c), false)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_2) -> vec4<i32> {
    global1 = arg_3;
    let var_0 = func_3();
    let var_1 = -arg_3.b.a.x;
    global0 = _wgslsmith_mult_i32(-1i, 0i);
    var var_2 = arg_1;
    return vec4<i32>(u_input.a, 0i, -min(~(-29544i), u_input.a), arg_3.d);
}

fn func_4(arg_0: i32) -> Struct_3 {
    global1 = Struct_2(func_2(vec4<bool>(false, true, true, arg_0 > arg_0), reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(59325u, global1.b.e, 0u, 4294967295u), vec4<u32>(24848u, global1.b.e, global1.b.e, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(420f, global1.b.d))), Struct_2(arg_0, Struct_1(global1.b.b, vec3<i32>(u_input.a, u_input.a, arg_0), _wgslsmith_f_op_vec4_f32(global1.b.c - global1.b.c), -1788f, global1.b.e), false, u_input.a)).x, Struct_1(_wgslsmith_add_vec3_i32(global1.b.b, _wgslsmith_sub_vec3_i32(~global1.b.a, ~global1.b.b)), global1.b.a, vec4<f32>(1345f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1632f, global1.b.d) - _wgslsmith_f_op_f32(global1.b.d * global1.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1441f)), _wgslsmith_f_op_f32(-1f)), global1.b.c.x, ~firstTrailingBit(global1.b.e) << (countOneBits(~global1.b.e) % 32u)), false, global1.d);
    global1 = Struct_2(func_2(!(!vec4<bool>(global1.c, global1.c, false, false)), vec4<u32>(~(~44092u), global1.b.e, ~1u, 25464u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.d))), Struct_2(reverseBits(0i >> (global1.b.e % 32u)), global1.b, true, 1i)).x, global1.b, true, arg_0);
    let var_0 = ~global1.b.e;
    let var_1 = Struct_3(false, select(select(vec2<bool>(any(vec3<bool>(global1.c, global1.c, global1.c)), true), select(select(vec2<bool>(true, global1.c), vec2<bool>(false, true), false), !vec2<bool>(global1.c, global1.c), all(vec3<bool>(global1.c, global1.c, true))), (var_0 | global1.b.e) >= _wgslsmith_sub_u32(global1.b.e, var_0)), vec2<bool>(false, true), global1.c));
    var var_2 = _wgslsmith_div_f32(global1.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.d, _wgslsmith_f_op_f32(floor(-472f))) * global1.b.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.b.c.x, -935f)), _wgslsmith_f_op_f32(-global1.b.d))))));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_3 {
    global1 = Struct_2(arg_1.x, global1.b, true, arg_1.x);
    var var_0 = select(vec4<bool>(global1.c, !global1.c, true, true), !(!select(vec4<bool>(global1.c, global1.c, global1.c, true), select(vec4<bool>(true, global1.c, global1.c, false), vec4<bool>(global1.c, false, false, true), vec4<bool>(global1.c, global1.c, true, false)), true)), false);
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, -49290i, arg_0, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, global1.b.a.x, 1i, arg_1.x), vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.a)), -vec4<i32>(-1i, 1i, global1.d, arg_0)), _wgslsmith_div_vec4_i32(func_2(vec4<bool>(false, true, true, true), vec4<u32>(23995u, 47352u, 62893u, global1.b.e), -357f, Struct_2(0i, global1.b, true, -7008i)), -vec4<i32>(0i, 43696i, arg_1.x, u_input.a)), firstLeadingBit(vec4<i32>(2147483647i, -15336i, -2147483647i, global1.b.b.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(5917i, 7784i, 12611i, u_input.a), vec4<i32>(arg_0, u_input.a, u_input.a, arg_0), vec4<i32>(u_input.a, 26195i, 0i, 36764i))), -(~abs(vec4<i32>(u_input.a, global1.d, arg_0, global1.b.b.x)))));
    var_0 = vec4<bool>(var_1.a, !any(vec4<bool>(global1.c || true, global1.b.d < global1.b.d, false, true)), var_1.a, global1.c);
    var var_2 = _wgslsmith_add_u32(~39088u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(4294967295u, abs(0u), all(var_0.zwx)), _wgslsmith_mod_u32(6673u, 1u) >> (countOneBits(global1.b.e) % 32u)), _wgslsmith_sub_u32(global1.b.e, ~global1.b.e) >> (global1.b.e % 32u), global1.b.e));
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_dot_vec2_i32(abs(~(-vec2<i32>(-2147483647i, u_input.a))), select(vec2<i32>(global1.a, 1i), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(global1.d, global1.d)), -vec2<i32>(u_input.a, -2147483647i)), vec2<bool>(true, global1.c))), global1.b, global1.c | true, -10668i);
    let var_0 = vec2<f32>(317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(763f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.d + -2966f))))) + global1.b.d));
    global1 = Struct_2(_wgslsmith_div_i32(-_wgslsmith_sub_i32(global1.b.a.x, _wgslsmith_sub_i32(u_input.a, -2147483647i)), global1.d), global1.b, all(vec4<bool>(true, global1.c && global1.c, !global1.c, any(arg_0.b) | all(vec3<bool>(global1.c, arg_0.a, false)))), 9275i);
    let var_1 = Struct_2(u_input.a, Struct_1(global1.b.b, vec3<i32>(u_input.a, reverseBits(~2147483647i), ~u_input.a), global1.b.c, _wgslsmith_f_op_f32(f32(-1f) * -741f), global1.b.e), all(!vec4<bool>(arg_0.b.x, false, false, all(vec4<bool>(true, global1.c, false, true)))), global1.d);
    global0 = var_1.b.b.x;
    return Struct_2(-23708i, Struct_1(_wgslsmith_sub_vec3_i32(~var_1.b.b, ~global1.b.a), var_1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.c.x, 1758f, var_0.x, -999f)))), 898f, 0u), false, ~global1.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -257f))), global1.b.c.x));
    var var_1 = !((~1734u ^ arg_0.b.e) != _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2812u, 0u, 1u, arg_0.b.e), vec4<u32>(global1.b.e, global1.b.e, arg_0.b.e, global1.b.e)), max(arg_0.b.e, global1.b.e)), firstTrailingBit(arg_0.b.e)));
    global1 = arg_0;
    let var_2 = vec2<bool>(global1.c == arg_0.c, 3124u != arg_0.b.e);
    let var_3 = !var_2;
    return Struct_1(arg_0.b.b >> (vec3<u32>(1u, 28393u & _wgslsmith_mod_u32(arg_0.b.e, arg_0.b.e), max(~7295u, 30908u)) % vec3<u32>(32u)), arg_0.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, -302f, arg_1.x, -308f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.c)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(arg_0.b.c, arg_0.b.c), vec4<f32>(-1017f, -579f, global1.b.c.x, global1.b.d))))), _wgslsmith_f_op_f32(global1.b.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -1096f)), -801f))), min(_wgslsmith_mod_u32(~2464u, 66063u) | (_wgslsmith_mod_u32(arg_0.b.e, arg_0.b.e) ^ 0u), global1.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(0i, func_6(func_5(func_1(-17077i, vec2<i32>(u_input.a, global1.a), _wgslsmith_f_op_vec4_f32(-global1.b.c)), -660f), global1.b.c.zwy), !all(func_4(-1i | u_input.a).b), func_6(func_5(Struct_3(global1.c, !vec2<bool>(global1.c, false)), _wgslsmith_f_op_f32(min(global1.b.c.x, -1681f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(global1.c, vec2<bool>(true, global1.c)), global1.b.c.x).b.c.zyw + _wgslsmith_f_op_vec3_f32(-global1.b.c.xxw)) * vec3<f32>(_wgslsmith_f_op_f32(global1.b.c.x * -484f), _wgslsmith_f_op_f32(f32(-1f) * -843f), global1.b.d))).b.x);
    let var_0 = global1.b;
    let var_1 = 3607f;
    global1 = func_5(Struct_3(global1.c, vec2<bool>(true, global1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(-132f * -1010f))))));
    let var_2 = func_5(Struct_3(!((global1.b.e < global1.b.e) | global1.c), !select(vec2<bool>(global1.c, global1.c), func_1(1i, vec2<i32>(global1.d, var_0.a.x), vec4<f32>(215f, global1.b.d, 1206f, var_0.d)).b, true)), _wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1878f, _wgslsmith_f_op_f32(min(var_0.d, -215f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.d, var_0.c.x)))))));
    var var_3 = Struct_3(global1.c, vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_0.c));
}

