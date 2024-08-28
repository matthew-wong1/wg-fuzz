struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-370f, 1u), Struct_1(-235f, 4294967295u), Struct_1(228f, 60108u), Struct_1(-1294f, 0u), Struct_1(-1401f, 0u), Struct_1(-458f, 15988u), Struct_1(-1054f, 6438u));

var<private> global1: array<u32, 27>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<u32, 27>();
    var var_0 = 1i;
    let var_1 = select(vec4<bool>(false, global3[_wgslsmith_index_u32(12210u, 17u)], false, true), select(select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(49390u, 17u)], true, global3[_wgslsmith_index_u32(u_input.d.x, 17u)])), select(select(vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(49043u, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 17u)], false, global2.a.x, global3[_wgslsmith_index_u32(arg_1.b, 17u)]), true), !vec4<bool>(global2.a.x, true, false, global3[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(true, global2.a.x, global3[_wgslsmith_index_u32(89231u, 17u)], false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(global2.a.x, false, global2.a.x, true), global2.a.x)), select(!(!vec4<bool>(false, global2.a.x, false, true)), !vec4<bool>(true, false, false, global2.a.x), select(vec4<bool>(global3[_wgslsmith_index_u32(69920u, 17u)], true, false, true), vec4<bool>(false, global2.a.x, true, global2.a.x), select(vec4<bool>(global2.a.x, global2.a.x, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11900u, 27u)], 17u)]), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b, 27u)], 17u)]), vec4<bool>(true, false, global2.a.x, global2.a.x)))), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(110007u, 27u)], 17u)], false, true, false), vec4<bool>(true, false, global2.a.x, global2.a.x), vec4<bool>(true, false, true, false)), !vec4<bool>(global2.a.x, false, global3[_wgslsmith_index_u32(1u, 17u)], false), true)), vec4<bool>(all(vec3<bool>(true, true, true)), true, !(!global2.a.x), true));
    var var_2 = !(!select(vec4<bool>(var_1.x, true, false, global3[_wgslsmith_index_u32(~4294967295u, 17u)]), !select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 17u)], var_1.x, global2.a.x), vec4<bool>(true, var_1.x, global2.a.x, false), vec4<bool>(global2.a.x, var_1.x, true, true)), any(vec2<bool>(global2.a.x, global2.a.x))));
    var var_3 = arg_0.yy;
    return var_1;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1628f, 300f))))), _wgslsmith_f_op_f32(sign(539f)));
    let var_1 = !func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1026f), vec4<f32>(-226f, var_0.x, 338f, -1430f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1343f, var_0.x, 331f, var_0.x), vec4<f32>(var_0.x, var_0.x, -569f, -1849f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 759f, 1000f))))), global0[_wgslsmith_index_u32(arg_0, 7u)]);
    global0 = array<Struct_1, 7>();
    let var_2 = Struct_2(!select(select(global2.a, var_1.wy, !vec2<bool>(global3[_wgslsmith_index_u32(37607u, 17u)], var_1.x)), !(!var_1.xw), global2.a.x));
    var var_3 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-var_0.x) <= -645f, global2.a.x, true), var_1, !func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 307f, 321f, var_0.x))), Struct_1(-1000f, min(4294967295u, arg_0))));
    return global0[_wgslsmith_index_u32(u_input.d.x, 7u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = ~firstTrailingBit(arg_0);
    global2 = Struct_2(!(!(!global2.a)));
    global0 = array<Struct_1, 7>();
    return _wgslsmith_add_u32(arg_0, select(global1[_wgslsmith_index_u32(~arg_1.b, 27u)], _wgslsmith_add_u32(u_input.a, func_2(min(global1[_wgslsmith_index_u32(16481u, 27u)], arg_2.b)).b), global2.a.x));
}

fn func_1() -> Struct_2 {
    global3 = array<bool, 17>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)));
    let var_1 = global2.a;
    global1 = array<u32, 27>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-114f, var_0, var_1.x))))))), global1[_wgslsmith_index_u32(min(func_4(~u_input.b.x, func_2(1477u), func_2(16521u)), 18544u) << (~1u % 32u), 27u)]);
    return Struct_2(select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1433f, var_2.a, var_2.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1151f, var_0, var_0, var_2.a))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b & vec2<u32>(11163u, global1[_wgslsmith_index_u32(0u, 27u)]), u_input.d.yx), 7u)]).ww, global2.a, select(global2.a, select(!global2.a, vec2<bool>(true, false), var_1.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 17>();
    global2 = func_1();
    var var_0 = global1[_wgslsmith_index_u32(func_4(~(abs(2544u) << (_wgslsmith_dot_vec3_u32(countOneBits(u_input.d), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d)) % 32u)), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(u_input.c.xyx, select(vec3<u32>(42169u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<bool>(true, true, global2.a.x)))), 7u)], global0[_wgslsmith_index_u32(24323u, 7u)]), 27u)];
    global0 = array<Struct_1, 7>();
    let var_1 = vec3<i32>(-34888i, 33586i, 9688i);
    var_0 = 3074u;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-252f - -136f), func_2(4294967295u).a))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), var_1.xy) >> (abs(vec2<u32>(u_input.d.x, u_input.c.x)) % vec2<u32>(32u)), select(_wgslsmith_div_vec2_i32(abs(var_1.yx), -var_1.yz), max(~var_1.xy, select(vec2<i32>(-39641i, var_1.x), var_1.yy, global3[_wgslsmith_index_u32(u_input.a, 17u)])), global2.a)), -458f, ~2090u);
}

