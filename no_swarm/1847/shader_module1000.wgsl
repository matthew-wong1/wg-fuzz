struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(427f, 147f), vec2<f32>(-576f, 1813f), vec2<f32>(1051f, 504f), vec2<f32>(206f, -471f), vec2<f32>(-437f, -749f), vec2<f32>(333f, -1158f), vec2<f32>(-364f, 352f), vec2<f32>(1399f, 915f), vec2<f32>(-559f, 254f), vec2<f32>(1627f, 3022f), vec2<f32>(1435f, 1871f), vec2<f32>(425f, -1000f), vec2<f32>(-583f, -1648f), vec2<f32>(-993f, 430f), vec2<f32>(-191f, -1538f), vec2<f32>(1000f, -1000f), vec2<f32>(1261f, 2108f), vec2<f32>(-950f, -1483f), vec2<f32>(-139f, -1000f), vec2<f32>(-128f, 444f), vec2<f32>(-573f, 1375f), vec2<f32>(158f, 1207f), vec2<f32>(159f, -1517f));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = -u_input.c;
    global0 = Struct_1(global0.a);
    global2 = !select(select(vec4<bool>(arg_1.x > u_input.c, true, arg_3.x, true), select(select(vec4<bool>(true, true, global2.x, arg_3.x), vec4<bool>(true, arg_3.x, false, false), global2.x), !vec4<bool>(arg_3.x, true, false, false), select(vec4<bool>(global2.x, false, false, false), vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(arg_3.x, global2.x, global2.x, false))), all(select(vec4<bool>(global2.x, global2.x, arg_3.x, arg_3.x), vec4<bool>(global2.x, arg_3.x, false, true), arg_3.x))), vec4<bool>(arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 44261u, u_input.b.x), vec4<u32>(1u, arg_0, arg_0, arg_0)) < _wgslsmith_dot_vec4_u32(vec4<u32>(38338u, 4294967295u, u_input.b.x, arg_0), vec4<u32>(30332u, arg_0, 143918u, 0u)), !arg_3.x & (global0.a > 2147483647i), false), true);
    let var_1 = Struct_1(~(-arg_2));
    global1 = array<vec2<f32>, 23>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(459f * 745f), _wgslsmith_f_op_f32(f32(-1f) * -2154f), _wgslsmith_f_op_f32(abs(-727f)), -290f) + vec4<f32>(-1212f, _wgslsmith_f_op_f32(-2903f - -2033f), _wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(f32(-1f) * -819f)))));
}

fn func_2() -> bool {
    global2 = !(!vec4<bool>(true, !(false & global2.x), !any(vec2<bool>(false, false)), !global2.x));
    let var_0 = Struct_1(global0.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_mod_u32(4294967295u, u_input.b.x), ~vec2<i32>(2147483647i, var_0.a) | (vec2<i32>(u_input.c, 1i) << (u_input.b.xy % vec2<u32>(32u))), var_0.a << (firstLeadingBit(u_input.b.x) % 32u), global2.wxy)) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-451f, -890f, 351f, 181f) * vec4<f32>(-1558f, -648f, -1908f, -1808f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, -500f, 200f, -365f) * vec4<f32>(-578f, -877f, 680f, 639f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(26263u, vec2<i32>(var_0.a, -6452i), u_input.a, vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2292f, var_1.x, 437f) * vec4<f32>(123f, var_1.x, 406f, var_1.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-364f, var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x))), 522f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f, _wgslsmith_div_f32(720f, var_1.x), _wgslsmith_f_op_f32(round(var_1.x)))))));
    return !global2.x;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    var var_0 = vec4<u32>(8897u, _wgslsmith_mod_u32(~countOneBits(reverseBits(u_input.b.x)), (8856u & reverseBits(u_input.b.x)) << (1u % 32u)), ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), select(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), func_2())), _wgslsmith_div_u32(~abs(~u_input.b.x), ~(~u_input.b.x)));
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, 2147483647i), ~countOneBits(-1i));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)), _wgslsmith_f_op_f32(f32(-1f) * -450f), any(!global2.zxw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_u32(~var_0.x, min(var_0.x, u_input.b.x)), vec2<i32>(-1i, var_1.x ^ u_input.a), var_1.x, !select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, global2.x), vec3<bool>(global2.x, global2.x, false)))).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(286f))))));
    global1 = array<vec2<f32>, 23>();
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -955f), 1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(927f, 477f))))))));
    return !(!select(vec2<bool>(false, func_2()), vec2<bool>(global2.x, false), _wgslsmith_sub_i32(arg_0, 0i) <= _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(21785i, var_1.x, 2147483647i))));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    global1 = array<vec2<f32>, 23>();
    var var_0 = Struct_1(_wgslsmith_mult_i32(u_input.c, global0.a));
    let var_1 = Struct_1(abs(_wgslsmith_mult_i32(global0.a, ~(~global0.a))));
    return Struct_1(i32(-1i) * -_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, -30638i), vec2<i32>(0i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(-9501i));
    var var_1 = any(global2.yz);
    global0 = func_4(select(global2.wy, select(select(global2.zx, select(global2.wz, vec2<bool>(true, false), vec2<bool>(false, global2.x)), global2.x), select(func_1(28798i), global2.xw, false), !global2.wx), global2.wx));
    var var_2 = Struct_1(-1i);
    let var_3 = Struct_1(_wgslsmith_mod_i32(var_0.a, reverseBits(u_input.c & global0.a)) << (u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(39669i, -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -37933i, var_3.a, 52209i) >> (~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -46464i, -41488i, -2147483647i), ~vec4<i32>(var_2.a, -1i, var_0.a, -1i))));
}

