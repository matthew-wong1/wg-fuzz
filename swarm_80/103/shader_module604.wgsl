struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 18> = array<f32, 18>(418f, -594f, -215f, 289f, 496f, 208f, -207f, 630f, 567f, 1000f, -1533f, -858f, 1549f, 1145f, -913f, -2001f, 538f, -691f);

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true));

var<private> global3: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    global0 = vec3<i32>(countOneBits(-(-26622i << (1u % 32u))), min(~u_input.a, arg_1.b.a), -u_input.a);
    var var_0 = ~countOneBits(_wgslsmith_mult_vec3_u32(select(select(global3.d.a, vec3<u32>(4705u, 4294967295u, arg_1.b.b.x), vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, global3.c.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(37512u, 0u, 4294967295u), vec3<u32>(arg_0.b.x, 0u, 26021u)), vec3<bool>(true, global3.d.b.c.x, arg_0.c.x)), ~global3.b.xyy));
    let var_1 = Struct_3(-countOneBits(_wgslsmith_sub_vec4_i32(global3.a, vec4<i32>(8882i, -2147483647i, 72309i, global3.a.x))) >> (~_wgslsmith_add_vec4_u32(~global3.b, vec4<u32>(var_0.x, 2215u, 37423u, 4294967295u) | global3.b) % vec4<u32>(32u)), select(global3.b, ~global3.b, vec4<bool>(!global3.c.c.x, !(global3.d.b.c.x && arg_1.b.c.x), true, all(select(vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, true, true), vec3<bool>(arg_0.c.x, false, arg_1.d.c.x))))), global3.d.b, global3.d);
    let var_2 = arg_1.d.b;
    var var_3 = vec3<u32>(max(_wgslsmith_mult_u32(var_2.x, 17216u), 47744u), 35569u, select(global3.c.b.x, ~23632u, all(global3.d.b.c)) | global3.b.x) >> (vec3<u32>(~1u, 0u, _wgslsmith_dot_vec4_u32(global3.b, var_1.b)) % vec3<u32>(32u));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(22638u, var_2.x, ~49202u, ~reverseBits(var_3.x)), global3.b, vec4<u32>(~arg_1.d.b.x >> (arg_0.b.x % 32u), 55981u, ~_wgslsmith_dot_vec2_u32(var_2, arg_1.d.b) << (21080u % 32u), u_input.b.x));
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global3.c.b.x, u_input.b.x), 8318u, reverseBits(1u), u_input.b.x), func_3(global3.d.d, global3.d) ^ ~global3.b), global3.b);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.d.a.x, 4294967295u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 25587u, var_0.x) >> (vec4<u32>(0u, 50620u, 1u, 29191u) % vec4<u32>(32u)), ~vec4<u32>(1u, 1u, var_0.x, 1u)) % 32u), u_input.b.x), 18u)];
    global1 = array<f32, 18>();
    let var_2 = !(!global3.d.d.c.x);
    return Struct_3(vec4<i32>(-1i) * -abs(vec4<i32>(1i, 15648i, global3.c.a, u_input.a)), vec4<u32>(var_0.x, ~global3.d.d.b.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, var_0.x), vec2<u32>(4294967295u, global3.c.b.x)) | ~vec2<u32>(u_input.b.x, 0u), ~u_input.b), u_input.b.x), global3.d.d, Struct_2(var_0.xwy, global3.c, global3.d.c, global3.c, -(global0.x ^ u_input.a) | ~(-28220i & u_input.a)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global2 = array<vec4<bool>, 3>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global3.d.c), global1[_wgslsmith_index_u32(u_input.b.x, 18u)]);
    let var_1 = ~global3.b.x | global3.d.b.b.x;
    global3 = func_2();
    global0 = vec3<i32>(select(firstLeadingBit(0i), u_input.a & (~global0.x >> (~var_1 % 32u)), !func_2().c.c.x), -1i, ~_wgslsmith_div_i32(~0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, 0i, global0.x, u_input.a), vec4<i32>(global3.a.x, -1i, u_input.a, 0i)), global3.a)));
    return Struct_3(vec4<i32>(global0.x, 69697i, global3.a.x >> (var_1 % 32u), _wgslsmith_add_i32(max(func_2().d.b.a, global3.c.a), firstLeadingBit(u_input.a))), ~vec4<u32>(~var_1, ~4294967295u, 1u, var_1) & global3.b, Struct_1(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(global3.a, global3.a)), firstLeadingBit(~vec2<u32>(1u, global3.c.b.x)), select(global3.d.d.c, vec2<bool>(global3.c.c.x, global3.d.b.c.x), vec2<bool>(arg_0.x, true))), func_2().d);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec3<i32> {
    global2 = array<vec4<bool>, 3>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-546f, arg_0.d.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)] * global1[_wgslsmith_index_u32(arg_0.d.b.b.x, 18u)])) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.d.c)))), 1f);
    global3 = Struct_3(firstTrailingBit(arg_0.a), func_1(vec3<bool>(any(!vec3<bool>(arg_1.x, true, false)), true, select(703f == var_0.x, false, true))).b, func_2().c, func_2().d);
    var var_1 = (arg_0.a.x > -1i) && arg_1.x;
    global1 = array<f32, 18>();
    return firstLeadingBit(~_wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(global3.a.xww, global3.a.yxx), vec3<i32>(~2147483647i, -arg_0.a.x, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(vec3<bool>(!global3.d.d.c.x, global3.d.b.c.x, !global3.c.c.x)), !vec3<bool>(select(global3.c.c.x, global3.c.c.x, global3.c.c.x), 37670u <= global3.b.x, global3.d.b.b.x == 110071u)) ^ vec3<i32>(countOneBits(5841i & (u_input.a >> (u_input.b.x % 32u))), select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x) | global3.a.yzx, vec3<i32>(u_input.a, global0.x, 2147483647i)), func_2().a.x, true), reverseBits(-17726i));
    let var_0 = vec4<bool>(false, true, false, any(select(vec3<bool>(global3.c.c.x, global3.d.d.c.x, true), select(vec3<bool>(global3.d.b.c.x, false, true), vec3<bool>(global3.c.c.x, global3.c.c.x, false), vec3<bool>(true, global3.d.d.c.x, global3.d.b.c.x)), global3.c.c.x)) || false);
    global3 = Struct_3(vec4<i32>(-max(firstTrailingBit(global0.x), 1i), u_input.a & _wgslsmith_dot_vec2_i32(-global0.xx, vec2<i32>(u_input.a, 11108i)), _wgslsmith_dot_vec2_i32(global0.xx, select(vec2<i32>(85288i, u_input.a), abs(vec2<i32>(1i, 48790i)), global3.c.c.x)), -7324i), vec4<u32>(~u_input.b.x, ~25971u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.d.d.b.x, 27220u), vec2<u32>(global3.c.b.x, global3.d.b.b.x)), _wgslsmith_div_u32(u_input.b.x, 1u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b.x), ~0u, _wgslsmith_add_u32(4294967295u, global3.c.b.x), func_3(global3.c, Struct_2(vec3<u32>(global3.c.b.x, u_input.b.x, 0u), global3.d.b, 1426f, global3.d.d, global3.d.b.a)).x), global3.b), Struct_1(global0.x, ~u_input.b, select(!(!vec2<bool>(var_0.x, true)), func_1(!vec3<bool>(var_0.x, global3.d.b.c.x, global3.d.b.c.x)).d.d.c, var_0.wy)), global3.d);
    global1 = array<f32, 18>();
    global2 = array<vec4<bool>, 3>();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.d.c, -172f, 551f, -275f))))))));
    let var_2 = all(global3.d.b.c);
    let var_3 = Struct_3(~vec4<i32>(0i, reverseBits(~12247i), 1i, ~max(global3.a.x, 40961i)), vec4<u32>(_wgslsmith_mod_u32(abs(~u_input.b.x), ~_wgslsmith_div_u32(17442u, 1746u)), abs(global3.b.x), firstTrailingBit(69122u), ~(u_input.b.x & ~global3.d.b.b.x)), global3.d.b, func_2().d);
    let x = u_input.a;
    s_output = StorageBuffer(73310u, ~(-10962i), global3.d.e);
}

