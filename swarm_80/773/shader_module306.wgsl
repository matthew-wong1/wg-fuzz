struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(0u, 11945u, 33308u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_mult_vec2_i32(select(countOneBits(-u_input.a), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), global1.a.wz), ~global2.x <= _wgslsmith_mod_u32(global2.x, 1u)), global1.a.xx));
    global1 = Struct_1(global1.a);
    global0 = array<bool, 13>();
    let var_1 = global1.a;
    global0 = array<bool, 13>();
    return Struct_2(-1260f, true);
}

fn func_3() -> vec3<u32> {
    global0 = array<bool, 13>();
    var var_0 = 1i;
    global2 = vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, ~global2.x, global2.x, _wgslsmith_clamp_u32(global2.x, global2.x, global2.x))), abs(abs(~vec4<u32>(global2.x, global2.x, global2.x, global2.x)))), 19312u | ~firstTrailingBit(1u), firstTrailingBit(4294967295u));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-116f, 661f, -405f, -1000f) + vec4<f32>(-541f, -1139f, 219f, 582f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1198f, -1761f, -151f, -1023f), vec4<f32>(-481f, 193f, -479f, -281f))))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2732f)), _wgslsmith_f_op_f32(select(-910f, 1048f, true))), _wgslsmith_f_op_f32(abs(1053f)))), _wgslsmith_f_op_f32(sign(103f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1373f)) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(1424f, 676f)))), -624f)));
    return abs(_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(global2.x, 1u, 1u)) | (vec3<u32>(global2.x, 39104u, 4294967295u) & abs(vec3<u32>(global2.x, 3320u, global2.x))), ~vec3<u32>(global2.x ^ 33395u, 1u, ~global2.x)));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<bool, 13>();
    let var_0 = func_2();
    global2 = ~abs(func_3());
    let var_1 = Struct_1(-global1.a);
    let var_2 = (var_0.b == arg_0) | arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + 1147f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -113f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f - -155f) - _wgslsmith_f_op_f32(-1474f - 574f)) + _wgslsmith_div_f32(-1277f, _wgslsmith_f_op_f32(f32(-1f) * -513f))), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global2.x, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1533f)) - _wgslsmith_div_f32(-258f, -842f)))));
    global2 = select(vec3<u32>(~(~0u), global2.x & _wgslsmith_mult_u32(0u, 81575u), 4294967295u), ~select(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, global2.x, 33386u)), vec3<u32>(_wgslsmith_mod_u32(global2.x, global2.x), global2.x, max(4294967295u, global2.x)), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 13u)], false))), _wgslsmith_add_u32(4294967295u, ~global2.x) == _wgslsmith_div_u32(~(~4294967295u), ~1u));
    global2 = ~(~select(~vec3<u32>(global2.x, global2.x, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 1u, 1u)), !vec3<bool>(true, global0[_wgslsmith_index_u32(global2.x, 13u)], false)) << (_wgslsmith_div_vec3_u32(abs(vec3<u32>(global2.x, 1u, 54169u) | vec3<u32>(1u, 1u, 95331u)), ~vec3<u32>(37698u, global2.x, 21946u) & (vec3<u32>(4294967295u, 53044u, 4294967295u) & vec3<u32>(global2.x, global2.x, global2.x))) % vec3<u32>(32u)));
    let var_1 = func_2();
    let var_2 = Struct_1(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-(~0i) | var_2.a.x, ~(-global1.a.x)));
}

