struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 7>();
    var var_0 = select(!select(select(vec3<bool>(arg_2, arg_0, arg_0), select(vec3<bool>(false, false, arg_2), vec3<bool>(false, false, false), arg_2), arg_0), !(!vec3<bool>(arg_0, arg_2, arg_0)), arg_2), vec3<bool>(any(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, true, true), true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, false))), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, arg_1.c.x)), vec2<i32>(22298i, 36115i)) <= (-arg_1.c.x | arg_1.c.x), any(select(select(vec4<bool>(false, arg_0, false, arg_2), vec4<bool>(true, arg_2, false, true), true), !vec4<bool>(arg_2, arg_2, true, true), 1i == arg_1.c.x))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.a.x))) == arg_1.b.x) && arg_0);
    var var_1 = arg_1.b.x;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(150f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, -1328f)), arg_2 || true)))));
    global0 = array<Struct_1, 7>();
    return var_2;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    global0 = array<Struct_1, 7>();
    var var_1 = select(vec3<bool>(true, any(vec3<bool>(false, true, false)), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)], _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(326f, 579f), 1360f)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-272f, 1000f, _wgslsmith_f_op_f32(abs(-2894f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(true, Struct_4(vec2<f32>(-1000f, -201f), vec2<f32>(-1751f, 113f), vec3<i32>(924i, -7623i, -26436i)), true)), _wgslsmith_f_op_f32(-244f - 229f), -682f), any(!vec2<bool>(var_1.x, var_1.x))))), ~(-1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1267f - -968f) + _wgslsmith_f_op_f32(ceil(315f))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-451f, -1000f), _wgslsmith_f_op_f32(1059f + -1274f))), 1544f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-673f, -1547f, -541f, 1913f), vec4<f32>(1513f, -191f, -1052f, 121f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-210f, -2235f, -1720f, -166f), vec4<f32>(3114f, 713f, -1095f, -1171f))))))));
    var var_3 = Struct_4(var_2.e.wx, _wgslsmith_f_op_vec2_f32(var_2.e.zy - _wgslsmith_f_op_vec2_f32(var_2.c.a.zz - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.c.a.zx))))), ~vec3<i32>(var_2.d, -var_2.d, -var_2.d) ^ ~vec3<i32>(var_2.d >> (var_0 % 32u), -2147483647i, var_2.d));
    return Struct_2(_wgslsmith_f_op_vec3_f32(step(var_2.e.xwx, var_2.c.a)));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(arg_0.a.x + 326f)) + vec3<f32>(-275f, _wgslsmith_f_op_f32(-1000f + arg_0.a.x), arg_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-253f))), 1790f, 950f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1156f, -2127f, -331f) + vec3<f32>(arg_0.a.x, 1527f, -556f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 742f, arg_0.a.x) * vec3<f32>(-479f, arg_0.b.x, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(103f, 1274f, 903f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(737f, -1000f, arg_0.a.x), vec3<f32>(arg_0.a.x, arg_0.a.x, 704f))), vec3<bool>(false, false, false))))));
    var var_1 = func_2();
    global0 = array<Struct_1, 7>();
    var var_2 = ~(-19458i);
    return 393f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec2<f32>(406f, 1000f), vec2<f32>(-862f, -1668f), vec3<i32>(0i, 2147483647i, -1i)), 2147483647i)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f * _wgslsmith_f_op_f32(sign(-453f))))), _wgslsmith_f_op_f32(func_3(false, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 189f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-596f, -1000f)))), firstLeadingBit(~vec3<i32>(-22076i, 29019i, 7833i))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(176f, -999f))), vec2<f32>(194f, 1000f), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(-18845i, 17852i, -1i))), true))), -1000f);
    let var_1 = -263f;
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~(-vec3<i32>(-2147483647i, -2147483647i, 14325i))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(27732i, -52910i, 0i), vec3<i32>(34195i, -2147483647i, 18559i), vec3<bool>(false, false, true)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, -1i), vec3<i32>(36061i, 2147483647i, 42773i))), -2147483647i)), min(1i, ~1i));
}

