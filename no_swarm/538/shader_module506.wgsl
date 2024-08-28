struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(false, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = all(vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(580f, 651f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -222f), 1f), false, var_0.a));
    let var_2 = vec3<u32>(1u, abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x << (u_input.a.x % 32u), u_input.a.x), 21755u)), u_input.a.x);
    global1 = var_0.a;
    var var_3 = max(arg_0, vec2<i32>(arg_0.x, arg_0.x));
    return vec4<i32>(-1i) * -vec4<i32>(var_3.x, -(~var_3.x), 27291i, -1i);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> u32 {
    global1 = any(select(!vec3<bool>(any(vec3<bool>(false, true, false)), true, true), !vec3<bool>(4294967295u > u_input.a.x, select(true, false, false), all(vec4<bool>(false, true, false, false))), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)) == (-1264f < arg_0.x), true)));
    let var_0 = vec4<f32>(arg_1, 1f, -878f, 603f);
    global1 = false;
    var var_1 = func_3(vec2<i32>(1i, 1i));
    var var_2 = true;
    return countOneBits(44894u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = select(!select(!(!vec3<bool>(false, true, arg_2.b)), vec3<bool>(arg_1.b, any(vec4<bool>(arg_2.b, false, arg_2.b, arg_2.b)), true | arg_2.b), true), vec3<bool>(arg_1.b, select(all(vec3<bool>(false, true, true)) == true, false, !(!arg_1.a)), false), true);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 18076i, 0i, -45800i), vec4<i32>(-13760i, -36336i, -2147483647i, 0i)), vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<i32>(2147483647i, -16475i, 40977i, 32452i) << (u_input.a % vec4<u32>(32u)), min(vec4<i32>(1i, -5742i, 2147483647i, -1i), vec4<i32>(2147483647i, 2147483647i, 0i, 20932i)), !vec4<bool>(true, var_0.x, var_0.x, false))) != _wgslsmith_add_i32(14932i, 1i), arg_2.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1822f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, 1000f)), arg_3.x))));
    var var_3 = var_2;
    global1 = false;
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> vec4<i32> {
    let var_0 = func_4(vec3<u32>(abs(33760u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, 677f) + vec2<f32>(-366f, -419f))), 1608f), arg_0.x), global0[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_1(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), vec4<f32>(-1274f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-599f, _wgslsmith_f_op_f32(f32(-1f) * -925f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -692f))))), -423f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-968f, _wgslsmith_f_op_f32(-180f + -601f))))));
    global0 = array<Struct_1, 1>();
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f + 325f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123f * -1782f)))) + 1276f));
    let var_3 = vec4<u32>(arg_0.x & 1u, arg_0.x, ~((_wgslsmith_add_u32(37443u, arg_0.x) << (~31953u % 32u)) & countOneBits(arg_0.x)), u_input.a.x);
    return -abs(_wgslsmith_div_vec4_i32(select(-vec4<i32>(55653i, 22088i, -1i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), true), vec4<i32>(40774i, _wgslsmith_sub_i32(-20675i, 0i), -2162i, countOneBits(17243i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1270f)))))) + _wgslsmith_div_f32(-1889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(604f))))));
    let var_2 = ~(~3640u);
    var var_3 = !vec3<bool>(true, !(all(vec3<bool>(true, true, true)) && select(true, true, true)), false);
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~max(var_2, _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, var_2), 58531u)), abs(var_2), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 55144u, var_2), u_input.a.zxy, var_3.x), ~vec3<u32>(35083u, var_2 & var_2, var_2))), 1u)];
    var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x << (var_2 % 32u), _wgslsmith_mult_i32(var_0.x, 0i), 32996i, var_0.x << (var_2 % 32u)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, 8842i, -2147483647i), vec4<i32>(var_0.x, var_0.x, 8627i, 0i))), select(firstTrailingBit(select(vec4<i32>(10371i, var_0.x, -1i, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, 1i), vec4<bool>(false, true, false, true))), (vec4<i32>(var_0.x, var_0.x, var_0.x, 2971i) << (u_input.a % vec4<u32>(32u))) & (vec4<i32>(1i, -2147483647i, -1i, 0i) >> (u_input.a % vec4<u32>(32u))), !(!var_3.x))), vec4<i32>(var_0.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), -var_0.xx), ~(~var_0.x), countOneBits(var_0.x), _wgslsmith_mult_i32(~(-1i), -_wgslsmith_mult_i32(-33849i, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, 681f, 606f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -595f), -2088f, _wgslsmith_f_op_f32(select(217f, 1051f, var_3.x))))));
}

