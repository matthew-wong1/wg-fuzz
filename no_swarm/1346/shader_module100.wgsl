struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32(firstLeadingBit(abs(~select(vec4<u32>(1u, 23579u, 1u, 1u), vec4<u32>(0u, 26373u, 32936u, u_input.d), true))), _wgslsmith_mod_vec4_u32(firstTrailingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 79810u, 19279u, 1u), vec4<u32>(u_input.b, 4294967295u, 28409u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 10130u, u_input.d, 24518u), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, u_input.b, u_input.c, u_input.a)), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-748f + -1559f))), _wgslsmith_f_op_f32(min(629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(241f, 610f)) * _wgslsmith_f_op_f32(713f + 1554f)))))), ~(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_0), 106652u)), Struct_1(vec4<i32>(arg_1, 44695i, ~(-37131i), _wgslsmith_sub_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -22263i, -28700i, u_input.e), vec4<i32>(arg_1, 0i, arg_1, 2147483647i))))), !(!vec2<bool>(select(false, false, false), true)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - -1389f), func_3(), var_0.c, var_0.d);
    var_0 = Struct_2(var_0.a, abs(arg_0), Struct_1(vec4<i32>(~(var_0.c.a.x ^ u_input.e), firstTrailingBit(2147483647i), -1i, -abs(-5450i))), select(!var_0.d, var_0.d, vec2<bool>(var_0.d.x, !any(vec2<bool>(false, var_0.d.x)))));
    var_0 = Struct_2(var_0.a, ~4294967295u, var_0.c, !(!select(vec2<bool>(true, var_0.d.x), var_0.d, true)));
    let var_1 = Struct_1(var_0.c.a);
    return var_0.d.x;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = arg_2.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-785f, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -121f)))))));
    var_0 = arg_2.c;
    var var_2 = false;
    var var_3 = select(select(vec3<bool>(false, true || func_2(1u, u_input.e), arg_2.d.x), !select(!vec3<bool>(false, arg_2.d.x, arg_2.d.x), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.d.x, false), arg_2.d.x), !vec3<bool>(arg_2.d.x, true, true)), func_2(arg_2.b, u_input.e)), !vec3<bool>(!arg_2.d.x, !arg_2.d.x, true), arg_2.d.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(-921f)), _wgslsmith_f_op_f32(f32(-1f) * -974f), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, ~4294967295u, abs(16999u)), 4294967295u), Struct_1(-vec4<i32>(u_input.e, u_input.e, u_input.e, u_input.e)), vec2<bool>(false, true)), u_input.b ^ 0u);
    var_0 = func_1(var_0.a, 300f, Struct_2(-1205f, 43019u, var_0.c, select(select(vec2<bool>(true, var_0.d.x), !var_0.d, false), select(vec2<bool>(var_0.d.x, var_0.d.x), select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(var_0.d.x, true), true), vec2<bool>(var_0.d.x, var_0.d.x)), !vec2<bool>(false, var_0.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(var_0.a, 1000f, Struct_2(343f, var_0.b, var_0.c, vec2<bool>(false, var_0.d.x)), 1u).b, 16818u >> ((var_0.b | var_0.b) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13482u, u_input.d, 85008u), vec3<u32>(4294967295u, u_input.b, var_0.b)), ~23087u), u_input.d), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.c, 9574u, var_0.b, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(18556u, u_input.c, u_input.c, var_0.b), vec4<u32>(u_input.a, u_input.d, u_input.c, var_0.b))), select(~vec4<u32>(var_0.b, 89047u, var_0.b, 34523u), _wgslsmith_add_vec4_u32(vec4<u32>(44039u, u_input.d, 4177u, 385u), vec4<u32>(29350u, u_input.c, 50u, 1u)), vec4<bool>(false, var_0.d.x, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - -788f);
    let var_2 = _wgslsmith_f_op_f32(-753f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(279f, var_0.a, var_0.d.x)) - func_1(132f, 1883f, Struct_2(1918f, 4294967295u, var_0.c, var_0.d), 20744u).a) + func_1(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(var_0.a + var_0.a), func_1(var_1, 1784f, Struct_2(var_1, 1u, Struct_1(vec4<i32>(u_input.e, 1i, u_input.e, u_input.e)), vec2<bool>(var_0.d.x, false)), u_input.a), _wgslsmith_mod_u32(u_input.a, 43394u)).a))));
    let var_3 = select(var_0.d.x, true, 0i > firstLeadingBit(-(u_input.e | u_input.e)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_1 * -1500f), ~(~_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.b, var_0.b), vec3<u32>(u_input.b, 34600u, u_input.a)), var_0.b)), var_0.c, vec2<bool>(var_3, true));
    var var_4 = vec3<u32>(18808u, func_3(), _wgslsmith_sub_u32(var_0.b, u_input.c)) << ((vec3<u32>(0u, var_0.b, var_0.b) | ~(~(~vec3<u32>(1u, 77563u, var_0.b)))) % vec3<u32>(32u));
    let var_5 = abs(vec2<u32>(~(~45810u), 1u));
    var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1)), -2226f))), -395f, Struct_2(1000f, min(firstTrailingBit(25639u), ~(4294967295u | var_0.b)), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -473f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-778f, -2654f))), Struct_2(-1546f, u_input.a, var_0.c, var_0.d), 58108u).c, !func_1(-583f, _wgslsmith_f_op_f32(386f * var_0.a), Struct_2(var_0.a, 1u, var_0.c, vec2<bool>(false, false)), _wgslsmith_mult_u32(var_5.x, 0u)).d), 0u << (abs(1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) * 168f), 0u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2, var_2, 631f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_1, 1000f, 2288f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(693f, -539f, var_0.a, -345f), vec4<f32>(var_1, var_2, -1702f, var_2))))))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~u_input.e, -var_0.c.a.x), u_input.e, var_0.c.a.x, max(u_input.e, i32(-1i) * -1457i)), _wgslsmith_mod_vec4_i32(var_0.c.a, countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.x, -2147483647i, -1i, var_0.c.a.x), var_0.c.a)))));
}

