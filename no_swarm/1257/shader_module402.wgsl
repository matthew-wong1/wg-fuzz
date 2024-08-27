struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<i32, 30> = array<i32, 30>(0i, 2147483647i, -4036i, 21639i, 1i, -9953i, -26884i, 0i, 23222i, 0i, -59159i, 2147483647i, i32(-2147483648), 22424i, -1i, 0i, 0i, 0i, 1i, -53662i, 29694i, 32705i, 0i, 2147483647i, 2147483647i, 2147483647i, -17198i, 14539i, 28127i, i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1.a ^ 2147483647i, ~arg_1.a, -47059i), arg_0.b.x);
    global1 = array<i32, 30>();
    let var_1 = min(global0[_wgslsmith_index_u32(arg_0.a.x, 16u)], ~arg_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(681f))))));
    global0 = array<u32, 16>();
    return arg_0.d.x;
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec4_i32(~(~select(-vec4<i32>(arg_0.a, u_input.a.x, u_input.a.x, -22245i), ~vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(68706u, 30u)], arg_0.a, 5884i), func_3(Struct_2(u_input.b.xxz, u_input.a, arg_0.d.x, vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0, arg_0.d.x))), vec4<i32>(1i, u_input.a.x, arg_0.a, i32(-1i) * -1i));
    let var_1 = Struct_4(~1u, 1i, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-4857i, -26538i, 0i), select(vec3<i32>(arg_0.a, global1[_wgslsmith_index_u32(arg_0.e.x, 30u)], u_input.a.x), vec3<i32>(global1[_wgslsmith_index_u32(arg_0.e.x, 30u)], 45222i, global1[_wgslsmith_index_u32(816u, 30u)]), arg_0.b.x)), 22885i & (arg_0.a ^ -2147483647i), _wgslsmith_sub_i32(1i, abs(u_input.a.x)), abs(9262i)), vec4<i32>(15350i, u_input.a.x, 0i, ~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 30u)], arg_0.a, u_input.a.x))));
    var var_2 = u_input.a.x ^ 13777i;
    let var_3 = Struct_4(reverseBits(~firstLeadingBit(~arg_0.e.x)), -1746i, vec4<i32>(abs(1i), _wgslsmith_clamp_i32(-u_input.a.x, 0i, 1i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(20283i, var_1.c.x, -2147483647i, u_input.a.x), var_1.c)), ~u_input.a.x) ^ _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-19746i, u_input.a.x, 2147483647i, arg_0.a), var_1.c), -vec4<i32>(arg_0.a, 1i, -1i, -52438i) | var_1.c));
    var var_4 = 1i;
    return var_3;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> vec2<u32> {
    var var_0 = func_2(arg_1.b);
    var_0 = func_2(arg_1.b);
    global1 = array<i32, 30>();
    let var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 30u)] & 12021i, arg_0.b.x), -vec2<i32>(9965i, ~var_0.b));
    var_0 = func_2(Struct_1(abs(2147483647i), !arg_0.d, max(126584u, var_0.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(463f))), 756f, _wgslsmith_f_op_f32(-arg_0.c), 562f), u_input.b ^ vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.b.x, arg_0.a.x)));
    return _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mod_u32(0u, var_0.a)), ~(~vec2<u32>(5735u, 4294967295u))) & select(arg_1.a.a.yz, vec2<u32>(1u, 1u), !select(vec2<bool>(arg_1.b.b.x, true), vec2<bool>(arg_0.d.x, arg_0.d.x), arg_1.a.d.x)), vec2<u32>(select(~u_input.b.x, ~(~var_0.a), arg_1.d), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 30u)];
    let var_1 = Struct_4(global0[_wgslsmith_index_u32(4294967295u, 16u)], -76329i, ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], ~1i), vec4<i32>(2147483647i, u_input.a.x & u_input.a.x, -1i, _wgslsmith_div_i32(6341i, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-293f, _wgslsmith_f_op_f32(ceil(-814f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1435f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-549f)) - _wgslsmith_div_f32(808f, 275f)), _wgslsmith_div_f32(-159f, -1273f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 270f), vec2<f32>(444f, 569f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-912f, 424f))))));
    var var_3 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_dot_vec2_u32(~func_1(Struct_2(u_input.b.yxw, var_1.c.wz, var_2.x, vec2<bool>(true, true)), Struct_3(Struct_2(u_input.b.wyy, vec2<i32>(global1[_wgslsmith_index_u32(var_1.a, 30u)], 0i), 1914f, vec2<bool>(true, false)), Struct_1(-21834i, vec2<bool>(false, true), u_input.b.x, vec4<f32>(1378f, var_2.x, var_2.x, var_2.x), vec4<u32>(var_1.a, 9607u, 0u, u_input.b.x)), var_1.c.x, true), max(var_1.a, var_1.a)), min(min(_wgslsmith_clamp_vec2_u32(u_input.b.wy, u_input.b.zz, vec2<u32>(4294967295u, 1u)), vec2<u32>(33541u, u_input.b.x) & u_input.b.zy), vec2<u32>(~6841u, func_1(Struct_2(vec3<u32>(var_1.a, 4294967295u, u_input.b.x), var_1.c.xx, var_2.x, vec2<bool>(false, true)), Struct_3(Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.a, 16u)], 16u)], 0u), u_input.a, var_2.x, vec2<bool>(false, false)), Struct_1(var_1.c.x, vec2<bool>(true, true), 4294967295u, vec4<f32>(var_2.x, var_2.x, var_2.x, 452f), vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(34244u, 16u)], 39305u)), var_1.b, true), 0u).x))));
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(global0[_wgslsmith_index_u32(min(23561u, var_1.a), 16u)], abs(0u)), ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x ^ var_1.a)), ~select(var_1.c.yy ^ u_input.a, vec2<i32>(var_1.c.x, var_1.b), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))) >> (~(~u_input.b.zx) % vec2<u32>(32u)));
}

