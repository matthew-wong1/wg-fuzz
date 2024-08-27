struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: array<f32, 2>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global4: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -759f, global1[_wgslsmith_index_u32(4294967295u, 2u)]) * vec3<f32>(1220f, 486f, arg_0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 2u)] + global1[_wgslsmith_index_u32(83218u, 2u)]), 477f))));
    return u_input.c;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global2 = Struct_2(global4.a);
    global1 = array<f32, 2>();
    global3 = array<vec2<bool>, 13>();
    var var_0 = ~func_3(1180f, arg_0, global1[_wgslsmith_index_u32(0u, 2u)]);
    let var_1 = Struct_5(vec2<bool>(select(true, false, select(all(vec2<bool>(false, global4.a.a)), !global4.a.a, arg_0.a)), global4.a.a && (u_input.c != firstLeadingBit(7302i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25120u, 2u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(65426u, 2u)], -1615f), global1[_wgslsmith_index_u32(abs(38438u), 2u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, -967f, 1000f)), arg_0.a)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, 1142f, global1[_wgslsmith_index_u32(4294967295u, 2u)])), vec3<f32>(910f, -1100f, global1[_wgslsmith_index_u32(u_input.b, 2u)]), true))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f * 658f)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, u_input.b), 2u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(8161u, 2u)]) + global1[_wgslsmith_index_u32(min(1u, u_input.b), 2u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1328f, 3091f, 154f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], -728f, 1636f))))), vec3<f32>(_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(30075u, 22566u, u_input.b)), 2u)], global1[_wgslsmith_index_u32(u_input.b << (u_input.b % 32u), 2u)]), true)))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(25021u, 28463u)) ^ reverseBits(vec2<u32>(88824u, 6648u) | vec2<u32>(u_input.b, u_input.b))), Struct_4(global1[_wgslsmith_index_u32(1u, 2u)], !select(!global4.a.a, !global2.a.a, global4.a.a)));
    return _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.x * global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 0u), 2u)]))))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_5(select(vec2<bool>(true, all(vec3<bool>(false, true, false))), arg_1.yx, all(arg_1)), arg_3.wzx, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.zxz))))), vec2<u32>(~4294967295u, u_input.b), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-656f - global1[_wgslsmith_index_u32(1u, 2u)]))), !arg_1.x));
    let var_1 = var_0.d;
    let var_2 = Struct_3(false & arg_2, 65707u, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(933f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f - arg_3.x))))), !(!select(arg_1.zxx, !vec3<bool>(false, arg_2, global2.a.a), !vec3<bool>(global4.a.a, false, true))));
    let var_3 = Struct_4(var_2.d, u_input.a.x != -1i);
    var var_4 = var_2;
    return Struct_2(global2.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec3<bool> {
    global3 = array<vec2<bool>, 13>();
    global2 = func_4(_wgslsmith_f_op_f32(func_2(global2.a)), select(vec4<bool>(all(vec2<bool>(false, arg_0.x)), all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 37805u, u_input.b), vec3<u32>(1u, arg_1, arg_1)), 13u)]), arg_0.x, false), !select(!vec4<bool>(false, arg_0.x, false, true), !vec4<bool>(false, true, false, global4.a.a), select(vec4<bool>(global4.a.a, true, false, global4.a.a), vec4<bool>(global2.a.a, false, global2.a.a, true), vec4<bool>(true, global2.a.a, global2.a.a, false))), select(vec4<bool>(any(arg_0), false, true, global4.a.a & false), select(vec4<bool>(global2.a.a, global4.a.a, true, true), vec4<bool>(global4.a.a, global2.a.a, true, true), true), select(vec4<bool>(false, false, true, arg_0.x), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, false, false, true), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true)))), false, vec4<f32>(1250f, global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(26045u, 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) + -1000f)), 1000f));
    return vec3<bool>(global4.a.a, !arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(u_input.b), 2u)])) >= global1[_wgslsmith_index_u32(~reverseBits(reverseBits(11237u)), 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 2>();
    let var_0 = -u_input.a;
    let var_1 = global4.a.a;
    global1 = array<f32, 2>();
    let var_2 = select(!func_1(!select(global3[_wgslsmith_index_u32(1u, 13u)], vec2<bool>(false, global4.a.a), global3[_wgslsmith_index_u32(u_input.b, 13u)]), u_input.b), vec3<bool>(!all(vec3<bool>(global2.a.a, global2.a.a, true)), true, true), !vec3<bool>(global4.a.a, global4.a.a, true || all(vec3<bool>(global4.a.a, global4.a.a, true))));
    global0 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(11837u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(57541u, 2u)], -1861f, global1[_wgslsmith_index_u32(4294967295u, 2u)])) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(21677u, 2u)], -1216f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], 1268f), vec3<f32>(825f, 218f, global1[_wgslsmith_index_u32(u_input.b, 2u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, -1248f, -970f))))), ~(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 5600u))) & ~abs(vec4<u32>(u_input.b, 12634u, 4294967295u, 59077u)), vec4<u32>(u_input.b, ~u_input.b, ~(~0u) | select(~0u, 89831u, 1000f == global1[_wgslsmith_index_u32(u_input.b, 2u)]), 46960u ^ ~(u_input.b ^ 71778u)));
}

