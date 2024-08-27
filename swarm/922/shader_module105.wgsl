struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<u32, 9>;

var<private> global2: array<vec3<u32>, 1>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = select(!(!vec2<bool>(arg_0.d.c.x < arg_0.a, global0.x)), vec2<bool>(false, true), vec2<bool>(true, !all(select(vec3<bool>(global0.x, true, global3.b), vec3<bool>(global3.b, arg_0.c, global3.b), vec3<bool>(false, false, true)))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(254f - global3.c.x), select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 4294967295u, 35373u) >> (vec4<u32>(arg_0.b, 39761u, u_input.a, 33876u) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52440u, 9u)], 9u)], 9u)], 9u)], 0u, 9934u, 1u)), firstLeadingBit(vec4<u32>(0u, arg_0.b, 4294967295u, u_input.a))), 9u)], firstLeadingBit(global1[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(32084u, global1[_wgslsmith_index_u32(u_input.a, 9u)]), 9u)]), (all(vec4<bool>(global3.b, arg_0.c, global3.b, true)) && (true | global0.x)) | !all(vec4<bool>(false, global3.b, global0.x, global0.x))), !global0.x, arg_0.d);
    let var_1 = arg_0.d;
    let var_2 = Struct_1(vec4<f32>(884f, 1034f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.c.x)), -1000f)), any(select(vec3<bool>(global0.x, select(global3.b, true, var_0.d.b), var_1.b), !(!vec3<bool>(var_1.b, true, false)), true != global0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d.a) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(766f, var_0.d.c.x, 1352f, -841f), global3.a))))));
    let var_3 = select(vec2<bool>(!(global0.x || false), select(var_1.b, (4294967295u >> (var_0.b % 32u)) <= var_0.b, global0.x)), vec2<bool>(true, true), select(!vec2<bool>(any(vec4<bool>(false, var_0.c, false, false)), true), vec2<bool>(false, var_2.b), !vec2<bool>(false, select(false, global0.x, global3.b))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + 782f) * _wgslsmith_f_op_f32(-var_0.a)))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~2147483647i;
    global3 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-279f, _wgslsmith_f_op_f32(func_3(Struct_2(-1047f, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74536u, 9u)], 9u)], 9u)], global0.x, Struct_1(vec4<f32>(global3.c.x, global3.c.x, -1000f, 2692f), global0.x, vec4<f32>(global3.a.x, global3.c.x, 1000f, 1712f))))))), 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.c.x * global3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x + -2429f) * _wgslsmith_f_op_f32(func_3(Struct_2(global3.a.x, 83888u, global0.x, Struct_1(global3.c, global0.x, vec4<f32>(global3.c.x, global3.a.x, global3.c.x, 389f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(863f + -1744f))), 359f), _wgslsmith_sub_u32(u_input.a, u_input.a) > 69234u, vec4<f32>(-376f, global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1027f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.x, global3.c.x)) * _wgslsmith_f_op_f32(-global3.a.x))))));
    let var_1 = _wgslsmith_div_i32(~u_input.b.x, -(~_wgslsmith_div_i32(-5489i, ~u_input.b.x)));
    global2 = array<vec3<u32>, 1>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.x, -213f))), u_input.a, any(!vec2<bool>(false, global0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(global3.c)), global3.b | global0.x, _wgslsmith_f_op_vec4_f32(global3.c - vec4<f32>(global3.a.x, 201f, 295f, global3.c.x)))))), ~(~max(31210u >> (0u % 32u), 0u)), all(select(vec3<bool>(true, true, true), !vec3<bool>(global3.b, global3.b, true), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(11304u, global1[_wgslsmith_index_u32(64971u, 9u)]), 9u)] > (u_input.a & 70663u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global3.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.a + vec4<f32>(global3.c.x, -257f, global3.a.x, 1294f)))), global3.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, global3.a.x, global3.a.x, -1692f) - vec4<f32>(961f, -1424f, -186f, global3.a.x)) - vec4<f32>(-189f, global3.a.x, -572f, global3.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global3.c))), vec4<bool>(1867u < global1[_wgslsmith_index_u32(33731u, 9u)], all(vec4<bool>(true, false, false, global3.b)), true || global0.x, global0.x)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(961f, global3.a.x, -1000f, 1765f)))))) * _wgslsmith_f_op_vec4_f32(exp2(global3.c))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 9u)] & u_input.a, 53853u, 66843u), 61113u, u_input.a) < ~u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.d.a))));
}

fn func_1() -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.b.x), ~(-u_input.b.x)), _wgslsmith_div_vec2_i32(vec2<i32>(~0i, u_input.b.x), u_input.b.xw));
    global1 = array<u32, 9>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * _wgslsmith_f_op_f32(max(-284f, global3.a.x))), u_input.a, global3.b, func_1());
    let var_2 = var_1;
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1112f);
    let x = u_input.a;
    s_output = StorageBuffer(max(-9641i, firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.c.x, -526f))), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(71835u, 82693u, 0u, var_2.b) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(56295u, 9u)], 0u, u_input.a, 26240u), vec4<u32>(var_1.b, 3339u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9870u, 9u)], 9u)], 0u)), firstLeadingBit(vec4<u32>(10537u, 0u, 20202u, var_2.b) | vec4<u32>(var_2.b, 10888u, global1[_wgslsmith_index_u32(0u, 9u)], u_input.a)), countOneBits(vec4<u32>(0u, 4294967295u, 0u, 104175u) << (vec4<u32>(1u, var_1.b, var_1.b, 32412u) % vec4<u32>(32u)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, 2513u, 94689u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 0u, 39884u, 17884u), vec4<u32>(1u, 1u, 1u, 18675u)))), vec2<i32>(0i, u_input.b.x));
}

