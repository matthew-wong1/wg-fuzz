struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: vec2<i32>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 22228u);

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(vec2<f32>(1005f, -965f), arg_0);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(global0.c.yx)), Struct_1(var_0.b.a, var_0.b.b, global4.c, _wgslsmith_div_f32(507f, _wgslsmith_f_op_f32(-var_0.b.d))));
    var var_1 = var_0.b;
    var var_2 = Struct_1(select(_wgslsmith_div_vec3_i32(-var_0.b.a, var_1.a), ~select(var_1.a, vec3<i32>(-1i, 2147483647i, u_input.b.x), any(vec3<bool>(true, true, true))), !(!(!global4.b.xxw))), vec4<bool>(true | var_0.b.b.x, false, select(global4.b.x & global0.b.x, 276f >= var_1.d, arg_0.b.x && !arg_0.b.x), all(!select(vec3<bool>(false, var_1.b.x, false), var_1.b.ywy, true))), _wgslsmith_f_op_vec4_f32(global0.c + global4.c), _wgslsmith_div_f32(var_0.b.d, _wgslsmith_f_op_f32(-global0.c.x)));
    var var_3 = all(!global4.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.d, _wgslsmith_f_op_f32(-global4.d))));
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    global1 = select(vec3<bool>(true, !(!(536f <= global0.c.x)), arg_1), vec3<bool>(true, any(select(vec4<bool>(false, arg_1, true, false), vec4<bool>(global1.x, false, global1.x, false), global4.b)), global4.b.x), !global4.b.wzw);
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(global0.a.x, global0.a.x, 5968i), global4.b, global4.c, -663f))) - global4.d)), global4.d), Struct_1(u_input.b.yxx, select(vec4<bool>(global3.x != global3.x, global3.x > global3.x, arg_1, any(global0.b)), vec4<bool>(true, select(global4.b.x, global1.x, false), global0.b.x, all(global4.b)), global4.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, global0.c)), _wgslsmith_f_op_f32(global4.d - global0.c.x)));
    global1 = select(var_0.b.b.yxw, select(var_0.b.b.zyz, global4.b.yyw, true), global0.b.x);
    var var_1 = Struct_1(vec3<i32>(max(2147483647i, firstTrailingBit(-35246i)), 63222i, u_input.b.x) & vec3<i32>(max(var_0.b.a.x, -global4.a.x), _wgslsmith_add_i32(~u_input.b.x, -31257i), 1i), vec4<bool>(arg_1, false, any(global0.b.xx) && any(vec2<bool>(true, global4.b.x)), global4.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(var_0.b.c)), var_0.b.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x + -1174f))));
    let var_2 = ~global3.xx;
    return Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(var_0.b.a, ~global4.a), !var_0.b.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.b.c * var_1.c))), -749f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1086f, var_1.c.x) - vec2<f32>(var_0.b.d, var_1.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -179f), var_0.b.c.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(trunc(-1390f))))) - 506f));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = global1.zz;
    global2 = arg_2.a.a.zz;
    var_0 = !func_2(global3.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global3.x), global3.yz)) > reverseBits(63069u)).a.b.wx;
    var var_1 = vec4<u32>(u_input.a, max(firstTrailingBit(min(0u, global3.x)) ^ 58310u, _wgslsmith_add_u32(1u, 72603u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(4294967295u), ~u_input.a, ~24843u, u_input.a << (58790u % 32u)), ~vec4<u32>(21990u, u_input.a, global3.x, 27694u) << (_wgslsmith_div_vec4_u32(vec4<u32>(49583u, 4294967295u, 106261u, 32217u), vec4<u32>(2061u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))), ~max(107243u, global3.x)), 66530u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(func_3(arg_2.a)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, 329f))))), Struct_1(arg_2.a.a, !(!(!global0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.c, vec4<f32>(1296f, 323f, -1000f, 960f))) * global4.c)), arg_2.a.c.x));
    return arg_2.a;
}

fn func_1() -> u32 {
    var var_0 = Struct_3(func_4(_wgslsmith_f_op_f32(f32(-1f) * -920f), -_wgslsmith_clamp_i32(14850i, global4.a.x, -13381i) > ~(-30243i >> (global3.x % 32u)), func_2(u_input.a ^ u_input.a, all(!global0.b.wxw))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(207f, global0.d), global4.c.xy, vec2<bool>(global0.b.x, true))))), _wgslsmith_f_op_vec2_f32(func_4(-539f, true, Struct_3(Struct_1(global4.a, vec4<bool>(global4.b.x, global0.b.x, global1.x, global1.x), global0.c, global4.c.x), global4.c.xw, -882f)).c.xy + global0.c.zy)))), -1000f);
    var var_1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-152f))), -627f)))), false && func_2(~_wgslsmith_div_u32(u_input.a, 1u), any(!global0.b.xy)).a.b.x, func_2(_wgslsmith_mod_u32(firstTrailingBit(global3.x), _wgslsmith_mult_u32(1u, ~1801u)), global4.b.x)).d;
    global4 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.d))), _wgslsmith_f_op_f32(sign(global4.d)))) * _wgslsmith_f_op_f32(-global4.c.x)), var_0.a.b.x, Struct_3(func_2(u_input.a, var_0.a.b.x).a, var_0.b, -1000f));
    var var_2 = -32660i;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(func_4(-1536f, global4.b.x, Struct_3(Struct_1(global4.a, vec4<bool>(var_0.a.b.x, true, global0.b.x, global4.b.x), vec4<f32>(var_0.c, var_0.c, 649f, var_0.a.c.x), global0.d), vec2<f32>(-304f, 745f), global4.c.x)).c.yz, _wgslsmith_f_op_vec2_f32(-global4.c.zx))), _wgslsmith_f_op_vec2_f32(var_0.a.c.zz * vec2<f32>(1815f, global0.c.x))))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2868f, -762f)), global4.d), global0.b.x, func_2(abs(_wgslsmith_mult_u32(global3.x, global3.x)), true)));
    return u_input.a;
}

fn func_5(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.d)), _wgslsmith_div_f32(-401f, 1000f)), func_4(_wgslsmith_f_op_f32(abs(505f)), any(!func_2(global3.x, true).a.b.wx), func_2(~23055u, false)));
    var var_1 = Struct_2(vec2<f32>(arg_1, var_0.a.x), Struct_1(min(_wgslsmith_add_vec3_i32(var_0.b.a, global0.a), reverseBits(vec3<i32>(73336i, -4225i, -20230i))) ^ global0.a, func_2(25788u, !(!global1.x)).a.b, _wgslsmith_div_vec4_f32(var_0.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.c + vec4<f32>(var_0.b.c.x, -404f, global0.c.x, -1551f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1539f, -1812f, global1.x))))));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), var_0.a.x), var_1.b);
    global4 = func_4(_wgslsmith_f_op_f32(round(942f)), var_0.b.b.x, func_2(49870u, var_0.b.b.x));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(~arg_0, min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, global2.x), select(vec2<i32>(-72070i, -1i), vec2<i32>(1i, u_input.b.x), vec2<bool>(false, false))), _wgslsmith_clamp_i32(global2.x, global4.a.x, -1i) ^ _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global4.a.x, global0.a.x, -5208i, -1i)))), 1i);
    return Struct_2(func_4(_wgslsmith_f_op_f32(212f * -627f), (_wgslsmith_f_op_f32(select(global4.d, -123f, global4.b.x)) >= -676f) && (_wgslsmith_f_op_f32(-global4.d) < _wgslsmith_f_op_f32(abs(var_1.b.c.x))), Struct_3(var_0.b, vec2<f32>(-473f, -994f), _wgslsmith_f_op_f32(-global4.d))).c.ww, func_4(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-var_1.b.c.x)), var_1.b.b.x, Struct_3(func_2(49861u, !global0.b.x).a, vec2<f32>(_wgslsmith_f_op_f32(143f + var_1.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(-global4.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = func_5(global0.a.x << ((_wgslsmith_sub_u32(71660u | global3.x, _wgslsmith_sub_u32(0u, u_input.a)) << (abs(func_1()) % 32u)) % 32u), 490f);
    var var_2 = func_5(global4.a.x, -125f).b.b;
    let var_3 = vec4<bool>(select(var_2.x, func_2(~67911u, var_1.b.b.x).a.b.x, true), var_1.b.b.x != any(global4.b), global1.x, var_2.x);
    var var_4 = !var_2.zwz;
    var var_5 = global3.x;
    let var_6 = var_1.b.c;
    let var_7 = ~_wgslsmith_dot_vec4_i32(u_input.b, -abs(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.d, global4.c.x, 730f, -862f), var_6))))));
}

