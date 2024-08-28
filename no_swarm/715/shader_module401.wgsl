struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-1000f, -319f, -788f, -133f, 588f, -864f, -851f, 1674f, -1053f);

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 5425u);

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(55781u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 30718u)), Struct_1(vec3<u32>(43564u, 29526u, 23380u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 74712u)), Struct_1(vec3<u32>(0u, 4294967295u, 23004u)), Struct_1(vec3<u32>(0u, 47694u, 15581u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1943u, 54505u)), Struct_1(vec3<u32>(0u, 0u, 37465u)));

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(20950u, 31749u, 76313u)), Struct_1(vec3<u32>(1u, 78376u, 11832u)), Struct_1(vec3<u32>(38905u, 1u, 4294967295u)), Struct_1(vec3<u32>(65924u, 0u, 1u)), Struct_1(vec3<u32>(57695u, 1u, 45451u)), Struct_1(vec3<u32>(1u, 102949u, 39157u)), Struct_1(vec3<u32>(1u, 61533u, 1u)), Struct_1(vec3<u32>(19321u, 4294967295u, 17286u)), Struct_1(vec3<u32>(0u, 0u, 29578u)), Struct_1(vec3<u32>(4294967295u, 26986u, 63887u)), Struct_1(vec3<u32>(21848u, 8396u, 1u)), Struct_1(vec3<u32>(15849u, 4294967295u, 0u)), Struct_1(vec3<u32>(80484u, 0u, 1u)), Struct_1(vec3<u32>(28046u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(89976u, 14175u, 44830u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 0u, 18792u)), Struct_1(vec3<u32>(1887u, 29228u, 1u)), Struct_1(vec3<u32>(800u, 32473u, 26298u)), Struct_1(vec3<u32>(4294967295u, 1390u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 49231u)), Struct_1(vec3<u32>(67116u, 0u, 4294967295u)), Struct_1(vec3<u32>(15449u, 15429u, 4294967295u)), Struct_1(vec3<u32>(0u, 63870u, 76727u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = array<f32, 9>();
    let var_0 = (-(vec4<i32>(arg_0.x, 2147483647i, 15441i, u_input.c.x) << (~vec4<u32>(4294967295u, u_input.d, arg_1.a.x, 1u) % vec4<u32>(32u))) << (vec4<u32>(countOneBits(74548u), global1.x, ~global1.x >> (select(0u, u_input.d, true) % 32u), 1u) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(~max(~vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -11000i), vec4<i32>(arg_0.x, -2147483647i, u_input.c.x, 3250i) << (vec4<u32>(7036u, arg_1.a.x, 4294967295u, global1.x) % vec4<u32>(32u))), vec4<i32>(-(~53796i), arg_0.x << (_wgslsmith_div_u32(43270u, u_input.d) % 32u), _wgslsmith_div_i32(1i, arg_0.x), firstLeadingBit(~u_input.c.x)));
    global3 = array<Struct_1, 24>();
    global1 = vec3<u32>(global1.x << ((~46306u | abs(arg_1.a.x)) % 32u), u_input.a, ~((firstLeadingBit(u_input.b) >> (1u % 32u)) << (select(56134u, 36482u, true) % 32u)));
    let var_1 = -843f;
    return -1607f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_1.a.xz;
    let var_1 = abs(u_input.c.x);
    var_0 = arg_2.a.zx;
    let var_2 = arg_0.a << (arg_1.a % vec3<u32>(32u));
    var_0 = ~vec2<u32>(~1u, ~min(var_0.x, abs(12445u)));
    return vec2<bool>(!(!any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.c.x, 2147483647i), global3[_wgslsmith_index_u32(abs(1u), 24u)], 917f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-374f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(75680u, 9u)], global0[_wgslsmith_index_u32(71756u, 9u)]))) + global0[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)]));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_1, 11>();
    var var_0 = vec3<u32>(countOneBits(_wgslsmith_div_u32(~u_input.b, 4294967295u)), ~(~global1.x), 1u);
    let var_1 = var_0.x;
    var var_2 = global3[_wgslsmith_index_u32(~var_0.x, 24u)];
    let var_3 = global2[_wgslsmith_index_u32(var_0.x, 11u)];
    return global3[_wgslsmith_index_u32(var_0.x, 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = func_4(!vec4<bool>(any(vec2<bool>(true, true)), all(func_2(arg_0, arg_1, Struct_1(vec3<u32>(20145u, arg_1.a.x, 26269u)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(68339u, 9u)] * -583f) < _wgslsmith_f_op_f32(sign(-1560f)), any(vec2<bool>(true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4324u, 9u)]) - global0[_wgslsmith_index_u32(92909u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(step(-1216f, _wgslsmith_f_op_f32(1209f - global0[_wgslsmith_index_u32(arg_1.a.x, 9u)]))), global0[_wgslsmith_index_u32(arg_0.a.x | ~arg_0.a.x, 9u)]), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1034f, _wgslsmith_f_op_f32(386f - global0[_wgslsmith_index_u32(14349u, 9u)]), -272f, -1146f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(30455u, 9u)], -289f, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_0.a.x, 9u)]) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(43741u, 9u)], -945f, global0[_wgslsmith_index_u32(u_input.d, 9u)]))), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f + 1169f)) - 684f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~61485u, 9u)] + global0[_wgslsmith_index_u32(41938u, 9u)])))));
    let var_1 = 4294967295u <= ~max(21062u, arg_1.a.x);
    var var_2 = 1u;
    global1 = _wgslsmith_add_vec3_u32(firstTrailingBit(~reverseBits(firstLeadingBit(vec3<u32>(0u, global1.x, var_0.a.x)))), arg_1.a);
    global1 = vec3<u32>(~arg_0.a.x, 1u, ~(~min(min(u_input.a, arg_0.a.x), ~var_0.a.x)));
    return _wgslsmith_clamp_vec3_u32(arg_1.a | vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.a.x), ~5815u, 1u), vec3<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(arg_1.a, var_0.a), max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(28481u, u_input.a, 0u, 11462u)), abs(vec4<u32>(u_input.b, arg_0.a.x, 41588u, 1u))), ~(~0u))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.a, _wgslsmith_div_vec3_u32(min(vec3<u32>(4294967295u, arg_1.a.x, 4294967295u), arg_1.a), ~arg_0.a)), vec3<u32>(arg_0.a.x, 0u, ~51179u) ^ ~arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global1 = firstTrailingBit(min(~(~func_1(global3[_wgslsmith_index_u32(10187u, 24u)], global3[_wgslsmith_index_u32(14742u, 24u)])), firstTrailingBit(~vec3<u32>(global1.x, 0u, 1u))));
    let var_1 = func_4(select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, true, false), all(vec4<bool>(true, false, true, false))), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], -779f, -489f, -305f)), vec4<f32>(global0[_wgslsmith_index_u32(global1.x, 9u)], 620f, 1455f, global0[_wgslsmith_index_u32(41437u, 9u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(801f, 136f, global0[_wgslsmith_index_u32(global1.x, 9u)], -706f), vec4<f32>(-391f, -127f, 500f, global0[_wgslsmith_index_u32(global1.x, 9u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(48636u, 9u)], 1000f, global0[_wgslsmith_index_u32(0u, 9u)], -832f))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-571f, 1899f, global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 9u)]) * global0[_wgslsmith_index_u32(u_input.d, 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_sub_u32(~var_1.a.x, u_input.b & 52223u), (24107u << (var_1.a.x % 32u)) << (var_1.a.x % 32u), 0u, ~(u_input.a << (global1.x % 32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 63543u, global1.x, 0u), vec4<u32>(58014u, 24535u, u_input.b, 0u)), 1u, _wgslsmith_mod_u32(global1.x, var_1.a.x), _wgslsmith_div_u32(u_input.d, var_1.a.x)) >> (vec4<u32>(_wgslsmith_sub_u32(0u, var_1.a.x), ~0u, ~4294967295u, min(1u, 0u)) % vec4<u32>(32u)), true), abs(~3658u), -vec3<i32>(-2147483647i, ~25500i, -1i), countOneBits(~(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, -57476i, -2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))));
}

