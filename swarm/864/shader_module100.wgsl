struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: vec2<f32> = vec2<f32>(-1293f, -996f);

var<private> global3: array<u32, 23> = array<u32, 23>(1u, 36144u, 4294967295u, 1u, 25748u, 25755u, 4294967295u, 4294967295u, 0u, 6279u, 10148u, 0u, 1u, 78506u, 4294967295u, 3918u, 46404u, 31414u, 49406u, 34710u, 15385u, 55922u, 0u);

var<private> global4: array<u32, 25>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) - _wgslsmith_f_op_f32(-global2.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(2251f, _wgslsmith_f_op_f32(-242f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - -1000f)))), select(any(vec2<bool>(false, false)) == true, true, select(false, false, all(vec2<bool>(true, true)))))), select(vec4<bool>(true, true, u_input.e.x < u_input.a, any(vec2<bool>(false, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)))), !(!vec2<bool>(0u <= u_input.d.x, all(vec3<bool>(false, false, true)))), vec2<i32>(~u_input.c, u_input.e.x), min(u_input.c, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, 2147483647i), vec3<i32>(1i, 0i, 2092i)))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f - -372f))), global0.a));
    let var_2 = countOneBits(-967i);
    let var_3 = Struct_1(global0.b, select(vec4<bool>(true, any(select(vec3<bool>(var_1.b.x, true, false), vec3<bool>(var_1.b.x, var_1.b.x, false), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26354u, 25u)], 3u)])), true, (var_1.a < 724f) == true), vec4<bool>(var_1.b.x, any(!var_1.b), _wgslsmith_f_op_f32(select(var_0, 271f, var_1.c.x)) > _wgslsmith_f_op_f32(-var_0), any(!vec3<bool>(var_1.b.x, var_1.c.x, true))), -677f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1010f)) - 425f)), !(!vec2<bool>(false || var_1.b.x, var_1.c.x)), reverseBits(abs(_wgslsmith_div_vec2_i32(var_1.d, -u_input.e))), abs(_wgslsmith_clamp_i32(var_2, var_2, 2658i)));
    return 239f;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_f32(max(-158f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2458f * -1417f) * global2.x))))), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1595f * global0.a)));
    global2 = _wgslsmith_f_op_vec2_f32(min(arg_1.yx, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-180f * 900f))), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(max(-1387f, _wgslsmith_f_op_f32(-global0.c))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2359f, global2.x), _wgslsmith_f_op_f32(global2.x * global2.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1234f), true)), global0.a) + _wgslsmith_f_op_vec2_f32(floor(arg_1.xz))));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -310f) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2588f, 617f))), _wgslsmith_div_f32(global0.c, -1098f))))));
    let var_0 = 22315u & abs(_wgslsmith_sub_u32(1u, ~global3[_wgslsmith_index_u32(arg_2, 23u)] | arg_2));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 1488f) - _wgslsmith_f_op_f32(-707f + 770f))))), _wgslsmith_f_op_f32(f32(-1f) * -1163f));
}

fn func_1(arg_0: u32) -> u32 {
    global4 = array<u32, 25>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1793f, -150f) - vec2<f32>(2562f, 310f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-378f, global0.b), vec2<f32>(-1334f, global0.a))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-417f, global2.x), vec2<f32>(global2.x, -1875f), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1286f, 402f) - vec2<f32>(global2.x, 249f)), any(vec4<bool>(true, true, true, true)))))));
    global3 = array<u32, 23>();
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(611f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-2147483647i, vec3<f32>(global2.x, 845f, global0.a), u_input.b)) + _wgslsmith_f_op_f32(trunc(global2.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(round(2480f))), global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1750f, global0.a))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -373f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(266f, -1900f) - vec2<f32>(1113f, 1123f))))));
    global1 = array<vec3<bool>, 3>();
    return _wgslsmith_dot_vec3_u32(min((u_input.d.wzx >> (min(vec3<u32>(8238u, 30576u, 53806u), u_input.d.xwx) % vec3<u32>(32u))) | select(~u_input.d.ywz, u_input.d.yww, select(true, true, false)), _wgslsmith_mod_vec3_u32(u_input.d.xzx, vec3<u32>(min(global4[_wgslsmith_index_u32(0u, 25u)], 8603u), u_input.d.x & 0u, global3[_wgslsmith_index_u32(~arg_0, 23u)]))), vec3<u32>(abs(abs(global3[_wgslsmith_index_u32(49923u, 23u)])), max(u_input.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d.x, arg_0), global4[_wgslsmith_index_u32(~u_input.b, 25u)])), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 25u)], 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 3>();
    let var_0 = Struct_2(global0.b, _wgslsmith_f_op_f32(-137f + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -540f))));
    var var_1 = func_1(select(~global3[_wgslsmith_index_u32(49021u, 23u)], 4294967295u, true));
    global1 = array<vec3<bool>, 3>();
    global2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yxw, firstLeadingBit(vec2<i32>(u_input.a, reverseBits(u_input.c)) | u_input.e));
}

