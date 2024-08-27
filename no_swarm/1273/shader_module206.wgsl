struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: bool = true;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(25972u, 0u, 0u, 0u), false, Struct_1(true), -21759i, true);

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    var var_0 = u_input.c.x;
    let var_1 = 4294967295u;
    var var_2 = vec4<u32>(31268u, 16366u, ~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~global3.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, u_input.b, 4294967295u), global3.xzy), 4294967295u)), global3.xx));
    var var_3 = -reverseBits(u_input.a.zyy);
    var_3 = vec3<i32>(var_3.x, firstTrailingBit(-var_3.x), select(_wgslsmith_div_i32(-72693i, u_input.a.x), var_3.x, true));
    return -28652i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    global1 = false;
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-u_input.a.x, 1i), firstLeadingBit(u_input.a.x), func_3(Struct_2(_wgslsmith_f_op_f32(trunc(134f)), Struct_1(global2.e), -1i, global2.c, Struct_1(global0.a)), all(!vec4<bool>(global0.a, false, global2.c.a, true)), ~_wgslsmith_mult_i32(u_input.a.x, -1i), vec3<i32>(i32(-1i) * -2147483647i, -39803i, -5463i))));
    let var_1 = global2.c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + _wgslsmith_div_f32(-1930f, -604f)), global2.c, -2633i, Struct_1(var_1.a), Struct_1(_wgslsmith_dot_vec3_u32(global3.zxx, global2.a.wyy) >= ~(u_input.b << (58220u % 32u))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(-1000f, var_2.a)))))), Struct_1(var_2.b.a), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_0, var_0) >> ((global2.a.xzw ^ global3.wwx) % vec3<u32>(32u)), firstLeadingBit(u_input.a.wxz))), global2.c, var_2.e);
    return Struct_3(~(global2.a ^ global2.a), var_1.a, var_2.d, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-46409i, u_input.a.x, -(~u_input.a.x)), global2.d, func_3(Struct_2(_wgslsmith_f_op_f32(floor(-659f)), Struct_1(global0.a), var_0.x << (20864u % 32u), global2.c, global2.c), false, ~u_input.a.x, _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, -26777i, 2147483647i), vec3<i32>(var_0.x, -28862i, -2147483647i)))), global2.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = ~min(arg_0.a.x, ~global3.x);
    var var_2 = select(select(select(vec3<bool>(all(vec2<bool>(global0.a, false)), global2.b, !global2.c.a), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2.c.a, global0.a), vec3<bool>(false, false, true), vec3<bool>(arg_0.b, var_0, true)), !vec3<bool>(false, false, arg_0.e)), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, global2.c.a, var_0), vec3<bool>(global0.a, global0.a, false), var_0), vec3<bool>(u_input.a.x > global2.d, true, global0.a & false), select(vec3<bool>(true, arg_0.c.a, arg_0.e), vec3<bool>(true, true, arg_0.c.a), u_input.a.x > arg_0.d)), !vec3<bool>(global2.e, any(vec4<bool>(false, global2.b, false, global2.c.a)), true)), !select(vec3<bool>(true, any(vec2<bool>(false, var_0)), global2.d != u_input.a.x), select(select(vec3<bool>(global0.a, global2.b, global0.a), vec3<bool>(var_0, false, arg_0.c.a), var_0), select(vec3<bool>(arg_0.e, false, true), vec3<bool>(global0.a, false, global2.e), true), vec3<bool>(true, false, arg_0.b)), select(vec3<bool>(global2.b, false, true), !vec3<bool>(var_0, global0.a, global2.c.a), vec3<bool>(global2.c.a, global0.a, false))), !all(!vec4<bool>(false, false, global2.b, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(958f, -616f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1056f, -1306f) + vec2<f32>(-1131f, 955f))) - vec2<f32>(-1000f, -1000f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1052f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-914f, -1322f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, 792f)) + vec2<f32>(656f, 577f))), vec2<bool>(true, false))));
    let var_4 = arg_0.a;
    return global2.c;
}

fn func_1() -> u32 {
    var var_0 = Struct_4(Struct_1(false), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(260f))), global2.c, -2147483647i, func_4(func_2(vec3<f32>(1220f, -480f, -1807f)), u_input.a.wxy), Struct_1(true)));
    global3 = vec4<u32>(_wgslsmith_add_u32(global2.a.x, ~u_input.b), global3.x, _wgslsmith_dot_vec3_u32(~(~(global3.yyy & global2.a.xyw)), ~global3.xww), 88398u);
    let var_1 = Struct_4(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.a, var_0.b.a, var_0.b.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, 940f, var_0.b.a)))))).c, var_0.b);
    var var_2 = firstTrailingBit(~vec4<u32>(firstLeadingBit(~0u), _wgslsmith_sub_u32(~global3.x, ~global3.x), countOneBits(countOneBits(global3.x)), global3.x));
    let var_3 = Struct_4(func_4(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, 1251f, var_1.b.a)), _wgslsmith_div_vec3_f32(vec3<f32>(2066f, var_0.b.a, var_0.b.a), vec3<f32>(var_1.b.a, 1201f, var_0.b.a)))), u_input.a.zxz), Struct_2(_wgslsmith_f_op_f32(ceil(var_1.b.a)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1012f, var_0.b.a, var_0.b.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2246f, -1375f, -1413f) - vec3<f32>(-595f, var_1.b.a, 1000f)))).c, 0i & u_input.a.x, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-426f, var_1.b.a, -1258f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b.a, -1979f, 351f))))).c, global2.c));
    return select(global3.x, 65791u, !var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a || true;
    let var_0 = ~vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a.zz;
    let var_1 = func_1();
    var var_2 = Struct_1(global0.a);
    let var_3 = -48248i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, u_input.a, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_div_f32(-546f, 1328f), -722f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1999f, 2315f, -1735f)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * 1335f))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(vec3<i32>(-44204i, 140i, var_3), u_input.a.ywz), u_input.a.ywy), select(abs(u_input.a.wxw), firstLeadingBit(u_input.a.yzw), var_2.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(6859i, -2147483647i, -1i), ~vec3<i32>(var_0.x, 1i, u_input.a.x)) << (vec3<u32>(0u, _wgslsmith_sub_u32(var_1, 9457u), global2.a.x & u_input.b) % vec3<u32>(32u))));
}

