struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec4<u32> {
    global2 = !select(vec2<bool>(global1.x, true), !select(global0.yz, global1.zz, false), global2.x);
    global1 = global0.yzy;
    global2 = select(global1.zz, select(vec2<bool>(true, global2.x), global1.zy, select(global1.yy, global1.yy, false)), vec2<bool>(all(vec4<bool>(global0.x, all(vec4<bool>(global1.x, true, true, true)), true, true)), !all(!vec3<bool>(global0.x, false, global2.x))));
    let var_0 = Struct_1(vec2<bool>(false || global2.x, !(!global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -1557f))))), ~firstLeadingBit(u_input.c.x) << (u_input.c.x % 32u), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))));
    let var_1 = Struct_1(select(!select(!vec2<bool>(global0.x, global0.x), global1.yz, !var_0.a.x), vec2<bool>(true, true), (true && (global1.x && var_0.a.x)) || all(!vec4<bool>(global1.x, global2.x, global0.x, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.d)), arg_0.x, global0.x)) - 1546f), -1000f), u_input.a, 709f);
    return vec4<u32>(var_0.c, var_0.c, ~(4294967295u & (~1u & u_input.a)), ~var_1.c);
}

fn func_2() -> Struct_1 {
    var var_0 = -max(vec4<i32>(~(~(-51115i)), countOneBits(~u_input.d), 56983i, 1i), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.b.x, -13282i, u_input.b.x, u_input.b.x), vec4<i32>(1i, u_input.b.x, u_input.d, 2147483647i)) & vec4<i32>(1i, u_input.d, u_input.d, u_input.d), ~vec4<i32>(u_input.b.x, u_input.b.x, 32371i, u_input.d) ^ select(vec4<i32>(u_input.d, u_input.d, 73077i, -78101i), vec4<i32>(0i, u_input.b.x, u_input.d, -22198i), vec4<bool>(false, global2.x, global2.x, global1.x))));
    var var_1 = Struct_1(global1.xz, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-845f)))), 9962u, _wgslsmith_div_f32(1000f, -641f));
    let var_2 = -_wgslsmith_sub_vec4_i32(~vec4<i32>(firstLeadingBit(-2147483647i), -1i << (u_input.a % 32u), -u_input.d, firstTrailingBit(var_0.x)), vec4<i32>(8885i, -22273i, u_input.d << (var_1.c % 32u), _wgslsmith_sub_i32(var_0.x, 6113i)) << ((vec4<u32>(u_input.c.x, var_1.c, 0u, 70766u) ^ func_3(vec2<f32>(-469f, -362f))) % vec4<u32>(32u)));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f * var_1.b)))), select(var_1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x << (u_input.c.x % 32u), _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yy), _wgslsmith_div_u32(56012u, u_input.a), min(0u, var_1.c)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 49102u, 14095u, var_1.c), vec4<u32>(var_1.c, var_1.c, 1u, 5777u)))), true), _wgslsmith_f_op_f32(660f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(648f, var_1.d)), 825f)))));
    var var_4 = ~698u;
    return Struct_1(!select(vec2<bool>(true, all(vec4<bool>(false, true, global0.x, true))), vec2<bool>(global1.x, true), all(!vec3<bool>(var_3.a.x, global0.x, true))), _wgslsmith_f_op_f32(var_1.b * -1121f), _wgslsmith_div_u32(_wgslsmith_sub_u32(~(var_1.c ^ var_3.c), 1u), ~var_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -791f), var_1.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)))));
}

fn func_1(arg_0: f32) -> f32 {
    global1 = vec3<bool>(global0.x, global2.x || !global0.x, firstLeadingBit(u_input.b.x) < _wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.yx));
    var var_0 = func_2();
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, arg_0, 1490f, var_0.b), vec4<f32>(1263f, 316f, 797f, var_0.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 455f, arg_0, arg_0) + vec4<f32>(-2139f, -1336f, -317f, var_0.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, -871f, 100f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1504f - -1224f), -942f, _wgslsmith_f_op_f32(max(var_0.b, -168f)), _wgslsmith_f_op_f32(-1217f * -1169f)))))));
    let var_3 = Struct_1(!func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-155f * _wgslsmith_f_op_f32(-984f - var_0.b)), -1274f)), ~5856u, var_0.d);
    return 579f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(func_1(2575f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(1000f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(853f)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(223f - 1110f), _wgslsmith_f_op_f32(select(-963f, -765f, global0.x)), true)))));
    global0 = vec4<bool>(var_0, global1.x, false, false);
    global2 = vec2<bool>(_wgslsmith_sub_i32(-18128i, ~u_input.d | -1i) < ~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.b.x, -1i, 71780i), vec4<i32>(u_input.d, u_input.d, 1i, u_input.b.x)), true);
    var var_1 = any(!(!(!select(vec4<bool>(global1.x, false, var_0, global0.x), vec4<bool>(var_0, global2.x, false, true), vec4<bool>(global0.x, global2.x, false, false)))));
    global2 = global1.zx;
    let var_2 = ~(~u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-abs(vec4<i32>(34142i, -93420i, 2147483647i, -1i))));
}

