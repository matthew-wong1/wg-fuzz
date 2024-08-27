struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-3015i, Struct_1(63927u), vec3<i32>(-44981i, 2147483647i, 705i), Struct_1(73952u), vec4<f32>(-1067f, -253f, -888f, -2141f));

var<private> global1: array<u32, 7>;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    global2 = array<Struct_2, 30>();
    global1 = array<u32, 7>();
    global0 = Struct_2(u_input.b.x, global0.b, global0.c, arg_0, arg_1);
    global0 = Struct_2(u_input.a.x, Struct_1(global1[_wgslsmith_index_u32(41771u & ~u_input.c, 7u)]), vec3<i32>(global0.a, -67376i, 2147483647i), global0.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(global0.e)), _wgslsmith_f_op_vec4_f32(-arg_1)))))));
    var var_0 = ~vec4<u32>(_wgslsmith_add_u32(global0.b.a, ~(~arg_0.a)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a, 23886u), vec2<u32>(arg_0.a, arg_2.a)), vec2<u32>(30621u, arg_2.a) & vec2<u32>(arg_0.a, arg_2.a)), 7u)], 7u)], 85553u, _wgslsmith_mult_u32(~(~global1[_wgslsmith_index_u32(27888u, 7u)]), 75608u));
    return all(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), false, true, false)) || all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = !select(arg_2.yy, arg_2.wy, vec2<bool>(false, arg_2.x));
    var var_1 = vec3<i32>(~(-(arg_0.a & 1i) << ((_wgslsmith_add_u32(8136u, 44723u) << (~u_input.c % 32u)) % 32u)), 2147483647i, arg_0.a);
    var var_2 = true;
    global2 = array<Struct_2, 30>();
    global0 = global2[_wgslsmith_index_u32(33961u, 30u)];
    return 1u;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~func_4(arg_0, vec3<i32>(26446i, _wgslsmith_dot_vec3_i32(-global0.c, _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.x, -2147483647i, -26881i), arg_0.c)), -(~u_input.b.x)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, func_3(Struct_1(872u), vec4<f32>(arg_0.e.x, -1873f, -1406f, 880f), Struct_1(arg_0.d.a))))), 7u)], 30u)];
    global2 = array<Struct_2, 30>();
    let var_0 = abs(vec3<u32>(~4294967295u, 24771u, 0u));
    let var_1 = -64892i;
    let var_2 = Struct_2(global0.c.x, arg_0.b, ~vec3<i32>(0i, max(0i, ~global0.a), -(-1i ^ u_input.b.x)), global0.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-1000f * arg_0.e.x), 1f, _wgslsmith_f_op_f32(min(838f, global0.e.x))))))));
    return var_2.b;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = false;
    var var_1 = 1f == global0.e.x;
    let var_2 = Struct_1(max(arg_0.a, ~arg_0.a << (~(~global0.d.a) % 32u)));
    global0 = Struct_2(u_input.b.x >> (var_2.a % 32u), Struct_1(~arg_1 & _wgslsmith_mod_u32(1u, abs(1u))), global0.c, func_2(Struct_2(_wgslsmith_dot_vec3_i32(global0.c, vec3<i32>(-21778i, global0.a, u_input.b.x)) << (firstTrailingBit(global0.b.a) % 32u), Struct_1(~67810u), ~max(global0.c, u_input.a.zxz), Struct_1(30574u >> (var_2.a % 32u)), vec4<f32>(_wgslsmith_f_op_f32(min(-350f, global0.e.x)), 1904f, _wgslsmith_f_op_f32(f32(-1f) * -688f), global0.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global0.e)), _wgslsmith_f_op_vec4_f32(-global0.e), vec4<bool>(false, false, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-675f, 658f, global0.e.x, global0.e.x), vec4<f32>(global0.e.x, 1000f, -1972f, global0.e.x)))))) * _wgslsmith_f_op_vec4_f32(min(global0.e, _wgslsmith_f_op_vec4_f32(trunc(global0.e))))));
    var var_3 = global2[_wgslsmith_index_u32(2748u >> (~(~arg_3.x) % 32u), 30u)];
    return Struct_1(select(abs(arg_3.x), arg_2, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x, func_1(global0.d, ~firstTrailingBit(0u), global0.d.a, abs(~vec3<u32>(1u, global0.d.a, global1[_wgslsmith_index_u32(global0.b.a, 7u)]))), vec3<i32>(abs(-_wgslsmith_clamp_i32(-8420i, 2147483647i, global0.a)), 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -1i, global0.a), vec4<i32>(71388i, 1i, global0.c.x, -1558i)) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.d.a, 7u)], 7u)] % 32u), u_input.a.x)), func_1(Struct_1(reverseBits(global0.d.a)), func_1(Struct_1(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(0u, 7u)], global0.b.a)), 30946u, firstLeadingBit(u_input.c << (global1[_wgslsmith_index_u32(global0.d.a, 7u)] % 32u)), ~vec3<u32>(14619u, 87864u, 1u)).a, ~global1[_wgslsmith_index_u32(4294967295u, 7u)], vec3<u32>(u_input.c, firstTrailingBit(51695u), func_4(global2[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -54317i), vec3<i32>(-37217i, -2147483647i, -31299i)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1668f, -959f, -299f, global0.e.x), global0.e)))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = vec3<u32>(1u, u_input.c, ~firstLeadingBit(1u));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e.x, 166f), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.x + var_1.e.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.e.x)) * global0.e.x), 956f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, 417f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), -691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x + var_0.e.x))));
    global1 = array<u32, 7>();
    global1 = array<u32, 7>();
    global2 = array<Struct_2, 30>();
    let var_4 = Struct_2(reverseBits(firstTrailingBit(27051i)), global0.d, var_1.c, func_1(Struct_1(var_1.d.a), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u ^ var_0.b.a, var_0.b.a), ~func_1(global0.d, 1u, global0.d.a, vec3<u32>(4294967295u, u_input.c, 1u)).a), (~global1[_wgslsmith_index_u32(var_0.d.a, 7u)] << ((global1[_wgslsmith_index_u32(var_2.x, 7u)] >> (4294967295u % 32u)) % 32u)) & _wgslsmith_sub_u32(var_1.d.a, abs(4294967295u)), vec3<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c, 7u)] & global1[_wgslsmith_index_u32(func_2(global2[_wgslsmith_index_u32(global0.b.a, 30u)]).a, 7u)], 7u)], u_input.c, ~u_input.c)), _wgslsmith_div_vec4_f32(var_1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_3.x, var_3.x, var_1.e.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, var_3.x, -1602f) * vec4<f32>(var_3.x, -1141f, -1180f, 2010f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_0.d.a, 16960u, ~(~21488u)), ~(~firstLeadingBit(vec4<u32>(var_2.x, 9837u, global0.b.a, 3222u)) >> (_wgslsmith_mult_vec4_u32(min(vec4<u32>(9206u, 14205u, 0u, 1u), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.c, 7u)], 4294967295u, 0u)), vec4<u32>(var_1.b.a, 70060u, 1u, 4294967295u)) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(global0.c.yx, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.xx, vec2<i32>(2147483647i, 2147483647i)), firstLeadingBit(vec2<i32>(u_input.a.x, -6160i)))));
}

