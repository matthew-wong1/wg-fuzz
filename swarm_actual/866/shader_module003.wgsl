struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<vec3<bool>, 29>();
    let var_0 = vec3<bool>(any(vec2<bool>(any(global0[_wgslsmith_index_u32(13191u, 29u)]), false)), !(~(~u_input.c) <= _wgslsmith_add_u32(max(u_input.a, u_input.a), u_input.a)), arg_0);
    global0 = array<vec3<bool>, 29>();
    var var_1 = u_input.b;
    let var_2 = !global0[_wgslsmith_index_u32(~43617u, 29u)];
    return false;
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = array<vec3<bool>, 29>();
    var var_0 = Struct_4(vec4<bool>(false, false, true, !func_3(false) | all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), Struct_1(27807i <= abs(u_input.b.x)));
    global0 = array<vec3<bool>, 29>();
    var var_1 = any(var_0.a.ww);
    let var_2 = vec3<bool>(arg_0.x < _wgslsmith_sub_u32(firstTrailingBit(~u_input.c), abs(~40688u)), var_0.a.x, var_0.a.x || !var_0.a.x);
    return var_2;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    global0 = array<vec3<bool>, 29>();
    var var_0 = arg_0.x;
    let var_1 = Struct_2(select(select(!vec4<bool>(true, true, arg_0.x, false), select(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, true, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), select(vec4<bool>(arg_0.x, true, any(arg_0.xz), arg_0.x || arg_0.x), !select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), false), select(arg_0.x, arg_0.x, true)), any(select(vec3<bool>(arg_0.x, true, false), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, true, false), vec3<bool>(true, false, arg_0.x)), func_2(vec4<u32>(u_input.c, 0u, 4294967295u, 1u))))));
    global0 = array<vec3<bool>, 29>();
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-490f))), _wgslsmith_f_op_f32(f32(-1f) * -391f), !var_1.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(603f)) * -293f) - -1640f) + _wgslsmith_f_op_f32(f32(-1f) * -724f)) + -490f);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    global0 = array<vec3<bool>, 29>();
    let var_0 = 606f;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(267f)) + var_0) > _wgslsmith_div_f32(var_0, arg_0.x);
    var var_3 = arg_1;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 29>();
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1704f, 1124f, -269f) * vec3<f32>(-258f, -103f, -1179f)) + vec3<f32>(-107f, 380f, 172f))) * vec3<f32>(845f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(117170u, 29u)], -2147483647i)), _wgslsmith_f_op_f32(round(-1076f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1946f)) + _wgslsmith_f_op_f32(trunc(-955f))))), Struct_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), func_2(vec4<u32>(11958u, 66658u, u_input.a, 1u)).x), select(65856u >= u_input.c, func_2(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)).x, true)), Struct_1(true)), vec4<bool>(true || (any(vec2<bool>(true, false)) | true), any(vec2<bool>(false, true)) | any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false)), all(vec2<bool>(false, func_3(true))), true), (u_input.a ^ select(firstLeadingBit(u_input.c), u_input.a, all(global0[_wgslsmith_index_u32(u_input.a, 29u)]))) & ~(~(~u_input.c)));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-303f, 118f, _wgslsmith_f_op_f32(step(852f, 167f))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-391f * -299f))), _wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(f32(-1f) * -1127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(163f * 1314f) - 1299f))), Struct_4(vec4<bool>(var_0.a, all(!vec4<bool>(false, true, var_0.a, var_0.a)), true, !(21129u < u_input.a)), Struct_1(any(select(global0[_wgslsmith_index_u32(18751u, 29u)], global0[_wgslsmith_index_u32(59311u, 29u)], vec3<bool>(var_0.a, false, var_0.a))))), vec4<bool>(false, true, !var_0.a, true), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 29u)], i32(-1i) * -52957i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-193f))))))));
    let var_3 = _wgslsmith_div_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b.x, -u_input.b.x, max(u_input.b.x, 1i), i32(-1i) * -1i))), vec4<i32>(countOneBits(u_input.b.x), -57804i, -40565i, -39121i) >> (vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a | 8401u), 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)));
    let var_4 = func_2(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 14282u), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(select(select(~u_input.c, u_input.c, var_4.x == var_4.x), _wgslsmith_mult_u32(u_input.a & 14613u, 53865u), all(!var_4.zy)), _wgslsmith_mult_u32(min(u_input.a >> (1u % 32u), u_input.a & u_input.a), u_input.a << (~u_input.c % 32u)), min(_wgslsmith_sub_u32(firstTrailingBit(0u), u_input.c), ~(~u_input.a))), 22848u);
}

