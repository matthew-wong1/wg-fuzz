struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(502f, 657f, -1252f, 1195f, 1000f, 532f, -198f, 1493f, -130f, -339f, 1301f, -1000f, 682f, 652f, 504f, -1356f, -588f, 370f, 290f, -520f, -643f, -288f, 1226f, 1797f, -560f, 2478f, 611f, 860f);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-417f, -1135f), vec2<f32>(837f, 177f), vec2<f32>(718f, 810f), vec2<f32>(-835f, -1841f), vec2<f32>(1072f, 1270f), vec2<f32>(-1337f, 490f), vec2<f32>(-2354f, 143f), vec2<f32>(-994f, -442f), vec2<f32>(-737f, 732f), vec2<f32>(179f, 794f), vec2<f32>(-929f, -1000f), vec2<f32>(-383f, 932f), vec2<f32>(291f, 663f), vec2<f32>(1000f, -100f), vec2<f32>(1139f, -1107f), vec2<f32>(200f, -1298f), vec2<f32>(-180f, 2077f), vec2<f32>(1016f, 1369f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(~2147483647i, 757f, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 18707u, ~(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x))), 18u)], true, firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a.xwx | vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-1i) * -u_input.a.wzy)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(209f * arg_3.b)))), arg_2));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_1.e.x, u_input.a.x, arg_1.a), u_input.a, arg_1.d) & vec4<i32>(u_input.a.x, 26349i, 2147483647i, u_input.a.x), vec4<i32>(34403i, _wgslsmith_mult_i32(u_input.a.x, 28871i), min(arg_1.e.x, 14058i), select(u_input.a.x, arg_1.e.x, global1.x))) ^ ~(-u_input.a.x);
    global1 = select(vec3<bool>(all(select(vec3<bool>(false, global1.x, false), vec3<bool>(false, arg_1.d, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false))), true, false), vec3<bool>(~1i <= arg_1.e.x, arg_2.x, any(!vec4<bool>(true, global1.x, global1.x, global1.x))), !(!select(select(vec3<bool>(arg_1.d, true, false), vec3<bool>(global1.x, arg_1.d, arg_2.x), false), select(vec3<bool>(false, true, arg_1.d), vec3<bool>(arg_1.d, arg_2.x, arg_2.x), vec3<bool>(arg_1.d, arg_1.d, true)), global1.x)));
    var var_1 = ~countOneBits(firstLeadingBit(u_input.a.wwy)) | arg_1.e;
    global0 = array<f32, 28>();
    var_1 = u_input.a.wxy;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(countOneBits(41257u), 28u)]))), -593f);
}

fn func_1() -> u32 {
    global2 = array<vec2<f32>, 18>();
    let var_0 = Struct_1(~_wgslsmith_mult_i32(-9880i, u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(_wgslsmith_clamp_u32(1u, 3882u, u_input.b.x) | _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), u_input.b.x), 28u)], _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] - -1646f) - global0[_wgslsmith_index_u32(1u, 28u)])), Struct_1(u_input.a.x & u_input.a.x, _wgslsmith_f_op_f32(func_2(!vec4<bool>(true, true, false, global1.x), 2147483647i | u_input.a.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35971u, 28u)]), Struct_1(u_input.a.x, global0[_wgslsmith_index_u32(46575u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], global1.x, vec3<i32>(u_input.a.x, 0i, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))), global1.x, _wgslsmith_add_vec3_i32(u_input.a.xzx ^ vec3<i32>(-26296i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -35134i, u_input.a.x))), global1.xx)), true, u_input.a.wyx);
    global0 = array<f32, 28>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1798f - -2133f), var_0.b, false));
    var var_2 = select(select(vec3<bool>(!all(vec3<bool>(global1.x, global1.x, var_0.d)), true & global1.x, all(select(global1.zy, vec2<bool>(true, var_0.d), global1.x))), !select(vec3<bool>(true, global1.x, var_0.d), vec3<bool>(false, true, true), true), !(select(35957u, 4294967295u, global1.x) == ~u_input.b.x)), vec3<bool>(all(!global1.xx), !var_0.d, all(select(vec3<bool>(var_0.d, var_0.d, global1.x), !vec3<bool>(var_0.d, true, global1.x), any(vec4<bool>(global1.x, global1.x, global1.x, true))))), true);
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.yw), global0[_wgslsmith_index_u32(func_1(), 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true, _wgslsmith_add_vec3_i32(u_input.a.zxw, vec3<i32>(i32(-1i) * -26553i, -45882i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.zy) ^ _wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(1i, 46448i, -1i)))));
    var var_1 = 398f;
    var_1 = 368f;
    let var_2 = u_input.b.x;
    let var_3 = Struct_1(-firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(20620i, -1i, var_0.e.x))), -2753f, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(round(-501f))), !((_wgslsmith_f_op_f32(exp2(var_0.b)) > _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1937u, 28u)], var_0.b, global1.x))) | (_wgslsmith_sub_i32(var_0.a, -39068i) > u_input.a.x)), vec3<i32>(abs(var_0.e.x), -22783i, _wgslsmith_mod_i32(-var_0.e.x, var_0.e.x)));
    global2 = array<vec2<f32>, 18>();
    var var_4 = Struct_1(max(-59029i, u_input.a.x), var_0.b, _wgslsmith_f_op_vec2_f32(-var_3.c), true, vec3<i32>(u_input.a.x, -1i, ~(~_wgslsmith_clamp_i32(-1i, 0i, u_input.a.x))));
    let var_5 = -1348f;
    var var_6 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(8554u), 28u)]) * global0[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_div_vec2_f32(vec2<f32>(574f, 681f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b, var_5))), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.c.x, var_5), global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), !vec2<bool>(true, global1.x))))), true, -var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(min(_wgslsmith_mod_vec3_i32(var_6.e, vec3<i32>(var_3.e.x, 0i, var_0.a) << (vec3<u32>(var_2, u_input.b.x, 0u) % vec3<u32>(32u))), max(u_input.a.xwy, -var_3.e)), vec3<i32>(var_0.e.x | max(-1i, var_0.e.x), ~(~(-15522i)), 1i)), ~vec2<i32>(_wgslsmith_mod_i32(1i, var_3.e.x & var_6.a), firstLeadingBit(var_4.e.x)), vec3<i32>(countOneBits(i32(-1i) * -var_6.a), var_3.e.x, _wgslsmith_clamp_i32(1i, var_3.e.x & -52996i, u_input.a.x) << (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(191f, 2266f, -417f, -2853f)))))));
}

