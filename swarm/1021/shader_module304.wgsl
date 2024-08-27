struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = firstTrailingBit(0i);
    global0 = reverseBits(u_input.b);
    global0 = i32(-1i) * -1790i;
    let var_0 = any(select(!vec3<bool>(true, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), ~0u != _wgslsmith_dot_vec2_u32(~u_input.c.xx, ~u_input.c.xz)));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(~u_input.c, u_input.c), min(u_input.c, (vec4<u32>(78176u, 25166u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u)) << (abs(vec4<u32>(3440u, u_input.c.x, 102359u, u_input.c.x)) % vec4<u32>(32u)))));
    return firstLeadingBit(~var_1.a.x);
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = any(vec3<bool>(false, false, true));
    var var_1 = _wgslsmith_clamp_vec4_u32(u_input.c, arg_0.a, vec4<u32>(abs(abs(_wgslsmith_div_u32(u_input.c.x, 19030u))), u_input.c.x, func_3(), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), u_input.c.zwz), u_input.a))));
    var_1 = abs(~(min(~vec4<u32>(u_input.a, 58512u, 1128u, arg_0.a.x), vec4<u32>(var_1.x, 24388u, u_input.a, var_1.x)) << (arg_0.a % vec4<u32>(32u))));
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-773f, 2112f) + vec2<f32>(-884f, 367f)))) + vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(300f * _wgslsmith_f_op_f32(abs(222f))), _wgslsmith_f_op_f32(trunc(872f)))), (arg_0.a.x << (u_input.a % 32u)) | ~var_1.x);
    global0 = _wgslsmith_add_i32(u_input.b, _wgslsmith_div_i32(-u_input.b, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.b, 0i, u_input.b)), max(vec3<i32>(42921i, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, 2147483647i)) | firstTrailingBit(vec3<i32>(2147483647i, u_input.b, 1i)))));
    return 0i == u_input.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = -19361i;
    let var_2 = arg_0;
    let var_3 = func_2(var_2);
    let var_4 = vec3<u32>(firstTrailingBit(~(~func_3())), ~arg_0.a.x, ~arg_1.a.x);
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_3), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + -1035f), _wgslsmith_f_op_f32(abs(-1467f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(764f)), _wgslsmith_f_op_f32(ceil(-2810f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(~firstLeadingBit(u_input.c)), Struct_2((vec4<u32>(59598u, 0u, 16324u, u_input.c.x) >> (u_input.c % vec4<u32>(32u))) & u_input.c), -(~vec3<i32>(-1i, u_input.b, -1i)) & ~vec3<i32>(28563i, u_input.b, 3341i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-865f + -1304f) * _wgslsmith_f_op_f32(1000f - 286f))))));
    var var_1 = reverseBits(~(~_wgslsmith_add_vec2_i32(vec2<i32>(-5297i, -35871i), vec2<i32>(u_input.b, u_input.b)) & select(abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b), true)));
    let var_2 = ~_wgslsmith_dot_vec2_i32((countOneBits(vec2<i32>(-55671i, -19690i)) << (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))) ^ (vec2<i32>(-48574i, u_input.b) >> (min(vec2<u32>(u_input.c.x, u_input.a), vec2<u32>(1u, 88702u)) % vec2<u32>(32u))), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b) ^ vec2<i32>(u_input.b, -13193i), ~vec2<i32>(var_1.x, -3983i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))) + vec2<f32>(-453f, var_0.x)), true & func_2(Struct_2(u_input.c)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(-962f))))));
    var var_4 = any(select(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -269f) > _wgslsmith_f_op_f32(sign(var_0.x)), !(u_input.c.x < 4294967295u), true), select(vec3<bool>(0u < u_input.a, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), true), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_5 = min(reverseBits(_wgslsmith_mult_vec2_u32(u_input.c.yw, u_input.c.yy)), u_input.c.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstLeadingBit(u_input.b), -var_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_3.x) + vec3<f32>(649f, 1115f, -577f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -895f) - vec3<f32>(-247f, var_0.x, -324f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_3.x, var_0.x) * vec3<f32>(430f, 770f, 336f)) + vec3<f32>(var_3.x, -1000f, var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(1495f * 1365f), _wgslsmith_f_op_f32(f32(-1f) * -861f), var_3.x))), -329f, ~var_5.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(16329i, u_input.b, var_2) << (~u_input.c.xzw % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-687i, -7111i, u_input.b, u_input.b), -vec4<i32>(-31323i, var_1.x, -39652i, u_input.b)), var_1.x, -(i32(-1i) * -1i))));
}

