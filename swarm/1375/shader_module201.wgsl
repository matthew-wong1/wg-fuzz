struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<bool>(true, false, false), true, 0u, -765f, -709f), Struct_1(vec3<bool>(true, false, false), false, 1u, 379f, 144f), Struct_1(vec3<bool>(false, true, true), false, 0u, -1594f, -1562f), Struct_1(vec3<bool>(false, false, true), false, 1u, -457f, -723f), Struct_1(vec3<bool>(true, true, true), true, 49742u, -644f, 261f), Struct_1(vec3<bool>(false, false, true), true, 1u, 1047f, 1268f), Struct_1(vec3<bool>(true, false, true), true, 31757u, 563f, 825f), Struct_1(vec3<bool>(false, false, false), false, 4294967295u, -1031f, -2012f), Struct_1(vec3<bool>(false, false, true), false, 23062u, 427f, 536f), Struct_1(vec3<bool>(false, true, false), true, 11367u, 590f, -444f), Struct_1(vec3<bool>(false, true, false), false, 66444u, 213f, -673f), Struct_1(vec3<bool>(true, false, true), false, 4294967295u, -1000f, -950f), Struct_1(vec3<bool>(false, true, true), true, 0u, 1514f, 124f), Struct_1(vec3<bool>(false, true, false), true, 4294967295u, -1000f, -1364f), Struct_1(vec3<bool>(true, true, true), false, 190u, -686f, -2101f), Struct_1(vec3<bool>(true, false, false), true, 2371u, -1334f, -1817f), Struct_1(vec3<bool>(true, false, false), false, 7959u, -542f, 123f), Struct_1(vec3<bool>(true, false, false), false, 0u, -1180f, -1000f), Struct_1(vec3<bool>(false, false, false), true, 1u, 500f, 636f));

var<private> global1: f32;

var<private> global2: f32 = -899f;

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(1u, 112448u), vec2<u32>(0u, 1u), vec2<u32>(1u, 38004u), vec2<u32>(47949u, 105906u), vec2<u32>(32154u, 4294967295u), vec2<u32>(62194u, 4294967295u), vec2<u32>(36749u, 4294967295u), vec2<u32>(30205u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(18135u, 13295u), vec2<u32>(65846u, 15025u), vec2<u32>(27494u, 4294967295u), vec2<u32>(0u, 17702u), vec2<u32>(1u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.c, 19u)];
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) * -558f) - _wgslsmith_f_op_f32(-arg_2.d))) - arg_2.d);
    global2 = -183f;
    global0 = array<Struct_1, 19>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 19u)];
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(select(1317f, arg_2.e, false))), _wgslsmith_f_op_f32(arg_2.e - _wgslsmith_f_op_f32(-var_1.e)), -478f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.e - arg_2.e), _wgslsmith_f_op_f32(var_0.e * var_0.d)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d, 1555f, arg_2.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(2160f, -900f, var_1.d) - vec3<f32>(-798f, var_1.e, var_1.d)), vec3<bool>(true, arg_2.a.x, false))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, 411f, var_1.d))))), vec3<bool>(arg_2.a.x, !arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + var_0.d)) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_2.e)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_sub_u32(1u, ~arg_1.c);
    global0 = array<Struct_1, 19>();
    var_0 = ~(~arg_0.c);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(u_input.a, vec3<i32>(abs(u_input.a), 1i, -(_wgslsmith_div_i32(u_input.a, u_input.a) & u_input.a)), Struct_1(vec3<bool>(false, abs(62223u) >= _wgslsmith_mult_u32(var_1.c, arg_0.c), true), false, min(var_1.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.c, 4294967295u, arg_1.c, arg_1.c), vec4<u32>(var_1.c, 0u, arg_0.c, 3321u), vec4<bool>(arg_3.x, var_1.a.x, false, true)), vec4<u32>(var_1.c, var_1.c, 4294967295u, 0u))), -302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.e))))), 0i));
    return vec3<bool>(arg_0.b, !arg_3.x, all(vec2<bool>(arg_3.x, any(vec4<bool>(arg_1.a.x, true, arg_0.b, arg_3.x)))));
}

fn func_1(arg_0: bool) -> u32 {
    global3 = array<vec2<u32>, 14>();
    global3 = array<vec2<u32>, 14>();
    let var_0 = _wgslsmith_div_u32(1u >> ((abs(select(4294967295u, 45478u, false)) | 0u) % 32u), 32273u);
    let var_1 = (firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, var_0, 100726u), vec4<u32>(var_0, var_0, 4294967295u, 0u))), 14u)]) ^ ~_wgslsmith_sub_vec2_u32(vec2<u32>(17332u, var_0) << (vec2<u32>(var_0, 3902u) % vec2<u32>(32u)), ~global3[_wgslsmith_index_u32(var_0, 14u)])) & vec2<u32>(~var_0, min(var_0, _wgslsmith_add_u32(~4294967295u, 33908u)));
    var var_2 = all(select(!(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0))), select(select(func_2(Struct_1(vec3<bool>(arg_0, true, arg_0), arg_0, 0u, -1016f, -991f), Struct_1(vec3<bool>(arg_0, false, true), false, 41101u, -994f, 526f), vec3<f32>(-182f, -517f, 854f), vec2<bool>(false, arg_0)), vec3<bool>(true, true, true), func_2(global0[_wgslsmith_index_u32(var_0, 19u)], Struct_1(vec3<bool>(false, true, true), arg_0, var_0, -1000f, 508f), vec3<f32>(443f, 205f, 297f), vec2<bool>(arg_0, arg_0))), vec3<bool>(any(vec4<bool>(arg_0, false, arg_0, false)), true, true), arg_0), func_2(global0[_wgslsmith_index_u32(24747u, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~var_0), 19u)], _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, 1069f, -1065f)))), func_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), arg_0, var_0, 134f, -417f), global0[_wgslsmith_index_u32(var_1.x, 19u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1070f, -480f, -887f)), !vec2<bool>(arg_0, arg_0)).zx)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(107261u, ~_wgslsmith_mod_u32(~4294967295u, ~1u)) >> (~abs(_wgslsmith_clamp_u32(~42987u, ~1u, abs(22442u))) % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 767f));
    var var_1 = vec2<bool>(select(max(_wgslsmith_sub_u32(95812u, 0u), 0u & var_0) < var_0, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), true), false);
    var var_2 = global0[_wgslsmith_index_u32(max(var_0, ~var_0), 19u)];
    global1 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(func_1(true), var_0, ~var_0, 12255u)), 1u);
}

