struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(0i, -35909i), vec2<i32>(-12910i, -33592i), vec2<i32>(-7822i, 2147483647i), vec2<i32>(-692i, 1i), vec2<i32>(1i, 11965i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-35322i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(50565i, -10449i), vec2<i32>(-1i, -15459i), vec2<i32>(1i, 1i), vec2<i32>(-16116i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-53675i, 2147483647i), vec2<i32>(0i, 17317i), vec2<i32>(-35512i, 2147483647i));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> f32 {
    global0 = array<vec2<i32>, 18>();
    return _wgslsmith_f_op_f32(trunc(1407f));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1539f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> f32 {
    global1 = arg_0;
    var var_0 = Struct_1(~(_wgslsmith_sub_vec2_i32(~global0[_wgslsmith_index_u32(33658u, 18u)], _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, 1i), vec2<i32>(arg_0.a.x, -2147483647i))) & global0[_wgslsmith_index_u32(arg_1.x, 18u)]), _wgslsmith_f_op_vec4_f32(-global1.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2185f, 1187f, _wgslsmith_f_op_f32(func_3(arg_0, vec4<i32>(18912i, u_input.a.x, 15426i, u_input.a.x), arg_0.b.x, arg_3)), 1226f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2137f)), -1172f, _wgslsmith_f_op_f32(f32(-1f) * -1623f), arg_0.b.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 798f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 2243f))), 228f))));
    let var_2 = select(-269f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, global1.b.x)), false, any(vec3<bool>(false, true & any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true)))));
    global1 = Struct_1(~abs(~vec2<i32>(arg_3, -4125i) & vec2<i32>(var_0.a.x, 15147i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2196f, 407f, var_1.x, var_0.b.x), global1.b))) + vec4<f32>(_wgslsmith_div_f32(1000f, arg_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - -1198f), _wgslsmith_f_op_f32(-964f + arg_0.b.x), -987f, _wgslsmith_f_op_f32(var_0.b.x * var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2570f, -699f, 376f, var_0.b.x)))), vec4<bool>(any(vec4<bool>(false, true, var_2, true)), var_2, var_2, all(vec4<bool>(false, true, var_2, false)))))));
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(min(1373f, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.b.x)), arg_2.b.x)))));
    var var_1 = _wgslsmith_f_op_f32(arg_2.b.x - 2092f);
    global0 = array<vec2<i32>, 18>();
    return StorageBuffer(u_input.b.xz, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.x * -1427f), arg_2.b.x, true)) - _wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(ceil(arg_0.b.x))))), arg_2.b.x, (firstTrailingBit(~40940u) & firstTrailingBit(u_input.b.x | u_input.b.x)) | ((u_input.b.x >> (select(80844u, 40903u, false) % 32u)) & abs(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(abs(arg_3.b.www)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(global1.a.x, min(-(~(-1i)), reverseBits(_wgslsmith_mod_i32(-11870i, u_input.a.x))), -(-2147483647i << (firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) % 32u)), -19446i);
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(801f, -1609f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-968f, 1378f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), global1.b.x));
    let x = u_input.a;
    s_output = func_4(Struct_1(max(-firstLeadingBit(vec2<i32>(-2147483647i, 71699i)), -_wgslsmith_div_vec2_i32(global1.a, vec2<i32>(global1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, global1.b.x, global1.b.x, -200f)))), u_input.d, Struct_1(-select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, global1.a.x), vec2<i32>(2147483647i, 38727i)), global1.a, -764f >= var_2.x), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(global1.a.x, -24348i), vec4<f32>(819f, 600f, global1.b.x, var_2.x)), ~u_input.b.xyz, reverseBits(global1.a.x), global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1053f), global1.b.x)), Struct_1(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.d), global1.a.x | -61457i), _wgslsmith_add_i32(-1122i << (u_input.b.x % 32u), _wgslsmith_mod_i32(global1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1.b.x, _wgslsmith_f_op_f32(max(-1000f, global1.b.x)), _wgslsmith_f_op_f32(384f - 1064f)))));
}

