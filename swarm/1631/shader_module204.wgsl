struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(59572u, 4143u), vec2<u32>(4294967295u, 11002u), vec2<u32>(1u, 11599u), vec2<u32>(0u, 30734u), vec2<u32>(8457u, 55805u), vec2<u32>(34089u, 0u), vec2<u32>(75455u, 45506u), vec2<u32>(1u, 40640u), vec2<u32>(50425u, 0u), vec2<u32>(40967u, 22032u), vec2<u32>(8011u, 18091u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(30038u, 21620u), vec2<u32>(0u, 3696u), vec2<u32>(0u, 19042u), vec2<u32>(21749u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(6515u, 23644u), vec2<u32>(66624u, 45663u), vec2<u32>(1u, 1u));

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 22>();
    global1 = select(!(!vec4<bool>(all(global1.yxx), !global1.x, true, false)), !vec4<bool>(true, all(vec3<bool>(true, global1.x, false)), true, any(!global1.yx)), true);
    var var_0 = !global1.x;
    var_0 = !(!(!all(vec4<bool>(false, false, global1.x, true))));
    let var_1 = ~0u;
    return all(vec4<bool>(true, true, global1.x, global1.x));
}

fn func_2() -> bool {
    var var_0 = Struct_1(abs(vec4<u32>(u_input.a.x >> (4294967295u % 32u), 44886u, 1u, _wgslsmith_sub_u32(u_input.b.x, u_input.a.x)) | firstLeadingBit(reverseBits(vec4<u32>(19398u, 59206u, 30913u, u_input.a.x)))), select(select(select(!vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(true, false, global1.x, true), global1.x), vec4<bool>(true, global1.x, true, any(vec3<bool>(global1.x, global1.x, false))), select(select(vec4<bool>(true, false, true, global1.x), vec4<bool>(true, false, false, global1.x), global1.x), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, false, true), vec4<bool>(false, false, true, global1.x)), !vec4<bool>(true, false, global1.x, false))), vec4<bool>(false, global1.x || any(vec4<bool>(true, false, true, false)), true, global1.x | true), true), u_input.b);
    global1 = vec4<bool>(global1.x, !func_3(), false, all(vec2<bool>(all(!var_0.b), all(var_0.b.zy))));
    let var_1 = select(global1.xw, select(global1.xy, vec2<bool>(true, true), !func_3() && var_0.b.x), all(global1.wzx));
    var_0 = Struct_1(vec4<u32>(var_0.a.x, ~u_input.a.x, ~(~(~0u)), u_input.b.x), select(vec4<bool>(true, true, any(vec3<bool>(var_1.x, var_0.b.x, var_0.b.x)), global1.x), var_0.b, !(!select(var_0.b, vec4<bool>(false, false, false, true), var_0.b))), ~firstLeadingBit(vec4<u32>(u_input.b.x, 0u, var_0.a.x ^ var_0.a.x, _wgslsmith_sub_u32(57999u, u_input.a.x))));
    var_0 = Struct_1(var_0.a, !var_0.b, ~var_0.a);
    return true;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = !vec4<bool>(true, all(!(!global1.xw)), true, func_2() != all(select(vec4<bool>(true, true, false, global1.x), vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(true, true, false, global1.x))));
    var var_0 = Struct_2(global1.x, vec3<f32>(-728f, _wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-835f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
    let var_1 = ~(~1u) >> (~4294967295u % 32u);
    global0 = array<vec2<u32>, 22>();
    var var_2 = Struct_2(any(!select(vec4<bool>(var_0.a, var_0.a, true, false), select(vec4<bool>(var_0.a, global1.x, true, false), vec4<bool>(var_0.a, true, global1.x, true), var_0.a), select(vec4<bool>(false, global1.x, false, true), vec4<bool>(true, global1.x, var_0.a, true), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, 945f, 624f), vec3<f32>(917f, -294f, var_0.b.x)) + vec3<f32>(var_0.c, -1091f, var_0.c)))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(min(-1187f, 1269f)))));
    return Struct_2(var_0.a, vec3<f32>(118f, _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(exp2(var_2.c)))), _wgslsmith_f_op_f32(trunc(var_2.c))), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~select(abs(vec3<u32>(52701u, 0u, u_input.a.x)), u_input.b.yxw >> (u_input.b.zwz % vec3<u32>(32u)), global1.xzz) ^ ~(~abs(vec3<u32>(91240u, 1u, 6416u))));
    global1 = vec4<bool>(global1.x, global1.x, false, !(!(func_1(vec3<u32>(1u, u_input.b.x, 0u)).c <= _wgslsmith_f_op_f32(var_0.b.x - 113f))));
    let var_1 = _wgslsmith_f_op_f32(max(var_0.c, -1796f));
    global1 = vec4<bool>(true, true, func_1(select(_wgslsmith_mod_vec3_u32(~u_input.b.zwy, ~vec3<u32>(u_input.a.x, 38586u, 22332u)), vec3<u32>(0u, _wgslsmith_mult_u32(0u, 98119u), u_input.a.x | u_input.a.x), global1.wxz)).a, -1590f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)))));
    let var_2 = Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(-566f, 956f, var_1), vec3<bool>(false, false, global1.x))))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), var_1, -181f))), _wgslsmith_f_op_f32(max(-233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(select(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], var_0.a) | vec2<u32>(9988u, u_input.a.x), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.yzw, u_input.b.zyw), 22u)], ~vec2<u32>(724u, u_input.a.x), true)), var_2.b, 10716u);
}

