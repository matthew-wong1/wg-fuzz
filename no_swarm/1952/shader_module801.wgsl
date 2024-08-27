struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec4_u32(global0.a, min(global0.a << (global0.a % vec4<u32>(32u)), vec4<u32>(global0.a.x, global0.a.x, 0u, u_input.c.x))), ~global0.a.x), countOneBits(1i & _wgslsmith_dot_vec4_i32(-vec4<i32>(17882i, -1i, -8096i, 0i), vec4<i32>(u_input.a.x, 69301i, 2147483647i, -2147483647i))), global0.c);
    global0 = Struct_1(global0.a ^ ~vec4<u32>(global0.a.x >> (var_0.a.x % 32u), 1u, 5213u, ~4294967295u), _wgslsmith_add_i32(min(countOneBits(-44021i), -2147483647i) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(17106u, global0.a.x, var_0.a.x), u_input.c.x) % 32u), -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2733f, 738f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.c.x, 275f), global0.c)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, -371f)), -1000f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(global0.c.x, 234f)))))));
    global0 = Struct_1(var_0.a, 35736i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c + var_0.c), _wgslsmith_f_op_vec2_f32(exp2(var_0.c)))))));
    let var_1 = Struct_1(~select(var_0.a, global0.a, select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), true), vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(arg_0.x, true, arg_0.x, false))), countOneBits(u_input.a.x), vec2<f32>(1000f, var_0.c.x));
    var_0 = Struct_1(vec4<u32>(15750u, 0u, u_input.c.x, ~(~(~global0.a.x))), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) - vec2<f32>(global0.c.x, 145f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(431f, -289f))))))));
    return var_1.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(vec4<u32>(5749u, 44473u, countOneBits(countOneBits(4294967295u)), arg_1.x), global0.b, _wgslsmith_f_op_vec2_f32(floor(global0.c)));
    let var_0 = Struct_1(abs(vec4<u32>(41296u, 1u, 17520u, u_input.c.x)), -1i, _wgslsmith_f_op_vec2_f32(sign(global0.c)));
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(38839u, var_0.a.x, 1u, 55789u), global0.a, vec4<bool>(false, false, true, true)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.c.x, arg_1.x, 4294967295u), var_0.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 0u) | vec4<u32>(arg_0.x, arg_1.x, 1u, var_0.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_0.x, 22112u, 5866u, 59812u))), arg_1)), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c, vec2<f32>(-605f, global0.c.x)))))) * vec2<f32>(-466f, global0.c.x)));
    global0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.c.x), abs(_wgslsmith_add_u32(1u, 81067u)), _wgslsmith_add_u32(~5131u, global0.a.x | 45419u), ~func_3(vec3<bool>(false, true, false))), reverseBits(_wgslsmith_mod_vec4_u32(var_0.a >> (global0.a % vec4<u32>(32u)), vec4<u32>(var_0.a.x, u_input.c.x, u_input.c.x, u_input.c.x) >> (arg_1 % vec4<u32>(32u))))), abs(0i), vec2<f32>(-135f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(194f - -1405f), _wgslsmith_f_op_f32(-global0.c.x)) + -974f)));
    global0 = Struct_1(select(global0.a, vec4<u32>(~_wgslsmith_sub_u32(42806u, global0.a.x), 1507u, abs(countOneBits(arg_0.x)), ~_wgslsmith_sub_u32(u_input.c.x, 0u)), any(vec4<bool>(true, true, true, true))), u_input.b, global0.c);
    return Struct_1(vec4<u32>(global0.a.x, ~(~1u) << (max(countOneBits(var_0.a.x), arg_1.x) % 32u), ~(~(~108214u)), arg_0.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(global0.b), 1i, var_0.b), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(852f - var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1729f))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<f32>(936f, -1998f, global0.c.x, _wgslsmith_f_op_f32(round(global0.c.x)));
    global0 = func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 16672u) & vec2<u32>(global0.a.x, arg_1), global0.a.ww) << (~reverseBits(u_input.c.x) % 32u), 22842u, 4294967295u), ~global0.a);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, func_2(global0.a.wwx, global0.a).c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) * _wgslsmith_f_op_f32(step(var_0.x, 642f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))), _wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-514f * -1148f))))));
    let var_2 = ~_wgslsmith_add_u32(arg_1, arg_1) <= u_input.c.x;
    global0 = func_2(_wgslsmith_sub_vec3_u32(global0.a.wzy, u_input.c >> (select(u_input.c, ~vec3<u32>(arg_1, 0u, arg_1), true) % vec3<u32>(32u))), ~(abs(vec4<u32>(4294967295u, arg_1, 1u, global0.a.x)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.a.x, 1u, u_input.c.x), vec4<u32>(global0.a.x, arg_1, 4294967295u, 72986u)), _wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(u_input.c.x, 6805u, 4294967295u, arg_1), vec4<u32>(4294967295u, 9481u, 12087u, global0.a.x))) % vec4<u32>(32u))));
    return Struct_1(global0.a, _wgslsmith_div_i32(global0.b, ~(-2147483647i)) ^ 2147483647i, _wgslsmith_f_op_vec2_f32(-var_0.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec3<bool>(all(vec3<bool>(true, true, select(true, false, false))), any(vec4<bool>(false, true, false, false)) & all(vec3<bool>(true, true, true)), true), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 1u), ~97984u), _wgslsmith_f_op_f32(-752f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.c.x))))));
    var var_0 = !(any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))) && (true == (_wgslsmith_f_op_f32(select(global0.c.x, -996f, true)) > -396f)));
    var_0 = any(vec3<bool>(true, false, false));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(4294967295u, func_2(vec3<u32>(~2153u, _wgslsmith_add_u32(global0.a.x, u_input.c.x), _wgslsmith_clamp_u32(83111u, u_input.c.x, u_input.c.x)), global0.a).a.x), u_input.c.x, max(_wgslsmith_dot_vec2_u32(~select(global0.a.wx, u_input.c.yx, vec2<bool>(true, true)), max(select(vec2<u32>(global0.a.x, 0u), vec2<u32>(4294967295u, 7276u), vec2<bool>(true, false)), abs(vec2<u32>(1u, global0.a.x)))), u_input.c.x), 2236u);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(35270i), 2147483647i, _wgslsmith_add_i32(u_input.b, global0.b)), u_input.a), func_1(vec3<bool>(true, true, true), 4294967295u, global0.c.x).b, ~(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) & max(-2147483647i, 17618i)), _wgslsmith_mod_i32(1i << (1u % 32u), select(global0.b, max(u_input.b, u_input.b), true))));
}

