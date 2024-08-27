struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec3<f32>(1199f, -481f, -283f), vec4<bool>(false, false, false, true));

var<private> global1: array<bool, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    global1 = array<bool, 29>();
    var var_0 = _wgslsmith_add_vec2_u32(~min(vec2<u32>(82365u, abs(u_input.d)), _wgslsmith_sub_vec2_u32(~vec2<u32>(44875u, 0u), vec2<u32>(u_input.d, u_input.d) << (vec2<u32>(u_input.c.x, 54288u) % vec2<u32>(32u)))), ~vec2<u32>(u_input.d, ~18201u));
    global1 = array<bool, 29>();
    let var_1 = reverseBits(countOneBits(4294967295u)) << (_wgslsmith_dot_vec3_u32(u_input.c.wyw, u_input.c.wyw) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, global0.c.x, false)) + _wgslsmith_f_op_f32(-global0.c.x)))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1141f, global0.c.x)))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(func_3(Struct_1(global0.d.yzy, global0.b, vec3<f32>(1435f, -1819f, 1010f), vec4<bool>(true, global0.b.x, global1[_wgslsmith_index_u32(u_input.d, 29u)], global0.b.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -207f, 1805f) - global0.c)))))));
    global1 = array<bool, 29>();
    let var_1 = !select(global0.a, global0.d.xxy, vec3<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], global0.a.x, true)), false, true));
    let var_2 = abs(max(_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(arg_0, 0u, arg_0, 0u)), countOneBits(u_input.c)), vec4<u32>(countOneBits(1u), abs(_wgslsmith_mult_u32(u_input.d, 2726u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 15395u, 1u, 6248u), select(vec4<u32>(22847u, arg_0, 4294967295u, u_input.d), u_input.c, vec4<bool>(global0.a.x, false, global1[_wgslsmith_index_u32(26383u, 29u)], true))), (arg_0 ^ u_input.d) | max(arg_0, 129283u))));
    let var_3 = Struct_1(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], true, global0.a.x), global0.d.zxy, vec3<bool>(any(vec3<bool>(var_1.x, false, global1[_wgslsmith_index_u32(var_2.x, 29u)])), global0.d.x, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], true)))), global0.a, any(vec2<bool>(false, !var_1.x))), vec4<bool>(global0.a.x, all(select(!var_1, vec3<bool>(true, var_1.x, global1[_wgslsmith_index_u32(u_input.d, 29u)]), true)), true, global1[_wgslsmith_index_u32(arg_0, 29u)]), global0.c, !(!select(!vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, false, true, global0.b.x), all(vec3<bool>(var_1.x, true, global0.d.x)))));
    return Struct_1(!(!(!(!vec3<bool>(global0.a.x, true, global0.b.x)))), global0.d, _wgslsmith_f_op_vec3_f32(ceil(var_3.c)), !var_3.b);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    global0 = func_2(0u);
    global0 = Struct_1(vec3<bool>(arg_0.b.x, true, true), global0.b, vec3<f32>(1121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(1699f - -1337f))) * -676f), _wgslsmith_f_op_f32(2808f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, arg_0.c.x)), _wgslsmith_f_op_f32(arg_0.c.x - arg_2.c.x)))), vec4<bool>(arg_0.d.x, func_2(_wgslsmith_mult_u32(0u, 16844u)).d.x && func_2(u_input.d).b.x, global1[_wgslsmith_index_u32(u_input.d, 29u)], !any(func_2(u_input.c.x).a.xx)));
    global1 = array<bool, 29>();
    var var_0 = arg_2.c.xz;
    global0 = Struct_1(!select(!(!vec3<bool>(arg_0.d.x, false, arg_0.d.x)), vec3<bool>(!global1[_wgslsmith_index_u32(arg_1, 29u)], func_2(1u).a.x, all(arg_2.a.xx)), !select(true, true, true)), select(vec4<bool>(any(select(vec2<bool>(true, arg_2.d.x), global0.d.zx, arg_2.b.xy)), all(arg_0.b.yz), true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(52865u, 6983u) >> (arg_1 % 32u), 29u)]), !vec4<bool>(all(vec4<bool>(false, global0.a.x, arg_0.a.x, true)), true, true, false), global1[_wgslsmith_index_u32(abs(4294967295u), 29u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(arg_2.b.wwx, vec4<bool>(global0.b.x, false, global0.b.x, false), vec3<f32>(692f, 1000f, var_0.x), vec4<bool>(false, false, global0.a.x, global0.b.x)))) * arg_0.c.x), _wgslsmith_f_op_f32(round(-708f)), arg_0.c.x), !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(76414u, 24872u, arg_1), ~u_input.c.x), 29u)], any(!vec2<bool>(true, global1[_wgslsmith_index_u32(36210u, 29u)])), u_input.d < arg_1, false));
    return !global0.d.wwy;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.c.x << (~abs(u_input.c.x) % 32u), reverseBits(u_input.d), 4294967295u);
    var var_1 = true;
    var var_2 = arg_2;
    let var_3 = func_2(abs(max(var_0.x, 4294967295u) & ~(86853u & u_input.d)));
    var var_4 = vec3<i32>(_wgslsmith_sub_i32(u_input.a, (_wgslsmith_mod_i32(-13777i, arg_3.x) >> (firstTrailingBit(31944u) % 32u)) & _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 1i), max(vec2<i32>(2147483647i, 45872i), vec2<i32>(arg_3.x, 39756i)))), arg_3.x, arg_3.x);
    return func_2(u_input.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<bool, 29>();
    let var_0 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(u_input.b.x), ~1i, -1i, u_input.a << (u_input.d % 32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, -1i, -2147483647i), vec4<i32>(u_input.b.x, -16793i, u_input.b.x, u_input.a)), select(vec4<i32>(1i, -6403i, u_input.b.x, 0i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, 1i), arg_1.b))));
    var var_1 = Struct_1(vec3<bool>(arg_1.b.x && arg_0.b.x, global0.a.x, true), func_4(max(_wgslsmith_add_i32(var_0.x, 1i), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.c, arg_0.c, !global0.d.x))), arg_1, ~select(vec4<i32>(2147483647i, -11891i, var_0.x, -44331i), vec4<i32>(var_0.x, var_0.x, u_input.b.x, var_0.x), vec4<bool>(global0.d.x, arg_1.d.x, arg_0.d.x, global1[_wgslsmith_index_u32(1u, 29u)]))).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.c))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, 502f, 642f) - vec3<f32>(-1030f, global0.c.x, -2161f)), vec3<f32>(arg_0.c.x, arg_0.c.x, -1348f), arg_0.b.xxx)))), arg_0.b);
    global1 = array<bool, 29>();
    return func_2(~845u << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(74359u ^ (u_input.d ^ u_input.c.x), 29u)], !(!global0.b.x), true), global0.d, vec3<f32>(global0.c.x, -382f, global0.c.x), global0.b), func_4(-1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, 299f, -660f)) + global0.c), global0.c, true)), Struct_1(func_1(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], true, true), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), global0.c, global0.b), 1u, Struct_1(global0.b.xwy, vec4<bool>(global1[_wgslsmith_index_u32(7250u, 29u)], false, true, true), vec3<f32>(global0.c.x, global0.c.x, -143f), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], false, true))), global0.b, _wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, global0.c.x), global0.c)), global0.d), vec4<i32>(u_input.a, ~(-22382i), u_input.a, firstLeadingBit(_wgslsmith_mod_i32(1804i, u_input.b.x)))));
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(14338u, u_input.d, ~(~51123u)), 29u)], u_input.c.x < u_input.d, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(163f)), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1806f, -1802f))), -541f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -778f), _wgslsmith_f_op_f32(-global0.c.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 473f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1434f, 355f, -1166f, -487f) + vec4<f32>(731f, global0.c.x, 536f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, 2147483647i, -24430i), vec4<i32>(u_input.a, 4838i, u_input.b.x, u_input.b.x)), vec4<i32>(-1i, 1i, 0i, 27518i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, u_input.a, 0i, 1i), vec4<i32>(4844i, u_input.b.x, u_input.b.x, 1i))), _wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.b.x, -1i, -1i, -3149i)), vec4<i32>(i32(-1i) * -32730i, -13569i, u_input.a, -u_input.a))), var_1.x, ~_wgslsmith_sub_vec3_u32(u_input.c.wzw, ~reverseBits(vec3<u32>(u_input.d, 64314u, u_input.c.x))), ~max(_wgslsmith_clamp_i32(u_input.b.x, u_input.a, u_input.b.x), u_input.b.x) & -2147483647i);
}

