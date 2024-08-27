struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2 = Struct_2(false, 197f);

var<private> global2: array<bool, 7>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(any(select(select(select(vec2<bool>(global1.a, true), vec2<bool>(true, global1.a), global2[_wgslsmith_index_u32(4294967295u, 7u)]), !vec2<bool>(arg_0.c, true), false), vec2<bool>(global1.a, true), global2[_wgslsmith_index_u32(86892u, 7u)])), true, select(vec2<bool>(arg_0.b.a, true), select(vec2<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a, 7u)], arg_0.c, arg_0.b.a, true)), select(global2[_wgslsmith_index_u32(arg_0.a, 7u)], false, true)), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.a, 7u)], global1.a), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 7u)]))), vec2<bool>(true, arg_0.b.a)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -658f)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-global1.b))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, 2202f))), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(global0.x - arg_2.x))))));
    var var_1 = var_0;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(162f - global1.b))), arg_2.x);
    global2 = array<bool, 7>();
    return -651f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = array<bool, 7>();
    global1 = Struct_2(true, _wgslsmith_f_op_f32(-global1.b));
    var var_0 = Struct_1(true, any(arg_1.c), vec2<bool>(!(!arg_1.a), false));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(594f + arg_0.x)))))));
    let var_2 = Struct_1(true, arg_1.a, !(!(!(!vec2<bool>(arg_1.b, arg_2.c.x)))));
    return _wgslsmith_f_op_f32(min(1585f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(1224f, global0.x), false))))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(false, _wgslsmith_f_op_f32(-global0.x));
    var_0 = Struct_2(true, _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(-2087f * _wgslsmith_f_op_f32(func_3(Struct_3(u_input.a.x, Struct_2(false, 1000f), global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), u_input.a.wyw, vec2<f32>(var_0.b, var_0.b)))), var_0.b), Struct_1(global1.a, any(vec3<bool>(var_0.a, true, true)), vec2<bool>(true, true)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, select(!vec2<bool>(true, global1.a), select(vec2<bool>(global2[_wgslsmith_index_u32(15800u, 7u)], global1.a), vec2<bool>(false, true), global2[_wgslsmith_index_u32(65290u, 7u)]), !vec2<bool>(global1.a, global2[_wgslsmith_index_u32(1u, 7u)]))))));
    var_0 = Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)) - -1446f));
    let var_1 = Struct_2(true & global2[_wgslsmith_index_u32(~0u, 7u)], -800f);
    global2 = array<bool, 7>();
    return ~min(~_wgslsmith_div_i32(_wgslsmith_div_i32(0i, -30069i), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(16477i, 0i) >> (u_input.b % vec2<u32>(32u)), vec2<i32>(2147483647i, -1i)) | ~(~0i));
}

fn func_1(arg_0: i32) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1228f, global0.x, 2042f)), vec3<f32>(-112f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_div_f32(global1.b, global0.x), 537f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(389f)), global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, -1621f, -585f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b, global1.b, global0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global0.x)) - vec3<f32>(global0.x, global1.b, -1000f))))));
    let var_0 = reverseBits(vec3<i32>(-33226i, _wgslsmith_dot_vec4_i32(vec4<i32>(997i, 42184i, arg_0, 2147483647i), vec4<i32>(arg_0, arg_0, arg_0, -1i)), -arg_0 >> (4294967295u % 32u))) >> (u_input.a.zzz % vec3<u32>(32u));
    var var_1 = func_2();
    var var_2 = Struct_2(all(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false), select(vec3<bool>(true, global1.a, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false), vec3<bool>(global1.a, global1.a, false)), !vec3<bool>(false, false, global1.a))) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-738f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 169f, 292f)), Struct_1(global1.a, global2[_wgslsmith_index_u32(u_input.c.x, 7u)], vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true)), Struct_1(global1.a, true, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)])))), global0.x)) + 872f));
    var var_3 = u_input.a.x;
    return !((!any(vec2<bool>(global1.a, false)) | var_2.a) & !global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!all(!vec3<bool>(global1.a, global1.a, false)), -251f >= _wgslsmith_f_op_f32(-global0.x), true, func_1(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 1500f)) * global0.x)));
}

