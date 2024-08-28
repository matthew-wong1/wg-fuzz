struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(21463i, 11937i, i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 1i, 29097i));

var<private> global3: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global4: array<vec3<i32>, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = ~countOneBits(6738i);
    global3 = u_input.a.wxw;
    let var_2 = 2095f;
    global2 = global0[_wgslsmith_index_u32(abs(firstLeadingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20518u, u_input.a.x), u_input.a.xxw)))) >> ((54072u ^ ~_wgslsmith_mod_u32(countOneBits(4294967295u), firstLeadingBit(u_input.a.x))) % 32u), 14u)];
    return all(vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(false, false, true))), true));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, any(vec3<bool>(true, func_3(), true & any(vec3<bool>(true, true, true)))), any(vec2<bool>(true, true)) || (0i <= global1.a.x), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    var var_1 = global0[_wgslsmith_index_u32(28303u, 14u)];
    global1 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 14u)];
    var var_2 = global3.zy;
    global3 = ~(u_input.a.zyx << ((u_input.a.xyy | _wgslsmith_mult_vec3_u32(u_input.a.wxx, abs(u_input.a.xyw))) % vec3<u32>(32u)));
    return global0[_wgslsmith_index_u32(global3.x << (var_2.x % 32u), 14u)];
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global3 = ~u_input.a.xwy;
    global4 = array<vec3<i32>, 27>();
    global1 = Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    let var_0 = global1.a;
    global1 = func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), -396f, 1374f, 1f))));
    return Struct_1(global2.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -1501f, 1708f, -156f)) + vec4<f32>(135f, -1758f, -1185f, -1300f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, 555f, 471f, 1464f) - vec4<f32>(1184f, 673f, -1128f, -418f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_f_op_f32(trunc(706f)), _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(f32(-1f) * -659f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, -1783f, -934f, 1350f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-799f, 921f, 1000f, -168f)))))));
    let var_1 = vec4<u32>(arg_0.x, reverseBits(0u), (_wgslsmith_add_u32(u_input.a.x, select(40411u, u_input.a.x, true)) ^ select(min(26949u, 17118u), u_input.a.x, true)) ^ arg_0.x, _wgslsmith_sub_u32(arg_0.x, abs(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 71855u, 1u), vec3<u32>(arg_0.x, global3.x, u_input.a.x)), 1u, true))));
    global3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.a.x), abs(1u), 0u), select(~u_input.a.xwx, max(u_input.a.wyx, ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 0u, arg_0.x), vec3<u32>(var_1.x, 46902u, 12856u))), vec3<bool>(true, true, any(vec3<bool>(false, false, false)))), vec3<u32>(~var_1.x, arg_0.x, arg_0.x << (u_input.a.x % 32u)));
    let var_2 = ~_wgslsmith_mult_u32(~(~24549u & max(36661u, u_input.a.x)), 44118u);
    let var_3 = true;
    return Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(max(global1.a.x, ~arg_2.a.x), _wgslsmith_div_i32(~global2.a.x, _wgslsmith_div_i32(var_0.a.x, arg_2.a.x)), firstLeadingBit(firstTrailingBit(17804i))), ~(-(~vec3<i32>(var_0.a.x, global2.a.x, u_input.b)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-205f * 1f)));
    var var_1 = countOneBits(firstTrailingBit(global1.a.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2193f, _wgslsmith_f_op_f32(exp2(var_0))))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(801f, _wgslsmith_f_op_f32(-218f - _wgslsmith_f_op_f32(f32(-1f) * -3237f)))) + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f)))));
    let var_4 = select(select(vec4<bool>(true, !any(vec3<bool>(true, true, false)), all(vec2<bool>(false, false)), true), vec4<bool>((global1.a.x & global2.a.x) >= abs(global1.a.x), false, true, !all(vec3<bool>(true, true, false))), false | (_wgslsmith_f_op_f32(-var_0) == -648f)), vec4<bool>(true, true, true, true), 0u < global3.x);
    return Struct_1(vec3<i32>(u_input.b ^ 0i, abs(~40508i), arg_1.a.x | ~arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~u_input.b, global2.a.x, ~u_input.b >> (u_input.a.x % 32u), global1.a.x);
    var var_1 = !vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false))) & !all(vec3<bool>(true, true, true)), abs(0u) <= global3.x, true);
    let var_2 = global2.a.xz;
    global3 = vec3<u32>(global3.x, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, u_input.a.x, global3.x), vec4<u32>(global3.x, global3.x, 1u, global3.x)) | 52045u), ~global3.x);
    let var_3 = func_5(Struct_1(-(~vec3<i32>(u_input.b, global2.a.x, -1i))), func_4(vec3<u32>(~u_input.a.x, reverseBits(12429u), global3.x), global0[_wgslsmith_index_u32(~u_input.a.x, 14u)], func_1(-931f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-351f, 1078f, -1084f, 1057f))))), Struct_1(select(vec3<i32>(1i, global1.a.x, u_input.b), var_0.yyz, var_1.x)))));
    let var_4 = 0u >> (u_input.a.x % 32u);
    global0 = array<Struct_1, 14>();
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f + 1f)), 764f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(f32(-1f) * -650f)), -285f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(777f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1025f * -586f), _wgslsmith_f_op_f32(1242f + 2579f))), -1394f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-323f + -998f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(621f, -1058f, -1000f, -478f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 243f, -1284f, -2302f) + vec4<f32>(251f, -1571f, -1030f, 325f)), false)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1712f, 545f, 1273f, -237f))))));
    var_1 = !vec3<bool>(var_1.x | !(!var_1.x), var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1069f)), _wgslsmith_f_op_f32(-var_5.x), 927f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_5.yyz)) + vec3<f32>(1f, _wgslsmith_f_op_f32(round(1704f)), _wgslsmith_div_f32(-1029f, -363f))))));
}

