struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(1000f, 908f), Struct_2(vec3<bool>(true, false, true), vec2<u32>(0u, 1133u), vec2<u32>(4294967295u, 82751u), true, Struct_1(46593u, 4294967295u, 2147483647i, vec3<bool>(true, true, false), 35267i)), Struct_1(4294967295u, 30015u, -9712i, vec3<bool>(false, true, true), -3968i), Struct_2(vec3<bool>(false, false, true), vec2<u32>(14251u, 0u), vec2<u32>(0u, 7612u), true, Struct_1(13865u, 4701u, 1i, vec3<bool>(false, false, true), 0i)), Struct_3(Struct_1(81511u, 9949u, -42019i, vec3<bool>(true, false, true), 35847i), Struct_1(1u, 124936u, 11152i, vec3<bool>(true, true, true), 2147483647i), vec2<u32>(28776u, 1u), Struct_1(1u, 27584u, i32(-2147483648), vec3<bool>(true, true, false), 0i), vec3<u32>(4251u, 107254u, 0u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = global0.b;
    var var_1 = Struct_4(global0.a, Struct_2(global0.b.a, _wgslsmith_mod_vec2_u32(global0.d.b, vec2<u32>(global0.d.e.a, u_input.b.x)) & u_input.b.xw, vec2<u32>(0u, abs(_wgslsmith_div_u32(4294967295u, 44551u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, var_0.e.d.x)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a.x, global0.a.x)), _wgslsmith_div_f32(global0.a.x, global0.a.x)), Struct_1(1u, global0.e.b.b, 11611i, !vec3<bool>(false, true, var_0.e.d.x), 55289i)), Struct_1(20552u, 0u, -1i, select(vec3<bool>(true, true, true), select(!vec3<bool>(var_0.a.x, var_0.d, var_0.a.x), select(var_0.e.d, vec3<bool>(true, true, global0.e.a.d.x), vec3<bool>(true, true, global0.e.b.d.x)), vec3<bool>(global0.c.d.x, false, true)), vec3<bool>(any(vec2<bool>(false, false)), 1u == global0.d.c.x, select(global0.c.d.x, global0.c.d.x, var_0.e.d.x))), _wgslsmith_add_i32(i32(-1i) * -global0.e.a.c, ~u_input.a.x ^ ~u_input.a.x)), global0.d, Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.e.a, 1u, 36002u, 4294967295u), u_input.b), ~57120u, -u_input.a.x, !(!var_0.a), reverseBits(_wgslsmith_add_i32(-8447i, 1i))), var_0.e, firstTrailingBit(u_input.b.zy), Struct_1(_wgslsmith_div_u32(u_input.b.x, u_input.c) << (global0.b.c.x % 32u), 1u, var_0.e.e, var_0.e.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.e, 0i, u_input.a.x), vec3<i32>(-10691i, var_0.e.c, global0.e.a.c))), vec3<u32>(25958u, 0u, ~u_input.c)));
    var var_2 = Struct_2(select(global0.c.d, var_0.e.d, select(var_0.a, !vec3<bool>(false, global0.c.d.x, var_1.b.e.d.x), !select(global0.c.d, var_0.a, vec3<bool>(var_1.b.d, var_0.d, var_0.e.d.x)))), u_input.b.yx, ~(firstTrailingBit(vec2<u32>(u_input.c, 34138u) | vec2<u32>(u_input.c, u_input.b.x)) ^ (abs(global0.b.b) | ~global0.b.c)), select(any(global0.d.e.d), _wgslsmith_clamp_i32(i32(-1i) * -15702i, 2147483647i, 80204i) == abs(firstLeadingBit(68757i)), true), var_0.e);
    var var_3 = !select(!vec3<bool>(all(vec4<bool>(true, true, true, var_2.e.d.x)), global0.a.x >= var_1.a.x, !var_0.e.d.x), !(!select(global0.d.a, vec3<bool>(global0.b.d, global0.c.d.x, false), false)), (-205f < _wgslsmith_div_f32(var_1.a.x, -616f)) != var_1.d.d);
    let var_4 = Struct_1(_wgslsmith_div_u32(countOneBits(u_input.b.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(94426u, var_2.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(global0.d.e.a, var_2.e.a), vec2<u32>(62595u, 4294967295u))), reverseBits(4294967295u)), firstLeadingBit(abs(~var_0.b.x)), countOneBits(_wgslsmith_dot_vec2_i32(~(vec2<i32>(11731i, -1i) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), vec2<i32>(-7419i, var_1.e.b.e))), vec3<bool>(var_0.c.x != (_wgslsmith_sub_u32(38140u, var_0.c.x) & 1u), true, true), 0i);
    return false && !all(select(vec2<bool>(false, global0.d.a.x), select(global0.e.d.d.yz, vec2<bool>(false, var_3.x), var_4.d.xz), select(vec2<bool>(var_2.a.x, true), global0.d.a.yy, false)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(185f * -940f)), arg_0.xw)), Struct_2(vec3<bool>(true & global0.d.a.x, func_3(), !global0.d.e.d.x || any(vec4<bool>(global0.b.e.d.x, global0.c.d.x, true, global0.e.b.d.x))), ~firstLeadingBit(u_input.b.yw), _wgslsmith_clamp_vec2_u32(u_input.b.yy, _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.zw) << (vec2<u32>(3213u, ~u_input.c) % vec2<u32>(32u)), global0.b.d, global0.e.b), global0.c, Struct_2(!select(global0.c.d, !global0.e.b.d, vec3<bool>(global0.e.d.d.x, global0.e.d.d.x, false)), ~global0.b.b, vec2<u32>(1u, 1u), any(vec4<bool>(global0.d.d, global0.a.x == global0.a.x, global0.e.a.d.x, false)), global0.b.e), global0.e);
    global0 = Struct_4(arg_0.xw, global0.d, Struct_1(~10514u, u_input.c, abs(_wgslsmith_mult_i32(~0i, 1i)), global0.e.b.d, -1i), global0.b, global0.e);
    global0 = Struct_4(arg_0.xz, global0.b, global0.e.b, Struct_2(global0.d.a, vec2<u32>(_wgslsmith_mod_u32(~global0.d.b.x, 4211u), 3294u), vec2<u32>(1u, ~u_input.c) << (vec2<u32>(reverseBits(global0.d.c.x), 50686u) % vec2<u32>(32u)), global0.e.a.d.x, global0.b.e), global0.e);
    global0 = Struct_4(vec2<f32>(global0.a.x, 1377f), Struct_2(global0.c.d, ~u_input.b.zz, global0.e.c, global0.c.d.x, Struct_1(32386u, global0.e.c.x, u_input.a.x, select(global0.d.a, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), global0.c.d.x), global0.d.e.c)), Struct_1(~global0.b.c.x, global0.d.b.x, abs(global0.e.b.c), !vec3<bool>(global0.c.d.x, global0.b.a.x, any(vec3<bool>(true, false, false))), -1i), global0.b, global0.e);
    let var_0 = firstLeadingBit(-1i);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.a)))))), global0.d, global0.b.e, Struct_2(global0.b.e.d, ~vec2<u32>(~global0.c.a, ~u_input.c), vec2<u32>(~u_input.b.x, ~_wgslsmith_div_u32(global0.e.b.a, 1u)), !global0.e.d.d.x & global0.b.d, Struct_1(u_input.b.x | abs(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, global0.e.e.x), -21261i, !select(global0.d.a, global0.d.a, false), var_0)), global0.e);
}

fn func_1() -> Struct_2 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-968f, -514f, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, 1584f, global0.a.x, global0.a.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2398f, -2057f, -1543f, global0.a.x))), -u_input.a.x == -1i))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(111f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x)) + 1259f)), -853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1062f)))).a.x)));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.a.x, global0.a.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, var_0.x, -1186f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(931f, global0.a.x, 591f), vec3<f32>(var_0.x, -767f, var_0.x)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 770f, var_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1463f, -785f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global0.a.x)))) - vec3<f32>(1143f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(577f + _wgslsmith_f_op_f32(-global0.a.x)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(abs(-1479f))), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-495f, global0.a.x) - _wgslsmith_f_op_f32(select(-1492f, 688f, global0.c.d.x)))))), -1439f);
    var var_1 = func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.a.x, var_0.x, 257f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1005f, var_0.x, global0.a.x, var_0.x) + vec4<f32>(-1772f, global0.a.x, -542f, 217f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -183f, 1420f, -398f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, var_0.x, var_0.x, global0.a.x) + vec4<f32>(global0.a.x, 1000f, global0.a.x, global0.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1346f, global0.a.x, 211f, var_0.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(-756f, -1116f, global0.a.x, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -723f)))))).e;
    return func_2(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(sign(-1499f)))), -140f, global0.a.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(1u > _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c & 47959u, ~global0.e.b.b), ~_wgslsmith_dot_vec3_u32(vec3<u32>(130589u, 1u, global0.d.e.a), vec3<u32>(u_input.b.x, 4294967295u, u_input.c))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.a.x)), global0.a.x) - _wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1339f, 1440f)))) * global0.a), func_1(), func_1().e, Struct_2(!vec3<bool>(all(global0.d.a), !global0.b.e.d.x, global0.e.a.d.x | global0.d.a.x), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, global0.d.b.x)), ~(~global0.b.c)), ~vec2<u32>(_wgslsmith_div_u32(1012u, global0.d.e.b), 16981u), var_0, func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1063f, -185f, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, -773f, -558f, -1609f), vec4<bool>(false, global0.d.d, var_0, true))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-384f, -331f, -1746f, global0.a.x)))))).d.e), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(365f + -584f), global0.a.x, _wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(step(global0.a.x, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(860f, global0.a.x, 217f, global0.a.x) + vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))).e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x + 106f)), global0.a.x))));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 665f) * global0.a) - _wgslsmith_f_op_vec2_f32(-func_2(vec4<f32>(625f, global0.a.x, 1000f, 1405f)).a)))), Struct_2(vec3<bool>((global0.e.e.x ^ global0.e.b.a) <= ~u_input.c, true, global0.c.d.x), vec2<u32>(~_wgslsmith_dot_vec3_u32(global0.e.e, vec3<u32>(1u, 76095u, 44948u)), (1u >> (global0.c.a % 32u)) & global0.c.b), vec2<u32>(u_input.c, ~(u_input.c & 1u)), any(!global0.c.d), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1000f, var_1, -346f) + vec4<f32>(1000f, 1234f, var_1, var_1)), vec4<f32>(-2139f, 1548f, var_1, var_1)))).c), Struct_1(min(global0.e.b.a, 29515u), ~func_2(vec4<f32>(1144f, global0.a.x, global0.a.x, var_1)).c.b, _wgslsmith_dot_vec4_i32(min(min(vec4<i32>(global0.e.b.c, -2147483647i, global0.c.c, global0.c.e), vec4<i32>(-19437i, 68751i, -19831i, u_input.a.x)), vec4<i32>(-2147483647i, global0.b.e.c, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_add_i32(12929i, -2147483647i), -1i, global0.b.e.c, 22013i)), global0.b.e.d, 1i), global0.d, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(global0.a.x + 546f), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-1943f - -1434f))))).e);
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), -391f)), Struct_2(vec3<bool>(!var_0 && true, false, _wgslsmith_f_op_f32(select(537f, 1500f, false)) == _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.e.e.x, u_input.b.x), _wgslsmith_sub_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x))), vec2<u32>(u_input.b.x, 0u) & select(global0.d.c, global0.b.b, global0.c.d.x)), func_1().c, any(global0.c.d), Struct_1(global0.d.c.x, ~u_input.c, firstLeadingBit(global0.e.b.e), !vec3<bool>(false, true, var_0), -(global0.b.e.e ^ 2147483647i))), global0.c, Struct_2(global0.d.a, firstLeadingBit(u_input.b.wy), ~vec2<u32>(_wgslsmith_div_u32(global0.c.a, u_input.b.x), firstTrailingBit(global0.e.a.a)), any(vec2<bool>(var_1 == var_1, true)), global0.e.a), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_2(vec4<f32>(global0.a.x, -935f, var_1, 1238f)).c.e, global0.c.e, global0.b.e.c, 20797i) ^ (min(countOneBits(vec4<i32>(-38423i, -2147483647i, 26903i, global0.e.b.e)), ~vec4<i32>(0i, 34617i, -2147483647i, -2147483647i)) ^ ((vec4<i32>(global0.c.c, -53932i, -16800i, -1i) | vec4<i32>(global0.c.c, 2147483647i, u_input.a.x, u_input.a.x)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, global0.e.a.e, -1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.c, _wgslsmith_clamp_vec2_i32(reverseBits(u_input.a), firstLeadingBit(u_input.a), ~reverseBits(u_input.a)), -(~2147483647i), select(-13998i, 15354i, !((-411f != var_1) == true)));
}

