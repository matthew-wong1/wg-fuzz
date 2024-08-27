struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: Struct_4,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec3<i32>;

var<private> global2: vec4<f32>;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec3<i32> {
    global1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(-22147i, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-7793i | global1.x, _wgslsmith_clamp_i32(global1.x, global1.x, global1.x))), -vec3<i32>(14721i, ~12165i, 26599i));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, -47139i), vec3<i32>(0i << (1u % 32u), -34222i, -select(~global1.x, global1.x, 2620f != global2.x)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_4) -> u32 {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(~2147483647i, max(1i, 1i), _wgslsmith_clamp_i32(arg_1, 2147483647i, -1217i), global1.x), -vec4<i32>(12015i, 2147483647i, global1.x, arg_2.d.c));
    global3 = vec4<bool>(arg_0.x, arg_0.x, u_input.a != ~_wgslsmith_clamp_u32(59022u, firstTrailingBit(u_input.a), firstLeadingBit(1380u)), select(true, true, all(!vec3<bool>(false, arg_2.a.b.b.x, true))));
    var var_1 = select(!select(!vec2<bool>(arg_0.x, true), !(!global3.xx), vec2<bool>(false, all(vec3<bool>(arg_0.x, true, global3.x)))), select(arg_2.a.a.b.xx, select(vec2<bool>(false & arg_0.x, arg_2.c.x > arg_1), select(select(vec2<bool>(false, arg_2.e.a.x), vec2<bool>(arg_2.d.b.x, global3.x), false), select(arg_2.a.a.b.ww, vec2<bool>(arg_0.x, global3.x), true), true), arg_0), vec2<bool>(true, true)), !(!(!select(global3.zw, arg_2.a.a.b.yy, vec2<bool>(true, false)))));
    global1 = -vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2.c, vec4<i32>(global1.x, _wgslsmith_mult_i32(var_0.x, -2147483647i), func_1().x, arg_2.a.b.c)), global1.x, -2147483647i);
    var_1 = select(arg_0, select(select(vec2<bool>(true, true), arg_0, any(select(arg_2.d.b.yw, global3.xy, false))), select(!arg_0, !select(vec2<bool>(false, arg_0.x), vec2<bool>(var_1.x, false), vec2<bool>(false, false)), true), var_1.x), any(vec3<bool>(var_1.x, all(vec3<bool>(true, var_1.x, false)), any(global3.zyx))) && true);
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    global0 = func_1().x;
    global1 = vec3<i32>(global1.x, 1i, max(1i, 21555i));
    var var_0 = arg_2;
    var var_1 = Struct_5(vec2<u32>(func_3(select(vec2<bool>(true, true), vec2<bool>(global3.x, false), vec2<bool>(global3.x, true)), arg_3.x, Struct_4(Struct_2(Struct_1(global2.yxz, vec4<bool>(global3.x, false, true, true), 2147483647i, vec3<f32>(arg_1.x, 392f, -1000f)), Struct_1(vec3<f32>(550f, arg_1.x, 1468f), vec4<bool>(true, true, global3.x, true), global1.x, vec3<f32>(-604f, -671f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1618f, 1000f) - vec4<f32>(430f, arg_1.x, 478f, arg_1.x)), -vec4<i32>(arg_3.x, 1i, 36002i, global1.x), Struct_1(vec3<f32>(773f, global2.x, global2.x), vec4<bool>(true, true, false, global3.x), global1.x, global2.xyz), Struct_3(vec3<bool>(false, arg_0, arg_0)))), 56961u), 48524i, Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(global2.xxx, vec3<f32>(-176f, global2.x, -439f)), !vec4<bool>(global3.x, false, global3.x, arg_0), ~global1.x, vec3<f32>(275f, arg_1.x, global2.x)), Struct_1(vec3<f32>(-964f, 937f, 209f), vec4<bool>(false, arg_0, arg_0, global3.x), min(7807i, 13312i), _wgslsmith_f_op_vec3_f32(global2.www - global2.wwx))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 710f, 378f, -285f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2330f, global2.x, 1205f, global2.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(1364f, arg_1.x, global2.x, global2.x), vec4<f32>(-1051f, arg_1.x, -241f, arg_1.x)))), vec4<i32>(global1.x, 22274i, min(-global1.x, -arg_3.x), _wgslsmith_dot_vec3_i32(arg_3, arg_3)), Struct_1(global2.yxx, select(vec4<bool>(true, arg_0, true, arg_0), select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(global3.x, arg_0, arg_0, global3.x)), false | global3.x), ~select(1881i, 0i, global3.x), _wgslsmith_f_op_vec3_f32(global2.zxz - global2.yyx)), Struct_3(vec3<bool>(any(global3.yz), global3.x, global3.x))), 0i, !global3.wwy);
    let var_2 = _wgslsmith_mult_vec3_i32(var_1.c.c.wyy, var_1.c.c.yww);
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global2.xzz, global2.yww), _wgslsmith_f_op_vec3_f32(var_1.c.b.xzw + vec3<f32>(var_1.c.d.a.x, var_1.c.a.b.a.x, 1955f)), !vec3<bool>(var_1.c.e.a.x, true, true)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), arg_1.x), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + global2.x), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_f32(global2.x, -203f))))), select(var_1.c.a.a.b, var_1.c.d.b, false || global3.x), _wgslsmith_div_i32(-1i, var_1.c.a.a.c) ^ 41012i, vec3<f32>(_wgslsmith_f_op_f32(abs(-189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, -776f)) - -527f)), _wgslsmith_f_op_f32(258f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.c.d.a.x, global2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(global3.x, global2.wx, u_input.a >> (max(47722u, u_input.a) % 32u), vec3<i32>(-1i) * -countOneBits(func_1()));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + -652f), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1973f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - 156f), -849f), global2.x, 575f, -219f)));
    var var_2 = Struct_4(Struct_2(Struct_1(vec3<f32>(var_1.x, var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1250f)), vec4<bool>(!global3.x, true, var_0.d.x >= global2.x, func_2(false, vec2<f32>(470f, var_1.x), u_input.a, vec3<i32>(var_0.c, -16276i, 66759i)).b.x), ~(-var_0.c), _wgslsmith_div_vec3_f32(var_1.xyw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1240f, var_0.a.x, global2.x), vec3<f32>(global2.x, 504f, -1216f), false)))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)), !var_0.b, ~(53442i >> (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.xww))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -2158f, var_0.d.x, var_1.x), vec4<f32>(var_1.x, 396f, global2.x, 1510f))))))), vec4<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(2147483647i, global1.x) ^ global1.yz), global1.yz), 1i, -var_0.c, abs(func_1().x)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 1025f, -636f), vec3<f32>(var_1.x, var_0.d.x, 1495f), vec3<bool>(global3.x, var_0.b.x, global3.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, 312f, 691f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 605f, var_1.x)))), vec4<bool>(true, var_0.c > _wgslsmith_add_i32(global1.x, var_0.c), !any(var_0.b), (110u | u_input.a) >= countOneBits(u_input.a)), 59672i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1033f, var_1.x, var_0.a.x), var_1.wwy, global3.wzx)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, global2.x, var_0.a.x))))), Struct_3(!select(global3.xxw, select(vec3<bool>(true, false, var_0.b.x), global3.zyy, vec3<bool>(var_0.b.x, true, false)), global3.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 1470f) - 778f), _wgslsmith_div_f32(var_0.d.x, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)))), !(!vec4<bool>(true, global1.x == -24697i, all(vec4<bool>(var_2.a.a.b.x, true, false, true)), true)), 39690i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_0.a.x), -926f, -841f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, -451f, var_1.x)))));
    var var_4 = Struct_4(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-668f + -442f)), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-805f, 499f)) + var_2.d.a.x), _wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(f32(-1f) * -1574f))) - _wgslsmith_f_op_vec4_f32(round(var_2.b))), ~select(var_2.c, _wgslsmith_add_vec4_i32(vec4<i32>(28870i, var_3.c, var_2.c.x, -18828i), -var_2.c), var_2.a.a.b), var_0, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.b.d.x, 935f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.x, 2482f), var_3.a.zz, var_2.a.b.b.xw)))))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.c, var_3.c), var_2.c.zwz) >> (max(0u, u_input.a) % 32u), -22227i)), firstTrailingBit(global1.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-209f * var_2.a.a.d.x) * -549f) * _wgslsmith_f_op_f32(floor(-306f))));
}

