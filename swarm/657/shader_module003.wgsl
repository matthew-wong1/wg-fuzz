struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(14740i, i32(-2147483648), 2147483647i, 35466i, -17354i, 0i, 1i, 42044i, i32(-2147483648), -1i, -1i);

var<private> global1: array<u32, 1> = array<u32, 1>(11342u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    return global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~firstLeadingBit(~(~u_input.b.x) ^ global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 1u)]), 1u)], 1u)];
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec3<bool> {
    return !select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(arg_1.x < arg_1.x, all(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, true, true)), true, 77377u <= global1[_wgslsmith_index_u32(0u, 1u)]), true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) || true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = !func_3(1i, vec4<f32>(arg_3, arg_2.a.x, _wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(var_0.a.x + 2162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.x)))), ~_wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(67336u, 11u)], 0i)), 883f);
    global0 = array<i32, 11>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3 - -679f), -1138f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, -943f))))))), 28356u);
    var_1 = !arg_1;
    return arg_2;
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = false;
    var var_1 = select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), true, false);
    global0 = array<i32, 11>();
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1264f) + _wgslsmith_f_op_f32(f32(-1f) * -1179f)), arg_0.x), 4294967295u);
    var var_3 = func_4(u_input.c, func_3((~6164i & -u_input.c) << ((func_2() >> (~var_2.b % 32u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(var_2.a.x + 935f)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(997f))), arg_0.x), -1485i ^ u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x * -861f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(ceil(var_2.a.x)))), ~(~_wgslsmith_mod_u32(17103u, 82939u))), _wgslsmith_f_op_f32(-arg_0.x));
    return vec4<i32>(abs(1i), _wgslsmith_mult_i32(-2147483647i, 2147483647i | _wgslsmith_mod_i32(u_input.c | -1i, u_input.c | -3035i)), u_input.c, firstLeadingBit(-36785i));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, -1361f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(f32(-1f) * -683f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(-1669f)))))), countOneBits(_wgslsmith_div_u32(arg_1, ~_wgslsmith_add_u32(32405u, arg_1))));
    var var_1 = any(vec4<bool>(!any(vec2<bool>(true, true)), true, !(!all(vec3<bool>(true, true, true))), !(any(vec3<bool>(true, false, true)) == true)));
    let var_2 = vec4<f32>(-1307f, _wgslsmith_f_op_f32(-func_4(firstTrailingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(81172u, 11u)], 1i, global0[_wgslsmith_index_u32(u_input.b.x, 11u)])), func_3(-1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 208f) + vec4<f32>(-527f, -431f, -780f, var_0.a.x)), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_0.b, 11u)], u_input.c), _wgslsmith_f_op_f32(step(-443f, -729f))), func_4(~39911i, vec3<bool>(true, true, true), func_4(arg_2.x, vec3<bool>(false, true, true), var_0, 500f), _wgslsmith_f_op_f32(688f - -1261f)), 418f).a.x), _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), -300f);
    var var_3 = var_0;
    let var_4 = var_0;
    return func_4(~((-82424i | _wgslsmith_add_i32(arg_2.x, -1i)) ^ func_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.a))).x), !func_3(u_input.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, 856f, var_4.a.x, -959f) * vec4<f32>(var_4.a.x, var_3.a.x, 268f, var_2.x)))), 1i, _wgslsmith_f_op_f32(-1f)), var_4, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 11>();
    let var_0 = func_5((vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15061i, -43137i, -2147483647i), vec4<i32>(u_input.c, 33506i, u_input.c, -54094i)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8239u, 1u)], 11u)], global0[_wgslsmith_index_u32(u_input.d.x, 11u)]) | -firstLeadingBit(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], -2147483647i, global0[_wgslsmith_index_u32(0u, 11u)]))) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106778u, 1u)], 1u)], 1u)], 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48928u, 1u)], 11u)], u_input.c), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1461f, 1000f)))), global1[_wgslsmith_index_u32(21450u, 1u)], func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-219f, -764f) + vec2<f32>(789f, -245f)))).xz);
    let var_1 = ~(~1u);
    global0 = array<i32, 11>();
    var var_2 = func_4(1i, !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1013f)), _wgslsmith_f_op_f32(var_0.a.x + 1273f))), global1[_wgslsmith_index_u32(var_1, 1u)]), var_0.a.x);
    let var_3 = !select(vec4<bool>(all(vec2<bool>(false, false)), _wgslsmith_sub_u32(63809u, 29133u) <= var_0.b, true, false), vec4<bool>(false, true, true, true), !vec4<bool>(-2884f < var_0.a.x, true, true, all(vec3<bool>(true, true, false))));
    global1 = array<u32, 1>();
    var var_4 = func_3(_wgslsmith_dot_vec3_i32(select(-(vec3<i32>(u_input.c, 1i, 0i) << (u_input.b.zwz % vec3<u32>(32u))), vec3<i32>(global0[_wgslsmith_index_u32(var_1, 11u)], ~(-7526i), -1i & global0[_wgslsmith_index_u32(78532u, 11u)]), !func_3(global0[_wgslsmith_index_u32(var_1, 11u)], vec4<f32>(var_2.a.x, 655f, var_0.a.x, var_2.a.x), global0[_wgslsmith_index_u32(var_0.b, 11u)], 1161f)), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(41009i, 17845i, global0[_wgslsmith_index_u32(7739u, 11u)]), vec3<i32>(global0[_wgslsmith_index_u32(62772u, 11u)], 11881i, -11619i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a.x, -343f, var_2.a.x, -1623f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2332f, 1000f, var_2.a.x, var_0.a.x), vec4<f32>(-501f, -241f, 315f, -716f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(186f, var_0.a.x, var_0.a.x, 615f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -1886f, var_0.a.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -149f, -2252f, -717f), vec4<f32>(var_0.a.x, 615f, var_2.a.x, 787f)))))), -(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(global0[_wgslsmith_index_u32(0u, 11u)], u_input.c)))), _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) + var_2.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-536f - 627f)))))).x;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

