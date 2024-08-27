struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-5539i, -1i), vec2<i32>(1098i, -1i), vec2<i32>(i32(-2147483648), -2731i), vec2<i32>(-333i, 1801i), vec2<i32>(0i, 32543i), vec2<i32>(i32(-2147483648), -2496i), vec2<i32>(2147483647i, 28528i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(3746i, 51101i), vec2<i32>(0i, -33382i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(12478i, -3501i), vec2<i32>(36019i, i32(-2147483648)), vec2<i32>(215i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 64096i), vec2<i32>(73133i, -15911i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, min(max(1i, u_input.a.x), _wgslsmith_sub_i32(reverseBits(u_input.a.x), i32(-1i) * -1043i)) ^ -16226i);
    let var_1 = true;
    let var_2 = -3016i;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1665f, -258f)))));
    var var_4 = vec3<i32>(0i, -7863i, max(var_0, 96717i));
    return ~_wgslsmith_mult_u32(34971u, 1u) < select(_wgslsmith_dot_vec2_u32(min(vec2<u32>(40371u, 4294967295u), vec2<u32>(4294967295u, 4907u)), ~vec2<u32>(7314u, 4294967295u)) | 0u, min(~(~0u), ~27034u), false != (var_1 != true));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = arg_0.b;
    var_0 = Struct_1(select(vec4<bool>(_wgslsmith_f_op_f32(max(635f, -1845f)) < arg_0.d.x, var_0.a.x, func_3(), arg_0.b.a.x), vec4<bool>(arg_0.e.x, select(all(vec4<bool>(arg_3, arg_0.e.x, arg_3, false)), var_0.a.x, var_0.a.x), true, true), false), 0i);
    var var_1 = Struct_1(select(vec4<bool>(any(!arg_0.e.xz), !arg_3, false, false), arg_0.b.a, arg_3), u_input.a.x);
    var_0 = arg_0.b;
    global0 = array<vec2<i32>, 18>();
    return arg_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    var var_0 = Struct_2(4294967295u | _wgslsmith_clamp_u32(arg_0, min(min(arg_1.a, arg_1.a), 46196u), arg_0), Struct_1(!vec4<bool>(arg_1.b.a.x, false, false, true), ~abs(-37481i)), arg_1.e.x, arg_1.d, arg_1.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.d.yy))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) * 667f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x))))) * vec2<f32>(-618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(-var_0.d.x))) - var_0.d.x)));
    let var_2 = var_0.b;
    return i32(-1i) * -2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_3, arg_3, 1u), vec3<u32>(arg_3, arg_3, 40062u)), firstLeadingBit(vec3<u32>(48990u, 4294967295u, arg_3)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3, 0u, 44939u), vec3<u32>(arg_3, 14295u, arg_3) & vec3<u32>(arg_3, 0u, arg_3))));
    var var_1 = false;
    let var_2 = vec3<i32>(func_4(~0u, Struct_2(arg_3, func_2(Struct_2(var_0.x, Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), 1i), arg_0.x, vec3<f32>(arg_1.x, -186f, 227f), arg_0), ~var_0.xx, 1i, arg_0.x), !select(arg_0.x, false, arg_0.x), _wgslsmith_div_vec3_f32(arg_1.zxw, vec3<f32>(arg_1.x, -547f, 932f)), vec3<bool>(arg_1.x == arg_1.x, u_input.a.x <= -1i, true)), ~2147483647i), arg_2, u_input.a.x);
    let var_3 = Struct_1(func_2(Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, arg_3, arg_3, 4294967295u), ~vec4<u32>(1u, 4294967295u, arg_3, var_0.x)), func_2(Struct_2(66793u, Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), var_2.x), false, arg_1.ywy, arg_0), vec2<u32>(var_0.x, 4294967295u) >> (var_0.yz % vec2<u32>(32u)), max(48485i, -20434i), select(arg_0.x, true, arg_0.x)), true, vec3<f32>(646f, _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(sign(2093f))), vec3<bool>(select(arg_0.x, false, arg_0.x), true, arg_0.x)), abs(~_wgslsmith_mod_vec2_u32(var_0.yx, var_0.zz)), _wgslsmith_clamp_i32(-(-2147483647i ^ arg_2), -1i, -2147483647i), all(func_2(Struct_2(4294967295u, Struct_1(vec4<bool>(true, false, false, arg_0.x), -68709i), arg_0.x, vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_0.x, arg_0.x, false)), var_0.zz, _wgslsmith_div_i32(arg_2, 2147483647i), arg_0.x).a.xyx)).a, 2147483647i);
    let var_4 = Struct_2(1u, var_3, arg_0.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_1.yxz, _wgslsmith_f_op_vec3_f32(trunc(arg_1.www))))))), !(!select(!vec3<bool>(true, false, var_3.a.x), vec3<bool>(var_3.a.x, var_3.a.x, true), !vec3<bool>(arg_0.x, false, arg_0.x))));
    return Struct_2(_wgslsmith_mod_u32(~var_0.x, 145142u), var_3, any(vec4<bool>(!arg_0.x, false, true, _wgslsmith_f_op_f32(-var_4.d.x) >= _wgslsmith_f_op_f32(-687f * -1313f))), var_4.d, !(!func_2(var_4, vec2<u32>(arg_3, var_0.x), 0i, false || var_4.c).a.zwz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-967f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1888f))))));
    var_0 = _wgslsmith_f_op_f32(-248f + _wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(400f - _wgslsmith_div_f32(501f, 119f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-380f)), _wgslsmith_f_op_f32(1080f * -111f))))));
    var_0 = -223f;
    let var_1 = func_1(vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1540f, 488f, -312f, -945f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, -744f, -1435f, -2886f))))))), min(firstTrailingBit(u_input.a.x), 1i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(16702u, _wgslsmith_add_u32(45209u, 1u), _wgslsmith_clamp_u32(1u, 7074u, 103973u))), ~abs(1u)));
    let var_2 = Struct_2(_wgslsmith_add_u32(0u & ~var_1.a, 68656u), var_1.b, func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(var_1.d.x * -212f), _wgslsmith_f_op_f32(-var_1.d.x))) + _wgslsmith_f_op_vec3_f32(-var_1.d)), vec3<bool>(true, !(!var_1.e.x), var_1.b.a.x));
    var var_3 = Struct_2(32072u, func_2(var_2, ~abs(firstLeadingBit(vec2<u32>(0u, 23643u))), func_1(var_2.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_2.d.x, var_1.d.x, -1255f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, var_1.d.x, var_2.d.x, -468f))), 1i & func_1(vec3<bool>(var_1.b.a.x, true, var_2.c), vec4<f32>(-3504f, -1386f, 354f, -1460f), -1i, 1u).b.b, 17009u).b.b, 4294967295u != var_2.a), !all(func_1(!var_2.b.a.zyw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 229f, var_1.d.x, var_2.d.x)), var_2.b.b, select(var_2.a, 7572u, var_1.e.x)).b.a.zy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.d)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-116f, -1000f, var_1.d.x)))))), var_1.b.a.wxx);
    var_3 = Struct_2(_wgslsmith_sub_u32(1u, 1u), func_1(var_1.b.a.yyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1173f, var_1.d.x, var_2.d.x, 545f), vec4<f32>(var_2.d.x, var_3.d.x, 257f, 676f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-176f, var_2.d.x, -1110f, var_2.d.x), vec4<f32>(1310f, var_1.d.x, -726f, var_3.d.x)))))), func_1(var_3.e, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, -674f, -119f, var_3.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, -250f, var_3.d.x, var_3.d.x), vec4<f32>(var_2.d.x, 125f, var_1.d.x, var_1.d.x), false)))), ~(-40112i), var_2.a).b.b, var_1.a).b, var_1.b.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d * var_3.d)), var_1.d)) - var_1.d), vec3<bool>(any(!vec2<bool>(var_2.c, var_3.b.a.x)), false, false & any(!var_3.e.xx)));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1366f, _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1107f))), -999f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.d.x)))))), var_1.a, firstTrailingBit(26904i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, _wgslsmith_clamp_i32(var_3.b.b, var_3.b.b, var_1.b.b), min(3707i, var_2.b.b)), vec4<i32>(~0i, u_input.a.x << (4894u % 32u), _wgslsmith_clamp_i32(var_2.b.b, 2147483647i, 0i), var_1.b.b << (4294967295u % 32u))), ~(abs(vec4<i32>(var_1.b.b, var_2.b.b, 0i, var_3.b.b)) & _wgslsmith_sub_vec4_i32(vec4<i32>(-2951i, 57033i, 2147483647i, var_1.b.b), vec4<i32>(2147483647i, 0i, -26665i, 0i)))), var_2.a);
}

