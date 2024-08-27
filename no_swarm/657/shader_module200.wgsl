struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13421u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.b.x;
    let var_1 = Struct_2(Struct_1(vec2<bool>(false, select(select(true, false, false), true, true)), -1830i, vec2<u32>(reverseBits(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 4294967295u))), min(~36377u, 4294967295u) & select(u_input.a, 1u, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1280f))), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_div_i32(~(-2147483647i), -2147483647i), select(max(select(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 2109u), vec2<bool>(true, true)), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 1u)), vec2<u32>(~0u, u_input.a), true), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 36166u), vec2<u32>(countOneBits(u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(639f, 1f))))), Struct_1(vec2<bool>(any(vec3<bool>(false, false, true)), true | (u_input.a > 4294967295u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(u_input.b.x, -5245i, false), reverseBits(-2147483647i), u_input.b.x), ~1i), ~(~vec2<u32>(u_input.a, u_input.a) & firstTrailingBit(vec2<u32>(8408u, 2406u))), ~u_input.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -710f), -110f, select(true, false, false)))))));
    var var_2 = select(firstLeadingBit(~vec3<u32>(4294967295u, var_1.c.c.x, var_1.b.c.x)), ~vec3<u32>(~var_1.c.c.x, max(u_input.a, 35543u), ~4294967295u), vec3<bool>(true, u_input.b.x == _wgslsmith_add_i32(u_input.b.x, -54285i), (var_1.a.a.x & true) | all(vec3<bool>(var_1.b.a.x, true, true)))) | vec3<u32>(max(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_u32(var_1.b.c, max(vec2<u32>(33746u, var_1.c.d), var_1.b.c))), countOneBits(~var_1.b.d), ~select(countOneBits(0u), _wgslsmith_dot_vec2_u32(var_1.a.c, var_1.b.c), true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f + var_1.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.e)) + _wgslsmith_f_op_f32(ceil(var_1.b.e))), var_1.b.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1403f));
    var_3 = var_1.b.e;
    return var_2.xy;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global0 = abs(4294967295u);
    let var_1 = false;
    let var_2 = Struct_2(var_0, Struct_1(!(!var_0.a), _wgslsmith_mult_i32(-(~var_0.b), abs(u_input.b.x)), firstLeadingBit(_wgslsmith_mult_vec2_u32(~arg_1.c, func_3())), reverseBits(_wgslsmith_add_u32(~arg_0, arg_1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-168f, var_0.e, arg_1.a.x))))), Struct_1(var_0.a, arg_1.b, countOneBits(var_0.c) ^ select(arg_1.c, vec2<u32>(0u, arg_0), vec2<bool>(true, var_0.a.x)), 106390u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(987f * arg_1.e))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.e, -1456f), vec2<f32>(var_2.a.e, var_2.a.e))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, var_2.b.e) * vec2<f32>(-1685f, 177f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-494f, 594f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, 596f) - vec2<f32>(513f, -1710f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.e, var_0.e) * vec2<f32>(-489f, 247f)), select(arg_1.a, vec2<bool>(false, true), var_2.c.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, -1071f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.e, var_0.e), vec2<f32>(-1000f, var_2.a.e)))))));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<f32>) -> bool {
    global0 = _wgslsmith_add_u32(~4925u, _wgslsmith_div_u32(0u, ~func_2(52584u, Struct_1(arg_1.a.a, arg_2.x, arg_1.a.c, 12144u, arg_0)))) << (firstLeadingBit(u_input.a) % 32u);
    global0 = _wgslsmith_mod_u32(arg_1.b.d, arg_1.a.c.x);
    let var_0 = Struct_2(Struct_1(arg_1.a.a, -1i, vec2<u32>(arg_1.a.d, 20426u | _wgslsmith_clamp_u32(arg_1.b.c.x, arg_1.b.c.x, arg_1.a.c.x)), 18261u, -371f), Struct_1(vec2<bool>(_wgslsmith_div_u32(4294967295u, arg_1.b.c.x) > arg_1.a.c.x, true), 42137i, _wgslsmith_mult_vec2_u32(firstTrailingBit(reverseBits(vec2<u32>(arg_1.c.c.x, 0u))), firstTrailingBit(~arg_1.c.c)), _wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_f_op_f32(-171f - -1075f)), Struct_1(arg_1.a.a, max(0i, ~_wgslsmith_div_i32(53070i, arg_1.b.b)), vec2<u32>(1u, ~min(4294967295u, 1974u)), 4294967295u, 325f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -112f), arg_3.yx)) - _wgslsmith_f_op_vec2_f32(trunc(arg_3.ww)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, _wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(-var_0.c.e), var_1.x))))));
    return true;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(select(select(select(vec2<bool>(arg_1.x, arg_1.x), select(arg_1, arg_1, false), arg_1), select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1), vec2<bool>(arg_1.x, u_input.a >= u_input.a)), arg_1, select(arg_1, !(!arg_1), any(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x)))), firstLeadingBit(0i), firstTrailingBit(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43459u, 16865u, 77418u, u_input.a), vec4<u32>(u_input.a, 957u, u_input.a, 0u)), ~62938u)), 1u, _wgslsmith_f_op_f32(arg_0 * arg_0));
    var var_1 = var_0;
    var var_2 = any(vec4<bool>(_wgslsmith_f_op_f32(abs(var_1.e)) > _wgslsmith_f_op_f32(step(342f, var_0.e)), var_1.a.x, true, true));
    let var_3 = !select(select(vec4<bool>(var_1.a.x, all(var_0.a), true, var_1.a.x), select(vec4<bool>(false, true, arg_1.x, true), select(vec4<bool>(var_1.a.x, false, false, true), vec4<bool>(var_1.a.x, true, true, var_1.a.x), arg_1.x), !arg_1.x), true), select(select(select(vec4<bool>(true, false, true, var_0.a.x), vec4<bool>(true, arg_1.x, var_1.a.x, false), true), !vec4<bool>(var_0.a.x, arg_1.x, var_1.a.x, true), !vec4<bool>(true, false, arg_1.x, arg_1.x)), !(!vec4<bool>(var_1.a.x, var_0.a.x, var_1.a.x, var_0.a.x)), var_0.a.x), vec4<bool>(var_0.a.x, true, var_1.a.x, true));
    var var_4 = arg_1.x;
    return Struct_2(Struct_1(select(select(var_0.a, !vec2<bool>(var_3.x, false), !vec2<bool>(var_1.a.x, false)), vec2<bool>(true, any(vec4<bool>(false, true, var_3.x, arg_1.x))), arg_1), ~(-2147483647i), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, var_1.c.x), var_0.c), var_0.c & vec2<u32>(1u, 13957u)), min(~vec2<u32>(var_0.d, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, var_0.d)))), 1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(sign(arg_0)), var_1.a.x || var_1.a.x))))), var_0, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(327f, !vec2<bool>(!func_1(558f, Struct_2(Struct_1(vec2<bool>(true, false), u_input.b.x, vec2<u32>(u_input.a, u_input.a), 26141u, -434f), Struct_1(vec2<bool>(true, true), -25704i, vec2<u32>(u_input.a, u_input.a), 21612u, -351f), Struct_1(vec2<bool>(true, false), u_input.b.x, vec2<u32>(u_input.a, u_input.a), 19945u, -1000f)), vec2<i32>(u_input.b.x, 1i), vec4<f32>(-1296f, 990f, -1204f, 1000f)), (1i == u_input.b.x) & any(vec2<bool>(true, false))));
    let var_1 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1588f)), var_0.b.e, var_0.c.a.x)), func_4(_wgslsmith_f_op_f32(round(-1000f)), !func_4(_wgslsmith_div_f32(-416f, -823f), select(var_0.c.a, var_0.a.a, var_0.c.a)).b.a).b.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_div_f32(765f, -270f)))));
    let var_3 = !all(!select(!vec3<bool>(var_1.c.a.x, var_0.b.a.x, var_0.c.a.x), vec3<bool>(var_1.c.a.x, var_0.c.a.x, false), !vec3<bool>(var_0.b.a.x, var_1.b.a.x, var_1.a.a.x)));
    let var_4 = var_0;
    var var_5 = var_4.c.d >= (1u >> (var_1.b.d % 32u));
    let var_6 = select(!all(vec3<bool>(false, true, false)), false, var_4.c.a.x);
    let var_7 = ~(~var_1.c.d) & func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(47667u, var_4.b.d, var_4.c.d, u_input.a))) << (vec4<u32>(1u, firstLeadingBit(~1u), ~(~var_1.b.d), 57209u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.c.e, -1095f))), var_4.a.e, 1055f))));
}

