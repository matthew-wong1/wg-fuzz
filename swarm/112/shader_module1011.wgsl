struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<u32>) -> bool {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = (0u >> (~u_input.a % 32u)) > ~u_input.a;
    let var_2 = Struct_2(arg_0, vec4<bool>(var_1, !(!(var_1 && var_1)), (!var_0 || true) | true, var_0), vec2<f32>(_wgslsmith_f_op_f32(select(-1375f, arg_1.x, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)) - arg_0.b)));
    var var_3 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_4 = 0u;
    return !all(var_2.b.ww);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = ~vec4<i32>(u_input.b.x, 1i, u_input.b.x, ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-26760i, -57716i), firstLeadingBit(u_input.b.x)));
    var var_1 = vec3<f32>(-906f, arg_0.x, -307f);
    var_1 = vec3<f32>(arg_0.x, -1000f, arg_0.x);
    var var_2 = Struct_2(Struct_1(vec4<i32>(-firstLeadingBit(0i), ~firstTrailingBit(var_0.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 47932i, -1i), vec4<i32>(var_0.x, u_input.b.x, var_0.x, u_input.b.x)), select(var_0.x, u_input.b.x, false), -1i), var_0.x), -1653f), vec4<bool>(!(!(u_input.b.x > u_input.b.x)), func_3(Struct_1(var_0, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1959f, arg_0.x, var_1.x, 1000f) - vec4<f32>(arg_0.x, var_1.x, -2248f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1551f, -330f, -788f, 1572f))), u_input.a, abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)))), false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -1925f), _wgslsmith_f_op_vec2_f32(max(arg_0.zx, var_1.xz)))))));
    let var_3 = ~vec2<u32>(u_input.a, u_input.a);
    return 1000f;
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1235f, 101f, 288f) - vec3<f32>(841f, 1290f, 597f))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(100f, _wgslsmith_f_op_f32(-834f - -939f)) * -1071f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1287f, 2879f, 665f)))))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(721f, 195f)), -1955f));
    var var_1 = u_input.b.x & -69701i;
    var var_2 = Struct_1(~(~max(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-38508i, -83351i, u_input.b.x, u_input.b.x)) & _wgslsmith_clamp_vec4_i32(max(vec4<i32>(2147483647i, -1i, -31346i, u_input.b.x), vec4<i32>(u_input.b.x, -13168i, u_input.b.x, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 78619i, -49158i), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(2147483647i, 40910i, u_input.b.x, u_input.b.x)), max(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 54915i)))), -1378f);
    return select(vec4<bool>(111431u != u_input.a, true, true, u_input.a > ~u_input.a), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, var_2.b != 102f, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!func_3(Struct_1(var_2.a, var_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, -882f, 1253f, var_2.b) * vec4<f32>(var_2.b, var_2.b, 636f, -624f)), ~0u, ~vec4<u32>(u_input.a, u_input.a, 78111u, 92423u)), false, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(abs(746f));
    var var_2 = true;
    var_2 = var_1 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -869f) + var_1);
    let var_3 = Struct_1(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-22010i, -8125i, u_input.b.x, 2147483647i) << (vec4<u32>(u_input.a, 1491u, 0u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 46517i) << (vec4<u32>(0u, u_input.a, 43423u, 75768u) % vec4<u32>(32u))), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x | -7283i, u_input.b.x, -54i, u_input.b.x)), -1925f);
    var var_4 = _wgslsmith_dot_vec3_i32(~countOneBits(var_3.a.xxw), ~vec3<i32>(-11114i, u_input.b.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_div_u32(select(1u, u_input.a, true), 0u), 1u, all(func_1().ww)), ~firstTrailingBit(-(i32(-1i) * -5528i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 113f))) * vec2<f32>(var_3.b, _wgslsmith_f_op_f32(1806f + var_3.b)))));
}

