struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> f32 {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let var_0 = Struct_1(all(select(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), vec3<bool>(29212u <= arg_0.x, true, all(vec3<bool>(false, true, false))), all(vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-632f, 293f)) - _wgslsmith_f_op_f32(select(1000f, 1493f, false))) - -119f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-407f * -454f))))), vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-903f - -221f))) <= _wgslsmith_f_op_f32(floor(1700f)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = var_0.b.x;
    return var_0.b.x;
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(any(arg_0.zx) & !all(arg_0.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + 714f), 1010f))), arg_0.zy);
    global0 = array<i32, 17>();
    var var_1 = u_input.b.xzy;
    var var_2 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(24719i, u_input.b.x), _wgslsmith_dot_vec2_i32(var_1.xz, vec2<i32>(-59351i, var_1.x))), _wgslsmith_sub_vec2_i32(var_1.yz, var_1.yy) ^ countOneBits(u_input.b.yx)), ~u_input.b.xw, !arg_0.x) | var_1.xy;
    let var_3 = abs(~(-70712i));
    return vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, firstTrailingBit(1u)), 0i, -var_2.x)), 352f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(true, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, -718f) * vec2<f32>(107f, -858f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)), vec2<f32>(-1534f, 1754f)))), _wgslsmith_f_op_vec2_f32(func_2(select(!vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false))))), var_0);
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_2 = -2147483647i;
    return Struct_1(true | any(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_1.a, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)) - 751f), var_1.b.x))), !var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    var var_0 = -3250i;
    var_0 = -reverseBits(max(global0[_wgslsmith_index_u32(~(u_input.e & u_input.d), 17u)], global0[_wgslsmith_index_u32(min(~u_input.e, u_input.a.x), 17u)]));
    global0 = array<i32, 17>();
    let var_1 = func_1();
    let var_2 = !vec4<bool>(!(!all(vec4<bool>(true, var_1.a, var_1.a, var_1.a))), false, false, var_1.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1427f, var_2.x)) + var_1.b.x))), 1949f) * var_1.b);
    let var_4 = u_input.b.x <= -8245i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ reverseBits(abs(~u_input.a)), vec4<f32>(var_3.x, 831f, var_3.x, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(select(1f, -669f, var_4)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(~1u, u_input.d), vec2<u32>(firstLeadingBit(u_input.e), u_input.d << (~u_input.d % 32u)), vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)), ~1u)), ~vec4<u32>(1u, abs(abs(1u)), u_input.c, 4294967295u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))));
}

