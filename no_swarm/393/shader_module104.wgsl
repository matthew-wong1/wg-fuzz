struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 43923u, 50223u, 89782u, 1u, 1u, 0u, 0u, 1u, 1u, 1u, 29411u, 42239u, 16249u, 12007u, 0u, 41917u, 17844u, 1u, 37569u, 1u, 4294967295u, 6886u, 0u, 460u, 1u, 0u, 71130u, 1u);

var<private> global1: f32;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<f32>(1298f, 851f, 1090f), true));

var<private> global3: u32 = 1u;

var<private> global4: f32 = 1519f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<bool> {
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, global0[_wgslsmith_index_u32(0u, 29u)]), 1u, 31433u);
    let var_1 = select(any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(global2.a.b, true, arg_0.d.x, arg_0.d.x), vec4<bool>(arg_0.a, arg_1, false, arg_1), vec4<bool>(arg_0.a, arg_0.c.b, arg_0.d.x, false)), select(vec4<bool>(false, true, arg_0.c.b, false), vec4<bool>(true, arg_0.a, arg_1, arg_0.a), vec4<bool>(false, true, false, arg_0.a)), !vec4<bool>(true, global2.a.b, true, global2.a.b)), true)), true, true);
    var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(~arg_0.b.x, _wgslsmith_dot_vec2_u32(~arg_0.b.yx, arg_0.b.yz) ^ select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.b.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), 1u, any(vec4<bool>(true, arg_0.a, false, true)))), 1u);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1075f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2347f, global2.a.a.x, global2.a.b)), 1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f + 731f))) + -805f));
    var_0 = 1u;
    return arg_0.d;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(false, ((_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 29u)], u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 0u)) << (countOneBits(vec4<u32>(0u, 1u, 37729u, global0[_wgslsmith_index_u32(u_input.c, 29u)])) % vec4<u32>(32u))) ^ vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 12290u), u_input.c >> (u_input.c % 32u), u_input.c >> (u_input.c % 32u))) & vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c, global0[_wgslsmith_index_u32(1u, 29u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(61891u, 29u)], u_input.c)), 29u)] >> (~1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 29u)], 4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]) ^ vec4<u32>(1u, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(24683u, 29u)]), ~vec4<u32>(4294967295u, 28891u, 70695u, 1u)), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 0u, global0[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1u, 0u, 0u)), 29u)], u_input.c), Struct_1(arg_0.a.a, !(false & arg_0.a.b)), select(func_3(Struct_2(global2.a.b, ~vec4<u32>(u_input.c, 27478u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], global0[_wgslsmith_index_u32(63090u, 29u)]), global2.a, vec2<bool>(global2.a.b, global2.a.b)), false), vec2<bool>(_wgslsmith_f_op_f32(step(arg_0.a.a.x, 2779f)) < _wgslsmith_f_op_f32(sign(1379f)), abs(global0[_wgslsmith_index_u32(31136u, 29u)]) >= _wgslsmith_mult_u32(1u, 4294967295u)), select(!(!vec2<bool>(true, global2.a.b)), select(select(vec2<bool>(true, arg_0.a.b), vec2<bool>(arg_0.a.b, global2.a.b), arg_0.a.b), vec2<bool>(false, false), vec2<bool>(global2.a.b, arg_0.a.b)), false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(349f)));
    var var_2 = var_0.d;
    let var_3 = global2.a;
    var_2 = vec2<bool>(true, false);
    return Struct_2(all(vec3<bool>(1f < _wgslsmith_f_op_f32(trunc(370f)), any(select(vec4<bool>(false, false, var_2.x, false), vec4<bool>(true, arg_0.a.b, true, false), arg_0.a.b)), global2.a.b)), ~var_0.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1483f * _wgslsmith_f_op_f32(floor(var_0.c.a.x))), -795f, _wgslsmith_f_op_f32(-752f * _wgslsmith_f_op_f32(max(1829f, 470f)))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.a.b, var_0.a, false)), !vec3<bool>(global2.a.b, true, true), !vec3<bool>(true, arg_0.a.b, false)))), var_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> f32 {
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], arg_0.b.x, arg_1.a.b), 7515u) | 4294967295u, ~8481u), 29u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(global2.a.a, global2.a.a)), any(vec4<bool>(global2.a.b, _wgslsmith_mod_i32(u_input.a, -1i) == select(u_input.a, u_input.b, true), true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-global2.a.a.x);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f + global2.a.a.x)))) - _wgslsmith_f_op_f32(func_4(func_2(Struct_3(global2.a)), Struct_3(func_2(Struct_3(Struct_1(global2.a.a, false))).c), Struct_4(!all(vec2<bool>(false, false))))));
    let var_1 = -1260f;
    let var_2 = arg_0;
    let var_3 = firstTrailingBit(_wgslsmith_mult_i32(0i, u_input.a));
    return any(!vec3<bool>(any(select(vec3<bool>(arg_1.x, global2.a.b, arg_1.x), vec3<bool>(true, true, false), false)), arg_1.x, -1586f >= var_1));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_3 {
    global2 = Struct_3(Struct_1(arg_1.c.a, !arg_1.a | any(!vec2<bool>(true, arg_0.x))));
    let var_0 = -1i;
    let var_1 = select(~32u, ~20103u, arg_0.x);
    var var_2 = global2.a.a;
    var var_3 = !any(!(!(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))));
    return Struct_3(Struct_1(arg_1.c.a, arg_1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec2<bool>(all(!vec3<bool>(global2.a.b, global2.a.b, false)), all(!vec2<bool>(global2.a.b, global2.a.b))), vec2<bool>(func_1(vec3<i32>(-1i, u_input.b, 22748i) & vec3<i32>(u_input.b, u_input.a, 1i), !vec2<bool>(global2.a.b, global2.a.b)), global0[_wgslsmith_index_u32(12028u, 29u)] == _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(9366u, 29u)])), select(all(select(vec3<bool>(global2.a.b, true, global2.a.b), vec3<bool>(global2.a.b, global2.a.b, false), vec3<bool>(false, true, global2.a.b))), false, func_2(Struct_3(global2.a)).c.b)), Struct_2(global2.a.b, vec4<u32>(69340u, ~global0[_wgslsmith_index_u32(func_2(Struct_3(Struct_1(vec3<f32>(global2.a.a.x, -528f, -1226f), true))).b.x, 29u)], 1u, ~25928u), func_2(Struct_3(global2.a)).c, !select(!vec2<bool>(global2.a.b, false), vec2<bool>(global2.a.b, global2.a.b), select(vec2<bool>(true, true), vec2<bool>(global2.a.b, global2.a.b), global2.a.b))));
    var var_1 = -((u_input.b & -u_input.b) & -(i32(-1i) * -37262i));
    var var_2 = _wgslsmith_sub_u32(func_2(Struct_3(func_2(func_5(vec2<bool>(global2.a.b, var_0.a.b), Struct_2(true, vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 4294967295u, 36624u), Struct_1(vec3<f32>(global2.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.b), vec2<bool>(false, false)))).c)).b.x, u_input.c);
    var var_3 = Struct_4(false);
    var_2 = min(4294967295u, ~u_input.c & countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 72728u, 4294967295u), vec3<u32>(0u, 0u, u_input.c)), ~vec3<u32>(35270u, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 29u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.b, -1i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, u_input.a) ^ vec3<i32>(-24801i, -1i, -38229i), -vec3<i32>(u_input.b, -1i, u_input.a))) ^ ~_wgslsmith_mult_vec3_i32(min(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, -8410i, u_input.b)), vec3<i32>(-50018i, u_input.a, 3383i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * 103f)), _wgslsmith_f_op_f32(max(-371f, 999f)), -1000f)));
}

