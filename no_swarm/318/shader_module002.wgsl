struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = ~vec4<u32>(1u, u_input.b, max(~_wgslsmith_add_u32(arg_0.x, 4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0.x, u_input.b), vec3<u32>(51241u, u_input.b, 40081u))), arg_0.x & ~max(1u, 36407u));
    var_0 = vec4<u32>(arg_0.x, ~(arg_0.x >> (~4294967295u % 32u)), select(var_0.x, 11978u, arg_3.x), 38041u);
    let var_1 = arg_3.x;
    let var_2 = ~min(global1.c, vec3<u32>(u_input.b, ~min(var_0.x, u_input.b), arg_0.x));
    let var_3 = any(vec4<bool>(!arg_1.x, ~22066u != _wgslsmith_mult_u32(reverseBits(4294967295u), abs(var_0.x)), arg_3.x, any(!select(vec4<bool>(false, arg_1.x, var_1, arg_3.x), arg_1, vec4<bool>(arg_3.x, var_1, arg_3.x, false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, -683f, var_1)) + _wgslsmith_f_op_f32(616f * 1569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(sign(arg_2.x)))))));
}

fn func_2() -> f32 {
    global0 = global1.c.x;
    global1 = Struct_1(global1.a, global1.b & global1.b, ~global1.c);
    global0 = global1.c.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 23219u), vec4<bool>(true, true, true, false), vec3<f32>(1054f, 1045f, -888f), vec4<bool>(false, true, false, false))))))), global1.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !arg_0.x;
    let var_1 = Struct_2(~countOneBits(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(14976u, u_input.b), global1.c.yy), _wgslsmith_div_u32(global1.c.x, global1.c.x), min(21872u, 4294967295u))), 4294967295u, firstLeadingBit(~global1.c));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))))) >= global1.a;
    var var_2 = vec4<bool>(all(select(!select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)), !vec3<bool>(arg_0.x, true, arg_0.x), false)), !(_wgslsmith_f_op_f32(f32(-1f) * -558f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a)))), arg_0.x, any(vec2<bool>(!(-11849i == global1.b.x), all(!vec3<bool>(true, false, arg_0.x)))));
    var var_3 = vec4<bool>(!any(vec4<bool>(arg_0.x, true, !var_2.x, arg_0.x)), firstLeadingBit(u_input.a) == -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(global1.b.x, global1.b.x, u_input.a)), all(!select(vec3<bool>(false, var_2.x, arg_0.x), var_2.zxw, true)), !any(select(select(vec2<bool>(true, var_2.x), arg_0, true), select(arg_0, vec2<bool>(arg_0.x, true), var_2.yz), global1.b.x < -31251i)));
    return Struct_1(_wgslsmith_f_op_f32(-global1.a), global1.b, min(~countOneBits(~vec3<u32>(79229u, global1.c.x, 1u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(global1.c, countOneBits(vec3<u32>(global1.c.x, 27610u, var_1.a.x)), ~vec3<u32>(global1.c.x, 1u, 0u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = vec4<bool>(select(true, arg_0.x, _wgslsmith_f_op_f32(round(-112f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(145f)), _wgslsmith_div_f32(1000f, global1.a))), arg_0.x, arg_0.x, all(vec4<bool>(true, arg_0.x, !arg_0.x, any(select(arg_0.yyx, vec3<bool>(false, false, false), false)))));
    var var_1 = func_4(vec2<bool>(false, !arg_0.x && arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 291f) + global1.a), _wgslsmith_f_op_f32(ceil(1244f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(759f, global1.a)), _wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(655f, 221f, global1.a) - vec3<f32>(global1.a, global1.a, -230f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -1568f)), 10275u >= arg_1.b)))));
    let var_2 = Struct_2(max(arg_1.a, _wgslsmith_mod_vec4_u32(arg_1.a, vec4<u32>(_wgslsmith_sub_u32(0u, var_1.c.x), var_1.c.x, 15555u, 4294967295u))), ~global1.c.x | 0u, var_1.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(f32(-1f) * -515f));
    var var_4 = !arg_0.x;
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec4_u32(~arg_1.a, ~vec4<u32>(0u, 1u, u_input.b, 0u)))), countOneBits(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(vec4<u32>(16704u, 0u, 1u, 0u) | _wgslsmith_mult_vec4_u32(vec4<u32>(13190u, 39070u, u_input.b, 32280u), vec4<u32>(global1.c.x, 5468u, 4294967295u, global1.c.x))) ^ ~(~func_1(vec4<bool>(false, false, false, true), Struct_2(vec4<u32>(global1.c.x, 1948u, u_input.b, global1.c.x), 1u, vec3<u32>(4294967295u, 49307u, 0u)))));
    global0 = 31367u;
    let var_1 = all(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, 77404u < global1.c.x, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true))), any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-504f, -146f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-368f, -2064f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(573f, global1.a)))))));
    let var_3 = vec4<i32>(-_wgslsmith_div_i32(min(u_input.a, -22041i) >> (1u % 32u), ~u_input.a), abs(2147483647i), select(firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, global1.b.x), vec3<i32>(global1.b.x, u_input.a, u_input.a)), vec3<i32>(-24282i, u_input.a, u_input.a))), global1.b.x << (u_input.b % 32u), var_1), ~(0i));
    let var_4 = Struct_2(~countOneBits(abs(~vec4<u32>(7931u, u_input.b, global1.c.x, global1.c.x))), 57221u, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

