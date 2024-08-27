struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<f32, 24> = array<f32, 24>(-317f, 674f, 346f, 542f, 664f, -908f, -1130f, -452f, 147f, 1577f, -1142f, -549f, -1709f, 1952f, -2427f, 264f, 1561f, 1636f, -1475f, -2161f, -1000f, 996f, 374f, -241f);

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 32u)], ~vec2<u32>(~_wgslsmith_add_u32(17389u, 2059u), arg_2), global1[_wgslsmith_index_u32(u_input.d >> (0u % 32u), 24u)]);
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_1 = ~u_input.b;
    return 50676u;
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = arg_0.a.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b.x, 24u)] * 1209f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.b.x, 24u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -1000f, -570f, -1097f))) * vec4<f32>(arg_0.c, arg_0.c, _wgslsmith_div_f32(746f, arg_0.a.a.x), arg_0.c)), select(vec4<bool>(true, true, var_0.x & false, true), select(vec4<bool>(false, false, false, true), !vec4<bool>(false, false, arg_0.a.d.x, var_0.x), select(vec4<bool>(var_0.x, arg_0.a.e.x, var_0.x, false), vec4<bool>(false, true, var_0.x, false), vec4<bool>(arg_0.a.d.x, true, true, arg_0.a.d.x))), var_0.x))));
    let var_2 = ~arg_0.a.c;
    let var_3 = arg_0.a;
    var var_4 = global2[_wgslsmith_index_u32(var_3.b.x, 8u)];
    return var_3.e;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_u32(firstLeadingBit(arg_0.b.x), firstLeadingBit(u_input.d) ^ ((1u << (0u % 32u)) >> (~(~u_input.d) % 32u)));
    var var_1 = Struct_1(arg_0.a, vec3<u32>(4294967295u, func_2(all(select(arg_0.e, vec3<bool>(false, false, true), arg_0.d)), (arg_0.c ^ arg_0.c) << (~arg_0.b.x % 32u), firstLeadingBit(1u)), ~35612u), 1i, select(arg_0.e, select(!func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 32u)], vec2<u32>(103911u, arg_0.b.x), global1[_wgslsmith_index_u32(3462u, 24u)])), vec3<bool>(arg_0.d.x, true, select(arg_0.d.x, arg_0.d.x, arg_0.d.x)), 8163u != (u_input.d | arg_0.b.x)), global2[_wgslsmith_index_u32(11124u, 8u)]), select(!vec3<bool>(arg_0.d.x, select(false, false, false), false), global2[_wgslsmith_index_u32(~(~0u), 8u)], true));
    global1 = array<f32, 24>();
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(arg_0.b.yz), vec2<u32>(arg_0.b.x, ~87195u)) >> (var_1.b.xy % vec2<u32>(32u)), vec2<u32>(~arg_0.b.x, 0u));
    let var_2 = vec3<u32>(36609u, ~(~(~(~u_input.d))), ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.d, arg_0.b.x, 4294967295u, arg_0.b.x) | vec4<u32>(u_input.c, var_1.b.x, 1u, var_1.b.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, var_1.b.x, 26652u, 1u), vec4<u32>(10713u, arg_0.b.x, u_input.c, u_input.d), vec4<u32>(57480u, var_1.b.x, var_1.b.x, var_1.b.x)), vec4<u32>(u_input.d, arg_0.b.x, 16763u, 4294967295u))));
    return 49258u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.a.x, u_input.e.x);
    global1 = array<f32, 24>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 32u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(abs(~var_1.b.x ^ 0u), 24u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1529f, var_1.a.x))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, func_1(global0[_wgslsmith_index_u32(1u, 32u)])), 24u)])) + var_1.a);
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(var_1.c) >> (~var_1.b.x % 32u), select(-669i, -48044i, var_1.e.x) & _wgslsmith_mod_i32(0i, var_1.c), -25487i, u_input.b), -vec4<i32>(60110i, u_input.e.x, u_input.b, var_0) | _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-4321i, 8539i, u_input.a.x, var_1.c)), vec4<i32>(37674i, var_0, 3646i, var_1.c) >> (vec4<u32>(1u, 72035u, 46410u, 59301u) % vec4<u32>(32u)))), var_1.c, 3348i, countOneBits(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -1i)), vec4<i32>(19623i, var_0, u_input.b, -u_input.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(1i, _wgslsmith_sub_i32(2147483647i, countOneBits(var_3.x)) >> (reverseBits(~u_input.d) % 32u), all(vec2<bool>(var_1.e.x, !var_1.e.x))));
}

