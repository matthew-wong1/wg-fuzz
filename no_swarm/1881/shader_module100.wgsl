struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)));

var<private> global2: array<Struct_1, 4>;

var<private> global3: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, 76098u >> (0u % 32u), ~109741u)), 25u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 1u), ~select(60606u, _wgslsmith_dot_vec4_u32(vec4<u32>(7047u, 4294967295u, 4294967295u, 47826u), vec4<u32>(0u, 0u, 38588u, 106132u)), !(arg_0.x | true))), 4u)];
    global1 = array<Struct_1, 25>();
    global2 = array<Struct_1, 4>();
    global0 = global1[_wgslsmith_index_u32(1u, 25u)];
    return 1f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(select(!vec3<bool>(arg_3.x, false, false), !vec3<bool>(arg_2.a.x, global0.a.x, arg_3.x), select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(false, true, false), arg_3)), _wgslsmith_f_op_f32(-1f), vec2<i32>(-1i, 8316i), -1416f)), -1000f, _wgslsmith_f_op_f32(sign(-323f))));
    let var_1 = abs(~(~64020u));
    var var_2 = var_0.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-955f, -1492f, global0.a.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 913f, var_0.x)))))))));
    return 0u;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_1(select(vec3<bool>(false || arg_0.a.x, !all(vec4<bool>(global0.a.x, false, arg_0.a.x, true)), true), select(select(arg_0.a, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), global0.a), arg_0.a, true), vec3<bool>(-616f >= _wgslsmith_f_op_f32(sign(-311f)), true, true)));
    global1 = array<Struct_1, 25>();
    let var_1 = abs(1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-298f - -1721f), -1336f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1113f)))) + -2538f), -287f));
    global2 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_2.x, var_2.x, 128f), vec4<f32>(869f, 127f, 613f, var_2.x))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) - 479f), _wgslsmith_f_op_f32(abs(1549f)), _wgslsmith_f_op_f32(-467f * -675f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f), var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(419f * var_2.x))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-369f * -126f))))));
}

fn func_1() -> f32 {
    global3 = (all(vec2<bool>(select(false, global0.a.x, global0.a.x), select(false, global0.a.x, true))) & !(!any(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x)))) & true;
    var var_0 = vec4<u32>(1u, 1u, ~1u, _wgslsmith_mult_u32(0u, ~_wgslsmith_mult_u32(16815u, 8356u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(vec4<u32>(23956u, var_0.x, var_0.x, var_0.x), var_0.xx, global2[_wgslsmith_index_u32(var_0.x, 4u)], global0.a), 42472u), 4u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(654f - -1580f), _wgslsmith_f_op_f32(step(-1264f, -190f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), -644f, _wgslsmith_f_op_f32(select(1527f, 1439f, global0.a.x)), -155f)))));
    global2 = array<Struct_1, 4>();
    var var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    var var_0 = select(select(select(vec4<bool>(global0.a.x & false, true, all(vec3<bool>(global0.a.x, global0.a.x, false)), true), select(select(vec4<bool>(false, true, global0.a.x, true), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), true), select(vec4<bool>(false, global0.a.x, false, true), vec4<bool>(global0.a.x, false, true, false), global0.a.x), select(vec4<bool>(global0.a.x, global0.a.x, true, false), vec4<bool>(true, true, false, global0.a.x), vec4<bool>(true, false, global0.a.x, false))), !(!vec4<bool>(true, false, global0.a.x, false))), vec4<bool>(global0.a.x, !global0.a.x | (false || global0.a.x), any(global0.a.zy), global0.a.x), true), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) != -835f, true, select(select(global0.a.x == global0.a.x, true, true), true, global0.a.x), !global0.a.x), vec4<bool>(-483f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0.a, 961f, vec2<i32>(-1i, u_input.a.x), -630f)), _wgslsmith_f_op_f32(-1490f * 463f))), select(true, false, any(!vec2<bool>(global0.a.x, global0.a.x))), true, all(select(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, global0.a.x, false), !global0.a.x))));
    global0 = global2[_wgslsmith_index_u32(~(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(9440u, 7023u), 0u, 4337u), vec3<u32>(~10708u, ~30506u, ~6401u)) % 32u)), 4u)];
    let var_1 = ~vec4<u32>(~56266u, firstLeadingBit(abs(52735u)), _wgslsmith_add_u32(select(70329u, 0u, false) & 6611u, 1u), ~1u << (max(_wgslsmith_mod_u32(46301u, 1u), ~4294967295u) % 32u));
    let var_2 = 1i;
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~var_1.x, var_1.x, _wgslsmith_div_u32(1u, 16591u)), 4u)];
    var var_4 = Struct_1(vec3<bool>(true, var_0.x, any(!select(vec2<bool>(false, true), global0.a.zy, vec2<bool>(false, true)))));
    var_0 = select(select(!vec4<bool>(all(vec3<bool>(global0.a.x, true, false)), var_0.x, true, true), !vec4<bool>(var_3.a.x, select(var_3.a.x, var_0.x, false), var_0.x == var_4.a.x, true), all(vec2<bool>(!var_3.a.x, true))), vec4<bool>(!all(select(vec4<bool>(var_4.a.x, global0.a.x, false, var_4.a.x), vec4<bool>(var_3.a.x, true, global0.a.x, var_4.a.x), vec4<bool>(global0.a.x, false, false, true))), true, (any(global0.a) | (var_0.x & true)) == true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1708f, -842f)))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 24179u), 4u)])).x, -224f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2306f - _wgslsmith_f_op_f32(-472f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-626f, 188f), -781f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-973f)), _wgslsmith_f_op_f32(f32(-1f) * -1218f)) * vec2<f32>(369f, _wgslsmith_div_f32(532f, -895f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(205f, 179f) + vec2<f32>(-343f, -430f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-410f, 976f), vec2<f32>(-1032f, -366f))) + vec2<f32>(-1570f, 274f))))), var_1.x);
}

