struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: Struct_1;

var<private> global4: i32 = -31030i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~4294967295u, 18u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.x, 1036f) + vec3<f32>(1414f, global1.x, global1.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 950f, 901f)), vec3<f32>(global1.x, global1.x, -593f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, _wgslsmith_f_op_f32(trunc(-198f)), _wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = select(!(!global2.zy), vec2<bool>(!global2.x | (all(vec2<bool>(true, false)) | false), all(vec3<bool>(global2.x, !global2.x, false))), global2.yz);
    global4 = u_input.a;
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(1u, firstLeadingBit(~1u) & (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 31273u, 45282u)), abs(vec3<u32>(9048u, 0u, 0u))) ^ 1u));
    global4 = -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(112f)), _wgslsmith_f_op_f32(-global1.x), -516f));
    global2 = vec3<bool>(global2.x, global2.x, global2.x);
    var var_2 = vec4<u32>(4294967295u, 4294967295u, max(~29302u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(66770u, 16439u, 0u), vec3<u32>(54137u, 35728u, 2393u))) | ~reverseBits(33117u)), 4294967295u);
    return Struct_1(abs(max(global3.a << (vec2<u32>(4294967295u, 30153u) % vec2<u32>(32u)), min(global3.a, vec2<i32>(u_input.a, u_input.a))) & -(global3.a >> (vec2<u32>(11872u, var_2.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(global1.x, global1.x));
    var var_1 = func_2();
    let var_2 = ~(~_wgslsmith_div_vec3_u32(min(~vec3<u32>(0u, 31431u, 22235u), ~vec3<u32>(arg_0.x, 5010u, 101680u)), firstTrailingBit(vec3<u32>(arg_0.x, 14281u, arg_0.x) ^ vec3<u32>(1u, arg_0.x, 4294967295u))));
    var var_3 = select(vec4<bool>(all(select(select(vec3<bool>(true, true, false), vec3<bool>(global2.x, true, true), vec3<bool>(true, global2.x, global2.x)), vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x), global2.x))), select(true, !any(vec4<bool>(global2.x, global2.x, false, global2.x)), true), (_wgslsmith_f_op_f32(global1.x * global1.x) > _wgslsmith_f_op_f32(global1.x * -842f)) && global2.x, true), select(vec4<bool>(global2.x, arg_0.x >= abs(arg_0.x), true, false), vec4<bool>(any(select(global2.zz, vec2<bool>(global2.x, true), vec2<bool>(global2.x, true))), false, global2.x, true), global2.x), all(select(select(!vec4<bool>(true, false, global2.x, false), !vec4<bool>(global2.x, false, true, global2.x), select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, false, true, global2.x))), !(!vec4<bool>(global2.x, false, true, global2.x)), !vec4<bool>(true, false, false, global2.x))));
    global4 = select(-_wgslsmith_sub_i32(-40514i, 16681i), ~global3.a.x, true);
    return ~_wgslsmith_mod_u32(~(~_wgslsmith_mult_u32(var_2.x, 10935u)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), max(26680u, 82051u), 1u)) << (~(~_wgslsmith_mult_u32(2108u, func_1(vec2<u32>(1u, 0u)))) % 32u), 18u)];
    var var_1 = global0[_wgslsmith_index_u32(select(abs(0u), 1u, true) << (_wgslsmith_sub_u32(30340u ^ _wgslsmith_clamp_u32(~94873u, 1u, 1u), 1u) % 32u), 18u)];
    let var_2 = true;
    global0 = array<Struct_1, 18>();
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    let var_4 = var_3;
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-831f))), _wgslsmith_f_op_f32(var_4 - var_4)))) - var_4);
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

