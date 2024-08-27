struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(35470u, vec3<bool>(false, true, true)), Struct_2(0u, vec3<bool>(false, false, false)));

var<private> global1: array<f32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = global0.a;
    var var_1 = 486f;
    global1 = array<f32, 28>();
    let var_2 = vec4<bool>(var_0.b.x, (_wgslsmith_mult_u32(arg_0.x & arg_1.a.a, arg_1.a.a) & min(~1u, ~0u)) >= countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.d), ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(532f, 1188f, global0.a.b.x))) - -1818f) <= global1[_wgslsmith_index_u32(global0.b.a, 28u)], !(!all(select(vec4<bool>(true, var_0.b.x, false, var_0.b.x), vec4<bool>(var_0.b.x, arg_1.b.b.x, arg_1.b.b.x, arg_1.a.b.x), false))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 28u)])), 1591f)));
    return var_0.a;
}

fn func_2() -> f32 {
    global1 = array<f32, 28>();
    var var_0 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, func_3(firstLeadingBit(u_input.c), Struct_3(Struct_2(4294967295u, vec3<bool>(global0.a.b.x, global0.b.b.x, false)), Struct_2(4294967295u, global0.a.b)))), 28u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.b.a, 28u)] + -1000f), global1[_wgslsmith_index_u32(~0u, 28u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f))), -676f);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.c << (vec2<u32>(global0.a.a, 1u) % vec2<u32>(32u)), vec2<u32>(1u, global0.b.a)), 28u)] - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, global0.b.a) | vec4<u32>(global0.b.a, 33703u, 23013u, global0.a.a), reverseBits(~vec4<u32>(global0.b.a, u_input.d, 67238u, u_input.d))), 28u)]), _wgslsmith_f_op_f32(-var_0.x), -400f);
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yyz) * var_0.yww), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(46310u, 28u)], 983f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) - _wgslsmith_f_op_f32(1253f * var_1.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(36554u, 28u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-613f)), 829f))));
    let var_2 = global1[_wgslsmith_index_u32(~global0.b.a, 28u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1550f))))) + -1625f);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = ~(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d, abs(global0.b.a)), ~global0.a.a, firstTrailingBit(21454u)) ^ firstTrailingBit(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)));
    global0 = Struct_3(Struct_2(~reverseBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), vec3<bool>(true, arg_0, !global0.a.b.x)), Struct_2(u_input.d, select(vec3<bool>(any(arg_1), arg_1.x, global0.b.b.x), global0.b.b, any(select(vec3<bool>(arg_0, false, false), global0.a.b, arg_0)))));
    let var_2 = ~abs(-select(_wgslsmith_div_vec4_i32(vec4<i32>(-33411i, -40861i, 26782i, -7441i), vec4<i32>(-36699i, u_input.a.x, u_input.a.x, 9673i)), vec4<i32>(2147483647i, u_input.a.x, -1539i, u_input.a.x), select(vec4<bool>(true, true, global0.a.b.x, true), vec4<bool>(arg_0, false, true, true), vec4<bool>(true, arg_1.x, arg_0, arg_1.x))));
    let var_3 = min(var_2.xww, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_2.x), var_2.wyz)), max(-var_2.zzx, ~var_2.ywx)), firstTrailingBit(max(~var_2.yxy, vec3<i32>(u_input.a.x, 3610i, u_input.a.x) & vec3<i32>(var_2.x, 24868i, 1i)))));
    return Struct_3(Struct_2(5253u, !select(!vec3<bool>(global0.b.b.x, arg_1.x, arg_1.x), global0.b.b, true)), global0.b);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = Struct_3(global0.a, Struct_2(reverseBits(1u), vec3<bool>(global0.b.b.x, all(!vec3<bool>(false, global0.a.b.x, global0.a.b.x)), global0.b.b.x)));
    global0 = func_4(true, select(global0.b.b.yz, select(global0.b.b.zy, vec2<bool>(global0.a.b.x, global0.a.b.x), vec2<bool>(global0.b.b.x || global0.a.b.x, any(vec4<bool>(global0.a.b.x, false, false, true)))), true), -1631f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global0.a.a, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], -104f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.a.a, 28u)], -1647f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -453f)) * vec2<f32>(335f, arg_0))), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_2()))))));
    let var_0 = Struct_3(func_4(!select(true, any(vec4<bool>(false, global0.b.b.x, false, global0.a.b.x)), !global0.b.b.x), select(!global0.b.b.zx, vec2<bool>(!global0.b.b.x, false), global0.a.b.zx), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(global0.a.a, global0.b.a)), 28u)], global1[_wgslsmith_index_u32(4494u, 28u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-649f * -2388f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24890u, 28u)])))).a, global0.b);
    let var_1 = var_0.b.a;
    var var_2 = Struct_4(global0.b.b.zz, select(~vec4<i32>(u_input.a.x, 2147483647i, 52061i, -3905i) & -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), abs(~vec4<i32>(-1i, u_input.a.x, u_input.a.x, -30961i)), true) & (-(~vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.a.x)) >> (~(~vec4<u32>(40741u, global0.a.a, 4294967295u, 25012u)) % vec4<u32>(32u))));
    return _wgslsmith_clamp_u32(var_0.a.a, 1u, _wgslsmith_div_u32(~4019u, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_mult_u32(reverseBits(44648u), var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(select(vec2<bool>(true, true), vec2<bool>(false, (1i & u_input.a.x) > u_input.a.x), global0.b.b.xx));
    let var_1 = global0.a;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, (~var_1.a >> ((global0.b.a >> (4294967295u % 32u)) % 32u)) >> (_wgslsmith_sub_u32(func_1(global1[_wgslsmith_index_u32(1u, 28u)]), u_input.c.x) % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.a, ~u_input.c.x, _wgslsmith_clamp_u32(0u, u_input.b.x, 72593u)), ~vec3<u32>(12275u >> (0u % 32u), ~var_1.a, 1u))), 28u)];
    global1 = array<f32, 28>();
    var var_3 = !(!global0.a.b.x);
    let var_4 = Struct_1(u_input.b.zx, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 47815u, 59038u) & vec4<u32>(82396u, 0u, 4294967295u, 4294967295u), vec4<u32>(28559u, 79735u, 52745u, 1u) >> (vec4<u32>(var_1.a, 59338u, var_1.a, 30459u) % vec4<u32>(32u))), _wgslsmith_add_u32(global0.a.a, 75155u ^ u_input.c.x)), vec3<u32>(44204u, firstLeadingBit(var_1.a), ~var_1.a) | ~vec3<u32>(var_1.a, 34183u, var_1.a)), 38587i, func_4(select(global0.a.b.x, global0.a.a > _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.b.x, var_1.a)), true), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + -364f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-515f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(77041u, 28u)]))))).b.b.zz, -_wgslsmith_add_i32(countOneBits(-u_input.a.x), ~(-u_input.a.x)));
    var var_5 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~(~(~u_input.c.x))), 28u)] * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.a.a, 1u), 4294967295u), 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e & reverseBits(-25155i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1128f, -356f) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_1.a, 28u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1811f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1332f - global1[_wgslsmith_index_u32(64961u, 28u)]), global1[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global0.a.a, 28u)])))) + vec3<f32>(_wgslsmith_f_op_f32(func_2()), -285f, global1[_wgslsmith_index_u32(58095u, 28u)])), ~(min(vec4<u32>(u_input.c.x, 1u, 39511u, var_1.a), vec4<u32>(1u, 4294967295u, 0u, 4294967295u)) >> (~vec4<u32>(u_input.b.x, 1u, 16601u, 9655u) % vec4<u32>(32u))) << (~(~vec4<u32>(var_1.a, global0.a.a, 4294967295u, 1u)) % vec4<u32>(32u)));
}

