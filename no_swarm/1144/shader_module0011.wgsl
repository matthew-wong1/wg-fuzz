struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-15512i, 2147483647i, -1i);

var<private> global1: array<bool, 29>;

var<private> global2: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    global1 = array<bool, 29>();
    global1 = array<bool, 29>();
    global0 = arg_3.b.b.yyz;
    global0 = vec3<i32>(arg_1.x, 40589i, global0.x);
    let var_0 = arg_3.e.a;
    return firstTrailingBit(_wgslsmith_sub_u32(~u_input.a, 1u));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_3 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3)) - _wgslsmith_f_op_vec2_f32(exp2(arg_2.yw))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(arg_2.zx, arg_3)), arg_2.xy)))));
    let var_1 = select(!select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 29u)], true, global1[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]), global1[_wgslsmith_index_u32(arg_1.x, 29u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, global1[_wgslsmith_index_u32(arg_1.x, 29u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(14245u, 29u)], false, true, true), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], false, false, false), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, true, global1[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], true, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(59797u, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 29u)], false, global1[_wgslsmith_index_u32(32035u, 29u)])), select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(16032u, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(13150u, 29u)], false, global1[_wgslsmith_index_u32(u_input.c, 29u)], true), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, false, true))), !select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1670u, 29u)], true, global1[_wgslsmith_index_u32(arg_1.x, 29u)]))), select(select(vec4<bool>(!global1[_wgslsmith_index_u32(u_input.c, 29u)], !global1[_wgslsmith_index_u32(arg_1.x, 29u)], true, global1[_wgslsmith_index_u32(28362u, 29u)] && global1[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<bool>(true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 29u)], false, global1[_wgslsmith_index_u32(u_input.c, 29u)])), all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, false)), all(vec2<bool>(false, true))), !(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 29u)], false, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(arg_1.x, 29u)]))), vec4<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(76072u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], true), vec3<bool>(global1[_wgslsmith_index_u32(13895u, 29u)], false, true))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d.x, u_input.c), ~86137u), 29u)], true, global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(832f - 380f), select(u_input.e.wxz, arg_0.zwx, global1[_wgslsmith_index_u32(20867u, 29u)]), vec2<i32>(arg_0.x, u_input.e.x) | vec2<i32>(arg_0.x, -1i), Struct_3(u_input.b, Struct_1(vec4<i32>(arg_0.x, 1i, 64012i, 12476i), u_input.e, arg_2.x, arg_2.x, 1u), false, arg_1.x, var_0)), 29u)]), arg_2.x != 1497f), true);
    let var_2 = vec3<bool>(true, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(10113u, 4294967295u, arg_1.x, arg_1.x), u_input.d) ^ 34546u) | u_input.c, 29u)], var_1.x);
    let var_3 = Struct_1(select(~select(vec4<i32>(-14774i, 3864i, global0.x, 1i) ^ vec4<i32>(-2147483647i, -28015i, u_input.b.x, -49490i), countOneBits(vec4<i32>(global0.x, global0.x, arg_0.x, -61571i)), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 29u)], false, var_2.x)), vec4<i32>(min(33517i, _wgslsmith_add_i32(19000i, 10588i)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.x, global0.x), u_input.b.x), _wgslsmith_dot_vec4_i32(reverseBits(arg_0), vec4<i32>(28001i, 0i, arg_0.x, global0.x)), ~(-arg_0.x)), !select(false, false, true) && !all(var_1.wx)), reverseBits(vec4<i32>(2147483647i, arg_0.x, -17560i, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1117f + 1870f)))), -1182f, 17235u);
    global1 = array<bool, 29>();
    return !var_1.x;
}

fn func_2() -> vec3<bool> {
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + -1054f) * -1339f))) - -1294f)));
    var var_0 = u_input.d.x;
    let var_1 = vec3<bool>(func_4(~u_input.e, ~vec2<u32>(63092u, func_3(-1524f, vec3<i32>(26128i, global0.x, -9630i), u_input.e.xw, Struct_3(vec2<i32>(6026i, 21199i), Struct_1(vec4<i32>(-4769i, global0.x, global0.x, global0.x), vec4<i32>(u_input.b.x, global0.x, -30434i, u_input.b.x), -642f, 492f, u_input.d.x), false, 61479u, Struct_2(vec2<f32>(581f, -271f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 162f, 564f, 435f) * _wgslsmith_div_vec4_f32(vec4<f32>(-966f, -273f, 241f, -329f), vec4<f32>(-677f, 1305f, 585f, 1020f)))), vec2<f32>(149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f + 221f) * -1483f))), true, true | (true | global1[_wgslsmith_index_u32(~u_input.c << (u_input.d.x % 32u), 29u)]));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(486f, -550f, -484f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(529f, -436f, 1896f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(691f, 1074f, -1000f), vec3<f32>(-2004f, -1015f, 1000f))), !vec3<bool>(var_1.x, var_1.x, false))))));
    var_2 = vec3<f32>(456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -420f)) - var_2.x), var_2.x);
    return var_1;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> vec3<bool> {
    global2 = -859f;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1207f * -809f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(451f, var_0))));
    var var_2 = global1[_wgslsmith_index_u32(~4465u, 29u)];
    global1 = array<bool, 29>();
    return func_2();
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1077f, -1662f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-369f + -560f))))) - 489f);
    var var_0 = _wgslsmith_mult_i32(27399i, ~16849i);
    let var_1 = global0.x;
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(select(u_input.d.wx, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), u_input.d.yy, vec2<u32>(u_input.a, 54514u)), vec2<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.c, 29u)])), firstLeadingBit(select(vec2<u32>(24674u, 21344u), u_input.d.wx, true))), ~u_input.c), _wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, u_input.a, u_input.c) | vec3<u32>(59649u, u_input.a, 0u)), u_input.d.zyw) << (reverseBits(~(~u_input.d.wxz)) % vec3<u32>(32u)));
    var var_3 = -538f;
    return Struct_3(abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(global0.x, 60169i)), u_input.b), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.e.x, global0.x)), vec2<i32>(global0.x, global0.x) | vec2<i32>(22966i, u_input.b.x)))), Struct_1(vec4<i32>(1i, _wgslsmith_clamp_i32(global0.x, 1i, u_input.b.x), ~(i32(-1i) * -10334i), u_input.e.x), vec4<i32>(~_wgslsmith_mult_i32(global0.x, -6350i), -1i, ~(u_input.e.x << (11397u % 32u)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f - -132f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(881f)))), ~_wgslsmith_sub_u32(abs(var_2.x), ~13220u)), !(!arg_0.x), firstTrailingBit(20699u), Struct_2(vec2<f32>(-206f, _wgslsmith_f_op_f32(-798f - _wgslsmith_f_op_f32(-659f - 1931f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.e.zxw, u_input.e.yww);
    var var_1 = func_5(select(vec3<bool>(false, any(vec2<bool>(true, true)), select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, u_input.d.x), 29u)], true, !global1[_wgslsmith_index_u32(4294967295u, 29u)])), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(8608u, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 29u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(56795u, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)]), vec3<bool>(true, false, true)), select(global1[_wgslsmith_index_u32(44959u, 29u)], global1[_wgslsmith_index_u32(u_input.c, 29u)], false)), select(func_1(4294967295u, 4294967295u, u_input.e.zy), select(vec3<bool>(global1[_wgslsmith_index_u32(10655u, 29u)], true, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], global1[_wgslsmith_index_u32(17929u, 29u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], global1[_wgslsmith_index_u32(42209u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)])), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 29u)], global1[_wgslsmith_index_u32(u_input.d.x, 29u)])), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], any(vec2<bool>(false, false)), false)), false));
    let var_2 = func_5(!vec3<bool>(true, !(global1[_wgslsmith_index_u32(var_1.b.e, 29u)] && var_1.c), global1[_wgslsmith_index_u32(u_input.c & abs(72186u), 29u)]));
    var_1 = var_2;
    let var_3 = var_2.e;
    let var_4 = 1i;
    global2 = var_2.b.d;
    var_1 = Struct_3(vec2<i32>(var_1.a.x | var_0, -(var_4 ^ 1i)), var_2.b, global1[_wgslsmith_index_u32(select(min(71183u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 45938u), reverseBits(vec3<u32>(1u, 27455u, 1u)))), select(~func_5(vec3<bool>(false, var_1.c, global1[_wgslsmith_index_u32(3703u, 29u)])).d, u_input.d.x, 43517u != ~u_input.a), func_1(~23564u, ~18424u, u_input.e.zw).x), 29u)], _wgslsmith_div_u32(var_2.b.e, _wgslsmith_mod_u32(var_2.b.e, var_1.b.e)), func_5(!vec3<bool>(var_0 <= u_input.b.x, true, var_2.b.b.x < u_input.b.x)).e);
    let x = u_input.a;
    s_output = StorageBuffer((~(u_input.d.x | u_input.c) >> (var_2.d % 32u)) >> (~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, u_input.c, var_1.b.e, u_input.c), vec4<u32>(0u, u_input.a, 31931u, 4294967295u))) % 32u), 1231f, var_2.b.c, u_input.d);
}

