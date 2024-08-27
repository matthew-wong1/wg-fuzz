struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-27817i, 99808i, -1i, 0i, i32(-2147483648), -1i, 2147483647i, -44060i, -5796i, -35128i, i32(-2147483648), i32(-2147483648), -29534i, 0i, i32(-2147483648), 0i, 1i, i32(-2147483648), 2147483647i, 2147483647i, -41960i, 18145i, 0i, 1i, 60001i, 0i, -108414i, 2147483647i, 1i, 13824i);

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, -27285i, 1049i, -1i);

var<private> global3: Struct_1 = Struct_1(40262i, -1i, i32(-2147483648));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global2 = reverseBits(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1100i, 1i, -38295i, global3.a), u_input.c), global1[_wgslsmith_index_u32(1u, 17u)] ^ vec4<i32>(global0[_wgslsmith_index_u32(1u, 30u)], 2147483647i, arg_0.a, 0i), vec4<i32>(3419i, -65870i, 67591i, u_input.b)), select(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(1u, 17u)], vec4<i32>(global2.x, global2.x, -66908i, -15528i)), vec4<i32>(-12736i, arg_0.a, global0[_wgslsmith_index_u32(1u, 30u)], global3.a), select(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), arg_0.b.x))));
    let var_0 = arg_0;
    global3 = Struct_1(_wgslsmith_div_i32(arg_0.a, global3.b), global2.x, _wgslsmith_clamp_i32(abs(-max(arg_0.a, global2.x)), ~(-7612i), ~1i));
    global3 = Struct_1(-14399i, select(~(~_wgslsmith_mod_i32(-5410i, global2.x)), 2147483647i, false), reverseBits(global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 30u)]));
    global3 = Struct_1(-1i << (~(~0u) % 32u), 1i, arg_0.a);
    return vec2<bool>(!all(vec2<bool>(!var_0.b.x, false)), true);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = 7636u;
    var var_1 = -u_input.c.xyz;
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(~min(min(global2.wxx, u_input.c.yzz), -global2.wxy), ~vec3<i32>(~u_input.c.x, 17824i ^ u_input.a, 1i)), !select(!func_3(Struct_2(38620i, vec2<bool>(arg_0, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0), !vec2<bool>(arg_0, true)));
    let var_3 = select(1i, ~var_2.a, true);
    let var_4 = Struct_2(_wgslsmith_add_i32(-2147483647i, ~countOneBits(firstTrailingBit(global0[_wgslsmith_index_u32(129255u, 30u)]))), var_2.b);
    return _wgslsmith_sub_vec4_u32(select(reverseBits(~(~vec4<u32>(4294967295u, 135245u, 4294967295u, 36776u))), ~vec4<u32>(0u, 17408u, 0u, 24391u) >> (vec4<u32>(~4294967295u, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 9111u), vec3<u32>(15413u, 6757u, 23154u))) % vec4<u32>(32u)), vec4<bool>(true, false, var_2.b.x, var_4.b.x)), vec4<u32>(1u, ~(~1u), 1u, ~_wgslsmith_clamp_u32(~1u, 50848u, ~4294967295u)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(641f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -234f)), -1512f);
    let var_1 = func_2(true);
    let var_2 = -751f;
    global1 = array<vec4<i32>, 17>();
    let var_3 = var_0.xx;
    return Struct_1(~global3.b, -_wgslsmith_mod_i32(arg_0 | firstTrailingBit(1i), -abs(arg_0)), -(arg_0 | _wgslsmith_div_i32(global2.x, _wgslsmith_sub_i32(11387i, global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~27212u, 25794u), 17u)], -(~vec4<i32>(global2.x, global2.x, u_input.c.x, -10163i)) >> (countOneBits(~vec4<u32>(55759u, 78219u, 77639u, 1u)) % vec4<u32>(32u)), false);
    global3 = func_1(~_wgslsmith_clamp_i32(1i, reverseBits(u_input.c.x) >> (92380u % 32u), ~reverseBits(u_input.a)));
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    let var_0 = _wgslsmith_mod_vec2_i32(global2.zy, ~abs(_wgslsmith_mult_vec2_i32(reverseBits(global2.wz), ~vec2<i32>(global2.x, global2.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(f32(-1f) * -1813f)) + vec2<f32>(820f, -1580f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(859f, -1185f)))), 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(488f, -1285f)), _wgslsmith_f_op_f32(ceil(-705f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1253f, -559f))))), any(func_3(Struct_2(global0[_wgslsmith_index_u32(40642u, 30u)], vec2<bool>(true, false)))))));
    let var_2 = Struct_2(_wgslsmith_mod_i32(~2147483647i, -var_0.x), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_3(Struct_2(global3.a, vec2<bool>(true, true)))));
    let var_3 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global2.xyx, ~min(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global3.a, global0[_wgslsmith_index_u32(0u, 30u)]), vec3<i32>(u_input.a, 25590i, global0[_wgslsmith_index_u32(4294967295u, 30u)]))), u_input.c.x), ~_wgslsmith_div_i32(var_2.a >> (0u % 32u), 2147483647i), global3.a);
    var var_4 = ~13204i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(10255u, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, abs(18634u)), firstLeadingBit(countOneBits(0u))), ~(58166u | firstTrailingBit(12460u)), select(func_2(all(vec3<bool>(var_2.b.x, true, true))).x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37242u, 57883u), vec3<u32>(4294967295u, 13401u, 0u)), var_2.b.x)), _wgslsmith_f_op_f32(596f - -1109f), var_1.x, 667f, _wgslsmith_mult_i32(_wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, -2147483647i, var_0.x, -2147483647i), vec4<i32>(-26012i, 0i, global2.x, global3.b)), var_3.b), _wgslsmith_mult_i32(max(2147483647i, u_input.c.x), -14068i)), -global3.a));
}

