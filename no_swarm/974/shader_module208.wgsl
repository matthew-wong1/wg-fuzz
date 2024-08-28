struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: vec2<f32> = vec2<f32>(-403f, -128f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global0 = array<vec3<i32>, 25>();
    let var_0 = 2147483647i;
    global0 = array<vec3<i32>, 25>();
    var var_1 = _wgslsmith_mod_i32(-12714i, (min(~var_0, var_0 & -22246i) | ~var_0) | _wgslsmith_div_i32(~(-60070i), -3123i));
    global0 = array<vec3<i32>, 25>();
    return max(8144u, 1u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    global0 = array<vec3<i32>, 25>();
    return vec2<u32>(~_wgslsmith_mod_u32(27196u, max(firstLeadingBit(arg_2.x), arg_1.a.x)), ~arg_2.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) + _wgslsmith_f_op_f32(select(433f, global1.x, true))), global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1593f, global1.x)))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global1.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, 1000f)), global1.x)))));
    global0 = array<vec3<i32>, 25>();
    var var_0 = select(abs(-(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 25u)]) & global0[_wgslsmith_index_u32(~arg_0.a.x, 25u)])), ~_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(~func_1(vec3<u32>(u_input.a, arg_0.a.x, 47144u)), 25u)]), vec3<bool>(any(!arg_1), all(vec2<bool>(true, true)), all(select(!arg_1.zxy, select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1.www, arg_1.x), !arg_1.x))));
    var var_1 = var_0.x;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_div_f32(-345f, global1.x))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec3<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(func_3(Struct_1(vec2<u32>(20078u, u_input.a)), Struct_1(max(vec2<u32>(u_input.a, 39205u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 18579u, 20914u), vec4<u32>(u_input.a, 88456u, 0u, 9928u)), ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))), vec4<bool>(7552u < abs(firstTrailingBit(33829u)), all(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, false), vec3<bool>(arg_0, true, true))), true, false)));
    var var_0 = select(vec4<i32>(49405i, -39951i, -(~(arg_1.x ^ arg_1.x)), arg_1.x), _wgslsmith_div_vec4_i32(firstTrailingBit(~(~vec4<i32>(7472i, -2147483647i, arg_1.x, arg_1.x))), vec4<i32>(-2147483647i, ~(arg_1.x & -8128i), _wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(arg_1.x, 2147483647i)) | -34421i, max(arg_1.x, 1i))), vec4<bool>((reverseBits(arg_1.x) ^ (25072i ^ arg_1.x)) == _wgslsmith_mult_i32(arg_1.x, -33093i), false, 2147483647i <= (~arg_1.x << (func_1(vec3<u32>(38404u, 87640u, u_input.a)) % 32u)), arg_0));
    let var_1 = vec4<u32>(5201u, u_input.a, u_input.a, abs(u_input.a));
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(~var_1.zw ^ reverseBits(var_1.wx), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(6376u, u_input.a), _wgslsmith_sub_vec2_u32(var_1.zy, vec2<u32>(var_1.x, 1u))), ~abs(vec2<u32>(var_1.x, 40795u)))));
    var_0 = select(vec4<i32>(firstLeadingBit(min(arg_1.x, arg_1.x) >> (_wgslsmith_mod_u32(0u, 15358u) % 32u)), min(-4782i, var_0.x), ~_wgslsmith_div_i32(arg_1.x, _wgslsmith_add_i32(arg_1.x, 0i)), -62923i >> (0u % 32u)), -(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, var_0.x, var_0.x, 33359i) << (vec4<u32>(61078u, 4294967295u, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, -1495i, 2147483647i, -2147483647i), vec4<i32>(53353i, 1i, arg_1.x, 0i)))), vec4<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(arg_0, true), arg_0)), arg_0 | any(!vec3<bool>(arg_0, true, arg_0)), any(!vec3<bool>(arg_0, false, arg_0)) && any(!vec2<bool>(arg_0, arg_0)), true));
    return vec3<bool>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xy, select(vec2<i32>(var_0.x, arg_1.x), vec2<i32>(-11971i, -13340i), arg_0)), vec2<i32>(1i, ~var_0.x)) <= _wgslsmith_div_i32(~_wgslsmith_add_i32(var_0.x, -730i), 1i), all(vec3<bool>(any(select(vec3<bool>(false, arg_0, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), arg_0, arg_0)), true && arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(global1.x));
    var var_1 = ~(vec3<u32>(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 0u, 1u)), ~_wgslsmith_div_u32(u_input.a, 1u), abs(~u_input.a)) | ~vec3<u32>(func_1(vec3<u32>(6056u, 10433u, 37627u)), ~u_input.a, ~0u));
    var var_2 = any(func_2(true, countOneBits(~select(vec2<i32>(-2147483647i, 8653i), vec2<i32>(1i, -2147483647i), vec2<bool>(false, true)))));
    var var_3 = 496f;
    global0 = array<vec3<i32>, 25>();
    var var_4 = Struct_1((var_1.zz | ~(~vec2<u32>(1u, 0u))) >> (abs(~vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1621f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), -1110f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(global1.x, global1.x))))));
}

