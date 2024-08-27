struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-922f, -1171f), vec2<f32>(-479f, 1628f), vec2<f32>(-546f, 1847f), vec2<f32>(-369f, 1281f), vec2<f32>(-190f, 1670f), vec2<f32>(1994f, 418f), vec2<f32>(-193f, -1000f), vec2<f32>(-579f, -627f), vec2<f32>(-175f, -312f), vec2<f32>(-703f, -1732f), vec2<f32>(1304f, -1000f), vec2<f32>(-168f, 1465f), vec2<f32>(-3148f, -949f), vec2<f32>(317f, 1364f), vec2<f32>(1035f, 473f), vec2<f32>(1115f, -590f), vec2<f32>(1678f, -503f), vec2<f32>(-1473f, 891f), vec2<f32>(-665f, -1216f), vec2<f32>(122f, -364f), vec2<f32>(-103f, 150f), vec2<f32>(368f, -1089f), vec2<f32>(-1625f, -254f));

var<private> global1: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_4(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_2.a, u_input.e.x) & vec2<u32>(arg_2.a, u_input.a.x)), ~firstLeadingBit(u_input.a.xy)), arg_2.e.a.x, countOneBits(countOneBits(u_input.e.x) << (~arg_2.a % 32u)) ^ 44642u, -vec4<i32>(~(-15657i), ~24060i, 1i, -arg_2.e.b), Struct_3(arg_2.e.a, -1i, true));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(1632f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(800f)), -467f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(408f, 387f))) * _wgslsmith_f_op_f32(floor(-912f))), 907f), countOneBits(u_input.d), u_input.a);
    var var_2 = ~var_1.c.x == (10390u & ~arg_2.a);
    let var_3 = !var_0.b;
    global1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.xxz, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.www, u_input.c.wyw), vec3<i32>(u_input.c.x, 0i, arg_2.d.x))), u_input.c.x & _wgslsmith_clamp_i32(firstTrailingBit(2527i), 38652i, countOneBits(arg_1.b)));
    return arg_2.e;
}

fn func_3() -> vec3<bool> {
    var var_0 = -(reverseBits(1i ^ global1.x) & 0i);
    global0 = array<vec2<f32>, 23>();
    var var_1 = u_input.a.xy ^ vec2<u32>(4294967295u, min(49243u, _wgslsmith_dot_vec3_u32(vec3<u32>(45298u, 4166u, u_input.d), max(vec3<u32>(u_input.d, 64136u, u_input.d), u_input.a))));
    return select(!select(vec3<bool>(any(vec3<bool>(true, false, true)), false, func_1(vec4<i32>(2147483647i, 8352i, u_input.b, -3714i), Struct_3(vec3<bool>(false, false, false), 9695i, true), Struct_4(4294967295u, true, 21080u, u_input.c, Struct_3(vec3<bool>(false, false, true), u_input.c.x, false))).a.x), vec3<bool>(true, true, true), false), func_1(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-45545i, global1.x, u_input.c.x, -32817i) | vec4<i32>(34672i, -1i, u_input.c.x, global1.x), -vec4<i32>(-1i, u_input.b, global1.x, global1.x))), Struct_3(vec3<bool>(true, true, true), ~min(global1.x, global1.x), true), Struct_4(0u, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), ~_wgslsmith_clamp_u32(48727u, var_1.x, var_1.x), select(u_input.c, u_input.c, true) | (vec4<i32>(u_input.c.x, u_input.b, 2147483647i, -1421i) << (vec4<u32>(82363u, 60335u, u_input.d, 36263u) % vec4<u32>(32u))), func_1(u_input.c, func_1(vec4<i32>(u_input.b, 22977i, global1.x, global1.x), Struct_3(vec3<bool>(false, true, true), -2147483647i, false), Struct_4(110002u, false, 18503u, u_input.c, Struct_3(vec3<bool>(true, true, false), global1.x, false))), Struct_4(1u, true, var_1.x, vec4<i32>(2878i, 1i, u_input.c.x, 1i), Struct_3(vec3<bool>(false, true, true), global1.x, false))))).a, !select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), true), vec3<bool>(false, all(vec2<bool>(false, true)), true)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1571f, 953f, arg_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1737f, arg_1, arg_1) - vec3<f32>(-467f, arg_1, 1215f))))), 54699u, select(~(vec3<u32>(2115u, arg_0.c, 33268u) >> (vec3<u32>(4294967295u, u_input.e.x, 0u) % vec3<u32>(32u))), u_input.e, func_3())), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, -975f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))), 87329u, reverseBits(select(select(vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(4294967295u, u_input.d, 5148u), arg_0.e.a.x), u_input.a, all(arg_0.e.a.yx)))), vec3<bool>(!arg_0.b, arg_0.e.c, func_1(vec4<i32>(global1.x, 1i, arg_0.d.x, arg_0.e.b), Struct_3(vec3<bool>(false, arg_0.b, arg_0.b), -15483i, false), Struct_4(u_input.e.x, true, arg_0.a, vec4<i32>(arg_0.d.x, arg_0.e.b, -28507i, -1i), Struct_3(vec3<bool>(arg_0.e.c, arg_0.b, true), u_input.b, arg_0.b))).c & false), ((1u & _wgslsmith_dot_vec3_u32(vec3<u32>(12542u, 100722u, arg_0.a), vec3<u32>(u_input.e.x, 1u, arg_0.c))) == select(56413u, ~0u, arg_0.b)) & arg_0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1659f - arg_1), var_0.d)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1482f, var_0.b.a.x))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(step(var_0.a.a.x, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1298f))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -745f)) - var_0.b.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yxy * var_0.a.a), var_0.a.a), false)), 4294967295u, firstLeadingBit(u_input.e)), var_0.b, vec3<bool>(var_0.b.a.x != -296f, !func_3().x & true, !arg_0.b), any(vec4<bool>(arg_0.b, var_0.c.x, var_0.d, var_0.c.x)));
    global1 = firstTrailingBit(~vec2<i32>(arg_0.e.b, global1.x) << (vec2<u32>(1u, arg_0.c) % vec2<u32>(32u)));
    var_0 = Struct_2(var_0.a, Struct_1(var_1.zxy, arg_0.c, ~max(var_0.a.c, var_0.a.c)), func_3(), arg_0.e.a.x);
    return -_wgslsmith_div_i32(global1.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(func_2(Struct_4(_wgslsmith_add_u32(u_input.a.x, 1u), true, _wgslsmith_mult_u32(4294967295u, u_input.a.x), _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.b, global1.x, u_input.b, u_input.b)), func_1(vec4<i32>(u_input.b, u_input.b, 140i, u_input.c.x), Struct_3(vec3<bool>(false, true, false), -2147483647i, false), Struct_4(1u, true, u_input.d, u_input.c, Struct_3(vec3<bool>(true, false, false), 35848i, true)))), _wgslsmith_f_op_f32(min(568f, _wgslsmith_f_op_f32(step(-1000f, 352f))))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.x, global1.x), vec3<i32>(global1.x, u_input.b, -1i)), 2147483647i), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(1i, -1i, 0i, global1.x))), global1.x), u_input.c.xx), 36937i);
    global1 = var_0.yz;
    global1 = u_input.c.xy;
    global1 = u_input.c.xy;
    var var_1 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_div_f32(1060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-113f, -313f, true)) - _wgslsmith_f_op_f32(ceil(1000f))) + 1324f)));
}

