struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(308f, 877f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2060f, 1794f))))))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = array<vec3<bool>, 11>();
    var var_0 = -410f;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-1023f + -187f))))));
    var_0 = -1144f;
    var var_2 = vec4<i32>(-11496i, _wgslsmith_div_i32(firstLeadingBit(-1438i), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 29791i), 1i))), 0i, -48401i);
    return ~(~min(~(~36919u), u_input.a));
}

fn func_1(arg_0: u32, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_2(select(global0[_wgslsmith_index_u32(28263u, 11u)], global0[_wgslsmith_index_u32(min(0u, 29244u), 11u)], !global0[_wgslsmith_index_u32(arg_0, 11u)]), select(vec2<i32>(-(i32(-1i) * -2147483647i), -(i32(-1i) * -10417i)), ~countOneBits(vec2<i32>(-8390i, 0i)), !((arg_1 && arg_1) | true)), ~reverseBits(_wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, 58229u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(29113u, u_input.a), vec2<u32>(u_input.a, 80293u), vec2<u32>(30590u, 4294967295u)))));
    let var_1 = Struct_1(firstLeadingBit(vec3<u32>(~func_2(true), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, arg_0), ~28393u), 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1054f), _wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_f_op_f32(874f - 165f)) - vec3<f32>(1f, 1f, 1f))), vec3<bool>((var_0.b.x != var_0.b.x) || !any(vec4<bool>(var_0.a.x, false, var_0.a.x, true)), !arg_1, true));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)), vec3<bool>(!all(select(var_0.a.yx, vec2<bool>(arg_1, arg_1), true)), true, _wgslsmith_f_op_f32(-1025f - 767f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x + -1000f)));
    var var_3 = var_1.a;
    var_3 = var_2.a;
    return StorageBuffer(~(-(~vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, 1i)) & ~(-vec4<i32>(-56034i, var_0.b.x, -36358i, 30336i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 11>();
    let var_0 = false;
    let var_1 = 1044f;
    let x = u_input.a;
    s_output = func_1(u_input.a, var_0);
}

