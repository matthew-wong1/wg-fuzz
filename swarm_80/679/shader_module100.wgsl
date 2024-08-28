struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-637f, 206f, 1000f, -128f), vec4<f32>(-2801f, -586f, -457f, 1479f), vec4<f32>(-1107f, -590f, -879f, -244f), vec4<f32>(266f, -313f, -253f, 366f), vec4<f32>(-803f, -1153f, -130f, 2187f), vec4<f32>(473f, 195f, -232f, 1000f), vec4<f32>(1000f, -844f, -1000f, -245f), vec4<f32>(644f, 1000f, 285f, -495f), vec4<f32>(559f, -1927f, -2043f, -1393f), vec4<f32>(178f, 1048f, -946f, -773f));

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -2604i, -1i);

var<private> global3: array<i32, 12>;

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global0 = array<i32, 3>();
    let var_0 = vec4<bool>(false, false, true, _wgslsmith_f_op_f32(ceil(arg_1.d.b.x)) < _wgslsmith_f_op_f32(floor(-1416f)));
    global4 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_2.b.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.x + global4.x))), _wgslsmith_f_op_f32(f32(-1f) * -1550f), _wgslsmith_f_op_f32(-arg_2.d.b.x));
    global2 = -u_input.b;
    return Struct_1(arg_1.a.zx, vec2<f32>(arg_0.d.b.x, -1441f));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> Struct_5 {
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-276f, 120f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - global4.x))), 1164f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -733f), global4.x, arg_2.b.b.x, _wgslsmith_f_op_f32(-global4.x))))));
    global0 = array<i32, 3>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-937f + -1943f))), arg_2.b, _wgslsmith_f_op_vec2_f32(-arg_2.b.b), Struct_2(arg_2.d.a, Struct_1(select(arg_2.d.a.yz, vec2<bool>(arg_2.d.b.a.x, false), false), _wgslsmith_f_op_vec2_f32(min(global4.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, 209f))))), !arg_2.b.a.x, arg_2.b, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(44877i, 1i), global0[_wgslsmith_index_u32(~arg_2.e.x | 62878u, 3u)])), arg_2.e);
    let var_1 = var_0.d.a;
    let var_2 = Struct_2(arg_2.d.a, Struct_1(select(!func_2(Struct_2(vec4<bool>(false, arg_2.d.a.x, false, var_1.x), var_0.b, var_1.x, var_0.b, arg_0), Struct_2(var_0.d.a, Struct_1(vec2<bool>(true, true), vec2<f32>(-824f, arg_2.d.b.b.x)), var_0.d.d.a.x, Struct_1(var_1.yw, var_0.b.b), global3[_wgslsmith_index_u32(arg_1, 12u)]), var_0.d).a, var_0.d.a.wx, func_2(Struct_2(arg_2.d.a, arg_2.b, false, Struct_1(arg_2.b.a, var_0.c), 0i), arg_2.d, arg_2.d).a.x), _wgslsmith_f_op_vec2_f32(-global4.wz)), true, func_2(Struct_2(arg_2.d.a, func_2(arg_2.d, Struct_2(vec4<bool>(arg_2.d.d.a.x, true, true, var_1.x), arg_2.b, true, Struct_1(vec2<bool>(arg_2.d.d.a.x, var_0.b.a.x), global4.zx), 31154i), Struct_2(var_0.d.a, arg_2.d.d, false, arg_2.d.b, global2.x)), true, Struct_1(!vec2<bool>(false, var_0.b.a.x), _wgslsmith_f_op_vec2_f32(-var_0.b.b)), global3[_wgslsmith_index_u32(~(~arg_1), 12u)]), var_0.d, Struct_2(arg_2.d.a, func_2(Struct_2(var_0.d.a, var_0.d.b, arg_2.b.a.x, Struct_1(arg_2.d.a.yw, vec2<f32>(-134f, -1312f)), 30888i), arg_2.d, arg_2.d), all(!var_0.d.a), Struct_1(var_1.xz, _wgslsmith_f_op_vec2_f32(var_0.d.d.b + global4.zw)), _wgslsmith_clamp_i32(~1i, 2147483647i ^ arg_0, global0[_wgslsmith_index_u32(101627u, 3u)] << (4294967295u % 32u)))), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(~var_0.e.x, select(_wgslsmith_clamp_u32(1u, arg_1, arg_1), ~arg_1, true))), 12u)]);
    return Struct_5(~vec4<i32>(_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(0u, 3u)], 2147483647i), abs(-550i), var_2.e, arg_2.d.e), Struct_1(func_2(Struct_2(!vec4<bool>(var_2.d.a.x, arg_2.b.a.x, arg_2.d.a.x, true), var_0.b, arg_2.d.c, var_0.d.b, 1i), arg_2.d, arg_2.d).a, vec2<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b.x * arg_2.d.d.b.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    global2 = -(~(abs(select(u_input.b, u_input.b, vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, false))) >> (select(vec3<u32>(0u, arg_1, arg_1), ~vec3<u32>(63463u, 30075u, 1u), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x), false)) % vec3<u32>(32u))));
    global2 = -(~arg_2.zwz & min(arg_0.a.xxy, _wgslsmith_mod_vec3_i32(u_input.a.wzx, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(44668u, 3u)], 1i))));
    global1 = array<vec4<f32>, 10>();
    var var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 3u)];
    return func_2(Struct_2(select(!select(vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, true), vec4<bool>(arg_0.b.a.x, false, true, arg_0.b.a.x), arg_0.b.a.x), select(select(vec4<bool>(false, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, false), false), vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), arg_1 < 9651u), !all(vec4<bool>(true, arg_0.b.a.x, arg_0.b.a.x, true))), arg_0.b, true, arg_0.b, min(~_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(arg_2.x, global0[_wgslsmith_index_u32(arg_1, 3u)])), u_input.b.x)), Struct_2(!select(!vec4<bool>(false, true, arg_0.b.a.x, true), select(vec4<bool>(arg_0.b.a.x, true, arg_0.b.a.x, true), vec4<bool>(true, true, arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a.x), select(vec4<bool>(true, arg_0.b.a.x, false, false), vec4<bool>(arg_0.b.a.x, true, false, false), vec4<bool>(arg_0.b.a.x, false, false, arg_0.b.a.x))), func_3(abs(-2147483647i), _wgslsmith_add_u32(arg_1, arg_1), Struct_3(_wgslsmith_f_op_f32(arg_0.b.b.x * 847f), arg_0.b, vec2<f32>(arg_0.b.b.x, 505f), Struct_2(vec4<bool>(false, true, arg_0.b.a.x, arg_0.b.a.x), Struct_1(arg_0.b.a, vec2<f32>(arg_0.b.b.x, global4.x)), true, arg_0.b, arg_2.x), vec4<u32>(4861u, arg_1, 1u, arg_1))).b, all(vec2<bool>(any(vec3<bool>(true, arg_0.b.a.x, true)), false)), arg_0.b, -51919i), Struct_2(!(!(!vec4<bool>(true, true, arg_0.b.a.x, arg_0.b.a.x))), func_2(Struct_2(!vec4<bool>(true, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), Struct_1(arg_0.b.a, vec2<f32>(1000f, global4.x)), arg_0.b.a.x, func_2(Struct_2(vec4<bool>(false, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), arg_0.b, false, Struct_1(vec2<bool>(true, arg_0.b.a.x), vec2<f32>(-2508f, global4.x)), 0i), Struct_2(vec4<bool>(false, false, true, false), Struct_1(arg_0.b.a, arg_0.b.b), true, Struct_1(arg_0.b.a, arg_0.b.b), arg_0.a.x), Struct_2(vec4<bool>(false, arg_0.b.a.x, false, arg_0.b.a.x), Struct_1(arg_0.b.a, vec2<f32>(483f, arg_0.b.b.x)), arg_0.b.a.x, arg_0.b, arg_0.a.x)), u_input.b.x), Struct_2(select(vec4<bool>(true, arg_0.b.a.x, arg_0.b.a.x, true), vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, arg_0.b.a.x), vec4<bool>(false, true, true, arg_0.b.a.x)), arg_0.b, false, func_3(arg_2.x, arg_1, Struct_3(-1000f, arg_0.b, vec2<f32>(-2593f, 448f), Struct_2(vec4<bool>(true, true, arg_0.b.a.x, arg_0.b.a.x), arg_0.b, arg_0.b.a.x, arg_0.b, u_input.a.x), vec4<u32>(arg_1, arg_1, arg_1, 21011u))).b, -346i), Struct_2(vec4<bool>(arg_0.b.a.x, true, arg_0.b.a.x, true), func_3(global0[_wgslsmith_index_u32(14081u, 3u)], arg_1, Struct_3(-1227f, Struct_1(arg_0.b.a, vec2<f32>(arg_0.b.b.x, 245f)), arg_0.b.b, Struct_2(vec4<bool>(true, arg_0.b.a.x, false, true), Struct_1(arg_0.b.a, vec2<f32>(arg_0.b.b.x, global4.x)), arg_0.b.a.x, arg_0.b, 0i), vec4<u32>(67312u, 60883u, 6414u, 41538u))).b, arg_0.b.a.x, func_3(global2.x, arg_1, Struct_3(1200f, arg_0.b, vec2<f32>(global4.x, 1375f), Struct_2(vec4<bool>(true, arg_0.b.a.x, arg_0.b.a.x, false), Struct_1(vec2<bool>(false, true), vec2<f32>(-1198f, arg_0.b.b.x)), arg_0.b.a.x, arg_0.b, -39928i), vec4<u32>(arg_1, 0u, arg_1, arg_1))).b, max(global3[_wgslsmith_index_u32(arg_1, 12u)], 2147483647i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(540f + global4.x))) == global4.x, func_3(~(-8575i), max(arg_1, 0u & arg_1), Struct_3(_wgslsmith_f_op_f32(848f + arg_0.b.b.x), Struct_1(arg_0.b.a, arg_0.b.b), vec2<f32>(arg_0.b.b.x, global4.x), Struct_2(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, true), Struct_1(vec2<bool>(arg_0.b.a.x, arg_0.b.a.x), vec2<f32>(arg_0.b.b.x, -502f)), arg_0.b.a.x, arg_0.b, 13286i), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, 1u), vec4<u32>(arg_1, arg_1, 122558u, arg_1)))).b, firstLeadingBit(~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(arg_1, 12u)], arg_2.x))));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(vec4<bool>(-global0[_wgslsmith_index_u32(~0u, 3u)] != ~(i32(-1i) * -2147483647i), true, global4.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(f32(-1f) * -749f)), true), Struct_1(vec2<bool>(true, false), global4.wz), true, func_4(func_3(~1i, ~abs(0u), Struct_3(global4.x, func_2(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<bool>(false, true), global4.yx), false, Struct_1(vec2<bool>(true, false), vec2<f32>(global4.x, global4.x)), 12275i), Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<bool>(true, true), vec2<f32>(-692f, -1255f)), true, Struct_1(vec2<bool>(false, true), global4.zw), 0i), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<bool>(true, true), vec2<f32>(-1593f, 120f)), false, Struct_1(vec2<bool>(false, false), global4.zz), 1i)), vec2<f32>(938f, global4.x), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(true, true), global4.yy), false, Struct_1(vec2<bool>(false, false), global4.xx), -30585i), vec4<u32>(1u, 0u, 1u, 1u))), _wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(0u, 62080u)), min(vec4<i32>(global0[_wgslsmith_index_u32(27856u, 3u)] >> (1u % 32u), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(30659i, global0[_wgslsmith_index_u32(0u, 3u)], 0i, u_input.b.x)), arg_1 | -35222i, 2147483647i), u_input.a)), -2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(39053i, global3[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-20236i, u_input.b.x), global2.zy, vec2<i32>(u_input.b.x, -1i)), firstLeadingBit(global2.zx))));
    var_0 = Struct_2(!select(select(var_0.a, var_0.a, var_0.d.a.x != false), var_0.a, select(!var_0.a, !var_0.a, global4.x >= -1000f)), func_2(Struct_2(select(!var_0.a, vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.b.a.x, false, false)), Struct_1(var_0.d.a, _wgslsmith_div_vec2_f32(var_0.d.b, global4.xw)), var_0.d.a.x == true, func_3(abs(-55061i), ~1u, Struct_3(var_0.d.b.x, Struct_1(var_0.a.yy, vec2<f32>(211f, 1761f)), global4.ww, Struct_2(var_0.a, var_0.b, false, var_0.b, var_0.e), vec4<u32>(1435u, 4294967295u, 41948u, 4294967295u))).b, -446i), Struct_2(vec4<bool>(true, var_0.b.a.x, select(var_0.a.x, var_0.d.a.x, true), true), var_0.b, func_2(Struct_2(var_0.a, Struct_1(var_0.a.wy, vec2<f32>(-1524f, var_0.d.b.x)), var_0.d.a.x, Struct_1(vec2<bool>(var_0.b.a.x, false), vec2<f32>(var_0.d.b.x, 1159f)), -1i), Struct_2(vec4<bool>(var_0.c, var_0.c, var_0.a.x, var_0.a.x), var_0.b, var_0.a.x, Struct_1(var_0.b.a, vec2<f32>(545f, var_0.b.b.x)), arg_0), Struct_2(vec4<bool>(false, var_0.d.a.x, true, false), Struct_1(var_0.d.a, vec2<f32>(-424f, 223f)), false, Struct_1(var_0.d.a, var_0.b.b), var_0.e)).a.x, var_0.b, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(2012u, 3u)], global0[_wgslsmith_index_u32(22286u, 3u)], 1756i), u_input.a), ~arg_1)), Struct_2(select(!var_0.a, vec4<bool>(true, true, false, false), var_0.e > arg_0), Struct_1(var_0.a.zy, func_2(Struct_2(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.d.a.x, var_0.c), var_0.d, var_0.a.x, var_0.b, global3[_wgslsmith_index_u32(0u, 12u)]), Struct_2(vec4<bool>(var_0.a.x, var_0.b.a.x, true, true), Struct_1(vec2<bool>(true, var_0.b.a.x), vec2<f32>(-479f, 179f)), true, Struct_1(vec2<bool>(var_0.c, false), vec2<f32>(-225f, var_0.d.b.x)), global0[_wgslsmith_index_u32(1u, 3u)]), Struct_2(var_0.a, Struct_1(vec2<bool>(var_0.d.a.x, true), vec2<f32>(global4.x, var_0.d.b.x)), var_0.b.a.x, Struct_1(vec2<bool>(false, false), vec2<f32>(-183f, 476f)), global2.x)).b), true, func_4(Struct_5(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(16427u, 3u)], 0i, 36768i), Struct_1(vec2<bool>(var_0.a.x, false), vec2<f32>(global4.x, var_0.d.b.x))), ~4294967295u, -vec4<i32>(var_0.e, -2147483647i, -20552i, arg_1)), firstTrailingBit(-37930i))), var_0.b.a.x, func_2(Struct_2(vec4<bool>(false, var_0.b.a.x, var_0.c, !var_0.b.a.x), Struct_1(!vec2<bool>(false, var_0.a.x), vec2<f32>(-1104f, -1403f)), false, var_0.b, 2147483647i), Struct_2(var_0.a, Struct_1(!vec2<bool>(var_0.c, var_0.a.x), var_0.b.b), true, var_0.b, _wgslsmith_sub_i32(arg_1, global2.x) & abs(global3[_wgslsmith_index_u32(34145u, 12u)])), Struct_2(vec4<bool>(false, var_0.b.a.x, all(vec2<bool>(var_0.c, false)), var_0.b.a.x), var_0.d, true, Struct_1(select(var_0.d.a, vec2<bool>(true, true), var_0.c), _wgslsmith_div_vec2_f32(var_0.b.b, global4.xx)), i32(-1i) * -8008i)), ~(-24918i));
    var var_1 = -1677f;
    var var_2 = Struct_2(!select(vec4<bool>(var_0.b.a.x, !var_0.b.a.x, var_0.a.x, any(vec2<bool>(false, var_0.a.x))), select(vec4<bool>(true, false, false, var_0.c), !vec4<bool>(var_0.b.a.x, var_0.c, var_0.d.a.x, var_0.c), vec4<bool>(true, true, true, var_0.c)), true), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.b * var_0.d.b))))), true, Struct_1(vec2<bool>(var_0.b.a.x, var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.wx - vec2<f32>(global4.x, global4.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, global4.x))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global4.yy, var_0.d.b), _wgslsmith_f_op_vec2_f32(var_0.d.b + vec2<f32>(-2710f, var_0.d.b.x)))))), _wgslsmith_mod_i32(min(arg_0, -u_input.b.x), global0[_wgslsmith_index_u32(1u, 3u)]));
    var_0 = Struct_2(vec4<bool>(false, false, true, var_2.b.a.x), func_2(Struct_2(var_0.a, func_4(Struct_5(u_input.a, var_2.d), _wgslsmith_div_u32(58200u, 51925u), -u_input.a), _wgslsmith_f_op_f32(var_0.d.b.x * var_0.d.b.x) != -1386f, func_2(Struct_2(var_2.a, var_0.d, var_2.b.a.x, Struct_1(var_0.b.a, vec2<f32>(-1904f, var_2.b.b.x)), global2.x), Struct_2(var_2.a, var_2.d, var_2.b.a.x, Struct_1(var_0.b.a, global4.ww), 1i), Struct_2(var_0.a, var_0.d, false, var_2.d, 17764i)), -(var_2.e << (1u % 32u))), Struct_2(select(var_0.a, var_2.a, !vec4<bool>(var_2.c, var_2.c, var_0.d.a.x, var_2.c)), func_2(Struct_2(vec4<bool>(true, false, var_0.c, var_0.b.a.x), Struct_1(vec2<bool>(true, var_0.b.a.x), vec2<f32>(-1999f, 911f)), var_2.b.a.x, var_2.d, 25601i), Struct_2(vec4<bool>(true, var_0.a.x, true, true), var_0.b, var_0.b.a.x, Struct_1(var_0.a.zy, global4.wx), -1i), Struct_2(vec4<bool>(false, true, var_2.b.a.x, var_2.b.a.x), Struct_1(vec2<bool>(var_2.b.a.x, var_0.d.a.x), vec2<f32>(-177f, var_0.b.b.x)), true, Struct_1(vec2<bool>(false, var_2.c), var_2.d.b), 0i)), var_0.b.a.x != var_2.b.a.x, Struct_1(func_3(25650i, 23916u, Struct_3(var_0.d.b.x, Struct_1(var_0.d.a, vec2<f32>(-269f, 1338f)), vec2<f32>(var_2.d.b.x, -1471f), Struct_2(var_0.a, var_2.b, false, Struct_1(vec2<bool>(var_0.c, false), var_2.d.b), -2147483647i), vec4<u32>(1u, 23400u, 1u, 56327u))).b.a, global4.xw), var_0.e), Struct_2(var_0.a, Struct_1(vec2<bool>(var_2.b.a.x, var_2.d.a.x), var_0.d.b), var_0.b.a.x | true, var_0.d, reverseBits(abs(-26219i)))), var_2.c, func_4(Struct_5(select(select(u_input.a, u_input.a, false), vec4<i32>(1i, 0i, global2.x, global2.x), var_0.a), Struct_1(var_2.b.a, vec2<f32>(-504f, global4.x))), 0u, u_input.a), ~arg_0);
    return Struct_2(var_2.a, var_0.d, true, Struct_1(!(!(!var_2.d.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.b) - var_0.d.b)), i32(-1i) * -18477i);
}

fn func_5(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(vec4<bool>(true, arg_0.d.a.x, false, arg_0.a.x), arg_0.b, !arg_0.a.x, Struct_1(vec2<bool>(_wgslsmith_div_i32(10961i, 2147483647i) <= global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38815u, 49372u, 1u, 4294967295u), vec4<u32>(48312u, 30236u, 1u, 87316u)), 12u)], any(arg_0.a.ww)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.wy) + global4.zy)), 2147483647i);
    let var_1 = var_0.e << (6851u % 32u);
    let var_2 = -8548i;
    var_0 = Struct_2(vec4<bool>(true, false, arg_0.d.a.x, all(func_2(arg_0, func_1(2147483647i, -1i), Struct_2(arg_0.a, Struct_1(var_0.d.a, vec2<f32>(global4.x, -680f)), true, Struct_1(vec2<bool>(arg_0.b.a.x, false), var_0.d.b), var_2)).a)), var_0.b, false, Struct_1(!arg_0.a.zw, var_0.d.b), -1013i);
    var var_3 = Struct_4(var_0.d.b.x, var_0.d.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(vec3<i32>(0i, -1i, global2.x) << (~(vec3<u32>(1u, 1u, 1u) & select(vec3<u32>(34158u, 4294967295u, 0u), vec3<u32>(1u, 1u, 0u), true)) % vec3<u32>(32u)));
    var var_0 = -1003f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -1194f)) + _wgslsmith_f_op_f32(func_5(func_1(global0[_wgslsmith_index_u32(0u, 3u)], u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)))));
    let var_2 = all(select(select(select(func_1(1i, 69022i).a.xyx, select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true), vec3<bool>(true, false, true), func_2(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(true, true), global4.zw), false, Struct_1(vec2<bool>(true, false), vec2<f32>(-367f, global4.x)), 28306i), func_1(2147483647i, global2.x), func_1(global3[_wgslsmith_index_u32(1u, 12u)], u_input.b.x)).a.x), vec3<bool>(true, true, func_2(func_1(37057i, global0[_wgslsmith_index_u32(51213u, 3u)]), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(true, false), global4.yz), false, Struct_1(vec2<bool>(true, false), global4.wx), global3[_wgslsmith_index_u32(1u, 12u)]), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec2<bool>(true, false), global4.zz), true, Struct_1(vec2<bool>(false, true), vec2<f32>(var_1.x, global4.x)), global0[_wgslsmith_index_u32(4294967295u, 3u)])).a.x), func_1(-2147483647i, i32(-1i) * -global3[_wgslsmith_index_u32(89093u, 12u)]).a.xyx));
    var var_3 = firstLeadingBit(vec4<u32>(~1u, abs(1u), 1u & select(78032u, 0u, any(vec3<bool>(var_2, var_2, var_2))), ~abs(~4294967295u)));
    var var_4 = countOneBits(~u_input.b.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1403f), var_3.x);
}

