struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 28>;

var<private> global3: Struct_1;

var<private> global4: array<bool, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = all(!vec2<bool>(any(select(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<bool>(true, global0.x), global3.c)), false));
    var var_1 = Struct_1(false & all(global0.xx), global1.b, !(!(-51884i < _wgslsmith_mod_i32(u_input.b.x, u_input.e.x))));
    let var_2 = abs(~(~vec4<i32>(-17174i, _wgslsmith_dot_vec2_i32(u_input.e.xy, u_input.e.yy), 0i, u_input.e.x)));
    var var_3 = Struct_1(global1.b.x > -126f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-166f, -205f), vec2<f32>(var_1.b.x, 737f)), _wgslsmith_f_op_vec2_f32(sign(global3.b))))) + _wgslsmith_f_op_vec2_f32(-var_1.b)), ~_wgslsmith_clamp_i32(-18132i, _wgslsmith_div_i32(-1i, 1036i), firstTrailingBit(u_input.e.x)) > var_2.x);
    var var_4 = Struct_1(global1.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(var_3.b.x, -171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global3.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, arg_1)) + vec2<f32>(global1.b.x, 511f))))), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x + global3.b.x) - _wgslsmith_f_op_f32(-1128f - var_3.b.x)), -1168f)) - var_4.b.x));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<i32>(-2147483647i, u_input.b.x, countOneBits(-1i), ~abs(1i));
    let var_1 = all(vec3<bool>(true, true, global0.x));
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.b.x, global1.b.x)))))))), false);
    var var_3 = Struct_1(var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, -788f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.b.x, -136f)))))) + vec2<f32>(_wgslsmith_f_op_f32(func_3(1u, var_2.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(518f + -964f), _wgslsmith_f_op_f32(round(global1.b.x)))))), -10387i <= var_0.x);
    let var_4 = Struct_1(select(_wgslsmith_f_op_f32(var_3.b.x - -1000f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), arg_0.b.x), select(_wgslsmith_f_op_f32(f32(-1f) * -754f) > var_2.b.x, any(!global0.xx), u_input.a.x <= 4294967295u), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, var_2.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(406f, -277f) + vec2<f32>(global1.b.x, arg_0.b.x))))), !(!((u_input.e.x | var_0.x) > _wgslsmith_div_i32(u_input.b.x, -2147483647i))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-516f + 1284f) * _wgslsmith_f_op_f32(floor(-695f)))))), _wgslsmith_f_op_f32(round(-1456f))));
}

fn func_4(arg_0: f32) -> f32 {
    var var_0 = global0.xz;
    global2 = array<vec4<bool>, 28>();
    var var_1 = select(vec3<bool>(!all(global0.yy), !((u_input.c << (u_input.c % 32u)) == u_input.d), global3.a), select(select(!(!vec3<bool>(false, false, global1.a)), select(select(vec3<bool>(true, global3.c, global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<bool>(true, global1.a, global1.c), vec3<bool>(false, true, global1.c)), !vec3<bool>(true, global1.c, false), any(vec4<bool>(var_0.x, global4[_wgslsmith_index_u32(0u, 12u)], false, false))), vec3<bool>(!global3.c, true, false)), select(vec3<bool>(global1.b.x < global3.b.x, true, var_0.x && global0.x), !vec3<bool>(var_0.x, true, true), ~1u < ~u_input.d), select(!(!vec3<bool>(false, global3.c, global3.a)), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.a.x), u_input.a), 12u)], false, global3.a), select(!vec3<bool>(global1.a, global0.x, global1.c), !vec3<bool>(global0.x, global4[_wgslsmith_index_u32(u_input.d, 12u)], false), var_0.x))), any(select(select(vec2<bool>(global3.c, global3.a), global0.xz, !vec2<bool>(var_0.x, false)), vec2<bool>(true, false | global1.c), global0.x)));
    global1 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, 399f)));
    global4 = array<bool, 12>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.x, -1210f)))) - arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.x - global3.b.x), -523f), global3.b.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(Struct_1(true, arg_2.b, false))))), arg_2.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, arg_2.b.x, var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -549f, 212f, -196f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-728f, arg_0.b.x, arg_0.b.x, 512f)))))))));
    global4 = array<bool, 12>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 12>();
    global3 = func_1(Struct_1(true, vec2<f32>(679f, _wgslsmith_div_f32(-1494f, _wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, false)))), global3.a), select(firstTrailingBit(u_input.a), ~u_input.a, select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c, 12u)], global4[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<bool>(global3.a, global0.x, true), vec3<bool>(true, true, false)), !vec3<bool>(false, false, global0.x), global0.x)) >> (vec3<u32>(u_input.a.x, u_input.c, u_input.c) % vec3<u32>(32u)), Struct_1(true, global3.b, any(select(!global0.yy, global0.xz, vec2<bool>(false, false)))));
    global4 = array<bool, 12>();
    var var_0 = global0.x;
    global0 = vec3<bool>(true, any(select(global0.xx, !global0.zy, vec2<bool>(true, global3.b.x >= global1.b.x))), false);
    let var_1 = -47641i;
    global0 = vec3<bool>(all(vec3<bool>(global0.x, true, true)), !all(vec2<bool>(true, true)), global3.a);
    global1 = func_1(func_1(func_1(func_1(func_1(Struct_1(true, vec2<f32>(global3.b.x, 1504f), global0.x), u_input.a, Struct_1(global4[_wgslsmith_index_u32(9898u, 12u)], global1.b, global1.a)), u_input.a, Struct_1(false, vec2<f32>(583f, -1069f), true)), u_input.a, Struct_1(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1067f)), global1.c)), ~u_input.a, func_1(Struct_1(false && global4[_wgslsmith_index_u32(u_input.c, 12u)], vec2<f32>(1000f, global1.b.x), false), select(~u_input.a, max(vec3<u32>(1u, 79u, 59266u), vec3<u32>(38423u, u_input.d, 139354u)), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 12u)], global1.a)), Struct_1(1u == u_input.d, _wgslsmith_f_op_vec2_f32(-global3.b), false))), u_input.a, Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2359f, global3.b.x) - vec2<f32>(global3.b.x, -573f))))), all(!(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.d, 12u)], global4[_wgslsmith_index_u32(u_input.a.x, 12u)], global3.a)))));
    global4 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-15869i, max(vec4<u32>(1u, u_input.a.x >> ((u_input.a.x >> (109634u % 32u)) % 32u), ~33877u, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.d), 50022u, ~23215u, u_input.c), select(vec4<u32>(4294967295u, 35154u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 1u, u_input.a.x), 1u == u_input.a.x), select(~vec4<u32>(u_input.d, u_input.d, 1u, 481u), ~vec4<u32>(u_input.d, u_input.a.x, 4294967295u, 25412u), global4[_wgslsmith_index_u32(u_input.c, 12u)]))));
}

