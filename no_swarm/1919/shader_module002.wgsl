struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 21>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), 16311i, 2147483647i), 2125f, -814f, vec4<f32>(-642f, -275f, 812f, 153f));

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = array<u32, 21>();
    var var_0 = arg_2.b.x;
    global2 = arg_2;
    global2 = arg_2;
    global1 = array<u32, 21>();
    return u_input.b.x >= ~max(_wgslsmith_mod_u32(40694u, 1u), _wgslsmith_div_u32(0u, u_input.b.x));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global4 = _wgslsmith_f_op_vec2_f32(select(global0.e.xy, _wgslsmith_f_op_vec2_f32(-global2.e.wy), select(select(!(!vec2<bool>(global2.a, true)), vec2<bool>(any(vec3<bool>(global0.a, true, global3.a)), true), !vec2<bool>(false, global2.a)), !vec2<bool>(global2.a, true), (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >= abs(u_input.b.x)) & (u_input.a.x == 0u))));
    global4 = _wgslsmith_f_op_vec2_f32(trunc(global2.e.wy));
    var var_0 = select(select(!(!select(vec4<bool>(true, global3.a, false, false), vec4<bool>(global3.a, global2.a, false, global0.a), vec4<bool>(global2.a, false, global2.a, true))), vec4<bool>(true, all(vec3<bool>(false, global0.a, global0.a)) | true, global3.a, false), any(!(!vec4<bool>(global3.a, global2.a, global2.a, false)))), select(vec4<bool>(global0.a, func_3(vec2<i32>(global0.b.x, 0i), global0.e, Struct_1(global3.a, vec4<i32>(2147483647i, -1i, 49865i, global2.b.x), global2.c, -135f, vec4<f32>(-205f, global0.e.x, global0.c, 185f)), Struct_1(true, global0.b, global3.d, global0.c, global3.e)), global3.a, true), select(!vec4<bool>(true, global2.a, global0.a, false), !vec4<bool>(false, true, global3.a, false), func_3(-vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(global2.e + global3.e), Struct_1(global0.a, vec4<i32>(u_input.c.x, global2.b.x, 1i, global2.b.x), 1043f, global0.d, global0.e), Struct_1(global3.a, global3.b, global0.c, global2.d, vec4<f32>(-1151f, -933f, global3.d, global2.e.x)))), vec4<bool>(true | global3.a, true, any(vec2<bool>(true, true)), global2.a)), func_3(-(vec2<i32>(u_input.c.x, global3.b.x) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.e + vec4<f32>(-2868f, -123f, global3.c, global0.c)), global0.e, vec4<bool>(global2.a, global2.a, global3.a, global0.a)))), Struct_1(all(!vec3<bool>(global0.a, global0.a, global0.a)), vec4<i32>(-global2.b.x, firstLeadingBit(-1i), global3.b.x, _wgslsmith_div_i32(-39956i, global0.b.x)), global4.x, global2.c, vec4<f32>(1000f, _wgslsmith_f_op_f32(select(global0.d, global0.d, global0.a)), -581f, _wgslsmith_f_op_f32(min(-1000f, 608f)))), Struct_1(global0.a, global2.b, global2.c, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e - global3.e)))));
    global4 = vec2<f32>(-1895f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -251f), global3.c)));
    var var_1 = 1651u;
    return select(func_3(vec2<i32>(21002i << (arg_0.x % 32u), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)), Struct_1(true, -global2.b, _wgslsmith_f_op_f32(global3.d - global3.c), -990f, _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -564f, 1258f, 1000f) + vec4<f32>(global4.x, 1616f, global3.d, global3.c))), Struct_1(all(vec4<bool>(true, var_0.x, true, true)), -global3.b, global4.x, -1000f, _wgslsmith_f_op_vec4_f32(-global3.e))) & any(!select(vec2<bool>(false, global3.a), var_0.zz, true)), global2.a, false);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(func_2(vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u, 21u)], ~u_input.a.x, 4294967295u, ~u_input.b.x) & u_input.b), ~((arg_3.b | ~vec4<i32>(arg_3.b.x, global2.b.x, arg_3.b.x, arg_2.b.x)) ^ global3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-629f, global0.d, false)) + _wgslsmith_f_op_f32(min(103f, 1897f))))), _wgslsmith_f_op_f32(trunc(1226f)))), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_vec4_f32(global0.e + arg_2.e));
    var var_1 = u_input.b;
    let var_2 = arg_1.yw;
    var var_3 = arg_2.e.yy;
    let var_4 = abs(abs(~var_1.ww)) ^ ~vec2<u32>(~global1[_wgslsmith_index_u32(0u, 21u)], ~4294967295u | var_1.x);
    return _wgslsmith_f_op_f32(-arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(firstTrailingBit(-global0.b) | select(select(global2.b, vec4<i32>(global2.b.x, 1i, 11805i, global3.b.x), vec4<bool>(global0.a, true, true, false)), global3.b, !global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(global3.a == true, all(vec4<bool>(global0.a, global0.a, global0.a, true)), any(vec4<bool>(global0.a, global3.a, global0.a, true)), any(vec4<bool>(global2.a, false, global2.a, true))), !vec4<bool>(global3.a, global3.a, global2.a, false), Struct_1(select(global3.a, false, false), global2.b, -476f, global2.d, _wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, global4.x, global3.c, 701f), vec4<f32>(463f, -805f, global4.x, global3.e.x))), Struct_1(true, _wgslsmith_add_vec4_i32(vec4<i32>(6669i, global3.b.x, 4357i, -1i), vec4<i32>(-1i, u_input.c.x, -37603i, 0i)), _wgslsmith_f_op_f32(step(global4.x, global3.d)), 178f, global3.e))) * global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(-1547f, -1328f), _wgslsmith_f_op_f32(trunc(944f))))) - global2.e.x), global3.e);
    var var_1 = (vec2<i32>(-1i, abs(global3.b.x)) & global2.b.xy) >> (~(~(~min(vec2<u32>(u_input.b.x, 52253u), vec2<u32>(0u, 3584u)))) % vec2<u32>(32u));
    let var_2 = vec3<bool>(global2.a, all(select(vec2<bool>(var_0.a, any(vec3<bool>(var_0.a, global2.a, true))), select(!vec2<bool>(var_0.a, global2.a), select(vec2<bool>(global3.a, var_0.a), vec2<bool>(false, global2.a), global3.a), global0.a), select(select(vec2<bool>(var_0.a, global0.a), vec2<bool>(global0.a, global2.a), vec2<bool>(global3.a, global0.a)), !vec2<bool>(global0.a, var_0.a), select(vec2<bool>(global2.a, global0.a), vec2<bool>(global0.a, global3.a), vec2<bool>(global0.a, false))))), var_0.a);
    var var_3 = true;
    let var_4 = !(!select(!select(vec4<bool>(var_2.x, global3.a, true, global0.a), vec4<bool>(var_0.a, var_0.a, false, false), false), vec4<bool>(func_2(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46537u, 21u)], 21u)], u_input.b.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])), true, any(var_2), global0.a), all(select(vec3<bool>(global2.a, false, global0.a), var_2, var_2))));
    global3 = Struct_1(!(!all(!var_4)), firstTrailingBit(-global2.b), 122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-599f * -1990f) - _wgslsmith_f_op_f32(ceil(1343f))))), global0.e);
    var_0 = Struct_1(all(select(var_2.zx, var_2.yx, !vec2<bool>(var_2.x, false))), vec4<i32>(abs(_wgslsmith_add_i32(~var_1.x, ~global3.b.x)), abs(1i) >> (u_input.b.x % 32u), 2147483647i, 1i), global3.d, -1688f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-1000f, var_0.e.x)), _wgslsmith_f_op_f32(global0.e.x - var_0.d), global3.d) - vec4<f32>(_wgslsmith_f_op_f32(-484f - global3.d), _wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(select(global2.d, global2.c, var_0.a)), global2.d)) - vec4<f32>(-250f, _wgslsmith_f_op_f32(f32(-1f) * -171f), -1960f, -1199f)));
    let var_5 = global3.b;
    let x = u_input.a;
    s_output = StorageBuffer(746f, -var_5.x);
}

