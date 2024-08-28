struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<bool, 6>;

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    global1 = array<bool, 6>();
    global3 = global2.c.x;
    let var_0 = Struct_1(4294967295u, vec2<i32>(abs(1i), 1i), global2.c, _wgslsmith_dot_vec3_u32((vec3<u32>(global2.a, u_input.c, 23607u) | max(vec3<u32>(u_input.c, arg_0.x, 0u), vec3<u32>(19003u, arg_0.x, 31863u))) & abs(~vec3<u32>(u_input.a.x, global2.a, u_input.c)), vec3<u32>(abs(arg_0.x), ~u_input.c, u_input.a.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, global2.a, global2.a), vec3<u32>(32541u, 0u, 0u))));
    let var_1 = Struct_1(firstLeadingBit(arg_0.x), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(795f, var_0.c.x))))), ~(~u_input.a.x));
    global3 = var_1.c.x;
    return vec2<u32>(abs(0u << (global2.a % 32u)), 0u);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = firstLeadingBit(countOneBits(vec3<u32>(0u, 35797u, abs(4294967295u))) & vec3<u32>(firstLeadingBit(u_input.c), max(~global2.d, global2.a << (29159u % 32u)), ~global2.a));
    let var_1 = Struct_1(~firstTrailingBit(var_0.x), -abs(u_input.d), global2.c, 0u);
    var var_2 = var_1;
    global0 = array<i32, 7>();
    let var_3 = var_1.a;
    return min(~var_3, _wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a, var_0.xx)), 21206u)) >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~var_0, vec3<u32>(global2.a, global2.d, 10276u)), select(_wgslsmith_clamp_vec3_u32(var_0, vec3<u32>(u_input.c, 65942u, var_3), abs(var_0)), ~(var_0 << (var_0 % vec3<u32>(32u))), vec3<bool>(select(arg_0.x, global1[_wgslsmith_index_u32(19308u, 6u)], global1[_wgslsmith_index_u32(87085u, 6u)]), any(vec4<bool>(true, arg_0.x, false, arg_0.x)), var_1.a != 41623u))) % 32u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = Struct_1(~(~(~4294967295u)), ~(min(~vec2<i32>(global2.b.x, 30543i), vec2<i32>(-29164i, -1i) | vec2<i32>(arg_1.b.x, u_input.b)) ^ _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, global2.b.x), vec2<i32>(-24555i, global0[_wgslsmith_index_u32(2299u, 7u)]) & vec2<i32>(66909i, 15655i))), vec2<f32>(_wgslsmith_f_op_f32(abs(global2.c.x)), _wgslsmith_f_op_f32(select(global2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(trunc(arg_1.c.x)))), global1[_wgslsmith_index_u32(~abs(7546u), 6u)]))), 4294967295u ^ _wgslsmith_dot_vec2_u32(~arg_0, firstTrailingBit(vec2<u32>(4205u, arg_0.x) | arg_0)));
    var var_1 = Struct_1(0u, vec2<i32>(59447i, -(_wgslsmith_add_i32(u_input.e, 3373i) << (_wgslsmith_mult_u32(u_input.c, arg_0.x) % 32u))), vec2<f32>(-1416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.x * 702f))))), ~min(global2.d, _wgslsmith_sub_u32(u_input.a.x, 4294967295u) << (0u % 32u)));
    let var_2 = vec4<f32>(526f, -915f, arg_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f + _wgslsmith_f_op_f32(sign(var_0.c.x)))), -496f));
    let var_3 = arg_1;
    let var_4 = -37782i;
    return select(1i, global0[_wgslsmith_index_u32(1u, 7u)], all(!arg_2.xz));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_i32(~(~(-(arg_0.b.x >> (global2.a % 32u)))), ~2147483647i);
    global0 = array<i32, 7>();
    var var_1 = vec4<i32>(arg_0.b.x, func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.a << (global2.a % 32u), _wgslsmith_add_u32(u_input.c, u_input.a.x)), func_2(vec2<u32>(u_input.c, 12806u))), Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(arg_0.a, 11199u)), firstTrailingBit(global2.b), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(global2.c.x * -1247f)), ~2704u | firstTrailingBit(0u)), vec3<bool>(true, true, global1[_wgslsmith_index_u32(func_3(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_0.a, 6u)], global1[_wgslsmith_index_u32(arg_0.a, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global2.a, 6u)], global1[_wgslsmith_index_u32(27662u, 6u)], global1[_wgslsmith_index_u32(36442u, 6u)]), global1[_wgslsmith_index_u32(0u, 6u)])), 6u)])), 1i, -arg_0.b.x);
    let var_2 = global2.d;
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(2147483647i, global2.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.d.x)) | vec4<i32>(var_1.x, -53168i, -var_1.x, u_input.e), vec4<i32>(firstTrailingBit(var_1.x) ^ 2147483647i, (var_0 >> (global2.d % 32u)) ^ var_1.x, select(-2147483647i, var_1.x, true), _wgslsmith_dot_vec3_i32(var_1.xxx, var_1.xxy))), _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(arg_0.d, 7u)], -1i, global0[_wgslsmith_index_u32(arg_0.a, 7u)])), vec4<i32>(_wgslsmith_div_i32(u_input.e, 20399i), 56851i, global0[_wgslsmith_index_u32(~(~1u), 7u)], abs(-2147483647i) >> (_wgslsmith_clamp_u32(24821u, 4294967295u, 4294967295u) % 32u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~u_input.d.x, ~global2.b.x);
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-global2.c.x);
    var_0 = ~_wgslsmith_div_vec2_i32(select(global2.b, u_input.d ^ global2.b, !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], var_1), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], var_1), true)), vec2<i32>(-1i, -1i ^ (u_input.e ^ global0[_wgslsmith_index_u32(63095u, 7u)])));
    var var_3 = vec3<i32>(global2.b.x << ((func_1(Struct_1(global2.a, vec2<i32>(0i, 24459i), global2.c, 41973u)) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(42153u, 1u, 1u), vec3<u32>(global2.d, 0u, 0u)))) % 32u), countOneBits(max(~global2.b.x, global0[_wgslsmith_index_u32(abs(~1u), 7u)])), 1i);
    global0 = array<i32, 7>();
    var var_4 = Struct_1(36155u << (firstTrailingBit(u_input.a.x) % 32u), u_input.d, _wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), global2.c.x) - vec2<f32>(_wgslsmith_f_op_f32(2050f + 1093f), _wgslsmith_div_f32(-1291f, global2.c.x)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(firstLeadingBit(select(vec4<i32>(46016i, global0[_wgslsmith_index_u32(var_4.d, 7u)], global0[_wgslsmith_index_u32(global2.a, 7u)], -9650i), vec4<i32>(-17531i, var_3.x, -1i, var_4.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(6371u, 6u)]))), abs(~vec4<i32>(var_4.b.x, global2.b.x, global0[_wgslsmith_index_u32(25948u, 7u)], 0i)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1887i, var_4.b.x, 1i, 12534i)), vec4<i32>(76127i, u_input.d.x, var_3.x, var_4.b.x))) | _wgslsmith_mod_vec4_i32(vec4<i32>(max(1i, var_3.x), var_0.x ^ 1i, min(global2.b.x, 13484i), var_4.b.x), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, global2.b.x, u_input.e, u_input.b), vec4<i32>(1i, -43600i, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), ~var_4.d ^ _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(global2.d, max(u_input.a.x, u_input.c))), -45978i, _wgslsmith_mod_vec2_i32(~abs(vec2<i32>(var_3.x, global0[_wgslsmith_index_u32(var_4.a, 7u)]) | var_3.xz), u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(min(var_4.c.x, 280f))))))));
}

