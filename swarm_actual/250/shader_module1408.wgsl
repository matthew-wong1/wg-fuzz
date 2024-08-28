struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec2<f32>, 21>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global1 = array<vec2<f32>, 21>();
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(~38912i, abs(u_input.c.x));
    let var_1 = arg_0;
    var var_2 = var_1;
    let var_3 = 23282u;
    return _wgslsmith_f_op_f32(trunc(978f));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.d, vec2<f32>(-1077f, 1043f), vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(36756u, 20u)])), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-101f, arg_0, arg_0)))))))));
    let var_1 = !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), true)));
    var var_2 = u_input.b.zxw ^ _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a.x)), abs(u_input.a.x), firstTrailingBit(_wgslsmith_mult_u32(u_input.b.x, 49302u))), vec3<u32>(37357u, 1u, 0u));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_0.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f + var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.x, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, 2057f, arg_0)))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1616f))), _wgslsmith_f_op_f32(func_3(Struct_1(27318u, vec2<f32>(1000f, var_0.x), vec3<i32>(u_input.c.x, -2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(sign(var_0.xwx))))))));
    let var_3 = 1u;
    return -u_input.c.zw;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)))));
    global0 = array<i32, 20>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - var_0.x)));
    var var_2 = arg_3;
    var_2 = Struct_1(u_input.a.x, var_0, firstLeadingBit(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i), var_2.c), vec3<i32>(-2147483647i, arg_3.c.x, var_2.c.x)))));
    return arg_3;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(u_input.c, ~u_input.c);
    var_0 = u_input.c;
    var var_1 = arg_0;
    var var_2 = func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.b.x, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x - 1687f))), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1991f)), _wgslsmith_div_f32(arg_0.b.x, -705f))))), false, true, Struct_1(_wgslsmith_mult_u32(min(arg_0.a | 4294967295u, min(25736u, 1u)), abs(u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1u, var_1.b, vec3<i32>(-2147483647i, 1i, 5393i)), vec3<f32>(1382f, 602f, var_1.b.x)))), _wgslsmith_f_op_f32(ceil(1113f))), vec3<i32>(firstLeadingBit(-1i), -_wgslsmith_mod_i32(-28222i, 10705i), global0[_wgslsmith_index_u32(var_1.a, 20u)])));
    var var_3 = var_2.c >> (~(u_input.b.xxz << (~(vec3<u32>(var_2.a, 5175u, 33214u) & vec3<u32>(26970u, 1u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return ~countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.c.x), var_2.c.yz | vec2<i32>(2147483647i, u_input.c.x)), select(1i, _wgslsmith_add_i32(23495i, var_0.x), -1i < arg_0.c.x), -(var_0.x ^ 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -281f), _wgslsmith_f_op_f32(f32(-1f) * -282f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f + -475f) * -537f)))), select(vec3<i32>(u_input.c.x & abs(u_input.c.x), global0[_wgslsmith_index_u32(u_input.d, 20u)], 1i), ~(~func_1(Struct_1(1u, vec2<f32>(-288f, 408f), u_input.c.xzx))), vec3<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false)));
    let var_1 = true;
    let var_2 = func_4(func_1(func_4(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, var_0.c.x), ~vec2<i32>(-1i, var_0.c.x)), false, countOneBits(var_0.a) != var_0.a, func_4(u_input.c.zx, true, !var_1, func_4(var_0.c.yx, true, var_1, Struct_1(0u, global1[_wgslsmith_index_u32(12589u, 21u)], var_0.c))))).yx, true, true, func_4(_wgslsmith_div_vec2_i32(vec2<i32>(min(var_0.c.x, -14713i), u_input.c.x << (29865u % 32u)), vec2<i32>(1i, -34325i)), all(!(!vec4<bool>(var_1, false, var_1, var_1))), var_1, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.a.x, var_0.a), vec4<u32>(1u, 25537u, u_input.a.x, 10840u)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * -635f), -979f), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.c, var_0.c), ~vec3<i32>(var_0.c.x, var_0.c.x, global0[_wgslsmith_index_u32(0u, 20u)])))));
    global1 = array<vec2<f32>, 21>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f));
    let var_4 = func_4(vec2<i32>(-_wgslsmith_div_i32(u_input.c.x, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 20u)]), 1i), false, true, func_4(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.c.xz, u_input.c.wx, u_input.c.xz), vec2<i32>(var_0.c.x, -2147483647i) ^ var_2.c.yy), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.xy, u_input.c.ww, vec2<i32>(global0[_wgslsmith_index_u32(var_0.a, 20u)], 0i)), firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(533u, 20u)], -2147483647i)))), any(select(!vec3<bool>(false, false, var_1), select(vec3<bool>(false, false, var_1), vec3<bool>(var_1, var_1, true), var_1), !vec3<bool>(var_1, var_1, var_1))), var_1, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_2.b.x)));
}

