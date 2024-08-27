struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: Struct_2 = Struct_2(0u, Struct_1(vec3<f32>(-839f, 570f, 585f)), Struct_1(vec3<f32>(-1616f, -909f, 704f)));

var<private> global2: f32 = 1000f;

var<private> global3: array<u32, 4> = array<u32, 4>(1688u, 12089u, 83601u, 0u);

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(1u, global1.b, arg_2);
    var var_1 = Struct_2(32698u << (min(59609u, max(global1.a, ~1u)) % 32u), global1.c, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(global1.c.a))))));
    var var_2 = Struct_2(~4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-710f)), _wgslsmith_f_op_f32(step(global4.a.x, var_1.c.a.x)), -467f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, 816f, -193f)))), arg_2);
    let var_3 = var_0;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0))));
    return ~(~_wgslsmith_add_u32(7003u, global1.a & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.a, 4u)], 4u)]) | ~(~var_2.a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = ~global3[_wgslsmith_index_u32(1u << ((~0u & ~arg_2.a) % 32u), 4u)] <= arg_2.a;
    global0 = array<Struct_1, 13>();
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1181f)));
    var_0 = false;
    var var_1 = vec2<u32>(~countOneBits(21958u | global3[_wgslsmith_index_u32(32873u, 4u)]), min(countOneBits(max(global1.a, arg_2.a)), arg_2.a)) & (abs(abs(vec2<u32>(31358u, global1.a) ^ vec2<u32>(1u, global3[_wgslsmith_index_u32(arg_2.a, 4u)]))) | select(vec2<u32>(global1.a, arg_2.a), _wgslsmith_mult_vec2_u32(vec2<u32>(78088u, 19489u), vec2<u32>(arg_2.a, global1.a)) << ((vec2<u32>(9167u, 380u) >> (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.a, 4u)], 4u)], global3[_wgslsmith_index_u32(arg_2.a, 4u)]) % vec2<u32>(32u))) % vec2<u32>(32u)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)));
    return !all(vec4<bool>(!all(vec3<bool>(true, true, false)), any(vec2<bool>(false, true)), true, select(false, true, true)));
}

fn func_1() -> vec3<bool> {
    let var_0 = global1.c;
    global0 = array<Struct_1, 13>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~global1.a, 4u)], abs(1u)), 3858u, global3[_wgslsmith_index_u32(countOneBits(global1.a << ((global3[_wgslsmith_index_u32(global1.a, 4u)] & 4294967295u) % 32u)), 4u)], 99483u), min(vec4<u32>(~global3[_wgslsmith_index_u32(func_2(var_0.a, global1.a, global1.c), 4u)], _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 4u)], 4u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(107615u, 4u)], 4u)] & 25113u), ~global1.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)] ^ ~global1.a, 4u)]), ~firstLeadingBit(firstLeadingBit(vec4<u32>(global1.a, global1.a, global3[_wgslsmith_index_u32(global1.a, 4u)], global3[_wgslsmith_index_u32(global1.a, 4u)]))))), 13u)];
    var var_2 = true & select(func_3(global0[_wgslsmith_index_u32(28027u, 13u)], _wgslsmith_f_op_f32(-global1.c.a.x), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9653u), vec2<u32>(36384u, 0u)), Struct_1(var_1.a), Struct_1(vec3<f32>(var_0.a.x, 126f, -1370f)))), select(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)) & any(vec4<bool>(true, true, false, false))), false);
    var var_3 = (_wgslsmith_div_f32(_wgslsmith_div_f32(1571f, var_1.a.x), -491f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)))) != ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1530f - global1.c.a.x)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x - -1648f)))) && false);
    return vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1224u, 13u)];
    var var_1 = vec3<u32>(~(~_wgslsmith_add_u32(firstLeadingBit(global1.a), 1u)), global1.a, 0u);
    let var_2 = Struct_1(global4.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.a.x))), 268f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.x, global4.a.x, global4.a.x, 251f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, var_2.a.x, global1.b.a.x, global4.a.x) + vec4<f32>(var_0.a.x, 1152f, var_2.a.x, var_2.a.x)) - vec4<f32>(-321f, 649f, 697f, var_2.a.x)))), vec4<bool>(!(var_2.a.x < 872f), true, all(select(func_1(), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), func_1())), true)));
    global1 = Struct_2(51187u, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.a))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global4.a.x)), global4.a.x, _wgslsmith_f_op_f32(1058f - 1631f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.a, vec3<f32>(643f, var_3.x, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, -331f, global1.c.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1978f, var_1.x, ~u_input.b);
}

