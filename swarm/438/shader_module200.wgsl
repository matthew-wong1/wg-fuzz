struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2147483647i, -38285i, -1i, 41078i, 2147483647i, -44567i, 33023i, -60000i, 273i, 1i, 24621i, -5842i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<i32, 13>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1f)), arg_2.d.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1939f)) + _wgslsmith_div_f32(arg_2.d.x, arg_2.d.x))))), -2380f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-613f)))), -826f);
    let var_1 = vec3<bool>(false, true, false);
    let var_2 = ~(~vec3<u32>(u_input.b.x, max(11390u, ~u_input.b.x), u_input.b.x));
    var var_3 = false;
    return -827f;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -599f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(1603f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 780f, arg_1) + arg_2.yyz), Struct_1(vec4<bool>(false, true, true, false), -33881i, true, arg_2))) * _wgslsmith_f_op_f32(1680f + _wgslsmith_f_op_f32(min(-454f, arg_2.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(151f, -1472f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.ww + vec2<f32>(arg_2.x, arg_1)) * _wgslsmith_div_vec2_f32(arg_2.yw, vec2<f32>(-1000f, arg_1))))) * vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(arg_1)))));
    let var_1 = Struct_5(min(1u, ~max(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), arg_0.x)), -1577f);
    return -2147483647i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = arg_0.b.a > _wgslsmith_dot_vec2_i32(arg_0.b.b << (vec2<u32>(arg_0.b.d.x, ~arg_1.a) % vec2<u32>(32u)), arg_0.b.b);
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    return !(!(!(_wgslsmith_f_op_f32(-371f * arg_2.x) <= arg_1.b)));
}

fn func_1() -> vec4<bool> {
    let var_0 = -34776i >= _wgslsmith_mod_i32(-_wgslsmith_mod_i32(~0i, abs(global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), 42851i);
    let var_1 = u_input.b.yz;
    let var_2 = u_input.a.yzy;
    global0 = array<i32, 13>();
    var var_3 = vec2<bool>(!var_0, func_4(Struct_3(func_2(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), 2219f, vec4<f32>(1435f, -532f, -1000f, -1738f), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_2.x, 13u)], 2147483647i)), Struct_2(2147483647i, vec2<i32>(-2147483647i, -19954i), vec4<bool>(false, var_0, true, var_0), vec4<u32>(var_2.x, var_1.x, 5487u, u_input.a.x), -669f)), Struct_5(80799u, _wgslsmith_f_op_f32(415f * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(334f)), 1000f, _wgslsmith_div_f32(1286f, -742f)), Struct_1(!vec4<bool>(false, true, var_0, var_0), i32(-1i) * -12338i, all(vec4<bool>(true, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(929f, -1149f, 125f, -497f) + vec4<f32>(-582f, 1198f, 992f, 1242f)))) || !(!(var_0 & false)));
    return vec4<bool>(_wgslsmith_mod_i32(-19761i, _wgslsmith_mod_i32(31604i, global0[_wgslsmith_index_u32(~u_input.b.x, 13u)])) <= global0[_wgslsmith_index_u32(abs(30218u), 13u)], !(!any(vec3<bool>(true, true, var_3.x))) | false, true, var_3.x);
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.xy) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1069f, arg_0.d.x), vec2<f32>(arg_0.d.x, arg_0.d.x), true)))))));
    let var_1 = !func_4(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 13u)], arg_0.b) | vec2<i32>(arg_0.b, 2147483647i), vec2<i32>(13511i, -58445i)), Struct_2(~arg_0.b, -vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), !arg_0.a, u_input.a, -2452f)), Struct_5(u_input.b.x, -1493f), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(1979f * arg_0.d.x), arg_0.d.zyx, arg_0)), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-arg_0.d.x))), Struct_1(arg_0.a, func_2(u_input.a, _wgslsmith_f_op_f32(-1000f * arg_0.d.x), vec4<f32>(-200f, arg_0.d.x, var_0.x, 258f), reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(1u, 13u)], -8732i, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), all(vec4<bool>(arg_0.c, true, false, true)), arg_0.d));
    var var_2 = Struct_4(arg_0.b);
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(max(-274f, _wgslsmith_f_op_f32(f32(-1f) * -1290f)))) - arg_0.d.wx), _wgslsmith_f_op_vec2_f32(-arg_0.d.wz)));
    var var_3 = vec2<i32>(-global0[_wgslsmith_index_u32(u_input.b.x, 13u)], 1i);
    return Struct_5(26813u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.d.x))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(964f, 1395f) + _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1187f;
    var var_1 = Struct_4(_wgslsmith_div_i32(-(i32(-1i) * -global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u)), 13u)] << (_wgslsmith_dot_vec3_u32(u_input.a.zxy, ~u_input.b) % 32u)));
    var var_2 = func_5(Struct_1(!func_1(), firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(33085i, global0[_wgslsmith_index_u32(61064u, 13u)], var_1.a), vec3<i32>(var_1.a, -1i, 2147483647i))), true, vec4<f32>(var_0, var_0, var_0, _wgslsmith_f_op_f32(-var_0))));
    var var_3 = select(vec2<bool>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(11421u, 13u)] | -14938i, -2147483647i ^ global0[_wgslsmith_index_u32(u_input.b.x, 13u)]) > -43055i, !(var_2.b == var_0) & select(true, true, true)), vec2<bool>(!all(vec3<bool>(true, true, true)), all(vec4<bool>(true, 2291i <= global0[_wgslsmith_index_u32(0u, 13u)], -1i >= global0[_wgslsmith_index_u32(var_2.a, 13u)], true))), !(~(-var_1.a) == max(_wgslsmith_sub_i32(-1i, var_1.a), firstLeadingBit(global0[_wgslsmith_index_u32(var_2.a, 13u)]))));
    var var_4 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(42012i, 4697i), _wgslsmith_mod_vec2_i32(vec2<i32>(-44674i, var_1.a), vec2<i32>(27882i, 2147483647i))) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(8867i, 0i), vec2<i32>(-18560i, 15798i)), vec2<i32>(var_1.a, 2378i) & vec2<i32>(global0[_wgslsmith_index_u32(27327u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), -2147483647i), Struct_2(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, -21073i, 0i), vec3<i32>(global0[_wgslsmith_index_u32(80736u, 13u)], 1i, global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), -vec3<i32>(-2147483647i, -5379i, -1i)), -vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(20434u, 13u)]), vec4<bool>(var_3.x != any(vec4<bool>(true, true, var_3.x, true)), false, any(select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(var_3.x, false, false))), func_1().x), _wgslsmith_mod_vec4_u32(select(u_input.a, ~u_input.a, var_3.x), u_input.a), -1097f));
    var_1 = Struct_4(-3014i);
    var_3 = func_1().xx;
    var_3 = select(vec2<bool>(39987i <= _wgslsmith_sub_i32(-var_1.a, var_1.a), true), !(!func_1().xy), var_3.x | true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, -26235i, var_1.a) << (vec3<u32>(42934u, u_input.a.x, u_input.b.x) % vec3<u32>(32u)), ~(vec3<i32>(-2147483647i, 22974i, global0[_wgslsmith_index_u32(4294967295u, 13u)]) | vec3<i32>(global0[_wgslsmith_index_u32(var_4.b.d.x, 13u)], var_4.b.a, 2147483647i))), ~vec3<i32>(global0[_wgslsmith_index_u32(~var_4.b.d.x, 13u)], var_1.a, 0i), (-vec3<i32>(-2147483647i, 1i, -1i) & _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a, var_4.a, -6658i), vec3<i32>(-2147483647i, var_4.b.b.x, -1i))) >> (select(abs(var_4.b.d.zwx), ~var_4.b.d.xzy, vec3<bool>(true, true, true)) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_4.b.e, _wgslsmith_f_op_f32(func_3(var_4.b.e, vec3<f32>(668f, var_4.b.e, var_2.b), Struct_1(vec4<bool>(var_4.b.c.x, var_3.x, var_3.x, var_4.b.c.x), 0i, var_3.x, vec4<f32>(-765f, var_2.b, var_4.b.e, var_0)))))))), -1000f), 37858u);
}

