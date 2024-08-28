struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 18> = array<i32, 18>(3167i, i32(-2147483648), -1i, 14800i, i32(-2147483648), -37059i, 3759i, 2147483647i, 25231i, 4219i, -1i, 2147483647i, -22104i, 36008i, i32(-2147483648), -43469i, 2147483647i, -44894i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    return u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    global1 = array<i32, 18>();
    global0 = Struct_1(firstLeadingBit(u_input.b), _wgslsmith_mult_vec4_u32(global0.b, global0.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global0.c, vec3<f32>(_wgslsmith_f_op_f32(arg_1 * -1256f), _wgslsmith_f_op_f32(-arg_1), global0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-818f))), global0.e | global0.e);
    let var_0 = ~(-global1[_wgslsmith_index_u32(0u, 18u)]);
    global1 = array<i32, 18>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.c), true, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.xz, min(~vec2<u32>(18013u, 0u), select(vec2<u32>(1u, 71226u), global0.b.xz, false))), 1u << ((_wgslsmith_sub_u32(u_input.b.x, 25817u) << (~global0.a.x % 32u)) % 32u)), Struct_2(abs(_wgslsmith_add_u32(countOneBits(arg_2.x), ~arg_0.a)), ((arg_0.b << (vec3<u32>(arg_0.a, arg_2.x, 40773u) % vec3<u32>(32u))) | vec3<i32>(arg_0.b.x, global1[_wgslsmith_index_u32(arg_0.a, 18u)], u_input.c.x)) & ~(vec3<i32>(arg_0.b.x, 40548i, -2147483647i) ^ vec3<i32>(arg_0.b.x, var_0, -1i))), Struct_2(~(~(~global0.a.x)), arg_0.b));
    return global0.a.x;
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    let var_0 = min(vec2<u32>(u_input.a, global0.a.x), global0.a);
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 4294967295u, 4294967295u, var_0.x) | global0.b, _wgslsmith_mod_vec4_u32(vec4<u32>(45222u, 28383u, var_0.x, 12428u), global0.b), global0.b) >> (firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, u_input.a, global0.a.x, global0.b.x), global0.b, vec4<u32>(6657u, 51461u, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_2 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19537u, 1u, 11724u, var_0.x) ^ vec4<u32>(u_input.a, u_input.b.x, global0.b.x, u_input.a), var_1), ~_wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, var_0.x, 24536u, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 44986u, var_0.x), select(vec4<u32>(31905u, u_input.a, 0u, u_input.b.x), var_1, vec4<bool>(global0.e, false, arg_0.x, true)))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-522f, 843f) * -456f), all(vec2<bool>(false, false))), Struct_2(_wgslsmith_sub_u32(u_input.a, ~1u), vec3<i32>(-50122i, min(-2147483647i, -2147483647i) | global1[_wgslsmith_index_u32(min(1u, 4294967295u), 18u)], _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -15885i, u_input.c.x, global1[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(u_input.c.x, 1i, 0i, global1[_wgslsmith_index_u32(var_0.x, 18u)])), 0i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, 315f, global0.d, -179f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(299f, global0.c.x, global0.d, 290f))))), !any(vec3<bool>(arg_0.x, false, global0.e)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1636f)), global0.d)), 1000f, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, global1[_wgslsmith_index_u32(var_0.x, 18u)], global1[_wgslsmith_index_u32(global0.a.x, 18u)], global1[_wgslsmith_index_u32(var_1.x, 18u)]), vec4<i32>(0i, 10913i, u_input.c.x, 0i)), vec4<i32>(-u_input.c.x | (global1[_wgslsmith_index_u32(1u, 18u)] << (40381u % 32u)), global1[_wgslsmith_index_u32(43000u >> (1u % 32u), 18u)], ~(-1i) << (~var_0.x % 32u), u_input.c.x)));
    var_2 = Struct_4(var_2.a, var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_mod_vec4_i32(min(vec4<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(10303u, 18u)], var_2.d.x), ~(-2147483647i), -global1[_wgslsmith_index_u32(1u, 18u)], i32(-1i) * -1i), _wgslsmith_mod_vec4_i32(select(vec4<i32>(55771i, u_input.c.x, 43343i, -4600i), var_2.d, vec4<bool>(true, var_2.a.e, false, global0.e)), var_2.d)), -vec4<i32>(var_2.d.x, 16394i, 34985i, -30969i)));
    global0 = Struct_1(countOneBits(~reverseBits(firstTrailingBit(vec2<u32>(u_input.a, 75283u)))), ~(~min(var_1, select(vec4<u32>(u_input.b.x, var_1.x, 1u, var_1.x), vec4<u32>(var_2.b.a, 1u, var_0.x, global0.a.x), vec4<bool>(var_2.a.e, true, var_2.a.e, global0.e)))), _wgslsmith_f_op_vec3_f32(-var_2.c.zxx), -969f, all(select(!(!vec3<bool>(global0.e, var_2.a.e, false)), !select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, var_2.a.e, arg_0.x), false), all(select(arg_0, arg_0, true)))));
    return var_2.d ^ -vec4<i32>(var_2.b.b.x, ~(global1[_wgslsmith_index_u32(1u, 18u)] >> (u_input.b.x % 32u)), -52555i, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)) <= global0.d, global0.e, global0.e, !(!(global0.e | true)));
    global1 = array<i32, 18>();
    var var_1 = ~(~_wgslsmith_mod_u32(4294967295u >> (u_input.b.x % 32u), 1u)) & func_1();
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0.c);
    var var_3 = min(1u, 9289u);
    global1 = array<i32, 18>();
    var var_4 = vec4<i32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(~(~(~func_2(Struct_2(1u, vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), 1388f, global0.b.yyz))), 18u)], _wgslsmith_clamp_i32(u_input.c.x, 1i ^ ~(global1[_wgslsmith_index_u32(1u, 18u)] & u_input.c.x), -u_input.c.x));
    var_3 = 1675u;
    let x = u_input.a;
    s_output = StorageBuffer(93716u, _wgslsmith_dot_vec4_i32(func_3(!select(vec2<bool>(global0.e, global0.e), vec2<bool>(global0.e, false), true)), ~(-(vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], -58567i, global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(global0.a.x, 18u)]) | vec4<i32>(var_4.x, var_4.x, 38751i, global1[_wgslsmith_index_u32(u_input.a, 18u)])))), _wgslsmith_sub_u32(u_input.a | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(30962u, u_input.b.x, global0.b.x), vec3<u32>(u_input.b.x, u_input.b.x, global0.b.x)), _wgslsmith_div_vec3_u32(global0.b.wzx, global0.b.yzx)), ~countOneBits(~1u)), -712f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -747f) - _wgslsmith_f_op_f32(-1518f * global0.c.x))));
}

