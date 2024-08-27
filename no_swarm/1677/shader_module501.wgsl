struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: Struct_1 = Struct_1(0u, vec2<f32>(-604f, -323f));

var<private> global2: array<bool, 19>;

var<private> global3: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(2147483647i, -1i, -1i, -1i));

var<private> global4: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(1u, 4294967295u, 6387u), vec3<u32>(41311u, 13079u, 61109u), vec3<u32>(4294967295u, 11892u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(7233u, 0u, 0u), vec3<u32>(98488u, 1u, 1u), vec3<u32>(9981u, 0u, 0u), vec3<u32>(84717u, 12864u, 8371u), vec3<u32>(106720u, 75822u, 1u), vec3<u32>(8824u, 21349u, 1u), vec3<u32>(1685u, 39349u, 27511u), vec3<u32>(4294967295u, 1u, 8405u), vec3<u32>(6333u, 1u, 4294967295u), vec3<u32>(13482u, 1u, 27430u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec2<f32> {
    global0 = array<i32, 31>();
    var var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2155f, -1028f)))) + _wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(_wgslsmith_f_op_f32(-1244f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -439f)))));
    var var_1 = 481f;
    var_1 = _wgslsmith_f_op_f32(round(-751f));
    var var_2 = vec3<i32>(~(~(i32(-1i) * -1i)), global0[_wgslsmith_index_u32(1u, 31u)], -75i);
    return _wgslsmith_f_op_vec2_f32(step(var_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + global1.b.x) + _wgslsmith_f_op_f32(-512f + var_0.b.x)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), -576f), select(vec2<bool>(false, false), arg_2.zz, arg_2.x)))));
}

fn func_2() -> vec2<f32> {
    var var_0 = global1.b.x;
    global3 = array<vec4<i32>, 1>();
    let var_1 = vec3<u32>(6014u, max(30980u, global1.a), abs(global1.a));
    global1 = Struct_1(var_1.x, vec2<f32>(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(trunc(global1.b.x))), 1f));
    let var_2 = global2[_wgslsmith_index_u32(global1.a >> (global1.a % 32u), 19u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(select(0u, _wgslsmith_mult_u32(90825u, var_1.x), any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(64216u, 19u)], false, global2[_wgslsmith_index_u32(24689u, 19u)]))), 19u)], vec2<f32>(_wgslsmith_div_f32(global1.b.x, global1.b.x), global1.b.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, global2[_wgslsmith_index_u32(63488u, 19u)]), true))), global1.b)));
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    global0 = array<i32, 31>();
    let var_0 = Struct_1(firstLeadingBit(global1.a) & global1.a, vec2<f32>(global1.b.x, -101f));
    var var_1 = var_0;
    var var_2 = Struct_1(var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.b)))));
    var var_3 = Struct_1(countOneBits(33353u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - global1.b.x) + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * global1.b.x))));
    return !select(vec4<bool>(global2[_wgslsmith_index_u32(var_3.a, 19u)], global2[_wgslsmith_index_u32(1u << (0u % 32u), 19u)], false, var_1.a > _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(12236u, 14u)], vec3<u32>(43132u, 0u, 6161u))), vec4<bool>(all(vec4<bool>(false, global2[_wgslsmith_index_u32(global1.a, 19u)], global2[_wgslsmith_index_u32(var_0.a, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)])), true, true, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], true, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(94223u, 66865u, global1.a), vec3<u32>(global1.a, 4294967295u, 3017u)), 19u)], (global0[_wgslsmith_index_u32(global1.a, 31u)] >> (global1.a % 32u)) > firstLeadingBit(1i)), select(vec4<bool>(any(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(29821u, 19u)])), true, !global2[_wgslsmith_index_u32(global1.a, 19u)], false), vec4<bool>(false, true, global1.a >= 1u, global2[_wgslsmith_index_u32(firstLeadingBit(0u), 19u)]), vec4<bool>(u_input.a >= -1i, global2[_wgslsmith_index_u32(4294967295u, 19u)] & global2[_wgslsmith_index_u32(global1.a, 19u)], !global2[_wgslsmith_index_u32(global1.a, 19u)], !global2[_wgslsmith_index_u32(28635u, 19u)])), !vec4<bool>(global1.a > 87309u, global2[_wgslsmith_index_u32(global1.a, 19u)], global1.b.x < global1.b.x, !global2[_wgslsmith_index_u32(22661u, 19u)])), select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false))), !select(func_1(vec3<i32>(global0[_wgslsmith_index_u32(global1.a, 31u)], -2147483647i, -2147483647i)), vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global1.a, 19u)], false, true), !vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 19u)], true, global2[_wgslsmith_index_u32(30468u, 19u)], true)), global2[_wgslsmith_index_u32(min(70186u, 31093u), 19u)]), !(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 19u)], false, global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 19u)], global2[_wgslsmith_index_u32(global1.a, 19u)], global2[_wgslsmith_index_u32(75753u, 19u)], true), false))));
    var var_1 = var_0.xzz;
    var_0 = !func_1(abs(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(global1.a, 31u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(global1.a, 31u)], -32988i, -2147483647i)), 1i)));
    let var_2 = global1.a;
    global1 = Struct_1(~(~100487u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) - global1.b)) * vec2<f32>(863f, _wgslsmith_f_op_f32(f32(-1f) * -1114f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(0u), global1.a, ~1u), 31u)] << (reverseBits(global1.a) % 32u), 1i), min(reverseBits(abs(firstTrailingBit(global4[_wgslsmith_index_u32(100475u, 14u)]))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a, 11239u, global1.a) >> (global4[_wgslsmith_index_u32(global1.a, 14u)] % vec3<u32>(32u)), global4[_wgslsmith_index_u32(global1.a, 14u)]))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1667f, _wgslsmith_f_op_f32(sign(global1.b.x))) - _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(false, _wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(global1.b.x, 1043f)), vec3<bool>(false, global2[_wgslsmith_index_u32(global1.a, 19u)], true))).x * global1.b.x), _wgslsmith_f_op_f32(259f - global1.b.x))));
}

