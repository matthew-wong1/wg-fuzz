struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(-966f, 1646f, -679f), -1i, vec2<f32>(-118f, -301f), vec2<f32>(140f, 332f), true), Struct_1(vec3<f32>(322f, -1527f, 169f), 1i, vec2<f32>(176f, -734f), vec2<f32>(-248f, -1000f), false), Struct_1(vec3<f32>(-3255f, -322f, 1000f), 1i, vec2<f32>(1247f, -144f), vec2<f32>(1174f, 2310f), true), Struct_1(vec3<f32>(2260f, -2946f, -605f), 2147483647i, vec2<f32>(-197f, -616f), vec2<f32>(-1491f, 653f), true), Struct_1(vec3<f32>(971f, -164f, -1744f), -34919i, vec2<f32>(-293f, -535f), vec2<f32>(884f, 1103f), true), Struct_1(vec3<f32>(-1000f, -1451f, -901f), 28082i, vec2<f32>(-1045f, -1000f), vec2<f32>(112f, 1281f), false), Struct_1(vec3<f32>(100f, -1573f, -1389f), i32(-2147483648), vec2<f32>(1000f, -801f), vec2<f32>(-329f, 824f), true), Struct_1(vec3<f32>(-300f, -1616f, 647f), 1i, vec2<f32>(-1085f, 1000f), vec2<f32>(860f, 362f), false), Struct_1(vec3<f32>(-1484f, -515f, -585f), 1i, vec2<f32>(396f, -1000f), vec2<f32>(-169f, 597f), false));

var<private> global1: f32;

var<private> global2: array<Struct_3, 17>;

var<private> global3: array<f32, 18> = array<f32, 18>(1000f, -260f, -1713f, -792f, 118f, -926f, -1509f, 597f, 680f, 505f, 1537f, 519f, -547f, -780f, 671f, -866f, -1684f, -659f);

var<private> global4: array<Struct_3, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = abs(~(_wgslsmith_add_i32(-u_input.a, 75974i) & u_input.a));
    let var_1 = global2[_wgslsmith_index_u32(~4294967295u | _wgslsmith_dot_vec4_u32(u_input.d | vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x >> (0u % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d.x, firstTrailingBit(arg_1.x), arg_1.x, arg_1.x), ~arg_1)), 17u)];
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.d.x);
    global2 = array<Struct_3, 17>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~abs(0u), 18u)] + _wgslsmith_f_op_f32(round(-1000f))), 1781f);
    return Struct_2(u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(arg_1.x, u_input.d.x)) & arg_1.wz), arg_1.yx), 9u)], arg_1.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~44971u, 18u)] * 238f));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0) - arg_1.c.x))));
    let var_2 = reverseBits(u_input.d.x);
    let var_3 = vec2<u32>(_wgslsmith_add_u32(~var_2, firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x >> (4997u % 32u), 10498u))), countOneBits(_wgslsmith_div_u32(abs(countOneBits(var_2)), 32800u)));
    var var_4 = 1000f;
    return -2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d), global3[_wgslsmith_index_u32(88473u, 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d, global3[_wgslsmith_index_u32(u_input.b, 18u)])) * -1000f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 18u)], arg_1.d, 332f))) * vec3<f32>(arg_1.d, 725f, arg_1.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b.a - vec3<f32>(-1588f, arg_1.b.a.x, 1484f)), vec3<f32>(global3[_wgslsmith_index_u32(0u, 18u)], arg_1.d, 1031f))))), (-2147483647i ^ func_2(!vec3<bool>(true, arg_1.b.e, false), u_input.d).b.b) & min(firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_0, arg_0)), u_input.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_1.c, 18u)] - -619f), _wgslsmith_f_op_f32(select(arg_1.b.d.x, -912f, false))), arg_1.b.a.xy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1463f, 2108f), _wgslsmith_f_op_vec2_f32(-arg_1.b.c), !vec2<bool>(arg_1.b.e, true))))), _wgslsmith_f_op_vec2_f32(arg_1.b.d - arg_1.b.c), (arg_1.c >= min(~1u, 56137u)) & (474f == _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~5096u, 18u)])));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -984f);
    let var_0 = func_4(_wgslsmith_div_vec3_i32(arg_0.yzy, _wgslsmith_div_vec3_i32(arg_0.wxx, arg_0.xyw)), func_2(!select(select(vec3<bool>(arg_2, arg_1.b.e, true), vec3<bool>(true, arg_1.b.e, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_1.b.e, false, false), arg_2), any(vec3<bool>(arg_2, true, true))), vec4<u32>(4505u << (arg_1.c % 32u), ~arg_1.c, u_input.b, select(arg_1.c << (arg_1.c % 32u), 1u, arg_1.b.e))), min(vec4<i32>(firstLeadingBit(func_3(global3[_wgslsmith_index_u32(0u, 18u)], Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(74405u, 18u)], 3051f, 265f), arg_0.x, arg_1.b.a.zy, arg_1.b.c, arg_1.b.e))), _wgslsmith_clamp_i32(arg_0.x, 8902i, 1i), arg_1.b.b, firstLeadingBit(1i)), vec4<i32>(arg_1.b.b, arg_1.a, -55506i, reverseBits(-2147483647i) ^ -arg_1.a)));
    global3 = array<f32, 18>();
    let var_1 = func_4(_wgslsmith_mod_vec3_i32(countOneBits(-(arg_0.wzz & vec3<i32>(var_0.b, var_0.b, arg_0.x))), arg_0.wxw), func_2(!select(vec3<bool>(arg_2, arg_1.b.e, false), select(vec3<bool>(arg_1.b.e, arg_2, arg_1.b.e), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, arg_2)), vec3<bool>(arg_2, false, true)), vec4<u32>(firstTrailingBit(28658u), 131924u & u_input.b, ~arg_1.c, 0u) << (~select(vec4<u32>(0u, arg_1.c, arg_1.c, u_input.b), u_input.d, var_0.e) % vec4<u32>(32u))), arg_0);
    global4 = array<Struct_3, 27>();
    return ~min(var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c, 0i, u_input.a), vec3<i32>(-51847i, i32(-1i) * -2147483647i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.c, -1i, ~25338i), max(-vec3<i32>(u_input.e, u_input.a, u_input.c), ~vec3<i32>(u_input.c, u_input.c, u_input.c))) << (abs(u_input.d.yxz) % vec3<u32>(32u))) ^ firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, 2147483647i, u_input.c), vec3<i32>(u_input.a, u_input.c, u_input.c)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -8469i), vec3<i32>(u_input.e, u_input.a, u_input.c)), u_input.c, u_input.e)));
    global1 = 601f;
    global4 = array<Struct_3, 27>();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.d.x), u_input.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, reverseBits(~vec4<u32>(u_input.d.x, u_input.d.x, 28510u, u_input.b))), vec4<u32>(~1u, ~(u_input.b << (43155u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(24054u, u_input.b, u_input.b), vec3<u32>(1u, u_input.d.x, 62580u)) | (u_input.b & 0u), ~(~22140u))));
    var var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 9u)];
    var var_3 = Struct_2(~(~_wgslsmith_mod_i32(-62854i ^ u_input.e, func_1(vec4<i32>(1i, var_0.x, var_2.b, -2147483647i), Struct_2(var_2.b, Struct_1(var_2.a, 0i, vec2<f32>(var_2.a.x, var_2.a.x), vec2<f32>(var_2.d.x, 1827f), false), 0u, -1473f), true))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(reverseBits(~22710u), var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_1.x), _wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(var_1.x, 0u)))), _wgslsmith_sub_u32(u_input.b, 1u), 4294967295u), 9u)], ~var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -524f));
    var var_4 = Struct_3(Struct_1(vec3<f32>(var_3.d, 923f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(27986u, 18u)] + 1219f), -600f)), _wgslsmith_dot_vec3_i32(-firstLeadingBit(var_0), vec3<i32>(-54216i, -var_0.x, _wgslsmith_sub_i32(2147483647i, var_2.b))), vec2<f32>(-252f, _wgslsmith_div_f32(var_3.d, _wgslsmith_f_op_f32(round(239f)))), var_3.b.d, any(!vec3<bool>(false, true, var_3.b.e)) && false));
    let var_5 = firstLeadingBit(-vec4<i32>(-8810i, -2147483647i, -1i ^ _wgslsmith_mult_i32(var_4.a.b, 0i), var_2.b));
    var var_6 = (i32(-1i) * -select(~var_2.b, 0i, var_2.e | var_2.e)) <= func_4(_wgslsmith_sub_vec3_i32(var_0, var_5.xzz | var_0), func_2(vec3<bool>(!var_4.a.e, true, true), u_input.d), firstTrailingBit(firstTrailingBit(countOneBits(vec4<i32>(23575i, -58329i, var_3.b.b, 2147483647i))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_3.c, 18u)]))))))), ~var_5, ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_3.c), vec2<u32>(48799u, var_1.x)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_3.c), var_1.x), u_input.d.x, max(_wgslsmith_div_u32(var_1.x, 33132u), ~u_input.b)), ~var_0.x, _wgslsmith_mult_vec4_u32(~abs(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(1u, var_3.c, 4294967295u, var_1.x))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, 0u), u_input.d), u_input.d)));
}

