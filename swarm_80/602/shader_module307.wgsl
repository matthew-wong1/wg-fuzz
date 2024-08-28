struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    let var_0 = global1[_wgslsmith_index_u32((u_input.a.x << (1u % 32u)) ^ u_input.a.x, 20u)];
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-var_0.a)) - var_0.d.b.c.wzw) + _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-427f, 936f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.d.c.x)))))));
    global1 = array<Struct_4, 20>();
    var var_2 = !var_0.d.c;
    var var_3 = u_input.a;
    return any(vec4<bool>(any(select(!vec4<bool>(var_0.b.b.b, var_2.x, var_0.b.b.b, var_0.b.b.b), vec4<bool>(var_2.x, var_0.d.b.b, var_2.x, var_2.x), select(vec4<bool>(true, var_0.d.c.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_0.d.b.b), vec4<bool>(false, false, true, var_2.x)))), false, true, true));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-35530i, 24418i, -1i, -43033i)), vec4<i32>(21399i, 2147483647i, 1i, 0i))) | vec2<i32>(-(~(-1294i)), abs(select(2147483647i, 2147483647i, arg_1.x))), !arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, 179f, -2177f, 774f)), vec4<f32>(1045f, 927f, 609f, 1053f), select(vec4<bool>(true, arg_1.x, arg_1.x, false), arg_1, arg_1.x))))));
    global1 = array<Struct_4, 20>();
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(71178i, i32(-1i) * -33693i), var_0.a), all(arg_1), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2125f, 412f, -820f, -1000f))));
    var var_2 = firstTrailingBit(vec3<i32>(firstLeadingBit(~(-44154i & var_1.a.x)), 2147483647i, ~_wgslsmith_clamp_i32(var_1.a.x, countOneBits(1624i), select(var_0.a.x, var_0.a.x, var_0.b))));
    global1 = array<Struct_4, 20>();
    return vec2<bool>(all(arg_1.wxx), arg_1.x);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = func_2();
    var var_1 = select(false, ~u_input.a.x != 4294967295u, func_2());
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(929f, -891f, arg_0.x, _wgslsmith_f_op_f32(763f + -1813f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -908f, -1750f, -252f)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1768f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-878f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2120f + arg_0.x)))), !vec4<bool>(all(vec4<bool>(var_0, var_0, var_0, var_0)), false, var_0 | true, true)))));
    let var_3 = any(func_3(~vec2<u32>(u_input.a.x, u_input.a.x), select(vec4<bool>(var_0 | var_0, all(vec3<bool>(true, var_0, var_0)), true, true), select(vec4<bool>(true, var_0, var_0, true), select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, true, var_0, var_0), true), true), var_0)));
    var_2 = vec4<f32>(-145f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1043f, -1000f, var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * arg_0.x))) * _wgslsmith_div_f32(1122f, var_2.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(-831f * var_2.x)), _wgslsmith_div_f32(293f, -594f)))));
    return _wgslsmith_f_op_f32(var_2.x * -536f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-772f, 335f, 1792f), vec3<f32>(2185f, 1324f, -592f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1554f - 148f), _wgslsmith_f_op_f32(min(125f, -1174f)), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-290f * 1198f), _wgslsmith_f_op_f32(func_1(vec3<f32>(822f, 405f, -1488f))))), 1f))));
    global0 = array<vec2<f32>, 13>();
    let var_1 = 79577u;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-248f, var_0.x, var_0.x)), Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.yxw), Struct_1(_wgslsmith_add_vec2_i32(max(vec2<i32>(0i, 1i), vec2<i32>(-15214i, 1i)), reverseBits(vec2<i32>(-1i, -2147483647i))), all(vec3<bool>(true, false, true)) && true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -482f, var_0.x, var_0.x))))), -countOneBits(max(min(vec4<i32>(24669i, -2147483647i, -1i, -2147483647i), vec4<i32>(1i, 39390i, 77909i, 70947i)), vec4<i32>(-13863i, 0i, -16899i, -20374i))), Struct_2(-firstLeadingBit(-40584i), Struct_1(vec2<i32>(30447i, -42268i) >> (reverseBits(u_input.a.yy) % vec2<u32>(32u)), func_3(u_input.a.yx, select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1249f) * vec4<f32>(-201f, var_0.x, var_0.x, var_0.x)))), select(func_3(~vec2<u32>(76557u, u_input.a.x), vec4<bool>(true, true, true, true)), select(func_3(u_input.a.ww, vec4<bool>(false, true, true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), vec2<bool>(true, any(vec3<bool>(false, true, true)))), Struct_1(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 0i), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(288f, var_0.x, -865f, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -413f, 1121f))))));
    var_0 = vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(2835f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_2.a.x, -2295f))))), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x));
    var var_3 = 0u;
    global1 = array<Struct_4, 20>();
    var var_4 = _wgslsmith_f_op_f32(var_0.x - var_2.a.x);
    global0 = array<vec2<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-3754i, 206f, 13865i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(min(-584f, -456f))))));
}

