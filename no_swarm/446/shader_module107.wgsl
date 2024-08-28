struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: array<bool, 6> = array<bool, 6>(false, false, true, true, false, true);

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    global2 = select(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-2147483647i, u_input.a.x)), ~u_input.a), u_input.a, false) | vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.x, -2147483647i, global2.x, 40435i), vec4<i32>(-1i, -8858i, global2.x, 11583i), vec4<bool>(false, arg_0.d, arg_0.d, global1[_wgslsmith_index_u32(4294967295u, 6u)])) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, -30105i), vec4<i32>(u_input.a.x, global2.x, global2.x, 0i)), vec4<i32>(global2.x, -2147483647i, -18987i, u_input.a.x)));
    global1 = array<bool, 6>();
    var var_0 = ~1u;
    var var_1 = _wgslsmith_add_vec4_u32(arg_1, abs(vec4<u32>(_wgslsmith_div_u32(13596u, ~arg_1.x), ~(arg_0.a.x << (arg_1.x % 32u)), 10072u, arg_1.x)));
    var_1 = ~vec4<u32>(~(~arg_1.x), var_1.x, arg_0.e, 4294967295u);
    return select(4294967295u, var_1.x, false);
}

fn func_2() -> vec4<u32> {
    global2 = vec2<i32>(~abs(abs(~global2.x)), u_input.a.x);
    return vec4<u32>(min(firstLeadingBit(func_3(Struct_1(vec2<u32>(4310u, 0u), 4294967295u, 1797u, global1[_wgslsmith_index_u32(34100u, 6u)], 3163u), vec4<u32>(4294967295u, 30475u, 917u, 88840u))) ^ 0u, ~(~4294967295u)), countOneBits(~(~_wgslsmith_sub_u32(4294967295u, 0u))), ~(~(firstTrailingBit(0u) ^ 1u)), firstTrailingBit(_wgslsmith_clamp_u32(1u, ~13547u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(24243u, 123869u), vec2<u32>(12982u, 0u)), vec2<u32>(4294967295u, 1u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: i32) -> f32 {
    global2 = ~vec2<i32>(global2.x, ~_wgslsmith_mult_i32(1563i, u_input.a.x) << ((min(1816u, arg_2) & 44456u) % 32u));
    var var_0 = func_2();
    return -1000f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global2 = vec2<i32>(u_input.a.x, 34625i);
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1834f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))) - 903f)));
    global0 = array<f32, 26>();
    var var_1 = _wgslsmith_sub_i32(global2.x, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(global2.x | -7352i, firstLeadingBit(u_input.a.x), 2147483647i), -firstTrailingBit(abs(u_input.a.x))));
    return Struct_1(_wgslsmith_mult_vec2_u32(arg_2.a & vec2<u32>(arg_2.a.x, 79112u), _wgslsmith_sub_vec2_u32(arg_2.a, min(arg_2.a, vec2<u32>(arg_2.c, 26820u)))) | (arg_2.a >> (vec2<u32>(_wgslsmith_div_u32(arg_2.b, arg_2.a.x), abs(arg_2.e)) % vec2<u32>(32u))), ~arg_2.c, arg_2.e, false, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>(!global1[_wgslsmith_index_u32(19071u, 6u)], _wgslsmith_f_op_f32(step(-176f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 26u)]))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(4294967295u, 26u)], 37036u, 0i)) * _wgslsmith_f_op_f32(f32(-1f) * -207f)), false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(select(vec4<bool>(global1[_wgslsmith_index_u32(5612u, 6u)], false, true, global1[_wgslsmith_index_u32(135547u, 6u)]), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(10515u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(36499u, 6u)]), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18276u, 26u)] + global0[_wgslsmith_index_u32(1u, 26u)]), -1334f)), ~(~1u), 34149i))), Struct_1(~vec2<u32>(45393u, 1u), ~4294967295u, abs(33711u), global1[_wgslsmith_index_u32(13308u, 6u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~48698u, 0u, ~4294967295u), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 9778u, 0u, 0u), vec4<u32>(1u, 1u, 17305u, 166278u))))));
    global1 = array<bool, 6>();
    var_0 = func_4(vec4<bool>(all(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)])), !(!func_4(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 6u)], global1[_wgslsmith_index_u32(40448u, 6u)], global1[_wgslsmith_index_u32(var_0.c, 6u)], var_0.d), global0[_wgslsmith_index_u32(0u, 26u)], Struct_1(var_0.a, var_0.e, var_0.c, false, var_0.c)).d), false, firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, 1i)) == -1i), global0[_wgslsmith_index_u32(max(62578u, firstLeadingBit(var_0.a.x)), 26u)], Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, reverseBits(~vec2<u32>(var_0.c, 0u))), var_0.a.x, _wgslsmith_add_u32(var_0.a.x, (var_0.c >> (var_0.c % 32u)) >> (~var_0.e % 32u)), all(vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b, 6u)], false, global1[_wgslsmith_index_u32(0u, 6u)])), all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_0.a.x, 6u)], global1[_wgslsmith_index_u32(var_0.a.x, 6u)])), any(vec2<bool>(var_0.d, var_0.d)), false)), 0u));
    var var_1 = abs(~(~51940u));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-570f - global0[_wgslsmith_index_u32(var_0.e, 26u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-458f))) * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.a.x, var_0.b), _wgslsmith_add_u32(var_0.a.x, var_0.c)), 26u)])) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(134984u, 26u)] + -903f)))))));
    var var_3 = func_4(vec4<bool>(true, false, false, any(select(vec2<bool>(false, var_0.d), select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(11158u, 6u)], true), vec2<bool>(var_0.d, true)), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~var_0.a.x, 26u)])))), Struct_1(vec2<u32>(var_0.c, ~(var_0.c | 4294967295u)), select(var_0.e, 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b, 4294967295u) | vec3<u32>(0u, 90485u, 6268u), ~vec3<u32>(4294967295u, var_0.a.x, 7384u)), 6u)]), ~1u, var_0.d, countOneBits(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 26u)], -881f, -450f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, var_2.x, var_2.x)))), vec3<f32>(global0[_wgslsmith_index_u32(25323u, 26u)], global0[_wgslsmith_index_u32(~(~var_3.e), 26u)], _wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(max(963f, -592f)))), false)));
}

