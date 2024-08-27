struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 508u, 7319u), vec3<u32>(4294967295u, 1u, 3004u), vec3<u32>(12783u, 76158u, 51822u));

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global4: Struct_4 = Struct_4(Struct_2(Struct_1(-40437i, 1i), vec4<u32>(27376u, 0u, 26699u, 14913u), Struct_1(62621i, -12040i), Struct_1(0i, i32(-2147483648))), true, 0u, vec3<bool>(true, false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_5(~vec2<i32>(arg_0.a.c.b, -arg_2.x));
    var var_1 = Struct_3(vec2<u32>(21181u, arg_1.a.x) & _wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(arg_1.a.x, 23321u)), arg_0.a.b.zy, ~reverseBits(vec2<u32>(4294967295u, 2766u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.xz + _wgslsmith_f_op_vec2_f32(-global0.xz)), _wgslsmith_f_op_vec2_f32(-global0.yz), arg_0.d.x))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), 386f);
    let var_3 = -vec4<i32>(-firstLeadingBit(-8183i), ~u_input.a >> (global4.a.b.x % 32u), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(1i, arg_0.a.a.a)), -(2147483647i & arg_2.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.c.x, ~29949i), _wgslsmith_add_i32(global4.a.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -1372i, -2147483647i), vec4<i32>(arg_0.a.d.a, var_0.a.x, 0i, -13243i)))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(global4.a.b.ww);
    let var_1 = !select(!vec4<bool>(true, false, global4.d.x, false), vec4<bool>(func_3(Struct_4(global4.a, false, arg_2, vec3<bool>(global4.b, false, false)), var_0, -u_input.c), arg_3.x, true | any(vec3<bool>(arg_3.x, false, global4.d.x)), any(select(vec4<bool>(arg_3.x, arg_3.x, false, global4.b), vec4<bool>(global4.d.x, arg_3.x, arg_3.x, false), arg_3.x))), !vec4<bool>(arg_3.x, !global4.b, true, global4.d.x | global4.d.x));
    let var_2 = ~min(var_0.a.x & 27480u, global4.a.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(2349f - -181f)), _wgslsmith_f_op_vec3_f32(-global0.xwx))))));
    global3 = array<vec2<bool>, 21>();
    return Struct_3(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 93705u) ^ vec2<u32>(var_2, var_2), select(vec2<u32>(arg_2, 51307u), vec2<u32>(var_2, 18626u), true)));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = global4.a.a.b;
    global2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~abs(vec2<u32>(arg_0.a.x, 4294967295u)), ~(vec2<u32>(global4.c, 1u) ^ vec2<u32>(16244u, 4294967295u))), arg_0.a);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1084f - -344f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2014f, 1000f)), 418f), 896f, 260f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - 1053f), _wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(global0.x - global0.x), 600f)) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1803f)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(global0.x))))));
    return _wgslsmith_mult_u32(32566u, _wgslsmith_mod_u32(abs(abs(arg_0.a.x)), global4.c) | _wgslsmith_mult_u32(global4.a.b.x, ~(arg_0.a.x ^ global4.c)));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_4 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, select(1u, global4.c, false)), ~((0u >> (arg_0 % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 14026u, arg_0, 0u), global4.a.b))) & (_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~arg_0, global4.a.b.x, ~124960u)) ^ ~arg_0);
    var var_1 = Struct_4(Struct_2(Struct_1(abs(1i & u_input.a), firstLeadingBit(i32(-1i) * -38192i)), vec4<u32>(~func_2(global4.a.a, 20963u, 4294967295u, vec2<bool>(false, global4.d.x)).a.x, global4.a.b.x, ~10680u | func_2(Struct_1(-2147483647i, 2147483647i), global4.c, 19443u, global4.d.yy).a.x, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(arg_0, 4u)] | global1[_wgslsmith_index_u32(var_0, 4u)], max(global4.a.b.xxy, global1[_wgslsmith_index_u32(0u, 4u)]))), global4.a.d, Struct_1(9798i, ~firstLeadingBit(4099i))), global0.x > -1403f, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, global4.a.b.x, var_0), vec3<u32>(arg_0, arg_0, var_0)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, global4.a.b.x, 43129u), vec3<u32>(17181u, var_0, var_0)), global4.a.b.wxz), select(reverseBits(global1[_wgslsmith_index_u32(arg_0, 4u)]), select(vec3<u32>(44017u, arg_0, 62376u) | vec3<u32>(arg_0, arg_0, global4.a.b.x), global1[_wgslsmith_index_u32(global4.a.b.x, 4u)], arg_2), select(global4.d, !vec3<bool>(false, arg_3, global4.d.x), true))), !select(vec3<bool>(arg_2, false != arg_3, func_3(Struct_4(Struct_2(global4.a.d, vec4<u32>(4294967295u, arg_0, var_0, global4.c), global4.a.d, global4.a.d), arg_2, var_0, vec3<bool>(true, false, false)), Struct_3(global4.a.b.xy), u_input.c)), global4.d, true));
    let var_2 = global4.d.x;
    var var_3 = Struct_5(~reverseBits(max(_wgslsmith_mult_vec2_i32(u_input.c.xx, u_input.b), vec2<i32>(-1i, 3135i) | vec2<i32>(var_1.a.c.b, 0i))));
    var var_4 = var_1.d.x;
    return Struct_4(global4.a, arg_3, _wgslsmith_clamp_u32(max(~(~13341u), 0u), _wgslsmith_add_u32(arg_0, 4294967295u | var_1.a.b.x) >> (var_0 % 32u), max(_wgslsmith_mod_u32(max(global4.c, var_0), ~var_1.a.b.x), 1u & (4294967295u & arg_0))), !vec3<bool>(!(1u > var_0), any(var_1.d) && (var_3.a.x >= -18320i), arg_2 | (var_1.c >= 49632u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global3 = array<vec2<bool>, 21>();
    global4 = func_5(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(~37255u, 1u, global4.a.b.x), ~func_4(func_2(Struct_1(global4.a.a.a, -42134i), 99622u, 10324u, vec2<bool>(global4.b, global4.d.x)))), _wgslsmith_f_op_f32(round(637f)), all(global4.d), true || all(!select(vec3<bool>(false, global4.d.x, global4.d.x), vec3<bool>(global4.d.x, false, global4.d.x), global4.b)));
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(20592u, 37853u), 31169u), abs(~vec2<u32>(_wgslsmith_add_u32(4294967295u, global4.c), _wgslsmith_sub_u32(18052u, 1u))));
    global3 = array<vec2<bool>, 21>();
    var var_0 = Struct_4(global4.a, !(!func_5(0u, global0.x, global4.d.x, true).d.x), 171099u, global4.d);
    return Struct_2(Struct_1(u_input.b.x, _wgslsmith_add_i32(var_0.a.d.a & (u_input.c.x >> (0u % 32u)), _wgslsmith_add_i32(-2147483647i << (var_0.a.b.x % 32u), 27630i))), global4.a.b, Struct_1(min(74261i, -1i & _wgslsmith_clamp_i32(u_input.b.x, -1i, var_0.a.a.a)), max(-2147483647i ^ global4.a.a.a, -var_0.a.a.b)), func_5(_wgslsmith_div_u32(~countOneBits(59486u), ~global4.a.b.x), 983f, all(select(vec3<bool>(var_0.d.x, global4.d.x, var_0.d.x), vec3<bool>(global4.d.x, var_0.d.x, false), global4.d)) || true, !(!func_5(109039u, arg_0, true, var_0.d.x).d.x)).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 4294967295u;
    let var_0 = Struct_4(func_1(-2635f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 229f, global0.x))), global0.xzy, true))), func_3(func_5(abs(~4294967295u), global0.x, true, all(vec4<bool>(false, global4.d.x, true, global4.d.x))), func_2(global4.a.c, 3448u & (global4.a.b.x << (global4.a.b.x % 32u)), global4.c, !global3[_wgslsmith_index_u32(global4.c, 21u)]), min(countOneBits(u_input.c), u_input.c << (~global4.a.b.ywy % vec3<u32>(32u)))), global4.a.b.x, select(global4.d, !(!global4.d), func_3(func_5(55457u, _wgslsmith_f_op_f32(ceil(727f)), global4.d.x | true, global4.d.x), Struct_3(select(vec2<u32>(42557u, global4.c), global4.a.b.xw, global4.d.xx)), -u_input.c)));
    let var_1 = func_3(Struct_4(Struct_2(func_1(-1262f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, -316f) * vec3<f32>(global0.x, global0.x, global0.x))).d, _wgslsmith_add_vec4_u32(vec4<u32>(global4.c, 1u, 1452u, 78702u), func_5(global4.c, global0.x, global4.b, true).a.b), global4.a.a, Struct_1(reverseBits(u_input.c.x), -3441i)), global4.d.x, 8498u, !vec3<bool>(global4.b, select(false, var_0.d.x, true), true)), Struct_3(firstTrailingBit(global4.a.b.yx)), ~(firstTrailingBit(u_input.c) >> (~(~vec3<u32>(4294967295u, 24325u, 26351u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.c.x, global4.a.a.a, 24510i, global4.a.a.b)) | _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.a.b, 2147483647i, var_0.a.d.b, global4.a.d.a), vec4<i32>(var_0.a.a.a, 1i, global4.a.c.b, -1i))), -vec4<i32>(var_0.a.c.b, u_input.c.x, -var_0.a.c.b, global4.a.a.a)), -1i);
    let var_3 = var_0.a.c;
    var var_4 = Struct_5(_wgslsmith_mod_vec2_i32(vec2<i32>(max(-var_2, var_2), -13740i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-5049i, 45399i, 8661i, 35549i) >> (vec4<u32>(var_0.c, 1u, global4.c, global4.a.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -5015i) & vec4<i32>(var_0.a.d.b, global4.a.c.b, var_0.a.a.a, var_3.a)), func_5(8810u, _wgslsmith_f_op_f32(-global0.x), global4.b, false).a.a.b)));
    let var_5 = func_5(global4.c ^ func_2(func_5(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -547f), func_3(Struct_4(global4.a, var_0.d.x, var_0.c, vec3<bool>(var_1, true, false)), Struct_3(vec2<u32>(var_0.a.b.x, 12159u)), vec3<i32>(var_3.b, -1i, -1i)), true).a.d, var_0.c, ~_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(1u, global4.c, 61673u, 14529u)), !select(vec2<bool>(global4.b, global4.d.x), var_0.d.zx, false)).a.x, -679f, ((reverseBits(var_0.a.b.x) << (firstLeadingBit(var_0.c) % 32u)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.x, 38645u, 0u), vec3<u32>(global4.c, global4.a.b.x, 4294967295u)), var_0.a.b.x & var_0.c) % 32u)) < 1u, func_3(func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, var_0.c), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4875u, global4.a.b.x, 4294967295u), vec4<u32>(global4.c, var_0.a.b.x, 64540u, global4.a.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -954f))), all(!global3[_wgslsmith_index_u32(1u, 21u)]), -2147483647i <= var_3.a), Struct_3(firstLeadingBit(~global4.a.b.zz)), u_input.c >> ((~global1[_wgslsmith_index_u32(0u, 4u)] & countOneBits(global4.a.b.wxx)) % vec3<u32>(32u))));
    var var_6 = Struct_5(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_4.a, vec2<i32>(2147483647i, -34101i)), -select(vec2<i32>(-1i, var_3.b), vec2<i32>(var_3.a, var_3.b), vec2<bool>(var_0.b, true)) ^ -_wgslsmith_sub_vec2_i32(u_input.c.zz, var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1314f, _wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x - 1657f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1623f, 556f, global0.x, 423f)) - vec4<f32>(-1000f, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.xy))))), global4.a.b.yy, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-var_0.a.d.a, _wgslsmith_add_i32(-2147483647i, 2147483647i), ~(-17149i), _wgslsmith_div_i32(var_5.a.d.a, 27225i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.d.b, -18638i, var_6.a.x, -27388i), vec4<i32>(2147483647i, -1i, -14937i, var_3.a), vec4<i32>(18000i, var_4.a.x, 2867i, global4.a.a.b)) ^ select(vec4<i32>(var_4.a.x, var_5.a.c.b, -2147483647i, var_5.a.d.b), vec4<i32>(var_4.a.x, var_0.a.a.a, global4.a.c.a, global4.a.d.b), var_1), _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_5.a.c.a, var_0.a.d.b, 0i, 12689i), vec4<i32>(1i, var_3.b, -23402i, 0i), vec4<bool>(true, true, var_0.d.x, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.a.b, var_3.b, var_6.a.x, 2147483647i), vec4<i32>(533i, var_0.a.d.b, -2147483647i, var_4.a.x)))), -vec4<i32>(_wgslsmith_div_i32(var_5.a.d.b, var_2), var_3.a >> (4294967295u % 32u), countOneBits(var_6.a.x), u_input.b.x)));
}

