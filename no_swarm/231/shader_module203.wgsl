struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22791i;

var<private> global1: u32 = 27173u;

var<private> global2: array<vec4<f32>, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = ~_wgslsmith_mult_u32(0u, arg_1);
    global0 = -arg_0;
    global2 = array<vec4<f32>, 7>();
    global2 = array<vec4<f32>, 7>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -108f);
    return 1000f;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global2 = array<vec4<f32>, 7>();
    let var_0 = Struct_2(select(-max(vec3<i32>(-5922i, 34784i, 0i), vec3<i32>(27238i, -38245i, -28599i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(3764i, 2147483647i), vec2<i32>(-23859i, 1i)), countOneBits(9283i), max(0i, 7132i)), vec3<i32>(~(-14114i), _wgslsmith_mult_i32(-1i, -10054i), select(-2147483647i, -2147483647i, true))), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, true, true), arg_0.x < arg_0.x)), ~(-2147483647i | (0i << (min(u_input.a.x, u_input.a.x) % 32u))));
    let var_1 = any(vec2<bool>(!any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var var_2 = Struct_1(select(select(vec3<bool>(0i >= var_0.b, any(vec3<bool>(false, false, true)), any(vec3<bool>(false, var_1, true))), select(vec3<bool>(false, true, false), !vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, var_1)), var_1), select(vec3<bool>(var_1, any(vec4<bool>(true, var_1, var_1, false)), var_1), vec3<bool>(true, true, !var_1), true), false), arg_0.x);
    let var_3 = Struct_1(!var_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1354f - _wgslsmith_f_op_f32(sign(var_2.b))))));
    return ~abs(countOneBits(69073u & ~u_input.a.x));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(countOneBits(25579i), ~(arg_0.x >> (u_input.a.x % 32u))), 0i), _wgslsmith_add_i32(abs(firstTrailingBit(9565i)), -2147483647i | min(arg_0.x, 1i)) << (16053u % 32u));
    global2 = array<vec4<f32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(func_2(var_0.x >> (~(_wgslsmith_clamp_u32(u_input.a.x, 46049u, u_input.a.x) ^ 1u) % 32u), 66195u));
    let var_2 = select(~(~u_input.a.x << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~36766u, ~4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), ~(~u_input.a.x) >= u_input.a.x) << (_wgslsmith_sub_u32(~(~max(0u, u_input.a.x)), _wgslsmith_mult_u32(~1u ^ u_input.a.x, ~4294967295u)) % 32u);
    global0 = ~(-39651i);
    return Struct_3(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1051f, -709f, 356f, -712f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 786f, 942f, -1323f), vec4<f32>(-705f, -465f, 515f, 616f)) * _wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(0u, 7u)]))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = reverseBits(~(~(~(~vec2<u32>(arg_3, 1u)))));
    global0 = firstTrailingBit(-1i);
    var var_2 = Struct_2(select(-vec3<i32>(1i, 1i, 1i), vec3<i32>(max(_wgslsmith_mod_i32(-4928i, -1i), -29705i), -17062i, 2147483647i), true), i32(-1i) * -(_wgslsmith_add_i32(1i, -13693i) >> (~arg_1.a % 32u)));
    var_2 = Struct_2(_wgslsmith_mod_vec3_i32((-var_2.a ^ var_2.a) ^ var_2.a, -var_2.a), 41697i);
    return Struct_2(abs(var_2.a), min(-(i32(-1i) * -1i), -22739i << ((1u << (u_input.a.x % 32u)) % 32u)) | (i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 7>();
    var var_0 = func_4(312f, func_1(_wgslsmith_mod_vec2_i32((vec2<i32>(0i, 2147483647i) << (u_input.a.xy % vec2<u32>(32u))) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), -vec2<i32>(2147483647i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(588f, -117f, _wgslsmith_div_f32(1716f, -799f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-529f, 1015f, 528f)), vec3<bool>(true, true, true)))) + vec3<f32>(-696f, -608f, _wgslsmith_f_op_f32(abs(1f)))), u_input.a.x);
    global0 = i32(-1i) * -var_0.b;
    var var_1 = !select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, true), var_0.b == 2147483647i), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), 39701i > var_0.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, true, false, true)), true, all(vec2<bool>(false, true))), var_0.b <= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_0.a.x, 1i))));
    var_1 = vec4<bool>(1u >= ~u_input.a.x, u_input.a.x > 1u, any(select(var_1.yzw, select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true), var_1.x), !var_1.x)) != (65706u < u_input.a.x), true);
    let var_2 = vec4<bool>(true, var_1.x, true, true);
    var var_3 = func_4(_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(f32(-1f) * -951f)), Struct_3(~17005u), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1354f))), -1295f, !var_1.x)), -273f, _wgslsmith_f_op_f32(round(124f))), 36183u);
    global0 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), 1476f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 7u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-392f, 1924f, 404f, 772f), global2[_wgslsmith_index_u32(u_input.a.x, 7u)]))))))));
}

