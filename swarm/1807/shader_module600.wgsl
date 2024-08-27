struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: Struct_3;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(global1.c.e.wy)), global1.b.b, select(!vec4<bool>(u_input.e.x > global1.b.b.c, global2.x, true, global2.x | false), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 72734u), 30u)] <= u_input.e.x, any(global2.yz), all(vec3<bool>(global2.x, global1.b.c.x, false))), (arg_0.x < 547f) || any(global1.a.xz)), Struct_1(global1.a.xy, select(vec3<bool>(false, !global2.x, !global1.b.c.x), !vec3<bool>(false, global1.c.b.x, true), vec3<bool>(false, global1.a.x, all(global1.b.c.wy))), 1i, ~global0[_wgslsmith_index_u32(0u, 30u)] > -25570i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.e.x, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x, _wgslsmith_f_op_f32(sign(-1458f))))));
    let var_1 = -2147483647i;
    global2 = select(select(vec3<bool>(global1.b.d.d && !global1.a.x, _wgslsmith_add_u32(36569u, 1508u) != _wgslsmith_mult_u32(0u, arg_1.x), true), select(!global1.c.b, !select(vec3<bool>(true, true, true), vec3<bool>(var_0.c.x, false, global2.x), global1.b.d.d), global2.x), select(vec3<bool>(global2.x & global1.b.d.d, var_0.d.a.x, var_0.b.c >= 0i), !global1.a, -2147483647i <= var_0.b.c)), select(var_0.c.yyy, !vec3<bool>(108560u >= u_input.a.x, global1.c.b.x, global1.a.x), var_0.b.a.x), global1.b.c.zyy);
    global1 = Struct_3(vec3<bool>(any(vec3<bool>(true && var_0.c.x, var_0.b.c >= -6834i, false)), all(global2.xy) && false, any(vec4<bool>(var_0.d.b.x, global2.x, true, true))), global1.b, global1.b.b);
    let var_2 = Struct_2(global1.c.e.yw, Struct_1(!select(select(global1.b.c.xz, vec2<bool>(false, var_0.c.x), vec2<bool>(true, false)), vec2<bool>(global2.x, true), global1.c.a), select(global1.c.b, !global1.c.b, global1.c.b), -30441i, true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(global1.b.d.e - arg_0))))), global1.b.c, Struct_1(vec2<bool>(var_0.d.b.x, global1.a.x), !select(select(var_0.c.wyz, global1.b.d.b, true), !vec3<bool>(global2.x, true, var_0.d.d), global1.b.b.b), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(74048u << (arg_1.x % 32u), u_input.a.x ^ 23417u) & u_input.c, 30u)], !(!select(false, true, false)), arg_0));
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec4<i32> {
    var var_0 = Struct_3(vec3<bool>(!global2.x, true, _wgslsmith_clamp_u32(select(20957u, u_input.b.x, global2.x), ~u_input.d.x, 83472u | u_input.d.x) >= arg_0), Struct_2(_wgslsmith_div_vec2_f32(global1.c.e.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(316f, -262f))))), Struct_1(!vec2<bool>(false, global1.a.x), select(!global1.b.d.b, global1.c.b, select(vec3<bool>(true, true, global1.a.x), global1.b.b.b, vec3<bool>(false, true, global2.x))), 0i, global2.x, vec4<f32>(_wgslsmith_div_f32(global1.c.e.x, global1.b.a.x), _wgslsmith_div_f32(958f, -1576f), _wgslsmith_f_op_f32(global1.c.e.x * global1.c.e.x), _wgslsmith_div_f32(global1.b.b.e.x, 1068f))), !(!(!vec4<bool>(false, global2.x, global2.x, global1.b.c.x))), Struct_1(global1.b.c.xw, vec3<bool>(all(global1.a.zz), !global1.c.a.x, false), global1.b.b.c, global2.x, _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1801f, -269f, global1.b.b.e.x, -715f), u_input.a & vec4<u32>(u_input.d.x, u_input.c, 1782u, arg_0))))), Struct_1(!select(vec2<bool>(false, global2.x), global2.zz, true), select(select(vec3<bool>(false, global2.x, global2.x), select(global1.a, vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(true, true, global1.a.x)), global2.x), vec3<bool>(global1.c.b.x, !global2.x, global1.c.a.x), select(vec3<bool>(false, global1.a.x, global1.b.c.x), !vec3<bool>(global2.x, global1.a.x, true), global1.b.d.b)), _wgslsmith_dot_vec3_i32((vec3<i32>(7579i, 1i, -2147483647i) >> (vec3<u32>(19375u, 0u, arg_0) % vec3<u32>(32u))) << (max(u_input.d, u_input.a.wyw) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, arg_1), -vec3<i32>(2147483647i, -130i, arg_1), -vec3<i32>(arg_1, 2147483647i, -53947i))), !global2.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, global1.c.e.x, 767f, 1667f))), vec4<f32>(global1.c.e.x, global1.b.b.e.x, _wgslsmith_f_op_f32(-global1.b.d.e.x), _wgslsmith_f_op_f32(1100f + 317f))))));
    var_0 = Struct_3(vec3<bool>(false, true, false), Struct_2(_wgslsmith_f_op_vec2_f32(select(global1.c.e.yw, vec2<f32>(-958f, _wgslsmith_f_op_f32(abs(global1.b.a.x))), max(u_input.e.x, u_input.e.x) >= (30821i >> (arg_0 % 32u)))), Struct_1(vec2<bool>(all(var_0.a), global0[_wgslsmith_index_u32(u_input.a.x, 30u)] == 0i), vec3<bool>(false, false, select(false, var_0.b.b.a.x, false)), -1i, global2.x, vec4<f32>(_wgslsmith_f_op_f32(174f - -285f), _wgslsmith_f_op_f32(step(var_0.b.d.e.x, var_0.c.e.x)), -1392f, _wgslsmith_f_op_vec4_f32(func_3(var_0.c.e, vec4<u32>(u_input.d.x, arg_0, 55013u, 4294967295u))).x)), select(var_0.b.c, select(!global1.b.c, global1.b.c, !global1.b.c), vec4<bool>(global2.x & false, true, !global2.x, var_0.b.c.x)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0.a.x, global2.x), var_0.a.x), var_0.c.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.c.c, var_0.b.b.c), countOneBits(vec2<i32>(-1i, 45421i))), any(!vec2<bool>(true, global1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e.x, var_0.c.e.x, global1.c.e.x, var_0.c.e.x)))), Struct_1(select(var_0.c.a, global1.b.c.xz, vec2<bool>(var_0.a.x, all(global1.b.b.b))), select(vec3<bool>(true, any(var_0.b.c), all(global1.b.c)), vec3<bool>(true, true, true), !var_0.b.b.b), -19291i, global1.b.c.x, global1.b.b.e));
    global1 = Struct_3(!select(vec3<bool>(true, global1.a.x, global2.x), global1.a, var_0.c.b), global1.b, Struct_1(select(global2.zy, select(vec2<bool>(true, true), vec2<bool>(false, true), select(global1.b.d.a, global1.a.xx, false)), select(global1.c.a, global1.a.yx, global2.yz)), select(var_0.a, !var_0.b.d.b, global1.b.c.yzz), arg_1, false, _wgslsmith_div_vec4_f32(var_0.c.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.b.b.e)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-662f, var_0.c.e.x, var_0.b.a.x, -578f)))))));
    var var_1 = Struct_1(!(!(!select(global1.b.d.b.xy, var_0.a.yy, true))), !var_0.c.b, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(arg_0, min(21553u, arg_0), true), u_input.a.x), 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.a.x + -700f), 1316f)), 243f)) == var_0.c.e.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.c.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.b.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1121f, 319f, 1644f, 511f))))));
    global0 = array<i32, 30>();
    return ~(-(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-28759i, arg_1, -8400i, -15003i), vec4<i32>(global1.b.d.c, -18731i, 1i, global0[_wgslsmith_index_u32(arg_0, 30u)])), max(vec4<i32>(var_1.c, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -32060i, -1i), vec4<i32>(var_0.b.d.c, 0i, 38969i, var_0.b.b.c)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(true, !(!global1.c.d)), !vec2<bool>(true, global1.a.x), !global1.a.xx), !select(global1.c.b, !vec3<bool>(global1.b.d.b.x, global1.a.x, global1.c.a.x), !arg_0.d.a.x & (false && global1.c.b.x)), 54153i, true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(select(-1000f, 663f, false)))), _wgslsmith_f_op_f32(-815f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b.a.x)), _wgslsmith_f_op_f32(836f + arg_0.b.e.x))), _wgslsmith_f_op_f32(select(arg_0.b.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-300f * arg_0.d.e.x) + _wgslsmith_f_op_f32(round(arg_0.b.e.x))), all(arg_0.c))), -807f));
    global0 = array<i32, 30>();
    var var_1 = ~reverseBits(~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, 76699u, u_input.d.x, 0u)));
    let var_2 = -countOneBits(func_2(_wgslsmith_add_u32(~1u, var_1.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.c, 57431u, 1u), 30u)]));
    var var_3 = u_input.d.x;
    return Struct_1(!select(vec2<bool>(any(global2.yy), global1.c.d), !select(var_0.b.yy, global2.zy, global2.x), select(vec2<bool>(false, false), vec2<bool>(global2.x, true), arg_0.b.b.x)), global1.b.d.b, _wgslsmith_clamp_i32(-25127i, -(-global0[_wgslsmith_index_u32(1u, 30u)] | ~arg_0.d.c), 30331i), 842f == global1.b.b.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(227f * -485f), -1038f, _wgslsmith_f_op_f32(-2961f + global1.b.d.e.x), var_0.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-589f, global1.b.b.e.x) * global1.b.a))), Struct_1(select(global1.b.d.b.zy, vec2<bool>(false, global2.x), u_input.d.x >= u_input.a.x), select(select(vec3<bool>(false, true, global1.c.b.x), global1.c.b, global1.a), select(vec3<bool>(false, global1.b.c.x, false), vec3<bool>(false, true, true), vec3<bool>(global1.a.x, global1.a.x, global2.x)), false), global1.b.d.c, global1.a.x, _wgslsmith_f_op_vec4_f32(min(global1.b.d.e, global1.c.e))), global1.b.c, Struct_1(!(!vec2<bool>(global1.c.d, global1.c.a.x)), vec3<bool>(true, true, true), u_input.e.x, any(global1.b.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b.d.e, global1.b.b.e)))));
    var var_1 = vec3<u32>(max(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.c)), vec2<u32>(u_input.c, 0u)), 0u << ((0u & u_input.b.x) % 32u), u_input.d.x)), ~min(4294967295u, ~(~u_input.a.x)), 0u);
    var var_2 = Struct_1(func_1(Struct_2(global1.c.e.wx, func_1(global1.b), global1.b.c, Struct_1(global2.zy, func_1(Struct_2(global1.c.e.zw, Struct_1(vec2<bool>(var_0.d, global2.x), global1.c.b, 1i, global2.x, vec4<f32>(1456f, global1.c.e.x, -2580f, var_0.e.x)), global1.b.c, global1.b.d)).b, firstTrailingBit(-19685i), select(global2.x, var_0.b.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.e.x, -869f, global1.c.e.x))))).b.xy, vec3<bool>(var_0.d, false, false), u_input.e.x, var_0.d, vec4<f32>(var_0.e.x, _wgslsmith_div_f32(var_0.e.x, -1215f), 111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(-global1.b.d.e.x))))));
    var_0 = global1.b.d;
    let var_3 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e.xz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.e.x, 1291f)))), global1.c, select(global1.b.c, select(!global1.b.c, global1.b.c, global1.a.x | false), select(select(global1.b.c, vec4<bool>(false, false, global1.a.x, true), vec4<bool>(true, false, var_2.b.x, false)), global1.b.c, any(vec2<bool>(false, false)))), func_1(global1.b)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.e.xw - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.d.e.yw + global1.b.d.e.xz))) - vec2<f32>(_wgslsmith_f_op_f32(step(func_1(Struct_2(vec2<f32>(var_3.e.x, 1340f), var_3, global1.b.c, global1.b.d)).e.x, -222f)), -1069f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -702f) * var_3.e.wz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1560f, 162f) * var_2.e.xy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(global1.b.a, var_2.e.wz)))))));
    global1 = Struct_3(!vec3<bool>(_wgslsmith_f_op_f32(min(var_4.x, 1998f)) < 1f, true, false), global1.b, func_1(global1.b));
    global0 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.zxy);
}

