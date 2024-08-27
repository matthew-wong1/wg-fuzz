struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<i32>;

var<private> global2: f32 = -600f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 1665f, -1504f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(781f, -1985f, global0.x)))))))) * vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-1715f + -913f)));
    global1 = abs(reverseBits(vec3<i32>(global1.x, arg_2.d.x >> (~arg_2.e % 32u), select(1i, u_input.a, arg_2.b) >> (firstLeadingBit(45497u) % 32u))));
    global2 = 1f;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1780f, arg_0.x, global0.x) - vec3<f32>(1080f, 615f, global0.x)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1474f, -671f, -674f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-694f, 455f)), arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, -335f, global0.x))))))));
    let var_0 = true;
    return _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(~arg_1.x, -14415i, 10005i, firstLeadingBit(1i)), arg_1)), _wgslsmith_mod_vec4_i32(arg_1, arg_1));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = max(vec2<i32>(-1i) * -u_input.b.xx, global1.xx);
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * -203f)));
    var var_1 = ~arg_1.xz;
    var var_2 = Struct_1(!select(!(!vec4<bool>(arg_0, arg_0, arg_0, false)), vec4<bool>(arg_0, true, all(vec3<bool>(true, false, arg_0)), arg_0 == arg_0), !vec4<bool>(true, arg_0, true, arg_0)), arg_0, !(!select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, arg_0), vec4<bool>(false, true, true, arg_0)), !vec4<bool>(true, arg_0, arg_0, arg_0))), vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(1i, 2147483647i, u_input.b.x, 46911i) | vec4<i32>(var_0.x, var_0.x, -274i, var_0.x)), func_3(vec2<f32>(global0.x, global0.x), vec4<i32>(u_input.a, var_0.x, var_0.x, -8949i) ^ vec4<i32>(968i, var_0.x, var_0.x, u_input.a), Struct_1(vec4<bool>(true, arg_0, false, arg_0), arg_0, vec4<bool>(true, arg_0, false, arg_0), vec3<i32>(global1.x, -2147483647i, 1i), u_input.c))), _wgslsmith_clamp_i32(0i & _wgslsmith_div_i32(var_0.x, 2147483647i), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 1362f), vec2<f32>(-925f, global0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -46525i, -6497i, u_input.b.x), vec4<i32>(-572i, 55408i, 21569i, -14456i)), Struct_1(vec4<bool>(true, arg_0, false, arg_0), true, vec4<bool>(arg_0, true, false, arg_0), u_input.b, u_input.e)).x, firstLeadingBit(1i)), abs(-u_input.a) ^ 1i), 1u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-802f, global0.x)))), 323f, 563f);
    return Struct_1(vec4<bool>(true && !var_2.b, select(_wgslsmith_f_op_f32(-var_3.x) < _wgslsmith_f_op_f32(min(var_3.x, 375f)), 424f != _wgslsmith_f_op_f32(select(global0.x, var_3.x, arg_0)), select(true, arg_0 & var_2.c.x, false)), ~_wgslsmith_clamp_u32(0u, 11693u, 11729u) >= 50694u, var_2.a.x), arg_0 & false, select(select(select(!vec4<bool>(false, var_2.b, arg_0, var_2.c.x), var_2.c, !vec4<bool>(true, arg_0, false, false)), var_2.a, select(vec4<bool>(arg_0, var_2.a.x, var_2.a.x, arg_0), !var_2.a, any(var_2.c))), !(!var_2.a), select(var_2.a, var_2.c, var_2.b)), vec3<i32>(15338i, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_2.d.x, var_0.x, 0i), vec4<i32>(var_2.d.x, var_0.x, var_2.d.x, var_2.d.x)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, var_2.d.x, 36586i, 2147483647i), vec4<i32>(u_input.a, -10794i, 512i, -1i), -vec4<i32>(global1.x, u_input.a, u_input.a, u_input.a))), global1.x), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<bool>(all(select(!arg_0.c.xxz, select(vec3<bool>(true, false, false), !vec3<bool>(false, false, arg_0.a.x), select(vec3<bool>(true, arg_0.c.x, false), arg_0.c.zwx, arg_0.a.x)), u_input.a >= _wgslsmith_sub_i32(26721i, 0i))), select(any(arg_0.a), 120f <= arg_1, true));
    let var_1 = ~(-53417i);
    global1 = -abs(arg_0.d);
    let var_2 = Struct_1(arg_0.c, true, !select(arg_0.c, select(!arg_0.a, vec4<bool>(var_0.x, arg_0.c.x, false, false), arg_0.c), select(vec4<bool>(var_0.x, arg_0.a.x, true, false), vec4<bool>(true, true, true, true), select(arg_0.c, arg_0.a, false))), _wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(var_1), 0i, arg_0.d.x), -min(arg_0.d, vec3<i32>(u_input.a, global1.x, u_input.a)))), u_input.c >> (0u % 32u));
    let var_3 = var_0.x;
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -850f) * 305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), true)));
    let var_1 = func_4(func_2(false, _wgslsmith_sub_vec3_u32(min(vec3<u32>(21294u, u_input.c, 0u), vec3<u32>(u_input.e, u_input.e, 5798u)), ~vec3<u32>(0u, u_input.c, u_input.e))), -1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))))), global0.x, _wgslsmith_f_op_f32(abs(global0.x))));
    var_0 = var_2.x;
    var var_3 = 622f;
    return !arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec4<bool>(-202f > global0.x, false, true, false), vec4<bool>(func_1(18680i, vec3<bool>(true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), true, select(true, u_input.e != u_input.d, global0.x == 607f), func_4(Struct_1(vec4<bool>(false, true, false, false), false, vec4<bool>(true, true, true, false), vec3<i32>(global1.x, global1.x, -2147483647i), 1u), global0.x).b), true), !(true | any(vec4<bool>(true, true, true, true))) & true, func_2(true, vec3<u32>(_wgslsmith_mult_u32(u_input.d, ~u_input.d), 0u, _wgslsmith_add_u32(43849u, ~u_input.d))).a, u_input.b, 1u);
    global2 = _wgslsmith_f_op_f32(ceil(608f));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.zz + global0.zy));
    var var_2 = _wgslsmith_mult_u32(firstLeadingBit(53528u), max(32703u, ~func_2(false, _wgslsmith_mult_vec3_u32(vec3<u32>(41119u, var_0.e, 0u), vec3<u32>(u_input.d, var_0.e, 13845u))).e));
    let var_3 = func_4(Struct_1(func_4(func_2(u_input.e <= 0u, ~vec3<u32>(var_0.e, var_0.e, var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))).c, !(_wgslsmith_f_op_f32(2032f - 324f) != global0.x), select(var_0.c, !var_0.c, var_0.c), (vec3<i32>(var_0.d.x, var_0.d.x, -65782i) ^ firstTrailingBit(u_input.b)) & select(abs(vec3<i32>(global1.x, 0i, 0i)), ~var_0.d, !vec3<bool>(false, var_0.a.x, var_0.b)), ~firstTrailingBit(~3217u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-348f - 1283f)))) - 2013f));
    global1 = var_0.d;
    var var_4 = all(vec3<bool>(func_1(_wgslsmith_mult_i32(global1.x, 0i), !var_0.a.xzy, func_4(var_3, _wgslsmith_f_op_f32(sign(-859f))).a), var_3.b, ~42730u < select(~115402u, var_0.e, all(var_0.a.zwx))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1067f, _wgslsmith_div_f32(-1882f, 814f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 521f, -208f), vec3<f32>(715f, 210f, -706f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, ~var_0.d, select(var_3.a.x, var_0.a.x && var_3.a.x, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1752f, var_1.x)), vec4<f32>(global0.x, global0.x, -1152f, var_1.x))))), 895f, ~(1u << (0u % 32u)));
}

