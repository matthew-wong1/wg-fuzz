struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: f32 = 701f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    global0 = !arg_3.a;
    var var_0 = !select(!vec2<bool>(select(arg_3.a, true, global1.a), false), !select(vec2<bool>(arg_3.a, true), vec2<bool>(arg_3.a, arg_1.x), select(vec2<bool>(arg_3.a, false), arg_1.ww, vec2<bool>(true, false))), arg_1.wz);
    var var_1 = any(arg_1.wyx);
    global2 = _wgslsmith_f_op_f32(1692f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-973f)), _wgslsmith_div_f32(1000f, 903f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -516f), 2735f)))));
    var_0 = select(!arg_1.wz, select(vec2<bool>(arg_1.x, any(select(vec4<bool>(false, global1.a, var_0.x, var_0.x), vec4<bool>(false, true, false, arg_3.a), vec4<bool>(true, var_0.x, arg_1.x, arg_1.x)))), vec2<bool>(arg_1.x & arg_3.a, var_0.x), false), select(select(vec2<bool>(arg_3.a, false), !arg_1.zy, arg_1.zy), vec2<bool>(arg_3.a, (false & arg_1.x) & arg_3.a), !select(!arg_1.zz, select(vec2<bool>(true, arg_3.a), vec2<bool>(false, true), vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(arg_1.x, true))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(sign(-1654f))), _wgslsmith_f_op_f32(sign(-1009f)), -2241f));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    global0 = true;
    global0 = arg_0.x;
    let var_0 = vec2<bool>(false, -41378i < u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1916f - _wgslsmith_div_f32(1006f, 701f)), 1133f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1072f, 1267f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1425f, -1015f, -981f) * vec3<f32>(1011f, 1353f, -1000f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1324f, 946f, 718f) * _wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, vec4<bool>(arg_1, false, global1.a, true), 2147483647i, Struct_1(arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1886f + 1280f), _wgslsmith_f_op_f32(max(-1000f, -352f)), _wgslsmith_f_op_f32(min(1418f, 587f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1904f, 1180f, 220f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(818f, 654f, -1689f), vec3<f32>(1398f, 321f, -760f), var_0.x)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, -253f, -376f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2148f, 359f, 1027f)))))));
    global1 = Struct_1(true);
    return Struct_1(!any(select(vec2<bool>(false, arg_1), var_0, vec2<bool>(global1.a, arg_1))));
}

fn func_1() -> f32 {
    global1 = func_2(!(!select(vec4<bool>(false, true, global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a), all(vec3<bool>(false, true, false)))), global1.a);
    let var_0 = ~_wgslsmith_mult_vec4_i32(~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, 11908i, u_input.e.x, u_input.d), vec4<i32>(-2147483647i, u_input.e.x, -1i, u_input.c.x))), abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-2147483647i, 33570i, u_input.e.x, -28275i)), -vec4<i32>(u_input.e.x, 2147483647i, -1i, -2147483647i))));
    global2 = 1000f;
    let var_1 = false;
    global0 = !any(!select(select(vec4<bool>(var_1, var_1, false, true), vec4<bool>(true, false, true, false), false), !vec4<bool>(false, var_1, var_1, true), select(vec4<bool>(true, global1.a, var_1, global1.a), vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(false, false, false, var_1))));
    return -247f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))));
    global1 = func_2(select(vec4<bool>(~u_input.b.x > u_input.b.x, true, global1.a, !global1.a), !(!(!vec4<bool>(false, global1.a, true, global1.a))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.a, global1.a, false, global1.a), vec4<bool>(true, global1.a, false, global1.a), false), true), vec4<bool>(true, true, any(vec4<bool>(global1.a, false, true, true)), !global1.a), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, global1.a, global1.a), global1.a))), any(!select(select(vec4<bool>(true, false, global1.a, true), vec4<bool>(true, global1.a, true, false), false), !vec4<bool>(global1.a, true, false, false), global1.a)));
    var var_0 = 27684i <= min(2147483647i, -u_input.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1465f, 337f)))) * vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.b.x, !vec4<bool>(global1.a, false, false, global1.a), ~u_input.e.x, Struct_1(false))).x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -160f)))), vec2<f32>(_wgslsmith_f_op_f32(-434f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -334f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = var_1.x;
    var var_3 = func_2(vec4<bool>(true, global1.a, true, !(!global1.a)), any(select(vec2<bool>(any(vec4<bool>(true, global1.a, global1.a, false)), !global1.a), !vec2<bool>(global1.a, global1.a), false)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_5 = abs(abs(u_input.d));
    let var_6 = func_2(vec4<bool>(var_1.x == var_4, true, select(!select(true, false, var_3.a), all(!vec3<bool>(var_3.a, false, var_3.a)), false), false), (_wgslsmith_mod_u32(abs(25708u), _wgslsmith_clamp_u32(u_input.b.x, 16909u, 48027u)) == u_input.b.x) | !(92159u > min(4294967295u, u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(0u & firstLeadingBit(u_input.b.x)) ^ 67437u);
}

