struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, 1i, 0i, -25135i);

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 1u, 40535u), vec3<u32>(70835u, 1u, 41517u), vec3<u32>(0u, 75242u, 38642u), vec3<u32>(19218u, 14370u, 1u), vec3<u32>(1u, 79782u, 60449u), vec3<u32>(30448u, 72946u, 0u), vec3<u32>(32951u, 12339u, 1466u), vec3<u32>(0u, 4294967295u, 21222u), vec3<u32>(4294967295u, 27273u, 38959u), vec3<u32>(0u, 602u, 3009u), vec3<u32>(12083u, 100606u, 39489u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(38438u, 64154u, 71915u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(11608i, abs(global1.a.x >> (0u % 32u))), vec2<i32>(global1.a.x, _wgslsmith_div_i32(36496i, _wgslsmith_div_i32(22757i, 9282i))) ^ _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(global1.a.wz, vec2<i32>(-33437i, 1i)), u_input.b));
    var var_1 = arg_1;
    var var_2 = Struct_1(vec4<i32>(-(~_wgslsmith_mod_i32(35978i, -2147483647i)), _wgslsmith_dot_vec4_i32(global1.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, 35882i, global1.a.x, arg_0), vec4<i32>(global1.a.x, global0[_wgslsmith_index_u32(25478u, 4u)], var_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 4u)])), global1.a)), -(-global0[_wgslsmith_index_u32(94525u, 4u)] | arg_0), global1.a.x));
    global0 = array<i32, 4>();
    var_0 = ~firstLeadingBit(vec2<i32>(abs(abs(var_0.x)), firstLeadingBit(-1i & var_0.x)));
    return !all(vec4<bool>(-355f <= _wgslsmith_f_op_f32(-1540f * arg_1), true, select(68428u, 58655u, true) < _wgslsmith_add_u32(u_input.a, u_input.a), true));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<i32, 4>();
    var var_0 = arg_1;
    global0 = array<i32, 4>();
    global1 = arg_1;
    let var_1 = func_3(arg_1.a.x, arg_0);
    return (~countOneBits(11218u) << (abs(u_input.c.x) % 32u)) >> (_wgslsmith_sub_u32(u_input.c.x, countOneBits(1u)) % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(select(i32(-1i) * -1i, global0[_wgslsmith_index_u32(reverseBits(u_input.a) >> (min(arg_1, arg_1) % 32u), 4u)], any(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(~17691i, u_input.b.x), -2147483647i, -35890i));
    let var_1 = 745f;
    global2 = array<vec3<u32>, 13>();
    let var_2 = var_0;
    let var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<i32> {
    global1 = func_4(_wgslsmith_mod_vec4_i32(global1.a, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(47627i, -727i, 75016i, 5041i)), global1.a)) << (vec4<u32>(~func_2(-282f, Struct_1(global1.a)), u_input.c.x, arg_2, 76540u) % vec4<u32>(32u)), 1u & arg_2);
    let var_0 = Struct_1(global1.a);
    var var_1 = reverseBits(~1u | u_input.c.x);
    let var_2 = !all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true));
    var var_3 = func_4(select(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, global1.a.x, -1i, -1i), vec4<i32>(_wgslsmith_div_i32(-19211i, -2147483647i), 0i, _wgslsmith_dot_vec2_i32(u_input.b, var_0.a.xz), global0[_wgslsmith_index_u32(26114u, 4u)] >> (1u % 32u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, u_input.d, -1i, global0[_wgslsmith_index_u32(1u, 4u)]), var_0.a)), global1.a, !var_2), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a << (4294967295u % 32u), ~select(75609u, arg_2, true)), 4294967295u));
    return func_4(vec4<i32>(49929i, var_0.a.x << (~_wgslsmith_mult_u32(arg_2, u_input.c.x) % 32u), ~(~(-var_0.a.x)), 1i), ~(~35385u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(select(-404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1393f)), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1139f + 2185f)))), false);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 1i, global1.a.x, u_input.b.x), -global1.a));
    global2 = array<vec3<u32>, 13>();
    let var_2 = var_1;
    var var_3 = var_2.a.x;
    let var_4 = Struct_1(firstLeadingBit(func_1(287f, -var_1.a.x >> (3056u % 32u), _wgslsmith_add_u32(u_input.c.x, ~u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1296f, 1510f))), -108f, _wgslsmith_f_op_f32(abs(944f)), _wgslsmith_f_op_f32(1621f - _wgslsmith_f_op_f32(sign(647f))))), _wgslsmith_div_i32(33199i, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)))) - -444f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1266f))), -2875f, _wgslsmith_f_op_f32(f32(-1f) * -971f))));
}

