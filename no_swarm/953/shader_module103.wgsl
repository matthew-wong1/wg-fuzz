struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-1432f, 966f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)) - vec2<f32>(arg_0.a, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1159f))))), _wgslsmith_f_op_f32(578f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-496f - 974f), -919f, !arg_1.b.x)))), select(select(global1.c.a, global1.c.a, !arg_1.b.zy), !(!(!arg_0.c.a)), !arg_1.b.yy)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, -392f) + _wgslsmith_div_vec2_f32(vec2<f32>(110f, 196f), vec2<f32>(1000f, arg_0.a))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), -848f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1387f, 164f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, global1.a), vec2<f32>(global1.a, -829f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1061f, global2.x) + vec2<f32>(global1.a, 885f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global1.a))) - vec2<f32>(global2.x, 840f))), arg_0.c.a)));
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(3538u, ~(~25819u)), vec2<u32>(46115u, 1u));
    var_0 = 1152u;
    let var_1 = _wgslsmith_clamp_u32(17329u, ~(~4294967295u), _wgslsmith_add_u32(max(46063u, ~1u), ~(~1u)));
    return select(vec3<bool>(all(vec4<bool>(any(vec3<bool>(false, global1.c.c, arg_2)), arg_1.b.x, arg_0.b, global1.a <= -1000f)), true, arg_0.c.b && (!arg_2 | all(arg_1.a.a))), arg_1.b, !(!vec3<bool>(global1.c.c, arg_1.b.x, arg_0.c.b)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(!vec2<bool>(all(vec2<bool>(global1.c.a.x, arg_1.a.x)), all(vec4<bool>(global1.c.a.x, global1.c.b, false, true))), true, arg_1.a.x, vec3<i32>(u_input.a, reverseBits(-5369i), global1.c.d.x)), select(vec3<bool>(all(!vec4<bool>(arg_1.a.x, global1.c.c, global1.b, true)), true, !(!global1.c.c)), select(!(!vec3<bool>(global1.b, global1.c.b, arg_1.b)), !select(vec3<bool>(global1.c.c, global1.c.c, true), vec3<bool>(true, false, global1.b), vec3<bool>(arg_1.a.x, arg_1.c, arg_1.a.x)), reverseBits(u_input.a) <= -13491i), func_3(Struct_3(-1668f, any(global1.c.a), global1.c), Struct_2(Struct_1(global1.c.a, arg_1.a.x, arg_1.b, vec3<i32>(-1i, u_input.b.x, u_input.b.x)), !vec3<bool>(global1.b, global1.b, true), global1.c.a.x && false), arg_1.b)), global1.c.c);
    let var_1 = firstLeadingBit(vec2<i32>(~(~reverseBits(-41420i)), arg_1.d.x));
    global2 = arg_0.zy;
    var_0 = Struct_2(Struct_1(vec2<bool>(false, true), false, true, vec3<i32>(var_0.a.d.x, abs(global1.c.d.x), ~(~arg_1.d.x))), vec3<bool>(!all(!vec4<bool>(false, global1.b, var_0.a.a.x, global1.b)), all(select(vec4<bool>(global1.b, true, false, false), !vec4<bool>(arg_1.b, var_0.a.c, global1.c.c, false), vec4<bool>(false, false, var_0.b.x, arg_1.c))), !select(any(global1.c.a), true | var_0.c, false)), true & any(vec4<bool>(!var_0.b.x, arg_1.a.x, !var_0.a.a.x, func_3(Struct_3(-826f, true, arg_1), Struct_2(var_0.a, vec3<bool>(false, global1.b, arg_1.c), arg_1.c), arg_1.b).x)));
    let var_2 = any(vec2<bool>(true, true));
    return (arg_3.xx >> ((~arg_3.xx & arg_3.xy) % vec2<u32>(32u))) & abs(~(vec2<u32>(arg_3.x, arg_3.x) >> (~arg_3.yy % vec2<u32>(32u))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.b.x, -u_input.a, ~global1.c.d.x);
    var var_1 = (~vec2<u32>(1u, 1u) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 12407u, 4294967295u, 68041u), vec4<u32>(4294967295u, 35663u, 0u, 21641u)), abs(~21026u)) % vec2<u32>(32u))) & ~countOneBits(~abs(vec2<u32>(14249u, 62718u)));
    var_1 = ~(_wgslsmith_mod_vec2_u32(countOneBits(func_2(vec3<f32>(548f, global1.a, -1000f), Struct_1(global1.c.a, global1.c.b, true, vec3<i32>(u_input.a, u_input.a, -1i)), global1.a, vec3<u32>(4294967295u, var_1.x, var_1.x))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(var_1.x, 1u))) & ~vec2<u32>(_wgslsmith_mult_u32(115805u, var_1.x), ~28744u));
    var var_2 = _wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(var_1.x, 22725u))), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), reverseBits(23980u)), vec2<u32>(4294967295u & var_1.x, var_1.x)));
    var_2 = _wgslsmith_sub_u32(1u, abs(~_wgslsmith_mult_u32(1u, min(var_1.x, 1u))));
    return global1.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> vec4<bool> {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-global2.x), 401f);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_div_f32(-1233f, _wgslsmith_f_op_f32(149f - global1.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, _wgslsmith_f_op_f32(min(-1979f, global1.a)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(-global1.a)))));
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f + 1000f) - _wgslsmith_f_op_f32(max(-622f, 1135f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global2.x) * _wgslsmith_f_op_f32(ceil(1567f)))))), vec2<f32>(436f, -623f), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, 563f, arg_0)) * _wgslsmith_div_f32(global2.x, -407f)))).a));
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(1014f, global2.x), global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a)))) * _wgslsmith_f_op_f32(round(1389f)))));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(-arg_1.a.d.xx, select(vec2<i32>(arg_1.a.d.x, -2147483647i), _wgslsmith_clamp_vec2_i32(var_0.d.yx, vec2<i32>(0i, 1770i), vec2<i32>(-36894i, 1i)), true) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!global1.c.a.x, Struct_2(func_1(_wgslsmith_f_op_f32(-global2.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.c.b, true, global1.b), vec3<bool>(true, true, global1.b), vec3<bool>(true, global1.c.c, global1.c.b)), global1.c.a.x), !select(vec3<bool>(global1.c.b, true, global1.c.c), vec3<bool>(false, global1.c.c, global1.c.a.x), true)), global1.c.c), vec4<bool>(func_3(Struct_3(_wgslsmith_div_f32(global1.a, global2.x), true, func_1(global2.x)), Struct_2(Struct_1(vec2<bool>(global1.b, global1.c.c), true, global1.b, vec3<i32>(u_input.b.x, 1i, 1i)), vec3<bool>(global1.c.c, true, false), false), global1.c.c).x, any(select(select(vec2<bool>(true, false), vec2<bool>(global1.b, global1.b), global1.b), global1.c.a, true)), global1.c.a.x, true));
    let var_1 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-485f, -646f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a, 140f, -1155f))))) * vec3<f32>(1f, 1f, 1f)))));
    let var_3 = 189f;
    let var_4 = max(vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(~firstTrailingBit(78485u), max(37262u, 39585u), min(func_2(var_2, global1.c, 1406f, vec3<u32>(1u, 38488u, 1u)).x, 1u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 4294967295u, 1454u, 4294967295u), vec4<u32>(81069u, 4294967295u, 7936u, 0u), vec4<bool>(true, true, global1.b, true)), select(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(114637u, 4294967295u, 4294967295u, 0u), global1.c.c))), ~min(~firstTrailingBit(vec4<u32>(101252u, 4294967295u, 4294967295u, 16115u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(112003u, 4294967295u, 19393u, 0u), vec4<u32>(1u, 29415u, 1u, 4294967295u)), reverseBits(4294967295u), _wgslsmith_add_u32(55917u, 40524u), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

