struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec4<u32>(30611u, 41546u, 4294967295u, 27212u), Struct_1(38471u, vec3<f32>(-1420f, 522f, 897f), vec3<f32>(138f, 1012f, -1014f)), Struct_1(50076u, vec3<f32>(-169f, -1002f, -1912f), vec3<f32>(-643f, -296f, -612f)), vec4<bool>(true, false, true, true)), Struct_3(vec4<u32>(1u, 82675u, 4294967295u, 0u), Struct_1(36268u, vec3<f32>(-602f, 231f, 1338f), vec3<f32>(639f, -1000f, 273f)), Struct_1(17838u, vec3<f32>(-1571f, 787f, -1568f), vec3<f32>(-1313f, 3163f, 1222f)), vec4<bool>(false, false, true, false)), -906f, Struct_1(0u, vec3<f32>(-121f, -124f, -1075f), vec3<f32>(-2632f, 240f, -851f)), vec2<bool>(false, true));

var<private> global1: Struct_2;

var<private> global2: Struct_3;

var<private> global3: Struct_4;

var<private> global4: array<bool, 12>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn func_1() -> vec2<i32> {
    global2 = Struct_3(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.a, 40778u, u_input.b.x), global3.a.a), u_input.b.x, global0.d.a, _wgslsmith_add_u32(global0.a.b.a, 37909u))), Struct_1(countOneBits(~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.c))), global3.a.c.c), global0.d, !(!global0.b.d));
    let var_0 = global0.b.b.b.x;
    global2 = Struct_3(vec4<u32>(10507u, 0u, global0.b.a.x, 92218u), global2.b, Struct_1(_wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(global1.a.a, global3.a.a.x)), ~global0.b.b.a, ~global1.a.a & (u_input.b.x >> (0u % 32u))), global1.a.c, global3.b.c.b), global2.d);
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(global3.a.b.b.x + -1188f) != _wgslsmith_f_op_f32(trunc(global0.d.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.c.b.x), 1000f)))) * global1.a.b.x);
    return ~vec2<i32>(abs(i32(-1i) * -17788i), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(global1.b, global1.b, -557i), vec3<i32>(11186i, 2147483647i, global1.b)), vec3<i32>(global1.b, global1.b, global1.b) | ~vec3<i32>(global1.b, global1.b, global1.b)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -_wgslsmith_mod_i32(arg_0, ~arg_0)), vec3<i32>(arg_0, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-arg_0, _wgslsmith_div_i32(-1i, 1i)), 11593i), 2147483647i));
    let var_1 = global0.b.a.x;
    let var_2 = global0.a.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1020f, global1.a.b.x, global3.a.d.x))))), 595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(460f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.c.x + global3.c))), -1146f)));
    let var_4 = global2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c.x) * 1932f) * var_4.c.x)) + var_3.x);
}

fn func_3() -> u32 {
    var var_0 = Struct_4(Struct_3(global0.a.a, global2.b, global3.d, select(vec4<bool>(!global3.b.d.x, any(global3.a.d), global1.b != global1.b, any(vec2<bool>(true, false))), vec4<bool>(global3.e.x, true, global2.d.x, true), !select(global3.b.d, vec4<bool>(false, global0.e.x, global4[_wgslsmith_index_u32(global1.a.a, 12u)], global3.a.d.x), false))), global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global3.d.c.x)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.c.x), _wgslsmith_f_op_f32(global3.a.c.b.x * global0.a.b.c.x)))))), global1.a, select(vec2<bool>(true, true), !select(global0.a.d.zw, global2.d.zw, global2.d.zz), global3.a.d.x));
    global3 = Struct_4(global0.a, Struct_3(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 1480u, u_input.b.x) ^ global2.a, select(var_0.a.a, vec4<u32>(0u, 46687u, 1u, 4294967295u), global0.a.d))), Struct_1(35721u, vec3<f32>(_wgslsmith_f_op_f32(-1063f * -235f), _wgslsmith_f_op_f32(-global0.b.b.c.x), global2.c.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-712f, global2.c.c.x, 489f))))), Struct_1(global3.a.a.x, global3.a.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1067f, 1780f, 192f) * vec3<f32>(829f, var_0.b.b.c.x, global0.d.b.x)))), !global3.b.d), _wgslsmith_f_op_f32(-global3.c), Struct_1(var_0.b.c.a, var_0.d.c, global0.d.b), vec2<bool>(true, true));
    global2 = global0.a;
    var var_1 = var_0.a.c.a;
    var var_2 = select(var_0.e, !select(var_0.a.d.zz, global0.a.d.zx, select(vec2<bool>(var_0.a.d.x, global0.b.d.x), select(global2.d.yy, var_0.e, global0.e), select(vec2<bool>(false, global2.d.x), global0.a.d.xx, false))), true);
    return ~_wgslsmith_mult_u32(~(firstLeadingBit(1u) ^ _wgslsmith_dot_vec4_u32(global3.b.a, vec4<u32>(4521u, var_0.a.b.a, 0u, 4294967295u))), 0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = firstLeadingBit(abs(~min(-vec4<i32>(1i, 0i, 2045i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b, global1.b, global1.b, global1.b), vec4<i32>(-1233i, 1i, 0i, global1.b)))));
    var var_1 = global3.b;
    let var_2 = Struct_2(global3.d, global1.b);
    global1 = Struct_2(Struct_1(global2.c.a, _wgslsmith_f_op_vec3_f32(-var_2.a.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_div_f32(global0.d.b.x, 189f), _wgslsmith_f_op_f32(1439f + 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, -1386f, 710f)))), func_1().x);
    let var_3 = Struct_4(global0.a, Struct_3(vec4<u32>(_wgslsmith_sub_u32(~35174u, countOneBits(19u)), _wgslsmith_mult_u32(global3.b.c.a, select(19509u, 26706u, global0.e.x)), _wgslsmith_mult_u32(global2.a.x, 6348u) | var_1.c.a, global0.a.c.a), Struct_1(_wgslsmith_mult_u32(arg_1.x ^ var_1.b.a, 28075u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d.c * var_2.a.b) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(146f, global1.a.b.x, var_2.a.c.x), global3.a.c.c, vec3<bool>(var_1.d.x, global3.e.x, true)))), var_2.a.b), Struct_1(~_wgslsmith_mod_u32(4294967295u, u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.b.b.x, 610f)), global0.b.c.c.x, _wgslsmith_f_op_f32(var_2.a.c.x * global1.a.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.c.x, global1.a.b.x, var_2.a.b.x) - vec3<f32>(global2.b.c.x, global2.b.c.x, -826f)))), !global0.a.d), 575f, Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~global2.a, vec4<u32>(0u, global3.a.a.x, arg_0.x, 1u)), arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.x * 1229f)), -761f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b.x) * 1f)), global0.b.c.b), var_1.d.yz);
    return -450f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2278f, 552f)) * global1.a.c.x), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(func_2(global1.b, -24728i, vec4<i32>(566i, var_0.x, -1i, -9324i)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-709f, global2.b.c.x, true)) * _wgslsmith_f_op_f32(-global1.a.c.x)), _wgslsmith_f_op_f32(max(1077f, _wgslsmith_f_op_f32(-global0.a.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(366f)) - _wgslsmith_f_op_f32(min(615f, global1.a.b.x)))))));
    let var_2 = Struct_4(global3.b, global3.a, global1.a.b.x, global2.b, !vec2<bool>(true, 4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.a.x, 45246u), global3.b.a.zw)));
    let var_3 = global0.a.b.a;
    let var_4 = max(global1.b, 10470i);
    let var_5 = -804f;
    global0 = Struct_4(Struct_3(global2.a, global1.a, Struct_1(countOneBits(_wgslsmith_add_u32(global3.d.a, 106638u)), vec3<f32>(_wgslsmith_f_op_f32(global2.b.b.x * -199f), _wgslsmith_f_op_f32(1154f - global0.a.c.b.x), 139f), _wgslsmith_f_op_vec3_f32(global0.a.c.b * global0.a.b.c)), vec4<bool>(true, true, true, true)), Struct_3(global0.b.a, var_2.b.c, Struct_1(25930u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.c.x, 484f, var_2.b.b.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.d.b, vec3<f32>(var_2.d.c.x, 127f, var_1.x))))), global2.d), _wgslsmith_f_op_f32(step(-516f, var_1.x)), Struct_1(_wgslsmith_mult_u32(0u, 124440u), vec3<f32>(_wgslsmith_div_f32(global1.a.b.x, _wgslsmith_f_op_f32(func_2(global1.b, var_0.x, vec4<i32>(var_4, var_0.x, var_0.x, 2147483647i)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-207f * global3.b.b.c.x))), var_2.a.b.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.b.b.x - 1000f), global2.b.b.x, -134f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, -240f, var_5) * var_1.zxx))), true))), select(global2.d.wy, vec2<bool>(false, global3.b.d.x), !vec2<bool>(any(vec4<bool>(global2.d.x, global3.b.d.x, global4[_wgslsmith_index_u32(var_2.d.a, 12u)], true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~var_2.d.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(27890u, global2.c.a, 1u), vec3<u32>(4294967295u, 1u, u_input.b.x)), 4294967295u, 70184u), _wgslsmith_f_op_f32(func_4(vec4<u32>(_wgslsmith_sub_u32(global3.b.a.x, u_input.a.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, 14021u, u_input.a.x), 0u), ~global2.a.x, ~(~4294967295u)), vec4<u32>(global2.c.a | 41186u, func_3(), global3.b.a.x, 1u), true)), vec4<i32>(-1i) * -reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global1.b, var_4, 2147483647i), vec4<i32>(-14986i, var_0.x, 0i, var_0.x), vec4<i32>(var_0.x, -11420i, -2147483647i, -29660i))));
}

