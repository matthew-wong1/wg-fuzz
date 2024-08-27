struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: f32;

var<private> global1: array<u32, 17>;

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    global1 = array<u32, 17>();
    let var_0 = u_input.d.x;
    let var_1 = Struct_1(arg_0.d, -((-var_0 & ~0i) | u_input.d.x), false, arg_1.a);
    var var_2 = select(_wgslsmith_div_u32(u_input.b, ~14532u | global1[_wgslsmith_index_u32(~1u, 17u)]) & u_input.c, u_input.b, any(vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_div_f32(var_1.a, -1050f), arg_1.c, true)));
    var var_3 = var_1.d;
    return arg_1;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    global0 = func_2(func_2(Struct_1(-1336f, ~func_2(Struct_1(882f, -1i, false, 2122f), Struct_1(-423f, -1i, false, -135f), arg_1, true).b, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(648f))))), Struct_1(_wgslsmith_f_op_f32(323f * _wgslsmith_f_op_f32(trunc(712f))), arg_0.x & select(-5561i, -48142i, true), arg_1 & func_2(Struct_1(-1000f, -31011i, arg_1, -363f), Struct_1(-1046f, arg_0.x, arg_1, 1083f), false, arg_1).c, 418f), !arg_1, !arg_1), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(774f)))))), _wgslsmith_dot_vec2_i32(u_input.d.wz, countOneBits(arg_0.yy) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 0u) % vec2<u32>(32u))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1543f), 2107f))), any(!select(select(vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, arg_1, arg_1, true)), vec4<bool>(true, true, arg_1, arg_1), arg_1)), false || all(select(!vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, true, false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), arg_1)))).d;
    var var_0 = u_input.c;
    global0 = _wgslsmith_f_op_f32(round(123f));
    var var_1 = -u_input.d.x;
    var var_2 = Struct_1(-731f, 0i, !any(!(!vec4<bool>(arg_1, arg_1, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-287f - -374f), _wgslsmith_f_op_f32(f32(-1f) * -1230f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f * 935f)) + -1154f)));
    return -980f;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-1f);
    global1 = array<u32, 17>();
    var var_0 = func_2(arg_2, arg_2, !arg_2.c, 0u < global1[_wgslsmith_index_u32(0u, 17u)]);
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_2.d));
    let var_2 = 0i;
    return func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f + _wgslsmith_f_op_f32(ceil(150f)))), -1i, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.d, func_2(arg_2, arg_2, arg_2.c, var_0.c).c)) - _wgslsmith_f_op_f32(f32(-1f) * -641f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(482f, -2062f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.d, var_0.a)))), ~(-var_0.b & _wgslsmith_mod_i32(u_input.d.x, 0i)), true, _wgslsmith_f_op_f32(-var_1)), true, var_0.c);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0.d;
    var var_1 = !vec2<bool>(arg_0.c, arg_0.c);
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_0.a))) - _wgslsmith_f_op_f32(f32(-1f) * -1951f)), -365f)), u_input.d.x, false && select(arg_0.c, false, var_1.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(308f, 663f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1090f))), _wgslsmith_f_op_f32(-1058f + -300f)))));
    return select(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~u_input.a.x), global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(0u, 17u)]), 17u)]), 14u)], !vec2<bool>(all(!vec4<bool>(false, var_1.x, false, true)), any(!global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    var_0 = ~(-40552i | _wgslsmith_dot_vec4_i32(vec4<i32>(abs(1i), firstLeadingBit(u_input.d.x), ~u_input.d.x, u_input.d.x), max(u_input.d, vec4<i32>(0i, u_input.d.x, 0i, u_input.d.x)) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], u_input.b, u_input.c, 38650u) % vec4<u32>(32u))));
    var var_1 = ~40695i;
    var var_2 = func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-261f, _wgslsmith_f_op_f32(floor(1054f)))), global1[_wgslsmith_index_u32(reverseBits(countOneBits(27799u)), 17u)], Struct_1(-860f, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, vec4<i32>(u_input.d.x, 1i, -19860i, u_input.d.x)), u_input.d), (u_input.a.x >= u_input.b) & all(global2[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1800f, -1435f))))));
    var_2 = select(!(!vec2<bool>(var_2.x || false, var_2.x)), !vec2<bool>(var_2.x, all(!vec3<bool>(false, true, var_2.x))), select(func_4(func_2(Struct_1(609f, -2147483647i, var_2.x, 707f), func_2(Struct_1(-800f, 1i, true, -868f), Struct_1(741f, 29025i, true, -874f), true, var_2.x), true, true)), select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.a.x, 14u)], select(vec2<bool>(var_2.x, false), !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 14u)], !var_2.x)), all(vec3<bool>(any(global2[_wgslsmith_index_u32(25240u, 14u)]), func_1(vec2<f32>(-773f, 876f), global1[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_1(-1135f, 40085i, var_2.x, -3073f)).c, true))));
    let var_3 = 1905f;
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<i32>(2147483647i, ~u_input.d.x, ~u_input.d.x, -1i), (u_input.d | u_input.d) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.b, 13713u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 83294u, 32493u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)])) % vec4<u32>(32u))));
}

