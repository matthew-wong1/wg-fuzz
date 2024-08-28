struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(29033u, 0u, 55830u, 0u), Struct_1(-10122i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = global0.b.a;
    var_0 = ~arg_0.c;
    global0 = Struct_2(vec4<u32>(global0.a.x, countOneBits(40839u), ~(~(~u_input.a.x)), global0.a.x), global0.b);
    let var_1 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0.b.a, 48945i), arg_0.a) & vec2<i32>(-arg_0.a, -2147483647i), -vec2<i32>(0i, arg_0.a) | (min(vec2<i32>(56003i, -2147483647i), vec2<i32>(global0.b.a, 59586i)) << (vec2<u32>(55277u, global0.a.x) % vec2<u32>(32u)))), vec2<bool>(true, arg_0.b.x && select(!arg_0.b.x, arg_0.b.x, false)), -1i);
    var_0 = var_1.c;
    return select(2147483647i, 1i, all(!select(select(vec3<bool>(var_1.b.x, false, true), vec3<bool>(true, false, true), var_1.b.x), !vec3<bool>(arg_0.b.x, var_1.b.x, true), select(vec3<bool>(false, var_1.b.x, true), vec3<bool>(true, false, arg_0.b.x), true))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global0.b.a);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -1i) & _wgslsmith_add_i32(-27027i, var_0.a), -(~(-1i)), var_0.a, ~abs(33730i)), abs(vec4<i32>(1i, i32(-1i) * -1i, var_0.a, ~global0.b.a))));
    var_0 = Struct_1(var_0.a);
    let var_2 = _wgslsmith_mult_i32(func_3(Struct_4(-1i, vec2<bool>(true, true), var_1.a)), var_1.a);
    let var_3 = Struct_4(max(~2147483647i, countOneBits(var_2) >> (1u % 32u)) << (4113u % 32u), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, global0.b.a <= global0.b.a), true), global0.b.a);
    return Struct_2(vec4<u32>(global0.a.x, abs(~4294967295u ^ u_input.a.x), countOneBits(14902u), firstLeadingBit(47003u)), Struct_1(0i));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = Struct_2(global0.a, func_2().b);
    var var_0 = global0.b.a;
    global0 = Struct_2(abs(select(arg_0.a, vec4<u32>(34342u, arg_0.a.x, arg_0.a.x, global0.a.x) << (vec4<u32>(1u, arg_0.a.x, 65260u, 29239u) % vec4<u32>(32u)), arg_1.x)), func_2().b);
    var var_1 = Struct_2(arg_0.a, Struct_1(14729i));
    var var_2 = vec3<bool>(arg_1.x != true, select(arg_1.x, false, 1i > var_1.b.a), false);
    return Struct_3(func_2().b);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(985f, 1006f), vec2<f32>(380f, -1000f)) * vec2<f32>(-387f, -476f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(503f, -562f) - vec2<f32>(958f, 1403f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1020f, 802f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1199f, 983f)), vec2<bool>(true, arg_1.x)))), arg_1)) * vec2<f32>(-332f, _wgslsmith_f_op_f32(f32(-1f) * -738f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(178f)), -1490f, var_0.x, var_0.x))));
    var var_2 = arg_0;
    var var_3 = arg_0;
    let var_4 = func_4(func_2(), select(vec3<bool>(select(arg_1.x, arg_1.x, arg_1.x), any(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), false)), any(arg_1)), select(vec3<bool>(arg_1.x, all(vec2<bool>(true, false)), arg_1.x), select(vec3<bool>(arg_1.x, false, arg_1.x), select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(arg_1.x, true, false)), vec3<bool>(true, true, true)), vec3<bool>(arg_1.x, arg_1.x, !arg_1.x)), !vec3<bool>(all(vec2<bool>(arg_1.x, false)), arg_1.x, var_3.a.a == global0.b.a)), _wgslsmith_mult_vec3_u32(countOneBits(global0.a.xzz) | (vec3<u32>(u_input.a.x, 4294967295u, 16989u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, global0.a.x), vec3<u32>(global0.a.x, 16338u, u_input.a.x)) % vec3<u32>(32u))), ~(~abs(vec3<u32>(3507u, u_input.a.x, 31945u)))));
    return firstLeadingBit(firstTrailingBit(abs(countOneBits(~vec2<u32>(global0.a.x, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(0u, 0u)), ~vec2<u32>(select(global0.a.x, 1u, true), 1u)), ~(~(~func_1(Struct_3(Struct_1(2147483647i)), vec2<bool>(false, false)))));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(abs(~global0.a), ~(~global0.a)), u_input.a.x, u_input.a.x, abs(3220u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1013f, -105f, 1037f) - vec3<f32>(-254f, 662f, 897f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1194f, 1213f, 991f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(952f, -2880f, 261f))))));
    let var_3 = Struct_4(~global0.b.a, vec2<bool>(true, _wgslsmith_f_op_f32(-821f + _wgslsmith_f_op_f32(var_2.x - var_2.x)) < var_2.x), -global0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, -1013f, var_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2, vec3<f32>(500f, var_2.x, -705f))))), vec3<u32>(max(_wgslsmith_clamp_u32(global0.a.x, global0.a.x & global0.a.x, 50750u), ~(~var_1.x)), 1u, max(_wgslsmith_clamp_u32(29113u, 10541u, 1u), var_1.x) ^ ~_wgslsmith_dot_vec2_u32(global0.a.zy, u_input.a)), _wgslsmith_f_op_f32(-var_2.x), 1u);
}

