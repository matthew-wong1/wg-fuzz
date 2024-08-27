struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-518f, 2011f), _wgslsmith_f_op_vec2_f32(-arg_0.yy), vec2<bool>(true, true))), arg_0.ww) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wy)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.xw * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -469f), arg_0.yy))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x)))))));
    global1 = all(vec3<bool>(true, ~(arg_1.a | u_input.a.x) <= _wgslsmith_clamp_u32(6419u, _wgslsmith_mod_u32(u_input.a.x, 2937u), _wgslsmith_mult_u32(u_input.a.x, 123301u)), !(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(-1000f - var_0.x))));
    global0 = array<f32, 31>();
    let var_1 = arg_1;
    var var_2 = var_0.x;
    return any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))));
}

fn func_2() -> f32 {
    let var_0 = 19212u;
    global1 = func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(819f, -424f, global0[_wgslsmith_index_u32(74741u, 31u)], 559f), vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(var_0, 31u)]))))))), Struct_1(29267u << (max(var_0, 7433u) % 32u)), _wgslsmith_div_vec2_i32(~vec2<i32>(-1i, -1i), -_wgslsmith_add_vec2_i32(vec2<i32>(22035i, 12796i), vec2<i32>(-2147483647i, -1i)))) | !(397f == _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_f32(abs(653f))));
    let var_1 = Struct_1(4294967295u);
    let var_2 = Struct_1(~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-208f, -806f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)])))), 1413f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2()), -1255f);
    let var_1 = Struct_1(6938u);
    let var_2 = var_0.x;
    var var_3 = -2147483647i;
    global1 = any(vec4<bool>(!any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_2 - -873f), any(vec4<bool>(false, true, false, false)))) < _wgslsmith_f_op_f32(abs(-442f)), false));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(select(483f, 1389f, _wgslsmith_add_i32(arg_3.x, -reverseBits(arg_1)) > ~(~_wgslsmith_dot_vec3_i32(arg_3.wxx, vec3<i32>(-1i, arg_1, 2147483647i)))));
    var var_2 = vec3<u32>(~4294967295u, var_0.a ^ reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, 45506u, 1u), vec3<u32>(4294967295u, 37800u, var_0.a))), arg_2.a);
    var var_3 = var_1;
    var_2 = ~vec3<u32>(var_0.a, max(~var_2.x, 0u), ~(~u_input.a.x));
    return !arg_0;
}

fn func_5(arg_0: bool) -> Struct_1 {
    global1 = arg_0;
    global0 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(u_input.a.x | _wgslsmith_mod_u32(4294967295u, u_input.a.x)) | select(~(~7780u), select(~u_input.a.x, 0u | u_input.a.x, true), true), 31u)]);
    global1 = false;
    let var_1 = func_3(vec4<f32>(424f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -618f))))), global0[_wgslsmith_index_u32(1u, 31u)], 868f), func_1(), _wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 44107i) << (u_input.a % vec2<u32>(32u)), countOneBits(vec2<i32>(2147483647i, 0i))), vec2<i32>(-1i, i32(-1i) * -34132i)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = func_5(!(func_4(u_input.a.x >= 18807u, -1i, func_1(), vec4<i32>(1i, 1i, 1i, 1i)) == all(vec2<bool>(false, false))));
    global0 = array<f32, 31>();
    let var_1 = abs(-firstLeadingBit(-firstTrailingBit(vec2<i32>(1i, 9121i))));
    var var_2 = Struct_1(func_5(all(vec2<bool>(true, true))).a);
    global1 = (_wgslsmith_sub_i32(min(1i, abs(var_1.x)), ~(var_1.x | var_1.x)) > _wgslsmith_dot_vec3_i32(abs(vec3<i32>(4011i, var_1.x, var_1.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, var_1.x, 74617i), vec3<i32>(0i, -41554i, -4994i) >> (vec3<u32>(23887u, var_0.a, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_1.x, var_1.x, var_1.x)))) == true;
    var_2 = func_5(true);
    var var_3 = 145528u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_u32(max(16826u, u_input.a.x), ~43796u)), abs(26169i), vec3<f32>(-1258f, -637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.a, 31u)])))))));
}

