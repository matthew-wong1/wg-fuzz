struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-2991i, -14188i);

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(0u, 12899u, 19349u, 24891u), vec4<u32>(81337u, 15836u, 92498u, 1u), vec4<u32>(76002u, 4294967295u, 1u, 21670u), vec4<u32>(26565u, 1u, 227u, 4294967295u), vec4<u32>(4294967295u, 117020u, 1u, 36954u), vec4<u32>(18558u, 4294967295u, 4294967295u, 27453u), vec4<u32>(76448u, 50995u, 0u, 4294967295u), vec4<u32>(65554u, 12253u, 1u, 1u), vec4<u32>(6565u, 51442u, 51857u, 0u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 28131u, 4294967295u, 53239u), vec4<u32>(1u, 4294967295u, 1u, 4197u), vec4<u32>(4294967295u, 4294967295u, 40089u, 32259u), vec4<u32>(25296u, 31962u, 1u, 4294967295u), vec4<u32>(40792u, 0u, 41428u, 30524u), vec4<u32>(0u, 4294967295u, 1u, 45307u), vec4<u32>(4294967295u, 4294967295u, 68125u, 1u), vec4<u32>(18223u, 52941u, 17586u, 16245u), vec4<u32>(8416u, 86333u, 1u, 4294967295u), vec4<u32>(4294967295u, 68996u, 0u, 71245u), vec4<u32>(4294967295u, 31432u, 1u, 66592u), vec4<u32>(18159u, 1u, 457u, 1u), vec4<u32>(16743u, 33948u, 92911u, 34610u), vec4<u32>(37789u, 15682u, 45425u, 1u), vec4<u32>(44925u, 0u, 1u, 4854u), vec4<u32>(29627u, 72913u, 65734u, 1u), vec4<u32>(500u, 38055u, 29964u, 17375u), vec4<u32>(23011u, 41039u, 0u, 0u));

var<private> global2: vec3<f32>;

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(0i, 2147483647i, 33132i)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, 0i, 14468i)), Struct_1(vec3<i32>(-1i, 0i, 44318i)), Struct_1(vec3<i32>(-2364i, 16321i, -20694i)), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 2364i, -1i)), Struct_1(vec3<i32>(3512i, i32(-2147483648), -24752i)), Struct_1(vec3<i32>(87922i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, 0i, -21515i)), Struct_1(vec3<i32>(2147483647i, -2912i, 48306i)), Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 1i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    return Struct_2(Struct_1(vec3<i32>(-14403i, arg_0.a.x, 16981i)));
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), global2.x, global2.x)) + vec4<f32>(global2.x, _wgslsmith_f_op_f32(round(1681f)), _wgslsmith_f_op_f32(262f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 1276f) - -1091f)), _wgslsmith_f_op_f32(abs(global2.x))));
    var var_1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, false, true, false)), true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), 0i == -global0.x), select(vec2<bool>(false, 2147483647i > global0.x), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, false, true)))), vec2<bool>(true, true)), select(vec2<bool>(u_input.c.x < 0u, true), vec2<bool>(true, !any(vec3<bool>(true, false, false))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), global3.x >= 28764u), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_2 = -19572i;
    let var_3 = func_2(global4[_wgslsmith_index_u32(~u_input.c.x, 13u)], -vec4<i32>(countOneBits(~arg_0.a.a.x), 2147483647i, _wgslsmith_clamp_i32(u_input.a.x, ~(-3909i), _wgslsmith_dot_vec2_i32(u_input.a, arg_0.a.a.xy)), _wgslsmith_div_i32(1i | global0.x, -29504i)));
    global4 = array<Struct_1, 13>();
    return var_3;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = !vec3<bool>(arg_2, any(vec3<bool>(arg_2, arg_2, arg_2)) | true, true);
    let var_1 = vec3<bool>(global3.x <= ~4294967295u, (global2.x <= _wgslsmith_f_op_f32(-global2.x)) & true, !var_0.x);
    global2 = vec3<f32>(1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_div_f32(-1064f, global2.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(299f + 1024f)))))));
    var var_2 = Struct_2(Struct_1(~arg_1.a.a));
    var_2 = Struct_2(global4[_wgslsmith_index_u32(1u, 13u)]);
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(global3.x, 13u)]);
    let var_1 = func_2(func_3(func_2(Struct_1(-vec3<i32>(40940i, 1i, -50179i)), vec4<i32>(_wgslsmith_div_i32(1i, arg_3.x), arg_3.x, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, arg_2.x), arg_3)))).a, max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, global0.x), -u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, arg_1.x, 19487i) >> (global1[_wgslsmith_index_u32(1446u, 30u)] % vec4<u32>(32u)), abs(vec4<i32>(arg_1.x, 47280i, var_0.a.a.x, arg_2.x))), 1i, -12236i), vec4<i32>(~(global0.x << (u_input.c.x % 32u)), arg_3.x, -reverseBits(8857i), countOneBits(-1i))));
    var var_2 = false;
    var_0 = func_3(Struct_2(func_3(var_1).a));
    var var_3 = global2.x;
    return func_2(var_1.a, ~countOneBits(-firstTrailingBit(vec4<i32>(arg_2.x, u_input.a.x, 1i, global0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: bool) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(~(~global3.x), 13u)]);
    let var_2 = func_5(vec3<bool>(all(!select(vec3<bool>(arg_3, arg_3, false), vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_3, arg_3, arg_3))), !(!arg_3), func_4(_wgslsmith_mult_u32(global3.x, global3.x), func_3(func_2(var_1.a, vec4<i32>(var_1.a.a.x, 2147483647i, u_input.a.x, -44242i))), !arg_3)), abs(max(var_1.a.a, ~vec3<i32>(u_input.a.x, -9963i, arg_0.a.x))), ~(-vec2<i32>(1i, ~19543i)), func_2(func_2(Struct_1(vec3<i32>(u_input.a.x, -9685i, var_1.a.a.x)), -vec4<i32>(-2147483647i, global0.x, arg_0.a.x, -62858i)).a, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.a.x, -1i, -3032i, u_input.a.x), vec4<i32>(global0.x, 18638i, arg_0.a.x, -2564i)), -vec4<i32>(-6515i, arg_0.a.x, 5382i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.a.x, arg_0.a.x, u_input.a.x, global0.x), vec4<i32>(67857i, 0i, arg_0.a.x, u_input.a.x)))).a.a >> (countOneBits(var_0.www) % vec3<u32>(32u)));
    var var_3 = true;
    let var_4 = func_3(Struct_2(func_3(var_2).a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec3<bool>(func_1(Struct_1(vec3<i32>(-2147483647i, -40623i, u_input.a.x)), -1594f, _wgslsmith_f_op_f32(450f + global2.x), true), !any(vec2<bool>(false, false)), true));
    var var_1 = Struct_1(-(abs(func_5(vec3<bool>(false, true, false), vec3<i32>(1i, global0.x, global0.x), vec2<i32>(u_input.a.x, global0.x), vec3<i32>(global0.x, -1i, 1i)).a.a) | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -32549i, global0.x), vec3<i32>(global0.x, global0.x, -2147483647i)), firstLeadingBit(vec3<i32>(global0.x, 1680i, u_input.a.x)))));
    global0 = vec2<i32>(i32(-1i) * -34456i, global0.x);
    var var_2 = Struct_2(Struct_1(vec3<i32>(reverseBits(global0.x), func_5(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_i32(var_1.a, var_1.a), var_1.a.xx, vec3<i32>(2147483647i, u_input.a.x, -1i)).a.a.x, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-95413i, -2323i, u_input.a.x, var_1.a.x), vec4<i32>(45127i, 0i, global0.x, -26310i))))));
    var var_3 = var_2.a;
    let var_4 = ~vec4<u32>(0u, 53983u, 3837u, 0u);
    global3 = ~(~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, var_4.x), u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-_wgslsmith_add_vec4_i32(vec4<i32>(-22508i, 23644i, -5285i, u_input.a.x), vec4<i32>(1i, var_1.a.x, 1i, var_1.a.x) | vec4<i32>(-13907i, var_1.a.x, var_2.a.a.x, -2147483647i)), max(abs(~vec4<i32>(var_2.a.a.x, 2147483647i, -2147483647i, u_input.a.x)), vec4<i32>(~var_1.a.x, reverseBits(global0.x), -291i, 20865i))), global3.x, -1i, vec4<i32>(min(-2147483647i, 75756i), (abs(2147483647i) | var_3.a.x) << ((firstLeadingBit(55392u) ^ reverseBits(var_4.x)) % 32u), var_1.a.x << (_wgslsmith_dot_vec4_u32(min(global1[_wgslsmith_index_u32(98372u, 30u)], vec4<u32>(1u, var_4.x, 60758u, 5331u)), ~var_4) % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(var_2.a.a.x, -43239i) & max(-28766i, global0.x), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x)))));
}

