struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool = false;

var<private> global2: array<i32, 9> = array<i32, 9>(-58138i, -1i, 2147483647i, 0i, 22605i, 2147483647i, 2147483647i, 1i, 14459i);

var<private> global3: array<bool, 3>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = Struct_1(~arg_1, !global3[_wgslsmith_index_u32(~firstLeadingBit(~4294967295u), 3u)], -12192i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(353f, -965f)), _wgslsmith_f_op_f32(sign(3066f)), !global3[_wgslsmith_index_u32(9905u, 3u)])), _wgslsmith_div_f32(-750f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1491f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1870f, -337f, 174f, 1373f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1102f, -1968f, 510f, 813f), vec4<f32>(-239f, 1125f, 1000f, 730f), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], false, false, global3[_wgslsmith_index_u32(u_input.d, 3u)])))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 432f, 1236f, -441f) + vec4<f32>(934f, -1711f, -601f, 207f))))))));
    var var_1 = Struct_1(2147483647i, global3[_wgslsmith_index_u32(~max(~7881u, ~4294967295u), 3u)] != true, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_0, 20380u), 9u)], arg_1) & countOneBits(u_input.a.x), _wgslsmith_f_op_vec4_f32(-var_0.d));
    let var_2 = Struct_1(-1i, var_0.b, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(abs(-914f)), _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), var_0.d.x)) * var_0.d));
    var var_3 = max(abs(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0, ~arg_0), abs(~5146u), u_input.b.x)), 1u);
    var var_4 = var_0.d;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(903f, 486f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1((~u_input.c.x >> ((firstLeadingBit(21729u) << (global0.x % 32u)) % 32u)) << (u_input.d % 32u), !all(vec2<bool>(true, false)), abs(~29708i), vec4<f32>(_wgslsmith_f_op_f32(func_3(global0.x, 28125i)), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b - -824f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1358f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b)))));
    let var_1 = true;
    global3 = array<bool, 3>();
    let var_2 = u_input.b.xx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + 1879f), 769f)))));
    return Struct_1(global2[_wgslsmith_index_u32(global0.x, 9u)], false, -11664i, var_0.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1078f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-697f)) * -1713f)))));
    let var_2 = Struct_2(1748f, 1192f);
    let var_3 = var_2;
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-407f, 1629f))), -655f, true)) + 184f), -1643f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -269f)))), -735f));
    let var_2 = Struct_1(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)], -(~global2[_wgslsmith_index_u32(1u, 9u)])) << (global0.x % 32u), false, select(20421i, -2147483647i, !((global3[_wgslsmith_index_u32(1u, 3u)] && true) & true)), vec4<f32>(var_0, _wgslsmith_f_op_f32(func_4(func_2(select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(115758u, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(global0.x, 3u)]), true), Struct_2(var_1.x, -1483f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) - vec2<f32>(var_0, var_1.x)))), 386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    global2 = array<i32, 9>();
    let var_3 = min(0i, -1i) ^ -reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, var_2.a), u_input.a.xx));
    return -590f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(241f + _wgslsmith_f_op_f32(f32(-1f) * -414f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1403f, _wgslsmith_f_op_f32(func_1())))), 237f);
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(85032u, ~global0.x), 9u)], global3[_wgslsmith_index_u32(u_input.d, 3u)], abs(abs(-(~1i))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(func_4(func_2(!vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 3u)], true, true), Struct_2(711f, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-301f, 737f), vec2<f32>(-131f, -262f), vec2<bool>(false, global3[_wgslsmith_index_u32(global0.x, 3u)]))) * vec2<f32>(877f, -1000f)))), -323f, var_1));
    global3 = array<bool, 3>();
    let var_3 = vec3<bool>(all(vec4<bool>((global2[_wgslsmith_index_u32(1u, 9u)] > var_2.a) | func_2(vec3<bool>(true, true, true), Struct_2(var_2.d.x, var_1)).b, false, var_2.b, true)), true || (_wgslsmith_add_u32(0u, 1u) != _wgslsmith_sub_u32(global0.x, 29860u ^ global0.x)), var_2.b);
    global1 = var_3.x;
    global2 = array<i32, 9>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.d.x)))) + _wgslsmith_f_op_f32(func_4(func_2(var_3, Struct_2(var_2.d.x, var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.d.wy, var_2.d.xz))))) * _wgslsmith_f_op_f32(func_3(firstTrailingBit(u_input.b.x), -(~(global2[_wgslsmith_index_u32(61008u, 9u)] & -8482i)))));
    let var_4 = func_2(vec3<bool>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 30851u), vec4<u32>(4294967295u, global0.x, global0.x, 1u)), 9u)], -global2[_wgslsmith_index_u32(u_input.b.x, 9u)]) != (var_2.a << (u_input.b.x % 32u)), false, var_3.x), Struct_2(_wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - var_2.d.x)), _wgslsmith_f_op_f32(max(var_2.d.x, _wgslsmith_div_f32(-675f, -219f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.wwy) + vec3<f32>(var_1, 136f, -910f))))), ~(~reverseBits(vec2<i32>(var_2.c, global2[_wgslsmith_index_u32(9683u, 9u)]))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, abs(~0u)), u_input.b), ~min(u_input.b.zz, u_input.b.yx), _wgslsmith_div_vec4_i32(select(max(-vec4<i32>(var_2.a, 1i, u_input.c.x, 251i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 0i, global2[_wgslsmith_index_u32(global0.x, 9u)], -2147483647i), vec4<i32>(var_2.a, 22242i, 23666i, global2[_wgslsmith_index_u32(21981u, 9u)]))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.c, 29221i, -65567i, var_4.a), vec4<i32>(1i, 0i, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], -9867i), vec4<i32>(u_input.a.x, 10975i, -2147483647i, global2[_wgslsmith_index_u32(14221u, 9u)]))), var_4.b), abs(vec4<i32>(var_4.c, u_input.c.x, var_2.c, -94586i)) ^ _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 10906i)), ~vec4<i32>(0i, global2[_wgslsmith_index_u32(0u, 9u)], 2147483647i, global2[_wgslsmith_index_u32(global0.x, 9u)]))));
}

