struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(global0.b.c.x, _wgslsmith_f_op_f32(f32(-1f) * -711f), arg_1.a.x)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f * arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1760f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1124f + -202f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, 236f, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-318f, arg_0, global0.b.c.x), vec3<f32>(arg_0, -880f, global0.b.c.x))), any(arg_1.a.wxy))) - vec3<f32>(global0.b.c.x, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(736f + -1369f))))));
    global0 = Struct_3(_wgslsmith_mod_vec4_i32(global0.a, abs(abs(~global0.a))), global0.b);
    let var_2 = vec3<bool>(all(vec4<bool>(any(vec3<bool>(true, false, false)), var_0, true, _wgslsmith_div_f32(318f, global0.b.c.x) > arg_0)), ((u_input.e.x ^ _wgslsmith_add_u32(u_input.d, u_input.b)) << (18730u % 32u)) > global0.b.a, all(!select(select(vec2<bool>(true, arg_1.a.x), arg_1.a.wz, false), !vec2<bool>(arg_1.a.x, var_0), all(vec3<bool>(var_0, arg_1.a.x, false)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-766f, _wgslsmith_f_op_f32(trunc(-1215f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x * -534f), global0.b.c.x, _wgslsmith_f_op_f32(select(var_1.x, arg_0, false)))))));
    return ~(-(vec4<i32>(_wgslsmith_sub_i32(global0.a.x, u_input.c), abs(global0.a.x), ~u_input.c, select(global0.a.x, u_input.a.x, var_0)) | vec4<i32>(~(-1i), ~(-28317i), ~2147483647i, 1i)));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, 1818f, 1619f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.c.x, global0.b.c.x, global0.b.c.x), vec3<f32>(global0.b.c.x, -1000f, -1761f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.c.x, -739f, global0.b.c.x), vec3<f32>(global0.b.c.x, global0.b.c.x, 878f), vec3<bool>(true, arg_0, arg_0)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(930f, -871f, global0.b.c.x) + vec3<f32>(global0.b.c.x, 195f, 2203f))))))));
    let var_1 = vec2<i32>(u_input.a.x, -_wgslsmith_dot_vec4_i32(-firstTrailingBit(global0.a), vec4<i32>(25451i, 2147483647i, u_input.c, u_input.c)));
    let var_2 = var_0.yx;
    global0 = Struct_3(-func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f)), Struct_4(vec4<bool>(true, arg_0, arg_0, false))), global0.b);
    let var_3 = vec4<f32>(-606f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.b.c.x)), _wgslsmith_f_op_f32(trunc(569f))))), global0.b.c.x);
    return !(!(!(!(!vec3<bool>(arg_0, true, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<f32>) -> f32 {
    global0 = Struct_3(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1i, global0.a.x, u_input.c), vec4<i32>(-1i, global0.a.x, global0.a.x, global0.a.x) >> (select(u_input.e, u_input.e, vec4<bool>(true, false, arg_0.x, true)) % vec4<u32>(32u))), vec4<i32>(-(~global0.a.x), ~(~global0.a.x), _wgslsmith_clamp_i32(-2899i, func_3(1000f, Struct_4(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))).x, 28852i), 2147483647i), true), global0.b);
    var var_0 = -((u_input.a | global0.a.wwy) | ~firstTrailingBit(reverseBits(u_input.a)));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(global0.a.zzw), global0.a.zxz);
    let var_2 = Struct_1(arg_2, u_input.e.zwz, vec2<bool>(arg_0.x, arg_0.x));
    let var_3 = arg_1;
    return 550f;
}

fn func_1() -> Struct_4 {
    global0 = Struct_3(global0.a, Struct_2(~(~57862u), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(true), global0.b.b << (global0.b.b % 32u), vec4<f32>(global0.b.c.x, -1008f, global0.b.c.x, -182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.c.x))))));
    var var_0 = Struct_4(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)));
    global0 = Struct_3(select(~(-global0.a), ~global0.a, _wgslsmith_f_op_f32(1000f * global0.b.c.x) == -920f) >> ((~abs(vec4<u32>(1u, global0.b.b, 96489u, u_input.e.x)) & abs(vec4<u32>(22203u, global0.b.a, 24932u, u_input.b))) % vec4<u32>(32u)), global0.b);
    var_0 = Struct_4(vec4<bool>(all(var_0.a.zwy), true, any(!select(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_0.a)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, 485f, -2255f, -382f) * vec4<f32>(global0.b.c.x, -2430f, global0.b.c.x, -1995f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.c.x, -1000f, 323f, -2241f), vec4<f32>(global0.b.c.x, global0.b.c.x, -889f, 1345f), var_0.a)) - vec4<f32>(global0.b.c.x, global0.b.c.x, global0.b.c.x, -241f)))), u_input.e.wxw, select(var_0.a.wy, !(!vec2<bool>(var_0.a.x, var_0.a.x)), true));
    return Struct_4(vec4<bool>(!var_0.a.x, func_2(any(select(vec3<bool>(var_0.a.x, true, true), var_0.a.xxz, var_0.a.zyy))).x, global0.a.x == 33919i, !var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-685f, -1000f) * _wgslsmith_f_op_f32(ceil(-851f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.c.x)))) * _wgslsmith_f_op_f32(-global0.b.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.b.c.x)), -1000f)));
    global0 = Struct_3(countOneBits(func_3(var_2.x, Struct_4(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), Struct_2(_wgslsmith_div_u32(~abs(4294967295u), 4294967295u), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, global0.b.c.x, true))), -1356f)));
    var var_3 = global0.b;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.c.x - var_2.x), _wgslsmith_f_op_f32(step(1241f, global0.b.c.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-678f - 784f) * _wgslsmith_f_op_f32(sign(-651f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1967f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f + var_3.c.x) + _wgslsmith_div_f32(global0.b.c.x, var_3.c.x))) * -753f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4 - _wgslsmith_div_f32(461f, _wgslsmith_div_f32(-109f, _wgslsmith_f_op_f32(-455f + 1000f)))), 121555u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f * var_4) - var_3.c.x)), _wgslsmith_div_vec2_i32(u_input.a.xx | vec2<i32>(u_input.c << (global0.b.a % 32u), -17519i >> (var_3.b % 32u)), max(global0.a.yx, global0.a.ww)), 4294967295u);
}

