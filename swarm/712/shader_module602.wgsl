struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 18695u, 7974u, 58572u), vec4<u32>(4294967295u, 108809u, 7070u, 17862u), vec4<u32>(76019u, 36095u, 4294967295u, 40113u), vec4<u32>(868u, 4294967295u, 0u, 17074u), vec4<u32>(5043u, 30759u, 1u, 0u), vec4<u32>(48367u, 0u, 4294967295u, 4294967295u), vec4<u32>(21784u, 4294967295u, 105690u, 14890u), vec4<u32>(11080u, 0u, 1u, 28993u), vec4<u32>(1u, 1u, 108950u, 47752u), vec4<u32>(31707u, 71841u, 34304u, 21356u), vec4<u32>(0u, 83711u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 3885u, 76080u), vec4<u32>(4294967295u, 6776u, 34363u, 4294967295u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(32314u, 1u, 36811u, 0u), vec4<u32>(1u, 39137u, 0u, 0u), vec4<u32>(51482u, 71727u, 0u, 51043u), vec4<u32>(11713u, 12287u, 29250u, 0u), vec4<u32>(1u, 67411u, 4294967295u, 31287u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 22277u, 4294967295u));

var<private> global3: array<bool, 9> = array<bool, 9>(false, true, false, true, true, false, false, false, true);

var<private> global4: array<vec3<f32>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    global2 = array<vec4<u32>, 21>();
    global3 = array<bool, 9>();
    global1 = Struct_1(false);
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~(~21360u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 7750u, 55087u), vec4<u32>(0u, 4294967295u, 0u, 30384u)) >> (reverseBits(0u) % 32u)), _wgslsmith_sub_u32(~4742u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(65705u, 29956u), vec2<u32>(1u, 42879u)), 1u >> (1u % 32u))), 9u)]);
    let var_1 = countOneBits(~vec2<i32>(u_input.a.x, 15065i) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -52129i, arg_1, 2147483647i) << (vec4<u32>(0u, 1u, 0u, 19835u) % vec4<u32>(32u)), countOneBits(vec4<i32>(arg_1, -30644i, -1i, 2147483647i))), arg_1));
    return Struct_1(true);
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -2166f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1442f, 146f), vec2<f32>(-497f, -737f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(481f, -504f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, 1684f) + vec2<f32>(-236f, -529f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1165f)), _wgslsmith_f_op_f32(883f - 830f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(991f, -107f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(501f, 1014f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1312f, 1000f), vec2<f32>(-489f, -240f), arg_0.x))))), all(select(vec4<bool>(arg_0.x, true, all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 9u)])), all(arg_0.xz)), vec4<bool>(true, false, arg_0.x, true), !vec4<bool>(true, global1.a, global1.a, global1.a)))));
    let var_1 = var_0.x;
    let var_2 = func_1(!(~abs(u_input.b) != u_input.b), reverseBits(29224i));
    global3 = array<bool, 9>();
    let var_3 = Struct_1(!(!global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 31315u), 9u)]));
    return _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(firstLeadingBit(~4294967295u), min(~17672u, ~1u))), ~abs(vec2<u32>(min(4529u, 5201u), firstLeadingBit(29398u))), vec2<u32>(~(~0u) & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(43899u, 11518u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 8739u))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global3 = array<bool, 9>();
    let var_0 = func_3(!select(!(!vec3<bool>(arg_0, global1.a, global3[_wgslsmith_index_u32(0u, 9u)])), vec3<bool>(false, !global1.a, !arg_0), arg_0));
    let var_1 = 0i;
    global0 = array<Struct_1, 20>();
    let var_2 = false;
    return Struct_1(func_1(!global3[_wgslsmith_index_u32(abs(var_0.x) << (1u % 32u), 9u)], 25547i).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(true, func_1(false, u_input.a.x));
    var var_0 = func_1(false, -1i);
    var var_1 = _wgslsmith_mod_u32(abs(~(~_wgslsmith_mod_u32(12298u, 4294967295u))), 1u);
    var var_2 = func_2(!any(select(select(vec2<bool>(global1.a, false), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<bool>(false, global1.a)), select(vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)]), vec2<bool>(var_0.a, true), vec2<bool>(false, global1.a)), vec2<bool>(false, true))), func_2(true, global0[_wgslsmith_index_u32(countOneBits(countOneBits(~0u)), 20u)]));
    var var_3 = u_input.b;
    var var_4 = -1540f;
    var var_5 = vec4<bool>(true, false, var_0.a, true);
    var var_6 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -573f))), -814f) <= _wgslsmith_f_op_f32(trunc(1466f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(global4[_wgslsmith_index_u32(~select(4294967295u, 0u, false) & select(1u, ~12009u, func_1(var_2.a, u_input.a.x).a), 19u)])), select(~u_input.b, ~u_input.b, true) << (~_wgslsmith_clamp_u32(6340u, _wgslsmith_dot_vec2_u32(vec2<u32>(48848u, 0u), vec2<u32>(7098u, 1u)), 1u) % 32u));
}

