struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, -958f);

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global2: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, 1246f, -538f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2036f, -441f, arg_2.b, -428f), vec4<f32>(global0.b, arg_2.b, arg_2.b, -552f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, global0.b, arg_2.b, -144f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-393f, arg_2.b, 957f, 375f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1371f, global0.b, global0.b, -991f) - vec4<f32>(-652f, arg_2.b, global0.b, 903f))))));
    var var_1 = 0u;
    return _wgslsmith_f_op_f32(ceil(702f));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a | _wgslsmith_mult_u32(37052u >> (u_input.b % 32u), _wgslsmith_div_u32(u_input.b, 11289u)), global2.x ^ u_input.c), ~61851u), 28u)];
    let var_1 = ~(~firstTrailingBit(abs(1u)));
    var var_2 = u_input.b;
    var var_3 = firstTrailingBit(_wgslsmith_sub_u32(~0u, ~24006u));
    global3 = array<Struct_1, 28>();
    return !select(true, true, any(vec2<bool>(true, true)));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f))), _wgslsmith_f_op_f32(sign(-659f)))));
    global0 = Struct_1(select(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(21027i, 39456i, arg_0.a), vec3<i32>(1357i, 0i, global0.a))), 58226i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1674f - -766f)) >= _wgslsmith_f_op_f32(step(-1488f, _wgslsmith_f_op_f32(global0.b - 2107f)))), _wgslsmith_f_op_f32(func_2(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(true, true, true)), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, all(vec3<bool>(false, false, false))), true), global3[_wgslsmith_index_u32(~1u, 28u)], vec2<u32>(81574u, global2.x) | ~abs(vec2<u32>(1u, u_input.b)))));
    var var_1 = 16749u != ~global2.x;
    let var_2 = Struct_1(max(var_0.a, 18314i), -768f);
    let var_3 = var_0.b;
    return !func_3(Struct_1(1503i, var_3), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(-1392f + var_2.b))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(global3[_wgslsmith_index_u32(abs(u_input.c), 28u)]);
    var var_1 = true;
    global2 = vec2<u32>(u_input.b, ~(~(~u_input.b ^ select(42107u, u_input.a, false))));
    var_0 = !(!(!select(false, true, false)) || true);
    var var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 656f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1251f, global0.b)) - _wgslsmith_f_op_f32(global0.b * -161f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a, var_2.b);
}

