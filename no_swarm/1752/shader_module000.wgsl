struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 28>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(global3.a ^ global3.a, ~_wgslsmith_dot_vec3_i32(global3.c.xww, global3.c.yzy) > 30135i, _wgslsmith_div_vec4_i32(global3.c, ~_wgslsmith_div_vec4_i32(vec4<i32>(-39095i, 53636i, global1.x, arg_0), global3.c))));
    var var_1 = countOneBits(global3.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(4294967295u, 28u)])) * -942f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_3.x))))) * vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_2, 28u)] + _wgslsmith_f_op_f32(sign(332f))), arg_3.x, 950f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, arg_3.x, 1219f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(479f, -1897f, global2[_wgslsmith_index_u32(global3.a.x, 28u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 28u)], 1325f, arg_3.x) + vec3<f32>(arg_3.x, 2093f, arg_3.x)))) + vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7067u, 28u)] - global2[_wgslsmith_index_u32(var_0.a.a.x, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -664f)))));
    global0 = array<Struct_4, 26>();
    let var_3 = vec2<i32>(~_wgslsmith_mod_i32(~arg_1, global1.x), ~firstLeadingBit(var_0.a.c.x) | firstTrailingBit(firstLeadingBit(69669i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1020f, global2[_wgslsmith_index_u32(global3.a.x, 28u)])), _wgslsmith_f_op_f32(floor(-1832f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global3.a.x, 28u)])), 603f)))) * 2360f);
}

fn func_2(arg_0: i32) -> u32 {
    global1 = vec3<i32>(u_input.a, 0i, 0i);
    global1 = -vec3<i32>(reverseBits(_wgslsmith_mod_i32(-11234i, ~(-78282i))), 43487i, firstLeadingBit(u_input.a));
    let var_0 = max(~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global3.a, vec2<u32>(global3.a.x, 4294967295u)), ~global3.a)), vec2<u32>(4294967295u, ~5874u));
    global1 = vec3<i32>(~(~global3.c.x), 22276i, global3.c.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.x, -global1.x, ~1u, vec2<f32>(1742f, global2[_wgslsmith_index_u32(4294967295u, 28u)])))))));
    return ~9204u;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = select(1i < (arg_1.a.c.x << (48161u % 32u)), !arg_1.a.b, all(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.a.b, arg_1.a.b, false), vec3<bool>(arg_1.a.b, global3.b, false), vec3<bool>(arg_2.a.b, arg_2.a.b, true)), global3.b)));
    return arg_2;
}

fn func_5(arg_0: Struct_4) -> vec2<u32> {
    global2 = array<f32, 28>();
    global2 = array<f32, 28>();
    return firstTrailingBit(~(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, 18409u), global3.a))));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(func_5(Struct_4(-1027f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(260f, global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], global2[_wgslsmith_index_u32(global3.a.x, 28u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], -1732f, 1823f), vec3<f32>(1498f, 657f, -1573f))))), func_4(func_2(-2147483647i), Struct_3(Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), true, arg_0.c)), Struct_3(Struct_1(vec2<u32>(1u, arg_0.a.x), true, global3.c))), u_input.a, ~firstLeadingBit(global3.c.zwx))), !((_wgslsmith_f_op_f32(trunc(-2894f)) != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4975u, 28u)] + global2[_wgslsmith_index_u32(4294967295u, 28u)])) || true), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.x & u_input.a, arg_0.c.x, -12258i), ~(arg_0.c << (vec4<u32>(arg_0.a.x, 30644u, 4294967295u, 1u) % vec4<u32>(32u)))));
    global0 = array<Struct_4, 26>();
    global2 = array<f32, 28>();
    var var_1 = -(~arg_0.c.wx);
    let var_2 = Struct_3(Struct_1(select(vec2<u32>(~36213u, max(29625u, 4294967295u)), ~(~global3.a), select(vec2<bool>(true, true), !vec2<bool>(global3.b, global3.b), arg_0.b)), global3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(42960i, -7034i, -8335i, global1.x), vec4<i32>(var_0.c.x, global3.c.x, var_1.x, var_1.x)), global3.c.x), _wgslsmith_add_vec4_i32(-var_0.c, -vec4<i32>(27835i, -2147483647i, -15783i, global3.c.x)))));
    return vec4<i32>(~2147483647i, var_2.a.c.x, var_1.x & func_4(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.a.x, 4294967295u, arg_0.a.x), vec3<u32>(1u, var_2.a.a.x, var_0.a.x)), func_4(~var_2.a.a.x, Struct_3(arg_0), Struct_3(Struct_1(vec2<u32>(var_0.a.x, var_2.a.a.x), true, arg_0.c))), Struct_3(var_2.a)).a.c.x, i32(-1i) * -arg_0.c.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<i32> {
    global3 = func_4(reverseBits(~(~func_4(0u, Struct_3(Struct_1(global3.a, true, vec4<i32>(global1.x, 2147483647i, arg_0.c.x, u_input.a))), Struct_3(Struct_1(global3.a, false, vec4<i32>(u_input.a, -16210i, -7708i, global1.x)))).a.a.x)), Struct_3(arg_0), func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 4294967295u, arg_0.a.x, 1u), ~vec4<u32>(36829u, arg_0.a.x, 4294967295u, global3.a.x)), func_4(5561u, func_4(firstTrailingBit(global3.a.x), func_4(global3.a.x, Struct_3(arg_0), Struct_3(Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x), global3.b, arg_0.c))), Struct_3(arg_0)), Struct_3(arg_0)), Struct_3(func_4(arg_0.a.x | arg_0.a.x, func_4(60403u, Struct_3(arg_0), Struct_3(arg_0)), func_4(arg_0.a.x, Struct_3(Struct_1(global3.a, arg_0.b, vec4<i32>(2147483647i, 1i, global3.c.x, global3.c.x))), Struct_3(arg_0))).a))).a;
    let var_0 = _wgslsmith_clamp_i32(-39150i, ~(~(~1i)), -_wgslsmith_mult_i32(u_input.a, global1.x));
    var var_1 = Struct_1(global3.a, !(!(!global3.b) && true), arg_0.c);
    let var_2 = vec2<f32>(global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~(~var_1.a.x), 1u)), 28u)], global2[_wgslsmith_index_u32(var_1.a.x << (arg_0.a.x % 32u), 28u)]);
    let var_3 = vec2<u32>(var_1.a.x, ~max(0u, _wgslsmith_add_u32(var_1.a.x, 0u) | firstLeadingBit(global3.a.x)));
    return vec4<i32>(~_wgslsmith_dot_vec4_i32(-func_4(var_3.x, Struct_3(arg_0), Struct_3(Struct_1(var_3, false, arg_0.c))).a.c, global3.c), var_0, _wgslsmith_add_i32(var_0, 1i), 0i >> (var_1.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3.a, false, _wgslsmith_div_vec4_i32(func_6(Struct_1(max(vec2<u32>(global3.a.x, 0u), vec2<u32>(global3.a.x, 1u)), global3.b, func_1(Struct_1(global3.a, global3.b, global3.c))), !vec4<bool>(global3.b, global3.b, global3.b, global3.b)), -(max(vec4<i32>(global3.c.x, 1i, -2147483647i, global3.c.x), global3.c) ^ vec4<i32>(-1i, global1.x, 1i, -4160i))));
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34274u, global3.a.x, 2713u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(77402u, 4294967295u, var_0.a.x), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(7898u, global3.a.x, 4294967295u), ~global3.a.x, 39487u)), var_0.a.x, abs(_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, 103604u))), 4294967295u);
    var var_2 = firstLeadingBit(~(~(~0u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(314f)));
    var_2 = ~_wgslsmith_div_u32(70080u, var_0.a.x) ^ ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(527f, global2[_wgslsmith_index_u32(global3.a.x, 28u)]) * vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(global3.a.x, 28u)])) + _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, global2[_wgslsmith_index_u32(var_1.x, 28u)]) + vec2<f32>(global2[_wgslsmith_index_u32(31550u, 28u)], global2[_wgslsmith_index_u32(41572u, 28u)]))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(621f, 1576f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1618f, 1563f)))))), var_0.c.yw, _wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, var_0.a.x), vec3<u32>(var_1.x, 1u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(41888u, global3.a.x, 77536u), vec3<u32>(0u, 0u, 1u)))));
}

