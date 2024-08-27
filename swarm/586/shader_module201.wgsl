struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-334f, -544f, 517f, 1302f));

var<private> global3: array<u32, 31> = array<u32, 31>(69268u, 33873u, 1u, 58236u, 1u, 1u, 1u, 4294967295u, 0u, 1u, 17402u, 35077u, 0u, 4294967295u, 1u, 4294967295u, 4294967295u, 0u, 17794u, 1u, 96228u, 51571u, 4294967295u, 13063u, 4294967295u, 0u, 0u, 33536u, 1u, 1u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    global0 = array<vec2<i32>, 13>();
    let var_0 = 4294967295u;
    global2 = global1[_wgslsmith_index_u32(121061u, 21u)];
    let var_1 = false;
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + -1909f) + -196f)), global2.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_f_op_f32(global2.a.x - 915f))) * global2.a.x));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = -_wgslsmith_sub_vec4_i32(u_input.c << (vec4<u32>(global3[_wgslsmith_index_u32(0u, 31u)], abs(30679u), 0u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.d.x, 2147483647i, _wgslsmith_sub_i32(arg_1.a.x, 0i), _wgslsmith_sub_i32(u_input.b, u_input.b)));
    let var_1 = Struct_3(~_wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~81603u, 31u)], 31u)]), global1[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(142735u, 31u)], 31u)]), 21u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(397f, 222f, global2.a.x, arg_1.b), _wgslsmith_f_op_vec4_f32(global2.a * global2.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a * global2.a))));
    global3 = array<u32, 31>();
    global3 = array<u32, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(185f - global2.a.x))))) * _wgslsmith_f_op_f32(-741f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - arg_1.b))))));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-global2.a.x))), 2213f));
    global2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(func_3(var_0.a.zxy, Struct_2(u_input.c, 167f))), global2.a.x, 154f), _wgslsmith_f_op_vec4_f32(var_0.a - global2.a)));
    var var_1 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(54955u, 1u, 4162u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27652u, 31u)], 31u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72246u, 31u)], 31u)], 4453u, 1u, 30377u), false), _wgslsmith_add_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(3918u, 31u)], 1u, global3[_wgslsmith_index_u32(1u, 31u)], 3665u), vec4<u32>(47555u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)], 38840u, global3[_wgslsmith_index_u32(45284u, 31u)]), vec4<bool>(arg_0, arg_1, arg_1, arg_1)), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)]))))), 31u)], 21u)];
    global0 = array<vec2<i32>, 13>();
    var var_2 = Struct_2(u_input.c, -129f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.a.wxx, vec3<f32>(640f, -267f, global2.a.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.a.xww, global2.a.wzy)))), Struct_2(~(-u_input.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1296f, var_1.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_2(vec4<i32>(~(-30424i), _wgslsmith_sub_i32(-1243i, abs(-1i)), _wgslsmith_mod_i32(u_input.b, 20643i), 1i) | u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + global2.a.x)), !(global2.a.x > -432f))) + 1831f));
    global0 = array<vec2<i32>, 13>();
    var_0 = !all(vec4<bool>(true, true, true, true)) & true;
    var var_2 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, false))), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), !vec4<bool>(all(vec3<bool>(false, false, true)), true, _wgslsmith_f_op_f32(round(-853f)) <= _wgslsmith_f_op_f32(-global2.a.x), true), any(vec4<bool>(true, true, true, true)));
    let var_3 = abs(select(global0[_wgslsmith_index_u32(select(~1u, _wgslsmith_mod_u32(select(1u, 94807u, var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], 4294967295u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(8608u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(65984u, 31u)], 31u)]))), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13299u, 31u)], 31u)], 31u)], 31u)], 31u)], global3[_wgslsmith_index_u32(1u, 31u)]) >= (0u ^ global3[_wgslsmith_index_u32(4294967295u, 31u)])), 13u)], vec2<i32>(u_input.c.x, 3903i), (_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(18926u, 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 31u)], 31u)]), vec2<u32>(58988u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24196u, 31u)], 31u)], 31u)])) | ~global3[_wgslsmith_index_u32(4294967295u, 31u)]) != 0u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)], global3[_wgslsmith_index_u32(7657u, 31u)])), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15896u, 31u)], 31u)], 31u)], 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39222u, 31u)], 31u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]))), ~abs(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], global3[_wgslsmith_index_u32(10659u, 31u)] & global3[_wgslsmith_index_u32(3646u, 31u)])), vec3<u32>(firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 31u)]), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35157u, 31u)], 31u)], 31u)], 0u, global3[_wgslsmith_index_u32(18492u, 31u)])), 31u)]), 119724u, global3[_wgslsmith_index_u32(~13921u, 31u)]));
}

