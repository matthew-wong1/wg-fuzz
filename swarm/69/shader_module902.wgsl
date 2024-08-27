struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 7060u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 69555u), vec2<u32>(80598u, 0u), vec2<u32>(1u, 57142u), vec2<u32>(35086u, 10451u), vec2<u32>(0u, 62429u), vec2<u32>(56384u, 1u), vec2<u32>(1u, 0u), vec2<u32>(0u, 15779u), vec2<u32>(25732u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 13050u));

var<private> global3: bool;

var<private> global4: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(1227f, -812f, -1100f, -284f), vec4<f32>(121f, -1483f, 665f, -1099f), vec4<f32>(-391f, -418f, -826f, -193f), vec4<f32>(-293f, 451f, 312f, -288f), vec4<f32>(-1790f, -133f, -1750f, -527f), vec4<f32>(195f, 1000f, 1022f, 1592f), vec4<f32>(-1000f, 959f, 1424f, -994f), vec4<f32>(-937f, 534f, -171f, 1240f), vec4<f32>(1000f, 770f, 511f, 1083f), vec4<f32>(-1157f, -148f, -470f, -886f), vec4<f32>(-164f, -817f, -386f, -734f), vec4<f32>(-1966f, 1447f, -256f, -392f), vec4<f32>(789f, -540f, -306f, -1000f), vec4<f32>(-1680f, 1000f, 1744f, -1814f), vec4<f32>(-1686f, -141f, -934f, -745f), vec4<f32>(-1644f, -1166f, -1401f, -1327f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global4[_wgslsmith_index_u32(16224u, 16u)], _wgslsmith_div_vec4_f32(vec4<f32>(1235f, _wgslsmith_f_op_f32(step(var_0.c, arg_0.b)), arg_1.c, 375f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2046f, 190f, 193f, -724f) * vec4<f32>(-1145f, arg_0.c, var_0.b, 526f)))), global0.x)));
    var var_2 = !vec4<bool>(global0.x, true, (-49810i > abs(global1.x)) | global0.x, false);
    let var_3 = ~vec3<i32>(-reverseBits(arg_1.a.x), u_input.a.x, arg_1.a.x);
    var var_4 = 2147483647i;
    return ~_wgslsmith_sub_u32(46895u, ~(~4294967295u) & reverseBits(u_input.b | 1u));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: i32) -> vec2<i32> {
    global4 = array<vec4<f32>, 16>();
    var var_0 = -1i;
    global4 = array<vec4<f32>, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(996f + -1387f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1319f)) - -527f))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(635f)), arg_0.x)) + arg_0.x)), !select(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), !select(vec4<bool>(false, global0.x, false, false), vec4<bool>(false, false, global0.x, false), vec4<bool>(false, true, global0.x, global0.x)), true)));
    var var_2 = -u_input.a;
    return firstLeadingBit(~max(max(vec2<i32>(global1.x, arg_2.x), arg_2), vec2<i32>(_wgslsmith_sub_i32(0i, arg_3), reverseBits(2147483647i))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global1 = ~(-func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1400f, -1842f) + vec2<f32>(arg_0.c, arg_0.b)), vec2<u32>(31939u, func_3(arg_0, arg_0)), arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, u_input.c, 64703i, -2147483647i), min(vec4<i32>(global1.x, global1.x, u_input.c, -24401i), vec4<i32>(68668i, global1.x, u_input.a.x, arg_0.a.x)))));
    var var_0 = vec4<i32>(34270i, arg_0.a.x >> (u_input.b % 32u), u_input.c, -1i) << (vec4<u32>(abs(1u >> (~u_input.b % 32u)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(max(1u, ~u_input.b), 13u)], _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), global2[_wgslsmith_index_u32(u_input.b, 13u)])), u_input.b, 1u) % vec4<u32>(32u));
    var var_1 = arg_0.a.x;
    global2 = array<vec2<u32>, 13>();
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_mult_i32(var_2.a.x, var_0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 42558i), arg_0.a), vec2<i32>(-28253i, var_0.x))), vec2<i32>(2147483647i, -2147483647i)), arg_0.c, _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(f32(-1f) * -532f)));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global0 = select(vec4<bool>(false, _wgslsmith_div_i32(1i, global1.x) < -u_input.c, any(!vec2<bool>(false, global0.x)), !(!global0.x)), select(select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), select(true, global0.x, global0.x)), select(vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, false, global0.x, false), global0.x), vec4<bool>(any(vec4<bool>(false, true, false, false)), any(global0.wyx), global0.x, true)), vec4<bool>(global0.x, select(arg_2.b > arg_3.c, !global0.x, global0.x), false, (122030u <= arg_0.x) & global0.x), arg_3.a.x >= 18673i), vec4<bool>(all(global0.wwy), true, all(select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(false, global0.x, true, true)), !vec4<bool>(true, global0.x, true, true), !vec4<bool>(true, global0.x, global0.x, true))), false));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.c)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c), 1684f, -1315f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c, arg_3.b, 1345f), vec3<f32>(arg_3.b, -1000f, arg_2.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, 134f, arg_2.b)))));
    let var_2 = max(u_input.b >> (4294967295u % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(reverseBits(u_input.b), countOneBits(1u)), 1u)) ^ ~arg_0.x;
    var var_3 = func_2(func_2(Struct_1(arg_2.a, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(arg_2.b - var_1.x))))));
    return select(global0.zx, !global0.xz, vec2<bool>(any(global0.www), all(select(vec3<bool>(false, global0.x, false), select(global0.zzz, global0.xyx, true), false))));
}

fn func_1() -> Struct_1 {
    global3 = (_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -12797i, global1.x, u_input.a.x) | vec4<i32>(-2147483647i, 3726i, 2147483647i, global1.x), firstLeadingBit(select(vec4<i32>(32935i, -1i, 14760i, u_input.a.x), vec4<i32>(u_input.c, 75085i, -1i, -2147483647i), vec4<bool>(true, global0.x, global0.x, global0.x)))) ^ global1.x) > abs(_wgslsmith_mod_i32(-2147483647i, abs(_wgslsmith_mod_i32(u_input.c, 1i))));
    global2 = array<vec2<u32>, 13>();
    let var_0 = !(!(!func_5(vec4<u32>(u_input.b, 8885u, u_input.b, u_input.b), vec3<i32>(-1i, 1602i, global1.x), Struct_1(u_input.a.yx, -1416f, 639f), func_2(Struct_1(u_input.a.yz, -1000f, 1000f)))));
    global4 = array<vec4<f32>, 16>();
    let var_1 = u_input.b;
    return func_2(Struct_1(_wgslsmith_mult_vec2_i32((vec2<i32>(1i, u_input.c) | u_input.a.xz) | _wgslsmith_add_vec2_i32(u_input.a.yx, u_input.a.zy), u_input.a.yy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1659f)) - _wgslsmith_f_op_f32(floor(-427f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-204f + _wgslsmith_f_op_f32(step(1000f, 417f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1212f)), _wgslsmith_f_op_f32(f32(-1f) * -1898f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(global1.x, global1.x) | _wgslsmith_sub_vec2_i32(u_input.a.xy, u_input.a.xz);
    let var_0 = func_1();
    let var_1 = func_1();
    global2 = array<vec2<u32>, 13>();
    let var_2 = select(!(!select(select(vec4<bool>(global0.x, false, false, true), vec4<bool>(true, global0.x, global0.x, global0.x), true), select(vec4<bool>(true, true, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), !global0.x)), !vec4<bool>(global0.x & global0.x, global0.x, global0.x, !(!global0.x)), !vec4<bool>(any(vec2<bool>(global0.x, false)), global0.x, all(!vec4<bool>(false, global0.x, true, global0.x)), any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x))));
    global2 = array<vec2<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(174f, vec2<f32>(var_0.c, var_1.b), 29729u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(461f, 903f) - _wgslsmith_f_op_f32(-var_0.b))))));
}

