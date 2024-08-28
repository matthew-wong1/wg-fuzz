struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: Struct_1 = Struct_1(71419u, false, vec4<bool>(false, false, false, false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = arg_0;
    global3 = arg_0;
    var var_1 = var_0;
    global3 = Struct_1(_wgslsmith_mod_u32(var_1.a, 20572u), false, arg_0.c);
    global0 = arg_3.x;
    return vec4<i32>(-_wgslsmith_clamp_i32(-3901i, 0i, _wgslsmith_sub_i32(global2.x, -1037i)) & (_wgslsmith_sub_i32(2654i, arg_2) | global2.x), _wgslsmith_sub_i32(-reverseBits(0i), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_2, _wgslsmith_mult_i32(arg_2, 56977i)), abs(~(-67962i)))), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, arg_2), global2.xz) >> (~35265u % 32u)) >> (global3.a % 32u), -74929i);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(635f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-443f, -1000f)), 1401f, !(arg_2 == arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-326f, -960f))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 775f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-313f, -666f, true)) + 222f)))));
    var var_1 = ~1u;
    global2 = -vec3<i32>(_wgslsmith_mod_i32(~(-2147483647i), max(arg_2, 0i)) & ~(global2.x >> (arg_0.a % 32u)), arg_2, ~select(-1i, i32(-1i) * -36573i, true));
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_3, 1u), vec2<u32>(arg_1.a, 34721u), arg_0.c.yz), ~vec2<u32>(arg_0.a, arg_0.a))) ^ arg_0.a;
    var_1 = 36956u;
    return countOneBits(func_2(Struct_1(var_2, global3.c.x, vec4<bool>(any(arg_1.c), true, -21723i <= arg_2, !arg_0.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(227f, 541f, var_0.x, 223f), vec4<f32>(-914f, var_0.x, 1000f, var_0.x))))), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_2, global2.x), reverseBits(arg_2)), arg_0.c.yz).xzy);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec3<i32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, global2.x, ~global2.x), 9483i, countOneBits(_wgslsmith_mod_i32(2147483647i, 25472i)), global2.x), ~func_2(Struct_1(0u, false, global3.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1424f, 242f, arg_1.x, arg_1.x))), 2147483647i, global3.c.yy)), min(1i, _wgslsmith_mult_i32((global2.x | global2.x) << (countOneBits(global3.a) % 32u), ~1i)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global2.xy | vec2<i32>(global2.x, 42328i), vec2<i32>(global2.x, -13774i)), -global2.zx));
    let var_1 = -435f;
    return func_3(Struct_1(global3.a, false, vec4<bool>(false, true, false, any(select(arg_0.yz, global3.c.wx, vec2<bool>(false, arg_0.x))))), Struct_1(u_input.d, true, vec4<bool>(global3.c.x, any(global3.c), arg_0.x && false, false || any(vec3<bool>(global3.c.x, false, false)))), 9862i, global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2078f, -582f)) + _wgslsmith_f_op_f32(max(-661f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(max(1602f, 275f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1345f)) + 897f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - 951f))), var_0)));
    global2 = abs(_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(global2.x, global2.x, global2.x)) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), global3.a & global3.a, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(reverseBits(firstLeadingBit(vec3<i32>(8569i, global2.x, global2.x))), _wgslsmith_div_vec3_i32(~vec3<i32>(global2.x, global2.x, 2147483647i), func_1(global3.c.wyy, var_1.ywz)))));
    global1 = global3.b;
    var var_2 = -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 14463i, global2.x), vec3<i32>(global2.x, global2.x, global2.x)), global2.x)), _wgslsmith_add_vec2_i32(global2.yy << (~vec2<u32>(u_input.d, 105732u) % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-20709i, global2.x), global2.zy), global2.zz, !vec2<bool>(global3.c.x, false))));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-19555i, -6662i, global2.x)), ~vec3<i32>(global2.x, -1966i, global2.x) ^ func_1(global3.c.yzz, var_1.zyy)), global2.x | min(9845i, 24398i), ~max(2147483647i, -38929i & global2.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 24718i, 0i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -28497i, global2.x), vec3<i32>(1i, global2.x, global2.x)))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(global2.x, 1i, global2.x, global2.x)), abs(vec4<i32>(12770i, global2.x, global2.x, 1i) & _wgslsmith_div_vec4_i32(vec4<i32>(-24110i, 0i, 0i, 0i), vec4<i32>(global2.x, 23509i, global2.x, global2.x))), _wgslsmith_div_vec4_i32(-(~vec4<i32>(global2.x, global2.x, global2.x, -6314i)), func_2(Struct_1(31412u, true, global3.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1000f, 608f, var_0), vec4<f32>(-348f, -818f, var_0, 149f)), global2.x, select(global3.c.zy, global3.c.ww, global3.b)))));
    let var_4 = 46074i;
    let x = u_input.a;
    s_output = StorageBuffer(-1529f);
}

