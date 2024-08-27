struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: Struct_1;

var<private> global1: array<i32, 8> = array<i32, 8>(1i, 77030i, 2147483647i, 2147483647i, -1i, i32(-2147483648), 51995i, 1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    global1 = array<i32, 8>();
    var var_0 = Struct_2(Struct_1(arg_0.a.a, -118f, -vec2<i32>(-15880i ^ arg_0.b, global0.c.x), firstLeadingBit(select(~15272u, _wgslsmith_mod_u32(1u, 27734u), arg_0.a.a.x))), -(~global0.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.e.wy))), 19692i, arg_0.e);
    global0 = var_0.a;
    let var_1 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(min(global0.b, global0.b)), arg_0.a.c ^ _wgslsmith_mod_vec2_i32(global0.c, -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.c.x, global1[_wgslsmith_index_u32(var_0.a.d, 8u)]), vec2<i32>(var_0.a.c.x, arg_0.b))), arg_0.a.d);
    global0 = Struct_1(global0.a, global0.b, firstLeadingBit(reverseBits(-global0.c) | _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 33501i), var_1.c ^ var_0.a.c)), (4294967295u ^ ~_wgslsmith_mult_u32(u_input.a, 24258u)) >> (_wgslsmith_clamp_u32(global0.d, u_input.c, (global0.d & 1u) ^ ~0u) % 32u));
    return _wgslsmith_sub_i32(0i | (-10466i << (~abs(var_0.a.d) % 32u)), var_1.c.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global1 = array<i32, 8>();
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(arg_2.a.d, _wgslsmith_dot_vec2_u32(u_input.d.yy, u_input.d.yz)), 24569u);
    var var_1 = true;
    global0 = Struct_1(!select(arg_1.a, !vec3<bool>(global0.a.x, arg_2.a.a.x, global0.a.x), false), -273f, ~vec2<i32>(-2147483647i >> (arg_2.a.d % 32u), ~func_3(arg_2, false)), ~max(~_wgslsmith_add_u32(1u, arg_0), 52781u));
    let var_2 = 1251f;
    return Struct_1(select(arg_1.a, select(arg_1.a, select(!arg_2.a.a, !global0.a, global0.a), arg_1.a.x), !(-806f <= _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))))), global0.c, max(0u, 9544u));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = func_2(global0.d, arg_0.a, Struct_2(Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.e.x)))), func_2(firstTrailingBit(0u), arg_0.a, Struct_2(Struct_1(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.e.x, vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a.d, 8u)], global1[_wgslsmith_index_u32(46179u, 8u)]), arg_0.a.d), 2147483647i, vec2<f32>(arg_0.c.x, arg_0.e.x), 23145i, arg_0.e)).c, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(0u, arg_0.a.d), 0u)), global0.c.x, vec2<f32>(1706f, 1698f), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e))));
    var var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1078f + arg_0.a.b))) + 542f), -arg_0.a.c & ~max(arg_0.a.c, max(vec2<i32>(global1[_wgslsmith_index_u32(0u, 8u)], global0.c.x), vec2<i32>(global0.c.x, 1i))), arg_0.a.d);
    global0 = func_2(arg_0.a.d, Struct_1(func_2(func_2(u_input.d.x ^ global0.d, Struct_1(vec3<bool>(var_0.a.x, true, global0.a.x), global0.b, vec2<i32>(-25365i, -2147483647i), u_input.d.x), arg_0).d, Struct_1(global0.a, arg_0.e.x, ~arg_0.a.c, 46232u), Struct_2(arg_0.a, _wgslsmith_div_i32(0i, var_0.c.x), _wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.e.yz), select(var_0.c.x, 6232i, true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, arg_0.e.x, global0.b, global0.b))))).a, 787f, -global0.c, 4294967295u), arg_0);
    global1 = array<i32, 8>();
    global0 = func_2(~_wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_0.a.d, u_input.b), ~4294967295u >> (_wgslsmith_div_u32(0u, arg_0.a.d) % 32u)), arg_0.a, arg_0);
    return arg_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(-1174f));
    var var_1 = Struct_2(func_4(Struct_2(func_2(global0.d, Struct_1(global0.a, var_0, vec2<i32>(global0.c.x, global1[_wgslsmith_index_u32(2839u, 8u)]), global0.d), Struct_2(Struct_1(vec3<bool>(true, false, global0.a.x), var_0, vec2<i32>(-33920i, 123i), global0.d), global1[_wgslsmith_index_u32(4294967295u, 8u)], vec2<f32>(165f, -1000f), 2789i, vec4<f32>(802f, 2055f, var_0, global0.b))), _wgslsmith_div_i32(~50631i, _wgslsmith_clamp_i32(global0.c.x, -12175i, 33173i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2787f, -1009f))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0.d, 8u)], global1[_wgslsmith_index_u32(45583u, 8u)]), global0.c), firstTrailingBit(vec2<i32>(global0.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -570f, 922f, 1190f)))))), 20569i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.b))))), global1[_wgslsmith_index_u32(34607u, 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.d.yz), func_4(Struct_2(Struct_1(global0.a, 1411f, vec2<i32>(global1[_wgslsmith_index_u32(17764u, 8u)], -17699i), u_input.b), global1[_wgslsmith_index_u32(global0.d, 8u)], vec2<f32>(1460f, -557f), global0.c.x, vec4<f32>(-697f, 1286f, global0.b, global0.b))), Struct_2(Struct_1(vec3<bool>(true, false, true), var_0, vec2<i32>(global0.c.x, 2147483647i), 23034u), global0.c.x, vec2<f32>(122f, 1006f), 0i, vec4<f32>(452f, -1441f, -1105f, 872f))).b, -1000f, _wgslsmith_f_op_f32(662f + global0.b), _wgslsmith_f_op_f32(-252f + _wgslsmith_f_op_f32(f32(-1f) * -2064f)))));
    let var_2 = select(vec2<i32>(min(reverseBits(_wgslsmith_add_i32(-1i, 1i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-8016i, -2147483647i, -29621i), vec3<i32>(2147483647i, global0.c.x, global0.c.x)))), _wgslsmith_mult_i32(~global0.c.x, 33473i) & var_1.a.c.x), firstLeadingBit(var_1.a.c) >> (u_input.d.xy % vec2<u32>(32u)), vec2<bool>(~(~u_input.c) < _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.a.d, 1u), firstTrailingBit(18882u), global0.d), !var_1.a.a.x));
    let var_3 = select(!vec3<bool>(var_1.e.x == _wgslsmith_f_op_f32(trunc(-2219f)), func_4(Struct_2(var_1.a, -202i, var_1.e.xy, var_2.x, var_1.e)).a.x, true), select(vec3<bool>(func_4(Struct_2(var_1.a, -20848i, vec2<f32>(-2114f, -561f), global1[_wgslsmith_index_u32(var_1.a.d, 8u)], var_1.e)).a.x, var_1.a.a.x, true), var_1.a.a, var_1.a.a), ~var_1.d == -21121i);
    global0 = var_1.a;
    return Struct_2(func_2(reverseBits(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(10485u, 0u, 61488u))), Struct_1(vec3<bool>(var_1.a.a.x, var_3.x == false, !var_3.x), _wgslsmith_f_op_f32(func_2(3023u, var_1.a, Struct_2(var_1.a, -1i, vec2<f32>(-134f, var_1.a.b), -4893i, vec4<f32>(var_0, -433f, -1739f, global0.b))).b * _wgslsmith_f_op_f32(-var_0)), -var_1.a.c, global0.d), Struct_2(func_2(12603u, var_1.a, Struct_2(var_1.a, 0i, vec2<f32>(var_0, 168f), 15697i, var_1.e)), _wgslsmith_sub_i32(-2147483647i, global0.c.x << (u_input.c % 32u)), var_1.c, _wgslsmith_dot_vec2_i32(global0.c >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(4637u, 8u)])), var_1.e)), max(abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.x, -18177i), var_1.d)), 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - var_0)), -444f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1449f), -522f))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -19686i, i32(-1i) * -64337i, ~global1[_wgslsmith_index_u32(u_input.a, 8u)]) ^ ~vec3<i32>(15698i, global1[_wgslsmith_index_u32(1u, 8u)], 18054i), -select(_wgslsmith_mult_vec3_i32(vec3<i32>(-28247i, -2147483647i, 1i), vec3<i32>(var_1.b, 2147483647i, global1[_wgslsmith_index_u32(48512u, 8u)])), vec3<i32>(-39929i, var_2.x, global0.c.x), !vec3<bool>(true, global0.a.x, true))), var_1.e);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-func_2(~arg_0, arg_1.a, func_1()).b), _wgslsmith_div_f32(global0.b, func_4(func_1()).b), -1525f, _wgslsmith_div_f32(-739f, 1390f)));
    let var_1 = all(func_1().a.a.yx) & any(vec3<bool>(arg_2.x, true, _wgslsmith_div_i32(arg_1.a.c.x, global0.c.x) != arg_1.a.c.x));
    var var_2 = max(reverseBits(abs(vec3<i32>(1i, -2147483647i, arg_1.a.c.x) & ~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global0.c.x, global1[_wgslsmith_index_u32(global0.d, 8u)]))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(19673i, global0.c.x), global0.c.x, _wgslsmith_mod_i32(-2147483647i, 10216i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.x, -1i, arg_1.a.c.x), vec3<i32>(arg_1.b, global0.c.x, 18916i))), vec3<i32>(global1[_wgslsmith_index_u32(func_2(~58016u, Struct_1(arg_1.a.a, -256f, arg_1.a.c, arg_0), Struct_2(arg_1.a, 0i, arg_1.c, 1i, arg_1.e)).d, 8u)], 30417i, i32(-1i) * -2147483647i), -((vec3<i32>(arg_1.b, global1[_wgslsmith_index_u32(arg_1.a.d, 8u)], 0i) | vec3<i32>(58801i, global0.c.x, 0i)) & (vec3<i32>(-79754i, 22975i, global1[_wgslsmith_index_u32(arg_1.a.d, 8u)]) & vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 8u)], global0.c.x)))));
    let var_3 = arg_1;
    var var_4 = 4294967295u;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(func_1().e.zw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b)))) * arg_1.c));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = false && arg_2.a.a.x;
    let var_1 = firstLeadingBit(_wgslsmith_div_vec2_i32(arg_1.c, vec2<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.d, 8u)]), 1i)) | arg_2.a.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2.e.wzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.e.xyy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(128f, 227f, global0.b), arg_2.e.xzw, false)) - vec3<f32>(func_2(0u, arg_2.a, Struct_2(arg_2.a, -2147483647i, arg_2.e.xz, 2147483647i, vec4<f32>(-654f, -202f, arg_1.b, 482f))).b, -1041f, _wgslsmith_f_op_f32(f32(-1f) * -1258f))))));
    let var_3 = arg_1;
    let var_4 = vec2<f32>(var_3.b, _wgslsmith_f_op_vec2_f32(func_5(0u, func_1(), select(select(vec4<bool>(false, false, true, arg_1.a.x), vec4<bool>(false, arg_2.a.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(arg_2.a.a.x, false, false, var_0)), select(!vec4<bool>(arg_1.a.x, false, true, true), vec4<bool>(true, arg_2.a.a.x, var_0, arg_2.a.a.x), var_3.a.x), select(vec4<bool>(true, var_3.a.x, global0.a.x, arg_2.a.a.x), vec4<bool>(var_3.a.x, true, var_0, true), arg_2.c.x >= arg_1.b)))).x);
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -96775i, 0i, global0.c.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global0.c.x, 23548i, -2147483647i) & vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 8u)], 1i, -1i)), 14905i), 36398i);
    let var_1 = reverseBits(~vec4<u32>(4808u, global0.d, u_input.a, 65169u));
    global0 = func_6(4294967295u, Struct_1(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f * global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f))), min(abs(global0.c), select(global0.c, vec2<i32>(global0.c.x, -1i), vec2<bool>(true, global0.a.x)) | global0.c), 4294967295u), Struct_2(Struct_1(!(!global0.a), global0.b, vec2<i32>(global0.c.x, firstTrailingBit(global1[_wgslsmith_index_u32(3734u, 8u)])), ~_wgslsmith_add_u32(44112u, 40814u)), -global0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(var_1.x, func_1(), select(vec4<bool>(false, global0.a.x, true, false), vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(true, true, false, global0.a.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b, 1662f))), func_1().e.yz))), -select(-2147483647i, ~41918i, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b, global0.b, -115f, global0.b))))));
    var var_2 = Struct_1(select(!func_4(func_1()).a, vec3<bool>(!global0.a.x, true, -global1[_wgslsmith_index_u32(1u, 8u)] < _wgslsmith_add_i32(global0.c.x, 2147483647i)), false), 485f, vec2<i32>(0i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, global0.c.x, 1i), vec4<i32>(-1i, global0.c.x, -2147483647i, var_0)), global0.c.x)), 43959u);
    let var_3 = !(!global0.a);
    var_2 = func_2(_wgslsmith_dot_vec4_u32(var_1, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.x, global0.d, 0u), ~vec4<u32>(61646u, u_input.d.x, 96254u, 4767u)), max(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.d, 1u, 18670u, 4294967295u), vec4<u32>(14023u, 45127u, 1u, 0u)), max(var_1, var_1)))), func_4(Struct_2(func_2(~13078u, func_2(0u, Struct_1(vec3<bool>(var_3.x, var_2.a.x, global0.a.x), global0.b, var_2.c, 75922u), Struct_2(Struct_1(var_3, var_2.b, vec2<i32>(global1[_wgslsmith_index_u32(47677u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.b), 0i, vec2<f32>(var_2.b, global0.b), global0.c.x, vec4<f32>(684f, 184f, global0.b, 1102f))), func_1()), global0.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -171f))), _wgslsmith_div_i32(_wgslsmith_div_i32(var_0, 1i), global0.c.x), vec4<f32>(_wgslsmith_div_f32(-1000f, global0.b), global0.b, _wgslsmith_f_op_f32(-1082f * -1058f), 989f))), Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(global0.a.x, false, var_3.x), -1011f, vec2<i32>(global1[_wgslsmith_index_u32(64600u, 8u)], global1[_wgslsmith_index_u32(var_2.d, 8u)]), 38260u), 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)), countOneBits(-4713i), _wgslsmith_f_op_vec4_f32(vec4<f32>(681f, var_2.b, 1105f, -437f) * vec4<f32>(-1000f, var_2.b, 660f, -126f)))), func_6(min(_wgslsmith_clamp_u32(15351u, global0.d, u_input.a), _wgslsmith_sub_u32(var_2.d, var_1.x)), Struct_1(var_2.a, _wgslsmith_f_op_f32(-global0.b), vec2<i32>(-26048i, var_0), 0u << (global0.d % 32u)), Struct_2(Struct_1(var_2.a, var_2.b, var_2.c, u_input.b), -25569i, vec2<f32>(global0.b, 837f), var_2.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(2201f, -665f, var_2.b, global0.b)))).c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b, 684f))) * vec2<f32>(-160f, var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(var_2.b * -789f))), reverseBits(min(var_2.c.x, -var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, global0.b, var_2.b) + vec4<f32>(var_2.b, global0.b, -1584f, var_2.b)), vec4<f32>(var_2.b, 124f, var_2.b, var_2.b)))));
    global1 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_3(Struct_2(Struct_1(vec3<bool>(true, false, false), global0.b, vec2<i32>(global0.c.x, var_2.c.x), var_1.x), min(495i, global1[_wgslsmith_index_u32(global0.d, 8u)]), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b, var_2.b))), var_2.c.x, vec4<f32>(global0.b, -1095f, global0.b, 486f)), true)));
}

