struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(floor(1463f))));
    global1 = array<vec3<u32>, 19>();
    global0 = arg_0.a;
    global0 = 1953f;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a - -373f))), 0u);
    return vec2<bool>(true, true);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    global1 = array<vec3<u32>, 19>();
    global1 = array<vec3<u32>, 19>();
    global1 = array<vec3<u32>, 19>();
    var var_0 = ~abs(min(reverseBits(15945u), abs(~26919u)));
    let var_1 = Struct_3(arg_0.a);
    return var_1.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1989f - -425f) - _wgslsmith_f_op_f32(-arg_0.d.a))))), arg_0.e.a, _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.e.a, _wgslsmith_dot_vec2_u32(vec2<u32>(59165u, 35270u) & vec2<u32>(arg_0.e.b, arg_1.b), ~vec2<u32>(32818u, 15109u))), select(select(select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.c), true), func_2(Struct_1(-989f, 4294967295u), vec2<u32>(1u, 0u)), arg_1.a < 815f), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, true), false), !vec2<bool>(arg_0.a, true)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.e.a, arg_0.e.b), vec2<bool>(true, arg_0.b))) + arg_0.e.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.e.a)))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, ~29753u ^ ~arg_0.d.b, firstTrailingBit(_wgslsmith_clamp_u32(37265u, 3588u, arg_1.b))), vec3<u32>(~109774u, 1u, 122335u)));
    global1 = array<vec3<u32>, 19>();
    let var_2 = arg_0.e.b;
    let var_3 = (_wgslsmith_sub_u32(abs(arg_0.d.b), max(arg_0.e.b, abs(4294967295u))) & var_1.b) <= _wgslsmith_dot_vec2_u32(vec2<u32>(max(_wgslsmith_mod_u32(0u, 1547u), arg_1.b), var_1.b), vec2<u32>(arg_0.d.b, 16583u));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(2147483647i, ~(-1i) << (~((16685u << (arg_0.b % 32u)) ^ ~4294967295u) % 32u));
    let var_1 = !func_2(arg_0, countOneBits(~vec2<u32>(arg_0.b, 33702u) & vec2<u32>(12453u, 27900u))).x;
    let var_2 = countOneBits(vec3<u32>(40703u, _wgslsmith_add_u32(arg_0.b, arg_0.b) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(13186u, arg_0.b, arg_0.b, arg_0.b), vec4<u32>(arg_0.b, 1u, 4294967295u, 1u)), arg_0.b) | global1[_wgslsmith_index_u32(1u, 19u)]);
    let var_3 = vec4<u32>(abs(~(_wgslsmith_mult_u32(var_2.x, arg_0.b) | countOneBits(6858u))), 0u, var_2.x, 68876u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1129f, _wgslsmith_f_op_f32(-arg_2.x)), -2446f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(step(arg_0.a, -1217f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false & arg_1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, -1090f), arg_0.a), false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-873f, arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(151f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(496f, -1890f))))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 894f)), _wgslsmith_dot_vec4_u32(vec4<u32>(83158u, 21778u, 1u, 37470u), firstTrailingBit(vec4<u32>(36125u, 4294967295u, 0u, 23354u)))), vec4<bool>(true, true, !func_1(Struct_2(true, false, true, Struct_1(270f, 4294967295u), Struct_1(284f, 0u)), Struct_1(194f, 0u)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -467f, -204f) * vec3<f32>(815f, 1189f, -1000f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -583f, 473f))))))), 1715f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(416f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(510f, -216f)) - _wgslsmith_f_op_f32(sign(var_0.x)))) + -587f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_1 = Struct_3(var_0.x);
    var var_2 = select(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), true, true);
    var var_3 = abs(~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) * _wgslsmith_f_op_f32(-434f + var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_f_op_f32(func_4(Struct_1(var_0.x, 0u), vec4<bool>(false, true, false, false), vec3<f32>(var_1.a, var_1.a, var_0.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-919f, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 769f)), var_1.a));
}

