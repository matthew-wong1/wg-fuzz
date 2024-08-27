struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<u32, 10> = array<u32, 10>(4294967295u, 58186u, 15890u, 1u, 1u, 12597u, 105945u, 36731u, 0u, 0u);

var<private> global2: Struct_1 = Struct_1(1u, vec2<u32>(13393u, 40737u), vec2<u32>(7484u, 0u));

var<private> global3: array<i32, 32> = array<i32, 32>(-1i, -52610i, 21694i, 0i, 32722i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 28979i, 0i, i32(-2147483648), -5923i, -1i, i32(-2147483648), -31211i, -26876i, 1i, 26753i, -1i, 0i, i32(-2147483648), 58259i, i32(-2147483648), i32(-2147483648), 2147483647i, -11280i, 2147483647i, -8246i, 3449i, 7726i, 11196i, 8985i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global3 = array<i32, 32>();
    global3 = array<i32, 32>();
    let var_0 = ~((-70974i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(57593u, global1[_wgslsmith_index_u32(31864u, 10u)]), u_input.b.xx) % 32u)) | -max(-67948i, -6012i)) < firstLeadingBit(global0[_wgslsmith_index_u32(0u, 17u)]);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f), 734f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-483f)), _wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_2 = _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.c, 17u)], -1i) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(global2.c.x, global2.a, 22981u, 1u)), vec4<u32>(~global1[_wgslsmith_index_u32(15210u, 10u)], global1[_wgslsmith_index_u32(global2.a, 10u)], _wgslsmith_add_u32(1u, global2.b.x), _wgslsmith_mod_u32(0u, 4328u))), firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(98588u, 57934u, global1[_wgslsmith_index_u32(global2.a, 10u)], global2.c.x), vec4<u32>(global1[_wgslsmith_index_u32(global2.a, 10u)], 65491u, global1[_wgslsmith_index_u32(1u, 10u)], 4294967295u)), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(global2.b.x, 10u)], global2.b.x, global1[_wgslsmith_index_u32(u_input.e, 10u)], 1u)), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(11727u, 10u)], u_input.e, u_input.e)))), 17u)];
    return reverseBits(abs(firstTrailingBit(u_input.c)));
}

fn func_2() -> u32 {
    global1 = array<u32, 10>();
    global0 = array<i32, 17>();
    global1 = array<u32, 10>();
    let var_0 = Struct_1(global2.a, vec2<u32>(_wgslsmith_div_u32(select(38028u, global2.c.x, true), global1[_wgslsmith_index_u32(u_input.b.x ^ (global1[_wgslsmith_index_u32(u_input.e, 10u)] << (9319u % 32u)), 10u)]), func_3()), reverseBits(firstLeadingBit(~reverseBits(vec2<u32>(u_input.e, u_input.e)))));
    global3 = array<i32, 32>();
    return ~40948u;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = var_0.c.x ^ firstTrailingBit(~(~0u));
    let var_2 = select(all(vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false)))), !((78626u & global1[_wgslsmith_index_u32(30189u, 10u)]) <= (104392u & u_input.b.x)), !(!all(vec2<bool>(false, false)))) && false;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(min(-1100f, 117f)), _wgslsmith_f_op_f32(320f * 1464f), _wgslsmith_f_op_f32(step(-2230f, -323f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1362f, -1297f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) + -987f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(3320f, -1035f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1234f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1276f, 326f))))));
    global1 = array<u32, 10>();
    return Struct_1(~(~var_0.c.x), arg_0.c, firstLeadingBit(_wgslsmith_div_vec2_u32(~reverseBits(vec2<u32>(global2.c.x, 46864u)), vec2<u32>(~7525u, _wgslsmith_add_u32(19526u, u_input.b.x)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = Struct_1(~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 75306u, 83957u), vec4<u32>(2508u, 224u, 25097u, global1[_wgslsmith_index_u32(44491u, 10u)])), 10u)] | ~1u), u_input.b.zx, vec2<u32>(~(~0u), ~14632u));
    let var_0 = func_4(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41860u, 10u)], 10u)], 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(26814u, u_input.c, arg_0), vec3<u32>(15521u, global2.b.x, 59838u))), func_2()), ~arg_3.b, ~abs(global2.b)));
    global0 = array<i32, 17>();
    global1 = array<u32, 10>();
    let var_1 = ~u_input.e;
    return func_4(Struct_1(arg_0, global2.c, arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(403f)))) > _wgslsmith_f_op_f32(ceil(-763f))), true);
    var var_1 = Struct_1(~(~global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), global2.c, vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~(13011u & global2.c.x)), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, global2.c.x, 0u, global2.b.x), vec4<u32>(global2.c.x, 1u, global1[_wgslsmith_index_u32(13312u, 10u)], global2.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global2.b.x, 10u)], u_input.e, 1u), vec4<u32>(29752u, 1u, 0u, 45183u)))));
    var var_2 = func_1(~global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~global2.a, select(var_1.a, global1[_wgslsmith_index_u32(23099u, 10u)], true), u_input.c & 0u), 10u)], false, -572f, Struct_1(abs(max(38482u, _wgslsmith_sub_u32(global2.a, global1[_wgslsmith_index_u32(24030u, 10u)]))), ~(vec2<u32>(global2.a, u_input.b.x) ^ _wgslsmith_clamp_vec2_u32(global2.c, vec2<u32>(19592u, u_input.c), vec2<u32>(var_1.a, 1u))), vec2<u32>(1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4587u), u_input.b)))));
    var var_3 = all(!select(vec4<bool>(var_0.x, select(false, true, var_0.x), true, any(vec2<bool>(false, var_0.x))), !(!vec4<bool>(false, true, var_0.x, false)), !(true | var_0.x)));
    var_3 = 0u >= global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(countOneBits(abs(u_input.b))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(16708u, 1u, u_input.b.x), vec3<u32>(9055u, global2.c.x, global1[_wgslsmith_index_u32(18464u, 10u)])))), 10u)];
    var var_4 = vec2<bool>(!(all(select(var_0, vec2<bool>(true, var_0.x), false)) && var_0.x), !var_0.x);
    var var_5 = func_1(_wgslsmith_sub_u32(global2.c.x, func_1(_wgslsmith_sub_u32(16144u, global1[_wgslsmith_index_u32(global2.b.x, 10u)]), true, -115f, func_4(Struct_1(4294967295u, vec2<u32>(global1[_wgslsmith_index_u32(0u, 10u)], 31030u), global2.b))).a << (~func_2() % 32u)), true & var_4.x, 283f, Struct_1(max(_wgslsmith_mod_u32(countOneBits(4294967295u), global2.a & 26207u), abs(~4294967295u)), firstLeadingBit(vec2<u32>(var_1.c.x, ~1425u)), var_2.b >> ((func_4(Struct_1(18796u, vec2<u32>(global2.a, 28735u), vec2<u32>(24380u, 29689u))).b ^ ~vec2<u32>(global2.b.x, var_1.a)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-(~vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(global0[_wgslsmith_index_u32(global2.c.x, 17u)], _wgslsmith_sub_i32(-1i, u_input.d))));
}

