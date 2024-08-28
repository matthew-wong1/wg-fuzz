struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: i32 = 19450i;

var<private> global1: Struct_1 = Struct_1(46810u);

var<private> global2: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(516f, 592f), vec2<f32>(-636f, -420f), vec2<f32>(-894f, 263f), vec2<f32>(920f, 1587f), vec2<f32>(697f, 1026f), vec2<f32>(-1316f, -827f), vec2<f32>(612f, 714f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(abs(global1.a), 1u), ~firstLeadingBit(u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, 0u) & 4294967295u, u_input.a, _wgslsmith_mod_u32(u_input.a, global1.a))));
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> bool {
    global2 = array<vec2<f32>, 7>();
    var var_0 = !(true | (!(-450f < arg_0.x) & true));
    global1 = Struct_1(~_wgslsmith_sub_u32(firstLeadingBit(global1.a), ~global1.a) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b));
    global0 = ~select(arg_2, -1i, !all(vec4<bool>(true, true, true, true)));
    global2 = array<vec2<f32>, 7>();
    return !all(vec2<bool>(_wgslsmith_f_op_f32(arg_0.x * 949f) > _wgslsmith_f_op_f32(-1493f - 1232f), _wgslsmith_mod_i32(0i, arg_2) <= (arg_2 ^ 74762i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_div_u32(~4294967295u, arg_0.x));
    let var_0 = global2[_wgslsmith_index_u32(0u, 7u)];
    global2 = array<vec2<f32>, 7>();
    let var_1 = vec4<bool>(~0u > (16714u ^ ~(~global1.a)), true, any(vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), func_2(var_0.x), func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(225f, arg_1), global2[_wgslsmith_index_u32(global1.a, 7u)])), u_input.a, abs(2147483647i)))), true);
    global1 = Struct_1(max(u_input.a, u_input.a));
    return Struct_1(abs(arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(833f, 1008f, -1618f), vec3<f32>(-1746f, -811f, 1175f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -743f, 479f) * vec3<f32>(-795f, -145f, 642f)) - vec3<f32>(2926f, -614f, -127f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(1173f * -342f), _wgslsmith_f_op_f32(max(-650f, _wgslsmith_div_f32(-1463f, -1170f)))) - vec3<f32>(-512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1656f, 910f)) * _wgslsmith_f_op_f32(abs(1106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))))));
    var var_1 = 396f;
    global0 = 0i;
    var var_2 = Struct_1(1u);
    let var_3 = Struct_1(arg_1.a);
    return vec4<i32>(0i, ~abs(1i >> (0u % 32u)), -abs(firstLeadingBit(-2147483647i)), reverseBits(firstTrailingBit(reverseBits(2147483647i << (var_3.a % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 7>();
    global0 = -(i32(-1i) * -2147483647i);
    var var_0 = Struct_1(firstTrailingBit(~u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(154f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f * 1741f))), _wgslsmith_f_op_f32(step(231f, 328f))));
    global0 = _wgslsmith_dot_vec4_i32(func_4(func_1(vec4<u32>(63445u, abs(0u), reverseBits(0u), _wgslsmith_sub_u32(66457u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1))), Struct_1(_wgslsmith_add_u32(global1.a, 60662u) | ~global1.a)), vec4<i32>(~(-_wgslsmith_clamp_i32(26294i, 0i, -17784i)), select(_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(20458i, 45887i)), 1i, func_3(global2[_wgslsmith_index_u32(~9873u, 7u)], firstTrailingBit(global1.a), -12823i)), -(~1i), -31222i));
    global1 = func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 4294967295u), global1.a), u_input.a, reverseBits(0u) >> (~4294967295u % 32u)), firstLeadingBit(~(~vec4<u32>(0u, 1044u, 59901u, u_input.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), -1072f, _wgslsmith_f_op_f32(round(148f)), _wgslsmith_f_op_f32(var_1 * 627f)))))));
}

