struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    return ~(-2147483647i);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    global0 = arg_1.b;
    let var_0 = arg_2.b;
    var var_1 = arg_2.b;
    global0 = false;
    let var_2 = Struct_1(-vec2<i32>(arg_2.a.x, _wgslsmith_add_i32(-39535i, arg_2.a.x) ^ select(2147483647i, arg_2.c, false)), true, -(_wgslsmith_add_i32(-2147483647i, 0i >> (u_input.c % 32u)) << (~1u % 32u)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(665f, 261f, -1219f, -1387f), vec4<f32>(-714f, 1000f, 425f, -2078f))), vec4<f32>(957f, -277f, -103f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, -2595f, _wgslsmith_f_op_f32(-815f + -241f), -560f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(3946f)) * -324f)), _wgslsmith_f_op_f32(723f - _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-329f, 116f)))), -1564f));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(~countOneBits(81917u), 48248u, 24395u, ~u_input.e), Struct_1(countOneBits(-arg_0.a), true, select(-arg_0.c, 2147483647i, any(vec4<bool>(arg_1, false, false, false)))), arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-491f, _wgslsmith_f_op_f32(-332f - 1512f), -371f, _wgslsmith_div_f32(468f, 325f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-664f, -1289f, 1351f, 769f), vec4<f32>(642f, 593f, -2171f, 1131f)))))));
    let var_1 = Struct_1(select(arg_0.a << (reverseBits(vec2<u32>(u_input.c, u_input.e)) % vec2<u32>(32u)), vec2<i32>(~1i & u_input.d.x, ~8376i | arg_0.c), select(arg_1, true, true)), false, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(arg_0.a, _wgslsmith_add_vec2_i32(vec2<i32>(-14154i, u_input.b.x), vec2<i32>(u_input.b.x, -2147483647i))), _wgslsmith_add_i32(u_input.b.x >> (u_input.c % 32u), ~arg_0.c)), u_input.b));
    let var_2 = true;
    var var_3 = reverseBits(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 4294967295u, 38347u), vec4<u32>(u_input.e, 1u, u_input.e, 93520u) & vec4<u32>(u_input.c, 80686u, u_input.c, u_input.c)), reverseBits(37644u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(21182u, 26843u, 34125u, 0u)), ~vec4<u32>(76768u, 1u, 4294967295u, 12572u)), ~abs(28854u)));
    let var_4 = Struct_1(arg_0.a, !var_2 && any(!(!vec2<bool>(true, arg_1))), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(Struct_1(vec2<i32>(-(u_input.d.x & 19470i), _wgslsmith_dot_vec3_i32(u_input.b, abs(vec3<i32>(19996i, u_input.b.x, u_input.b.x)))), true, 0i ^ -func_1(Struct_1(u_input.b.zy, true, u_input.d.x), vec4<f32>(-126f, -681f, 1457f, 1234f))), all(select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), true)));
    let var_0 = -367f;
    global0 = 2147483647i != ~max(_wgslsmith_add_i32(1i, ~u_input.a), ~u_input.b.x);
    global0 = all(vec4<bool>(all(vec2<bool>(true, u_input.e < 112645u)), false, _wgslsmith_sub_i32(u_input.d.x, u_input.a & u_input.a) >= -u_input.b.x, false));
    let var_1 = Struct_1(~u_input.d, true, u_input.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, -2086f), vec2<f32>(2864f, 1290f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1048f) - vec2<f32>(-914f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-495f, 860f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 313f)))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-663f, -919f)), _wgslsmith_f_op_f32(trunc(var_0)))), !func_2(Struct_1(vec2<i32>(0i, -55636i), var_1.b, 997i), true))))), vec2<f32>(_wgslsmith_f_op_f32(340f * -718f), 1250f));
}

