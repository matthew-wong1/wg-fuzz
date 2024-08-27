struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(2147483647i, i32(-2147483648)), Struct_1(0i, 23320i), Struct_1(-1i, i32(-2147483648)), Struct_1(1i, -4014i), Struct_1(-1i, 5408i), Struct_1(i32(-2147483648), 15805i), Struct_1(2147483647i, -41655i), Struct_1(0i, 10003i), Struct_1(0i, -58193i), Struct_1(51235i, -37103i), Struct_1(-25236i, -1i), Struct_1(25565i, 34599i), Struct_1(-57827i, 48228i), Struct_1(-29533i, 0i), Struct_1(2147483647i, -83328i), Struct_1(-1i, -1i), Struct_1(31225i, -4443i), Struct_1(i32(-2147483648), 0i));

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_1, 18>();
    var var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1796f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f))) * -276f));
    let var_1 = all(!vec2<bool>(arg_0 != _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec3<bool>(true, true, true))));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(532f + -425f), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1124f, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 921f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -617f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 159f)))));
    return -_wgslsmith_sub_i32(arg_1.b, u_input.a.x);
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 18>();
    var var_0 = -7020i;
    global1 = array<Struct_2, 31>();
    var var_1 = vec2<bool>(arg_0, arg_0);
    return 0u;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_1, 18>();
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(665f)), -1000f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(172f)) + _wgslsmith_f_op_f32(1989f + -1400f))), global1[_wgslsmith_index_u32(func_3(false), 31u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, -794f, _wgslsmith_f_op_f32(-1141f + -143f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, -364f, -296f) + vec3<f32>(514f, 1355f, -442f))) - vec3<f32>(_wgslsmith_f_op_f32(-904f + 205f), -1000f, -542f))));
    return Struct_3(!(any(!vec3<bool>(var_0.a, false, false)) | !all(vec4<bool>(var_0.a, false, true, var_0.a))), var_0.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = func_2().b;
    global0 = array<Struct_1, 18>();
    var var_1 = Struct_1(1i, -2147483647i);
    var var_2 = ~reverseBits(countOneBits(abs(var_1.b ^ u_input.a.x)));
    let var_3 = select(!vec4<bool>(!arg_2.x, true, arg_2.x, (u_input.b >> (61251u % 32u)) > 1i), select(select(arg_2, arg_2, arg_0.a), select(arg_2, select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), !arg_2.x), false), !arg_2), select(func_2().a & !any(vec3<bool>(arg_0.a, arg_2.x, arg_2.x)), false, select(true, false, arg_0.a)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(-2147483647i <= min(_wgslsmith_mod_i32(25579i, u_input.c), func_1(-2602f, global0[_wgslsmith_index_u32(0u, 18u)])), true, !all(vec2<bool>(false, true)), true));
    var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = Struct_1(-max(u_input.b, _wgslsmith_clamp_i32(u_input.b, -59903i, -2147483647i)) & func_4(func_2(), min(u_input.a.yy, u_input.a.xx), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), ~abs(_wgslsmith_add_i32(u_input.b, 42892i)) | func_4(func_2(), firstLeadingBit(u_input.a.zz), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true))));
    var_1 = func_2().b.b;
    var_0 = false;
    var var_2 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), var_1.b <= u_input.b), vec4<bool>(true, true, true, true), _wgslsmith_div_i32(abs(var_1.a), _wgslsmith_clamp_i32(6989i, 1i, 24995i)) < _wgslsmith_div_i32(var_1.a & var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.a, 0i, u_input.c), vec4<i32>(1i, -2147483647i, -19810i, u_input.c)))), !select(vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false | select(false, false, false)), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(countOneBits(~67328u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(38284u, 68220u, 76416u, 65166u)))) & 0u, 18u)];
    let var_4 = -676f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4))), _wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(575f * -962f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1325f, var_4, _wgslsmith_f_op_f32(floor(var_4)))))), ~(~_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(53214u, 0u, 542u)), ~vec3<u32>(18998u, 72756u, 410u))), _wgslsmith_f_op_f32(round(-237f)));
}

