struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: bool = true;

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(304f, 170f, 1238f), vec3<f32>(-426f, 1077f, -758f), vec3<f32>(444f, 1317f, 1942f), vec3<f32>(-277f, -760f, 352f), vec3<f32>(-1011f, 1011f, -805f), vec3<f32>(1368f, 1593f, 203f), vec3<f32>(-614f, -866f, -1203f), vec3<f32>(453f, 685f, -741f), vec3<f32>(2195f, 1409f, 692f), vec3<f32>(-981f, -1535f, 272f), vec3<f32>(-387f, 144f, 474f), vec3<f32>(1300f, 1000f, -959f), vec3<f32>(-1000f, 790f, 1274f), vec3<f32>(336f, 320f, -1062f), vec3<f32>(-1110f, 583f, -1074f), vec3<f32>(1134f, -574f, -1563f), vec3<f32>(848f, -1000f, 2815f), vec3<f32>(689f, 1000f, 655f), vec3<f32>(647f, 1545f, -1149f), vec3<f32>(-1051f, -664f, -466f), vec3<f32>(-406f, -1226f, -319f), vec3<f32>(-1709f, -1490f, 729f), vec3<f32>(-2701f, 295f, 1000f), vec3<f32>(229f, -1000f, 802f));

var<private> global3: Struct_3;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: f32) -> vec4<f32> {
    global1 = true;
    global2 = array<vec3<f32>, 24>();
    var var_0 = !arg_1.x;
    var var_1 = Struct_3(_wgslsmith_div_i32(-arg_2.a << (u_input.a.x % 32u), arg_2.a) <= arg_2.a, global3.b);
    let var_2 = all(arg_1.zx);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-858f, global4.x), -135f, global3.b, global4.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, global3.b, global4.x, global4.x), vec4<f32>(1212f, global4.x, -351f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1785f)) - var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -637f), -778f, 837f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    return _wgslsmith_mod_u32(24307u, ~14663u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(!arg_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.x, global4.x))));
    global2 = array<vec3<f32>, 24>();
    var var_1 = arg_1;
    global4 = vec2<f32>(-569f, _wgslsmith_div_f32(-779f, -733f));
    global3 = Struct_3(true, -1305f);
    return Struct_1(false, func_3(u_input.b, Struct_2(max(var_1.d.x, var_1.c.x | 9910i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -479f), -543f, all(global0[_wgslsmith_index_u32(12827u, 32u)]))))), select(abs(arg_1.c), min(max(abs(arg_1.c), vec4<i32>(u_input.d, -2147483647i, -44522i, 0i)), vec4<i32>(-49880i, var_1.c.x, arg_0.x, -arg_1.d.x)), select(select(!vec4<bool>(true, arg_1.a, true, true), select(global0[_wgslsmith_index_u32(36828u, 32u)], global0[_wgslsmith_index_u32(var_1.b, 32u)], global3.a), !var_0.a), !(!vec4<bool>(false, var_0.a, true, var_0.a)), vec4<bool>(any(vec4<bool>(false, global3.a, true, false)), true, global3.a == var_1.a, true))), _wgslsmith_mult_vec2_i32(abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.c.wy, var_1.d), vec2<i32>(u_input.d, var_1.d.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.d.x, ~0i), vec2<i32>(-u_input.d, 24537i))), arg_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    global1 = !(!(_wgslsmith_f_op_f32(max(949f, _wgslsmith_f_op_f32(f32(-1f) * -633f))) == arg_0.e.x));
    global4 = vec2<f32>(global3.b, _wgslsmith_f_op_f32(sign(877f)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_vec4_f32(func_1(false, vec3<bool>(arg_0.a, arg_0.a, false), Struct_2(arg_0.c.x, global4.x), global3.b)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f - arg_0.e.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.xw))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1017f + global3.b))), _wgslsmith_f_op_f32(-global4.x)) - vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1(false && arg_0.a, select(vec3<bool>(arg_0.a, false, false), vec3<bool>(arg_1.x, true, false), false), Struct_2(1i, global4.x), _wgslsmith_f_op_f32(-global3.b))).x, global3.b)));
    global2 = array<vec3<f32>, 24>();
    let var_0 = !global3.a;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_4(func_2(-abs(~vec4<i32>(1i, u_input.d, 2147483647i, -5053i)), Struct_1(true, u_input.c.x, vec4<i32>(max(u_input.d, u_input.d), _wgslsmith_sub_i32(11922i, 12794i), u_input.d, ~u_input.d), -vec2<i32>(-17361i, u_input.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(false, vec3<bool>(true, false, false), Struct_2(u_input.d, -1000f), global3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1483f, global3.b, 609f, 401f)))))), vec2<bool>(!global3.a, global3.a), i32(-1i) * -(~abs(u_input.d)), _wgslsmith_mult_vec3_u32((u_input.a.xyy & u_input.c) | _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, 75749u), ~vec3<u32>(4294967295u, u_input.b, var_0.x)), _wgslsmith_sub_vec3_u32(var_0.zxx, ~var_0.zyw)));
    let var_2 = countOneBits(4294967295u);
    let var_3 = select(!(!(!select(vec2<bool>(true, global3.a), vec2<bool>(false, false), vec2<bool>(global3.a, global3.a)))), vec2<bool>(global3.a, global3.a), all(vec2<bool>(true, global3.a)));
    var_1 = min(~31231u, ~func_3(1u, Struct_2(-u_input.d, _wgslsmith_f_op_f32(sign(global3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(false, select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, global3.a, false), false), Struct_2(u_input.d, 1418f), -998f)).x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(step(global4.x, -169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * global4.x))), _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1203f * _wgslsmith_f_op_vec4_f32(func_1(true, vec3<bool>(false, true, var_3.x), Struct_2(u_input.d, -185f), 400f)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f) - _wgslsmith_f_op_f32(max(-684f, global3.b)))))), ~u_input.a, func_2(-firstLeadingBit(vec4<i32>(1i, u_input.d, 1i, u_input.d)), Struct_1(var_3.x, var_0.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-17551i, 0i, u_input.d, u_input.d), ~vec4<i32>(39097i, u_input.d, 34671i, u_input.d)), firstLeadingBit(vec2<i32>(0i, u_input.d)) & vec2<i32>(u_input.d, u_input.d), vec4<f32>(global4.x, -393f, -493f, -708f))).c.www, vec3<i32>(u_input.d, -34241i, _wgslsmith_sub_i32((-43111i | u_input.d) << (_wgslsmith_clamp_u32(55953u, 43765u, u_input.c.x) % 32u), 0i)));
}

