struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(550f, 30505u);

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    global0 = Struct_4(_wgslsmith_f_op_f32(arg_1.b.b.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, -895f))) + 1000f)), 40343u);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-695f, global0.a, -602f, arg_1.a), arg_1.b.a.a)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f), _wgslsmith_div_f32(520f, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1222f, global0.a)), global0.a, -458f)), firstLeadingBit(_wgslsmith_clamp_i32(1i, arg_1.b.a.c, 1i)), firstTrailingBit(0i), !arg_1.b.b.d, ~firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(33032u, arg_1.b.b.e.x), ~global0.b, global0.b, global0.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1523f))), 1295f, _wgslsmith_f_op_f32(min(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 742f))))));
    global1 = array<Struct_1, 11>();
    var var_2 = var_0.c;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, arg_1.b.b.a.x, var_0.a.x, 1185f) - vec4<f32>(global0.a, 1317f, global0.a, 834f)), _wgslsmith_f_op_vec4_f32(select(var_0.a, arg_1.b.a.a, vec4<bool>(false, arg_1.b.b.d.x, arg_1.b.b.d.x, false))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.a.x, var_1.x, var_0.a.x, 876f)), vec4<f32>(-357f, -521f, global0.a, var_1.x))))), 1i << (1u % 32u), reverseBits(firstLeadingBit(abs(u_input.a))), !arg_0.xw, _wgslsmith_sub_vec4_u32(arg_1.b.a.e << (var_0.e % vec4<u32>(32u)), vec4<u32>(arg_1.b.a.e.x, var_0.e.x, arg_1.b.b.e.x, 9252u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_0.a.ww, vec2<f32>(global0.a, 1000f)), vec2<f32>(_wgslsmith_div_f32(arg_1.a, 569f), _wgslsmith_f_op_f32(arg_1.a * 875f))))) - vec2<f32>(-1728f, _wgslsmith_f_op_f32(716f * arg_0.a.x)));
    let var_1 = true;
    global0 = Struct_4(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f * var_0.x)) + -121f)), 71113u);
    global0 = arg_1;
    let var_2 = false;
    return arg_0.a.wx;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = 4294967295u;
    let var_1 = arg_1.x;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, ~1u ^ var_1), _wgslsmith_sub_u32(min(var_1 << (4294967295u % 32u), var_1), ~global0.b) ^ ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.x, var_1, 30330u), vec3<u32>(global0.b, 0u, var_1), false), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, global0.b, global0.b), vec3<u32>(35386u, 0u, 37376u)))), 11u)];
    var_0 = var_1;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a))), ~1u & (abs(var_1) ^ min(var_2.e.x, global0.b)));
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~abs(~var_2.e.x)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_4 {
    return func_4(_wgslsmith_f_op_vec2_f32(func_3(func_2(select(vec4<bool>(false, true, arg_2.b.d.x, arg_1.x), select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(false, arg_1.x, false, true), arg_1.x), vec4<bool>(arg_2.b.d.x, arg_2.b.d.x, true, arg_1.x)), Struct_3(_wgslsmith_f_op_f32(540f - arg_2.b.a.x), arg_2)), arg_0)), arg_2.b.e, u_input.b.xz);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_5) -> Struct_1 {
    var var_0 = Struct_3(219f, Struct_2(func_2(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), Struct_3(func_2(vec4<bool>(true, false, false, true), Struct_3(939f, Struct_2(Struct_1(vec4<f32>(133f, global0.a, global0.a, arg_1.a), -1i, arg_2.a.x, vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, arg_1.b, 39324u)), global1[_wgslsmith_index_u32(arg_1.b, 11u)]))).a.x, Struct_2(Struct_1(vec4<f32>(154f, arg_1.a, arg_1.a, global0.a), -7543i, arg_2.a.x, vec2<bool>(true, false), vec4<u32>(1u, global0.b, 4294967295u, 4294967295u)), global1[_wgslsmith_index_u32(30719u, 11u)]))), func_2(vec4<bool>(true, true, true, true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(Struct_1(vec4<f32>(global0.a, global0.a, -718f, -1280f), arg_0.x, 0i, vec2<bool>(true, true), vec4<u32>(arg_1.b, arg_2.b, 32770u, arg_2.b)), Struct_1(vec4<f32>(global0.a, arg_1.a, 1837f, global0.a), 31260i, arg_2.a.x, vec2<bool>(true, false), vec4<u32>(arg_1.b, arg_2.b, 4294967295u, global0.b)))))));
    var_0 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global0.a, global0.a, global0.a)), _wgslsmith_div_vec4_f32(var_0.b.a.a, var_0.b.b.a)), arg_2.a.x, 0i, vec2<bool>(all(vec3<bool>(true, false, var_0.b.a.d.x)), var_0.b.b.d.x), firstTrailingBit(reverseBits(var_0.b.b.e))), var_0.b.a));
    var var_1 = Struct_5(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(57195i, var_0.b.a.b), arg_2.a, arg_2.a)), abs(min(~var_0.b.a.e.x, firstLeadingBit(func_1(arg_1, vec3<bool>(false, false, var_0.b.a.d.x), Struct_2(global1[_wgslsmith_index_u32(arg_2.b, 11u)], Struct_1(var_0.b.b.a, 37644i, arg_2.a.x, var_0.b.a.d, vec4<u32>(arg_1.b, 1u, 43929u, 41245u))), var_0.b.b.a.zxw).b))));
    var_1 = Struct_5(-arg_2.a, 9419u);
    global1 = array<Struct_1, 11>();
    return Struct_1(vec4<f32>(-846f, global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.b.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(arg_1.a + var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)))), 0i, 1i, !select(!(!var_0.b.b.d), func_2(select(vec4<bool>(true, false, var_0.b.b.d.x, var_0.b.b.d.x), vec4<bool>(true, false, var_0.b.a.d.x, var_0.b.b.d.x), var_0.b.a.d.x), Struct_3(global0.a, Struct_2(var_0.b.b, global1[_wgslsmith_index_u32(global0.b, 11u)]))).d, func_2(vec4<bool>(false, false, var_0.b.b.d.x, var_0.b.a.d.x), Struct_3(-327f, var_0.b)).d), vec4<u32>(min(global0.b, 35226u), reverseBits(global0.b), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(18969u, var_0.b.b.e.x, arg_1.b, 4294967295u), var_0.b.a.e)), _wgslsmith_sub_u32(var_0.b.a.e.x, var_0.b.b.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    let var_0 = func_5(vec4<i32>(i32(-1i) * -13268i, min(u_input.b.x, firstLeadingBit(u_input.b.x)) ^ u_input.a, u_input.a, _wgslsmith_mod_i32(u_input.c, ~(~(-2147483647i)))), func_1(Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -934f), global0.a)), global0.b), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), Struct_2(global1[_wgslsmith_index_u32(~8793u, 11u)], global1[_wgslsmith_index_u32(countOneBits(~4294967295u), 11u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, -427f)), vec3<f32>(_wgslsmith_f_op_f32(247f - global0.a), global0.a, _wgslsmith_f_op_f32(737f - global0.a))))), Struct_5(u_input.b.xx, ~global0.b));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_4(vec2<f32>(global0.a, global0.a), ~var_0.e & ~vec4<u32>(var_0.e.x, var_0.e.x, 75259u, 56170u), u_input.b.xx).a * var_0.a.x), 32396u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-func_2(select(vec4<bool>(var_0.d.x, true, var_0.d.x, false), select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, false, true, true), vec4<bool>(var_0.d.x, true, true, var_0.d.x)), select(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true), var_0.d.x)), Struct_3(_wgslsmith_f_op_f32(sign(var_0.a.x)), Struct_2(var_0, var_0))).a), -1i, var_0.c, vec2<bool>(var_0.d.x, var_0.d.x), vec4<u32>(~var_1.b, min(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.e.x, 8747u), ~global0.b), ~func_5(vec4<i32>(u_input.c, u_input.a, u_input.a, var_0.c), Struct_4(var_1.a, global0.b), Struct_5(vec2<i32>(-1i, 2147483647i), 885u)).e.x), var_0.e.x, ~(~4294967295u)));
    var var_3 = var_2;
    let var_4 = abs(~(-reverseBits(~var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-530f, reverseBits(-9002i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.a.ww)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 1711f) - var_0.a.yx)), var_2.a.zx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1994f, var_1.a), var_0.a.yy, var_0.d))))), var_3.a);
}

