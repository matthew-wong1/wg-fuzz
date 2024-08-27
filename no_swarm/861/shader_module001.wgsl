struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-651i, 15989i, i32(-2147483648), -3679i, 0i, 78575i, 0i, 57311i, -9355i, 2147483647i, -22389i, 22525i, 2147483647i, 522i, 53326i, -1618i, -66139i, i32(-2147483648), 48114i, -1i, 16285i, 44402i, 25603i, -28134i, -3508i, -7014i);

var<private> global1: array<u32, 23>;

var<private> global2: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = !select(!vec2<bool>(false, all(vec4<bool>(false, false, true, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec2<bool>(true, true)));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(1191f - arg_0.x), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(ceil(-980f)), false)), _wgslsmith_f_op_f32(1042f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], 47889u), 23u)] & abs(u_input.a.x), firstLeadingBit(_wgslsmith_mod_u32(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)]))) > firstTrailingBit(29735u));
    let var_2 = -_wgslsmith_div_vec4_i32(-vec4<i32>(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42871u, 23u)], 26u)], global0[_wgslsmith_index_u32(0u, 26u)], 574i, u_input.d.x), u_input.d);
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    return var_1.b == false;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> vec4<bool> {
    global2 = 562f;
    let var_0 = ~1i < global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(~1u, arg_2 >> (4294967295u % 32u), ~16776u), 29141u, all(vec4<bool>(arg_1, false, false, false))), 23u)], 26u)];
    global1 = array<u32, 23>();
    var var_1 = select(select(vec3<bool>(arg_1, (u_input.d.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33946u, 23u)], 23u)] % 32u)) < -global0[_wgslsmith_index_u32(26186u, 26u)], func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, -1796f, -1176f)))), select(vec3<bool>(var_0, !arg_1, var_0 | true), select(vec3<bool>(arg_1, false, var_0), !vec3<bool>(arg_1, var_0, var_0), vec3<bool>(false, arg_1, arg_1)), var_0), vec3<bool>(var_0, any(!vec3<bool>(arg_1, var_0, arg_1)), func_3(vec3<f32>(-821f, -1000f, 903f)))), !vec3<bool>(_wgslsmith_f_op_f32(sign(100f)) < 496f, all(vec3<bool>(false, arg_1, var_0)) || true, var_0), true);
    let var_2 = !select(select(vec2<bool>(true, false), var_1.xz, false), !var_1.yz, select(select(vec2<bool>(false, var_1.x), select(var_1.yx, vec2<bool>(var_0, arg_1), false), false), !(!var_1.xx), true));
    return vec4<bool>(all(vec3<bool>(true, true, true)), max(18739u, ~83474u) < firstTrailingBit(0u), true, arg_1);
}

fn func_1() -> f32 {
    var var_0 = false;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1736f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-903f, -463f))), _wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1512f, -786f)))) + 884f)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-845f * var_1.x)), var_1.x, var_1.x);
    var var_2 = select(vec4<bool>(true, true, true, true), !select(!func_2(vec2<i32>(-52220i, 0i), true, 4294967295u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(var_1.x - var_1.x) >= -1763f), !vec4<bool>(true, (global1[_wgslsmith_index_u32(4294967295u, 23u)] >= 4294967295u) & all(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), func_3(vec3<f32>(-1475f, -1176f, var_1.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1779f + var_1.x), _wgslsmith_f_op_f32(trunc(-1030f)), 712f, -366f) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x * -651f), var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1673f, 171f, -1000f, var_1.x), vec4<f32>(487f, var_1.x, -717f, -1000f), vec4<bool>(false, var_2.x, var_2.x, true))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1814f, 984f, var_1.x), vec4<f32>(-377f, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(467f, var_1.x, 487f, var_1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1058f, -431f, 880f, var_1.x) + vec4<f32>(var_1.x, -938f, 174f, var_1.x))))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-627f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f) * -1803f), _wgslsmith_f_op_f32(func_1())))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(19764i, u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), 26u)]) >> (global1[_wgslsmith_index_u32(24980u, 23u)] % 32u), firstLeadingBit(~(~vec4<u32>(12534u, 4294967295u, u_input.b.x, u_input.b.x))), vec2<bool>(!(u_input.d.x <= 1279i), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-831f, 1730f), vec2<f32>(-137f, 366f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-573f, -1043f)), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 706f) - vec2<f32>(1415f, 1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-355f, 565f), vec2<f32>(934f, -326f))), vec2<bool>(true, true))))), ~(~0u)), ~firstLeadingBit(~6921i));
    var var_2 = !(!(!vec3<bool>(true, true, func_2(vec2<i32>(u_input.d.x, 8295i), false, 1u).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), ~(~var_1.a.b.yz));
}

