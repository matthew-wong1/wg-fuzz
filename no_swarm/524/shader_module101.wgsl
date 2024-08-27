struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = vec2<i32>(max(arg_2.x << (7644u % 32u), -countOneBits(0i)), u_input.b);
    var_0 = max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(44218i, arg_0.x), ~(-2147483647i)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u)), vec2<i32>(arg_2.x, arg_0.x)), abs(-firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.c.wz, vec2<i32>(-2147483647i, u_input.b)))));
    var_0 = vec2<i32>(6466i, arg_0.x);
    var_0 = reverseBits(u_input.c.xz);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(354f, 457f, false)), -409f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1029f, 864f, false)) + -1000f), -134f, -2235f))));
    return _wgslsmith_div_vec3_u32(min(abs(vec3<u32>(59210u, u_input.a, 1u)), vec3<u32>(86072u, 0u, u_input.a)) ^ ((vec3<u32>(u_input.a, arg_1, 28814u) | vec3<u32>(u_input.a, 7606u, 4294967295u)) & ~vec3<u32>(0u, 4294967295u, 51745u)), vec3<u32>(_wgslsmith_div_u32(~0u, 1u), u_input.a, u_input.a)) | vec3<u32>(u_input.a, min(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10925u, u_input.d, arg_1, arg_1), vec4<u32>(4294967295u, 4294967295u, 0u, 59643u)), ~vec4<u32>(u_input.a, arg_1, 90259u, arg_1)), ~u_input.a), ~64038u);
}

fn func_2() -> vec3<f32> {
    let var_0 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), false), vec2<bool>(true, u_input.a != u_input.d), true), vec2<bool>(!(!(2936i != u_input.b)), !(-25874i >= u_input.e)), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false))));
    var var_1 = vec3<u32>(u_input.a, u_input.a, ~countOneBits(15408u));
    var var_2 = Struct_2(vec3<f32>(1f, 1f, 1f));
    let var_3 = _wgslsmith_add_i32(u_input.e, u_input.b);
    var_1 = ~func_3(vec3<i32>(-9074i, abs(10118i), var_3), 47165u, min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3, 9064i, var_3, 0i), vec4<i32>(var_3, -36161i, u_input.b, var_3)) >> ((vec4<u32>(u_input.d, 4294967295u, var_1.x, 40649u) & vec4<u32>(38944u, 4294967295u, var_1.x, var_1.x)) % vec4<u32>(32u)), u_input.c));
    return vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -663f), 651f);
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_1(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, false), select(true, true, u_input.a == 1u)), 1u, -25279i, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)));
    var_0 = Struct_1(!select(var_0.a, vec2<bool>(false, all(vec4<bool>(false, var_0.a.x, var_0.a.x, true))), var_0.a.x), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(29205u, 1u, var_0.b, 3027u) | vec4<u32>(54855u, var_0.b, 54439u, u_input.a)), _wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.b, 21364u, 1u, 50390u) << (vec4<u32>(var_0.b, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), ~(vec4<u32>(1u, var_0.b, 0u, 1u) | vec4<u32>(28206u, var_0.b, 4294967295u, var_0.b)))), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) - -1207f));
    let var_1 = ~vec3<i32>(max(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, 19230i, var_0.c, var_0.c)), u_input.c), -1i), ~_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.c, -1i), ~u_input.b, _wgslsmith_dot_vec2_i32(u_input.c.wx, u_input.c.zy)), -abs(var_0.c));
    let var_2 = Struct_2(arg_0);
    let var_3 = var_0.b;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, 572f, _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(-1000f + 1796f))) - _wgslsmith_f_op_vec3_f32(func_2())));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), -533f, _wgslsmith_f_op_f32(-var_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(floor(617f)), _wgslsmith_f_op_f32(abs(723f)), _wgslsmith_f_op_f32(-var_0.a.x))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_1.a.x) * var_1.a), vec3<f32>(var_1.a.x, var_0.a.x, -252f)), vec3<f32>(-137f, 726f, _wgslsmith_f_op_f32(f32(-1f) * -282f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_0.a.x)))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2()));
    var_1 = var_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, all(vec2<bool>(true, true))), u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(~3440i, _wgslsmith_add_i32(16367i, u_input.b), 2696i, -u_input.e), vec4<i32>(-1i, func_1(0i, vec4<u32>(u_input.d, 20811u, u_input.d, 29844u)), -18803i << (u_input.d % 32u), min(4424i, u_input.e))) ^ 42524i, _wgslsmith_f_op_f32(139f - 500f));
    let var_1 = var_0.a;
    let var_2 = !var_1.x;
    let var_3 = any(select(!select(vec3<bool>(var_2, false, true), !vec3<bool>(var_2, true, false), vec3<bool>(true, var_1.x, true)), select(!(!vec3<bool>(true, var_0.a.x, false)), vec3<bool>(true, true, true), all(vec3<bool>(var_0.a.x, var_0.a.x, false))), any(var_1)));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2()));
    var var_5 = 1013f;
    let var_6 = 25332u;
    let x = u_input.a;
    s_output = StorageBuffer(378f, vec3<i32>(var_0.c, reverseBits(21073i), ~(-1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(141f)), _wgslsmith_f_op_f32(-var_4.a.x), -1953f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(827f, var_4.a.x, -1255f)))), abs(max(_wgslsmith_sub_vec3_u32(vec3<u32>(36289u, var_0.b, var_6), vec3<u32>(var_0.b, 50496u, 1u)), max(vec3<u32>(31517u, 1u, var_0.b), vec3<u32>(var_6, var_0.b, 4294967295u)))) & min(~(vec3<u32>(u_input.a, var_6, var_6) << (vec3<u32>(0u, 976u, 33513u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, var_0.b), vec3<u32>(u_input.a, 1369u, 4294967295u)), vec3<u32>(0u, 15074u, u_input.d) & vec3<u32>(var_6, u_input.a, 5798u))));
}

