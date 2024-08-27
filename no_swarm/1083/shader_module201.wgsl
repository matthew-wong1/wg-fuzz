struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: i32 = 15621i;

var<private> global2: array<i32, 32>;

var<private> global3: array<bool, 25> = array<bool, 25>(true, false, false, false, false, true, false, false, true, true, false, false, true, false, false, false, true, true, false, false, true, true, false, false, true);

var<private> global4: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(u_input.b.xyy));
    let var_1 = 58224u;
    let var_2 = u_input.c;
    global3 = array<bool, 25>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 630f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, -887f)) + vec2<f32>(-274f, -963f))))));
    return vec3<bool>(true & (false | all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], false, false))), true, reverseBits(u_input.c) >= u_input.e.x);
}

fn func_2() -> vec4<u32> {
    let var_0 = true;
    var var_1 = vec2<i32>(-1i >> ((u_input.c << (u_input.d.x % 32u)) % 32u), abs(select(~0i, countOneBits(9657i), false)));
    var var_2 = select(select(!global0.yzx, select(vec3<bool>(true, all(vec2<bool>(false, global0.x)), var_0), select(global0.zwz, !global0.yyw, vec3<bool>(false, var_0, var_0)), !func_3(true, vec2<bool>(var_0, false))), select(!(!vec3<bool>(false, global0.x, var_0)), vec3<bool>(!global0.x, false, u_input.c != 65096u), true)), global0.zwz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1984f)) * _wgslsmith_f_op_f32(select(-761f, 387f, global3[_wgslsmith_index_u32(24267u, 25u)]))))) == -938f);
    var var_3 = ~global2[_wgslsmith_index_u32(1u, 32u)] | (i32(-1i) * 0i);
    var var_4 = abs(u_input.d.xwy);
    return vec4<u32>(min(u_input.d.x, firstTrailingBit(~(~u_input.e.x))), var_4.x, countOneBits(~(~(~4294967295u))), ~(u_input.c << (var_4.x % 32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = global0.zxw;
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec3_i32(u_input.b.wyy, vec3<i32>(-1i, -6438i, -18281i)))), Struct_2(Struct_1(u_input.b.ywx)), -4984i, 4294967295u);
    let var_2 = arg_3.x != -1341f;
    let var_3 = _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-u_input.b.x, 2147483647i, 0i ^ var_1.a.a.a.x, u_input.a.x)), -(u_input.b ^ ((vec4<i32>(global2[_wgslsmith_index_u32(37153u, 32u)], -1i, 2147483647i, u_input.a.x) ^ u_input.b) >> (vec4<u32>(arg_0.x, 28360u, 3335u, 4294967295u) % vec4<u32>(32u)))), firstTrailingBit(u_input.b));
    let var_4 = true;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, arg_3.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 320f)))) + arg_3)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, 1082f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 332f) - vec2<f32>(1007f, -514f))), _wgslsmith_f_op_vec2_f32(func_4(u_input.d.zyx ^ vec3<u32>(u_input.e.x, arg_1.d, arg_1.d), func_2(), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], global0.x, global0.x), global0.yyy, global0.wwz), _wgslsmith_div_vec2_f32(vec2<f32>(-1619f, 1630f), vec2<f32>(495f, -511f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1055f, 887f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-547f, 301f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, -716f)) + vec2<f32>(1357f, -105f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), 1305f)))));
    let var_1 = Struct_4(!(!(!(!vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 25u)], true, true)))), Struct_2(Struct_1(u_input.b.zzy)));
    global1 = min(-43567i, _wgslsmith_div_i32(countOneBits(arg_0.a.x), -arg_1.b.a.a.x) | -29763i) & ~_wgslsmith_clamp_i32(0i, 2147483647i, ~select(arg_1.c, -2147483647i, false));
    let var_2 = Struct_4(!vec4<bool>(any(var_1.a), any(var_1.a), !global3[_wgslsmith_index_u32(~arg_1.d, 25u)], any(!vec2<bool>(global0.x, false))), Struct_2(Struct_1(arg_0.a)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), 1f)), -413f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(720f, 1553f) * _wgslsmith_f_op_f32(sign(729f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1038f, var_0.x)), vec2<f32>(346f, var_0.x)))));
    return u_input.c;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = all(!(!select(global4[_wgslsmith_index_u32(0u, 3u)], vec2<bool>(global0.x, global3[_wgslsmith_index_u32(u_input.c, 25u)]), global0.yz))) && any(global0.zy);
    global2 = array<i32, 32>();
    global2 = array<i32, 32>();
    let var_1 = all(global0.xyz);
    let var_2 = Struct_4(select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(global3[_wgslsmith_index_u32(20749u, 25u)], var_1, var_1, false), false), vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 0u), 25u)], true, func_3(false, vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)])).x), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 25u)], global0.x, false, var_1), select(vec4<bool>(global0.x, global3[_wgslsmith_index_u32(8436u, 25u)], global0.x, global0.x), vec4<bool>(false, true, true, global0.x), vec4<bool>(false, true, var_1, var_1)), true)), vec4<bool>(!(!var_1), true || all(global0.zzz), !(arg_1.x <= 0u), global3[_wgslsmith_index_u32(arg_1.x, 25u)]), vec4<bool>(!(arg_2.x <= arg_2.x), true, all(vec4<bool>(false, global0.x, global0.x, global0.x)), all(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 25u)], true, false)) || var_1)), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(u_input.b.xzx, vec3<i32>(1i, 2147483647i, 13743i) << (u_input.d.yzy % vec3<u32>(32u))))));
    return -1074f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec2<i32>(~u_input.b.x >> (func_1(Struct_1(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(0u, 32u)])), Struct_3(Struct_2(Struct_1(u_input.b.wxz)), Struct_2(Struct_1(vec3<i32>(0i, -16108i, -45217i))), -1414i, 2227u)) % 32u), _wgslsmith_mod_i32(-4023i, 2147483647i)), firstLeadingBit(u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, 643f))) - vec2<f32>(_wgslsmith_f_op_f32(227f - 1348f), _wgslsmith_f_op_f32(-248f + -1046f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(reverseBits(u_input.d.zyw), ~(~u_input.d), select(vec3<bool>(true, global0.x, global3[_wgslsmith_index_u32(52868u, 25u)]), func_3(global0.x, vec2<bool>(true, false)), global0.zxy), _wgslsmith_f_op_vec2_f32(vec2<f32>(149f, 475f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1505f, 2207f), vec2<f32>(438f, -345f), true))))).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, 544f) - _wgslsmith_f_op_f32(f32(-1f) * -1835f)))));
    let var_1 = Struct_1(firstLeadingBit(u_input.b.zzy) << (~(abs(vec3<u32>(0u, u_input.d.x, 23972u)) ^ ~vec3<u32>(1u, u_input.c, u_input.c)) % vec3<u32>(32u)));
    global3 = array<bool, 25>();
    global4 = array<vec2<bool>, 3>();
    let var_2 = Struct_1(reverseBits(countOneBits(u_input.b.wyz)) ^ vec3<i32>(u_input.a.x, min(1i, ~(-2147483647i)), -(23345i << (u_input.c % 32u))));
    global1 = _wgslsmith_div_i32(17436i, -1i);
    var var_3 = Struct_2(var_2);
    let var_4 = var_1.a.x;
    var var_5 = var_2.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, select(4294967295u, u_input.c, false), _wgslsmith_add_u32(u_input.d.x, u_input.c)), ~select(vec3<u32>(u_input.c, u_input.e.x, u_input.e.x), vec3<u32>(4294967295u, 85716u, 1u), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.c, 25u)]))), vec4<f32>(var_0, 533f, var_0, var_0), _wgslsmith_f_op_f32(trunc(777f)), var_0);
}

