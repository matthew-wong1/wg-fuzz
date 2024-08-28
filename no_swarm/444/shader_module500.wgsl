struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec4<f32> = vec4<f32>(-779f, -373f, 509f, -328f);

var<private> global2: f32 = -193f;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1157f, 679f))));
    global3 = vec3<u32>(u_input.a.x, ~firstLeadingBit(~8731u) >> (1u % 32u), 32416u);
    let var_0 = Struct_2(Struct_1(true, all(vec2<bool>(true, true)), -(-31728i << (u_input.b.x % 32u)), ~vec2<i32>(-26438i, _wgslsmith_sub_i32(0i, -464i)), min(-25517i, -12730i)), 1i > select(-_wgslsmith_mult_i32(-57638i, -20344i), -24284i, all(vec3<bool>(false, false, false)) & any(vec4<bool>(true, false, true, true))), u_input.a.zzy ^ u_input.a.zyz, min(~_wgslsmith_mod_i32(~(-34846i), -60477i), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-13901i, 2147483647i, 1i, -2147483647i) << (u_input.a % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -11591i, 0i), ~(-1914i), abs(-1i), i32(-1i) * -2147483647i))), _wgslsmith_add_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(42639u, 74337u, 9612u), vec3<u32>(u_input.b.x, 41613u, u_input.a.x))), ~max(~u_input.a.zzx, ~vec3<u32>(global3.x, global3.x, u_input.a.x))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1491f, global1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * _wgslsmith_f_op_f32(global1.x * 695f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1760f) + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2006f, _wgslsmith_f_op_f32(sign(global1.x))))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))), global1.x);
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), global1.x)));
    return select(any(select(vec3<bool>(var_0.a.a, true, var_0.a.a), vec3<bool>(var_0.a.b, var_0.b, true), var_0.a.b)) && select(all(vec4<bool>(var_0.b, true, var_0.b, true)), true, var_0.b), all(vec3<bool>(true, var_0.b && false, true)), select(var_0.a.c >= -1i, any(vec4<bool>(true, var_0.b, true, var_0.b)), !var_0.a.a) && var_0.a.b) & all(!(!(!vec4<bool>(true, var_0.b, true, var_0.b))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_1(true, !(!func_3()), -2147483647i, _wgslsmith_add_vec2_i32(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(22283i, 60804i), vec2<i32>(5625i, -3335i), vec2<i32>(1658i, -18110i))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-21414i, -38154i)), vec2<i32>(-15725i, 62681i), -vec2<i32>(-13271i, -3767i)), max(vec2<i32>(-2147483647i, -63619i), firstTrailingBit(vec2<i32>(-20116i, 1i))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(-10549i, 1i), vec2<i32>(-66163i, 40801i)), vec2<i32>(26554i, abs(30692i))), _wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, 0i)), -vec2<i32>(-2147483647i, 2214i)), ~vec2<i32>(1i, 1i))));
    var var_1 = ~(-2717i);
    global0 = var_0.d.x;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1435f)))), global1.x, _wgslsmith_f_op_f32(global1.x - 659f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), 1126f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - global1.x))), global1.x), vec4<bool>(!(!var_0.a), false, true, false))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(sign(global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f - _wgslsmith_f_op_f32(sign(global1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), 900f)), _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(trunc(global1.x))), global1.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zy - _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), global1.yz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xx) * _wgslsmith_f_op_vec2_f32(global1.zw + global1.xz)))));
    return Struct_5(vec4<bool>(var_0.a, any(select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.a, true), var_0.a), vec2<bool>(true, true), var_0.b)), true, !(var_0.b && !var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(460f, global1.x)) - -796f), 1824f));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    global3 = countOneBits(firstLeadingBit(u_input.a.xwz));
    return _wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i) != arg_1.a.a.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    let var_0 = -_wgslsmith_add_i32(arg_2.d, arg_0.x);
    var var_1 = Struct_1(!arg_2.a.b, func_4(func_2(), Struct_3(arg_2, u_input.a, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(step(global1.x, 142f))), any(select(vec2<bool>(false, true), vec2<bool>(arg_2.b, false), arg_2.b)), select(vec2<bool>(arg_2.a.b, false), vec2<bool>(arg_2.b, arg_2.a.a), !vec2<bool>(arg_2.a.b, false))), Struct_5(!select(vec4<bool>(false, false, arg_2.b, arg_2.b), vec4<bool>(arg_2.b, false, true, arg_2.b), vec4<bool>(arg_2.a.a, true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)))), -min(12841i, arg_0.x), vec2<i32>(0i, -(i32(-1i) * -46675i)), var_0);
    let var_2 = Struct_4(Struct_2(Struct_1(var_1.b, !func_3(), 1i, countOneBits(-vec2<i32>(1i, 2147483647i)), _wgslsmith_mod_i32(firstTrailingBit(44664i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_3, arg_1), arg_0.wxw))), var_1.b, _wgslsmith_add_vec3_u32(u_input.a.yyz, countOneBits(vec3<u32>(4294967295u, u_input.b.x, 4294967295u))), abs(abs(arg_0.x)), (u_input.a.yyz | ~u_input.a.xyz) | arg_2.e), 1u);
    global3 = vec3<u32>(global3.x ^ 28962u, abs(abs(1u ^ u_input.a.x)), arg_2.e.x);
    var var_3 = global3.x;
    return vec2<bool>(var_2.a.b, (_wgslsmith_f_op_f32(-global1.x) <= _wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(-global1.x))) != func_3());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!(!select(func_1(vec4<i32>(-19528i, 20292i, -34337i, 14415i), -49938i, Struct_2(Struct_1(true, true, 1i, vec2<i32>(25430i, -67237i), -26772i), true, vec3<u32>(65907u, u_input.a.x, u_input.a.x), -2147483647i, u_input.a.xzz), -1i), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = max(vec4<i32>(_wgslsmith_sub_i32(-2147483647i >> (global3.x % 32u), 1i), -_wgslsmith_mod_i32(-2147483647i, 5176i), (i32(-1i) * -1i) >> (global3.x % 32u), 0i), vec4<i32>(1i, i32(-1i) * -1i, -(i32(-1i) * -28264i), 0i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -6269i, 11943i), vec3<i32>(14433i, 16740i, 2147483647i)))) << (u_input.a % vec4<u32>(32u));
    global0 = _wgslsmith_mod_i32(var_1.x, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(30124i, 64796i, var_1.x), var_1.yxw, vec3<bool>(true, false, var_0)), ~select(var_1.wzz, var_1.xzw, vec3<bool>(true, false, false))));
    let var_2 = any(select(!vec4<bool>(true, !var_0, true, var_0 & false), !select(!vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(false, false, false, var_0), vec4<bool>(var_0, true, var_0, true), vec4<bool>(true, var_0, var_0, var_0)), !vec4<bool>(false, var_0, true, true)), var_0 && (min(var_1.x, var_1.x) >= -10417i)));
    var var_3 = _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(min(-1581f, -1097f))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(498f, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -962f))), ~(-(~var_1.xw)), ~(vec4<u32>(u_input.a.x, 46860u, u_input.b.x << (u_input.b.x % 32u), u_input.b.x ^ 0u) | u_input.a), vec2<i32>(var_1.x, _wgslsmith_div_i32(var_1.x << (_wgslsmith_mult_u32(0u, 22524u) % 32u), 0i)));
}

