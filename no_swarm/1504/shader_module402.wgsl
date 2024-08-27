struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 32930u, 34115u, 12578u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: array<Struct_1, 11>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = global2[_wgslsmith_index_u32(1u, 11u)];
    var var_0 = Struct_1(global0.a);
    global1 = !vec4<bool>(global1.x, any(!(!vec4<bool>(arg_0, arg_0, global1.x, global1.x))), global1.x, u_input.b.x >= 776i);
    var var_1 = 1u;
    global3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), -129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.a.x), global3.a.x)) - global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1538f)) * global3.a.x))));
    return select(_wgslsmith_dot_vec2_u32(~vec2<u32>(11154u, 41227u), _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 4799u), ~u_input.a.xx, true), vec2<u32>(~0u, 1u << (u_input.a.x % 32u)))), 9539u, true);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<bool>(_wgslsmith_sub_u32(arg_2.a.x, ~81638u) >= arg_2.a.x, ((0u << (func_2(false, 0u, arg_2) % 32u)) & firstTrailingBit(min(global0.a.x, 86971u))) != _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(global0.a.x, reverseBits(global0.a.x), arg_2.a.x, arg_0 ^ global0.a.x)), !(u_input.b.x <= 1i));
    global3 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -650f, _wgslsmith_f_op_f32(min(230f, global3.a.x)), arg_1.x)))));
    var var_1 = !(!all(vec3<bool>(false, var_0.x, false)) != !any(select(global1.wz, vec2<bool>(global1.x, var_0.x), false)));
    let var_2 = _wgslsmith_f_op_f32(global3.a.x * 1f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -587f), -1000f));
    let var_3 = _wgslsmith_f_op_f32(ceil(309f));
    return arg_1.x;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> f32 {
    global2 = array<Struct_1, 11>();
    global0 = Struct_1(max(reverseBits(_wgslsmith_clamp_vec4_u32(global0.a, vec4<u32>(0u, 40687u, 15459u, global0.a.x), vec4<u32>(32220u, global0.a.x, global0.a.x, 0u))) ^ global0.a, _wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(u_input.a.x, global0.a.x, 0u, 0u)), global0.a, _wgslsmith_clamp_vec4_u32(~global0.a, ~vec4<u32>(u_input.a.x, 65619u, 61456u, global0.a.x), ~global0.a))));
    let var_0 = vec4<i32>(~(~u_input.b.x), u_input.b.x, 44434i, -2147483647i);
    var var_1 = arg_1.a.x;
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    return 2206f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(countOneBits(0u), _wgslsmith_f_op_vec3_f32(select(global3.a.xxw, vec3<f32>(1619f, global3.a.x, global3.a.x), global1.x)), global2[_wgslsmith_index_u32(u_input.a.x | 2491u, 11u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(true, Struct_2(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x)), global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1242f))), -488f), global3.a.x));
    var var_1 = u_input.b.x >> (~_wgslsmith_mult_u32(u_input.a.x, ~1u) % 32u);
    var var_2 = var_0;
    global1 = select(select(select(select(vec4<bool>(global1.x, true, global1.x, false), select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, true, global1.x, false), vec4<bool>(true, false, global1.x, global1.x)), !vec4<bool>(global1.x, true, global1.x, global1.x)), !(!vec4<bool>(true, true, global1.x, false)), false), vec4<bool>(global3.a.x < _wgslsmith_f_op_f32(var_2.a.x - 1023f), !global1.x, any(!vec4<bool>(false, false, global1.x, global1.x)), var_0.a.x == _wgslsmith_f_op_f32(max(279f, global3.a.x))), vec4<bool>(global0.a.x <= countOneBits(u_input.a.x), !(u_input.a.x != 56275u), false, global1.x)), vec4<bool>(any(global1.wxw), !all(global1.xyw) | (var_0.a.x < _wgslsmith_f_op_f32(select(global3.a.x, var_0.a.x, global1.x))), false, ~(global0.a.x << (0u % 32u)) == select(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), firstTrailingBit(global0.a.x), any(vec4<bool>(false, global1.x, true, true)))), !all(select(vec2<bool>(global1.x, global1.x), !global1.ww, !global1.wx)));
    let var_3 = global1.x;
    var var_4 = vec3<bool>(global1.x, false, global1.x);
    var var_5 = min(u_input.a.x, ~(u_input.a.x << (global0.a.x % 32u)) | _wgslsmith_clamp_u32(global0.a.x, select(global0.a.x, global0.a.x, global1.x), abs(26999u))) ^ _wgslsmith_mult_u32(~u_input.a.x, ~countOneBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_clamp_i32(max(u_input.b.x, -2147483647i), u_input.b.x, firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) + 716f) * var_0.a.x));
}

