struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 17074i;

var<private> global1: array<Struct_4, 25>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, true, true), -208f, -476f));

var<private> global3: Struct_4 = Struct_4(Struct_3(vec4<u32>(15341u, 1u, 33702u, 4294967295u)));

var<private> global4: vec2<i32> = vec2<i32>(-31085i, 1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> Struct_4 {
    return Struct_4(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, ~u_input.a, ~4294967295u), ~global3.a.a)));
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = !(global3.a.a.x == firstTrailingBit(firstLeadingBit(arg_0.a.a.x) ^ arg_0.a.a.x));
    var_0 = false;
    global0 = select(global4.x, -16160i, !global2.a.a.x);
    global3 = func_2(global2.a, _wgslsmith_f_op_f32(-global2.a.c), !select(!(!vec2<bool>(false, global2.a.a.x)), !global2.a.a.zy, true & global2.a.a.x));
    let var_1 = global2.a.c;
    return 1180f;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(reverseBits(global3.a.a << (max(~vec4<u32>(global3.a.a.x, 1u, 4294967295u, global3.a.a.x), _wgslsmith_clamp_vec4_u32(global3.a.a, vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(0u, 53121u, global3.a.a.x, u_input.a))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-435f, 1454f, global2.a.c), vec3<f32>(global2.a.c, global2.a.c, -207f), vec3<bool>(global2.a.a.x, true, true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-610f, global2.a.c, global2.a.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a.c, 482f, global2.a.c))))));
    let var_2 = 0i;
    global0 = u_input.b.x;
    global0 = 25014i;
    return _wgslsmith_clamp_vec4_u32(min(~select(vec4<u32>(var_0.a.x, global3.a.a.x, var_0.a.x, var_0.a.x), vec4<u32>(91472u, 98300u, 36139u, u_input.a), vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, false)), ~var_0.a ^ global3.a.a), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 63446u, u_input.a) | _wgslsmith_mod_u32(63058u, 2021u), 1u, ~(~43844u), _wgslsmith_dot_vec4_u32(global3.a.a, vec4<u32>(global3.a.a.x, 26922u, u_input.a, var_0.a.x))), global3.a.a & firstTrailingBit(~vec4<u32>(4294967295u, 85814u, 0u, 51660u))) | vec4<u32>(abs(_wgslsmith_dot_vec3_u32(abs(global3.a.a.ywx), abs(vec3<u32>(38532u, var_0.a.x, global3.a.a.x)))), 1u, 76801u, ~(~reverseBits(1u)));
}

fn func_4(arg_0: Struct_4) -> u32 {
    global2 = Struct_2(global2.a);
    global1 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.c)) + _wgslsmith_f_op_f32(round(-155f))))) * -211f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(ceil(-1329f))))));
    global2 = Struct_2(global2.a);
    let var_1 = global2.a.a;
    return _wgslsmith_mult_u32(abs((110186u | global3.a.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(55196u, 32322u, 4294967295u), arg_0.a.a.yww) % 32u)) << (countOneBits(arg_0.a.a.x) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(global3.a.a.x, arg_0.a.a.x)) >> (_wgslsmith_dot_vec2_u32(arg_0.a.a.xx, func_2(global2.a, global2.a.b, global2.a.a.zz).a.a.xw) % 32u), 10056u, global3.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(Struct_1(global2.a.a, _wgslsmith_f_op_f32(-global2.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_f_op_f32(round(-1127f))), 312f))));
    global2 = Struct_2(Struct_1(select(vec4<bool>(any(global2.a.a.zx), true, false, global2.a.a.x), !(!global2.a.a), global2.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.c), global2.a.c))), 228f));
    global4 = vec2<i32>(u_input.b.x >> (4986u % 32u), u_input.b.x);
    global2 = Struct_2(global2.a);
    global3 = global1[_wgslsmith_index_u32(func_4(Struct_4(Struct_3(func_3()))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, u_input.b.x, vec2<u32>(global3.a.a.x, 1u), global2.a.b);
}

