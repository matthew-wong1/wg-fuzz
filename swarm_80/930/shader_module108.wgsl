struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 32055u);

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, true, true, false, false, true, false, false, true, false, true, false, false, true, true, true, false, true, false, false, true, true, true, true, false, false, false, false, true);

var<private> global2: vec3<u32>;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>) -> u32 {
    global1 = array<bool, 30>();
    var var_0 = Struct_1(-1000f, 807f, global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -185f), global3.x, ~(~(min(global2.x, 1u) | global2.x)));
    var var_2 = vec2<i32>(2147483647i, -_wgslsmith_div_i32(12473i, _wgslsmith_mult_i32(firstLeadingBit(arg_2.x), ~1i)));
    let var_3 = _wgslsmith_mult_u32(~abs(global2.x), global2.x >> (min(~(global2.x ^ global2.x), ~abs(41026u)) % 32u));
    return firstLeadingBit(4294967295u);
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(floor(global3.x)));
    var var_1 = _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(~func_3(true, vec3<bool>(false, true, false), vec4<i32>(u_input.a, 0i, 35369i, u_input.a)), 4294967295u, 1u, global0.x)), vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.x) ^ global2.zx, vec2<u32>(global0.x, global0.x))), 4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 56599u, global2.x, global0.x), vec4<u32>(global0.x, global2.x, global0.x, 19325u)), global0.x, global0.x));
    var var_2 = global3.x;
    var var_3 = all(vec4<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 30u)], false), global1[_wgslsmith_index_u32(63170u, 30u)])), true || !global1[_wgslsmith_index_u32(firstLeadingBit(global2.x), 30u)], false, true));
    global2 = vec3<u32>(~abs(4118u >> (var_1.x % 32u)), 4294967295u, global0.x) >> (~_wgslsmith_sub_vec3_u32(select(~vec3<u32>(49266u, var_1.x, var_1.x), var_1.xww, global1[_wgslsmith_index_u32(~var_1.x, 30u)]), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, global2.x, 8462u), abs(var_1.xwz), vec3<u32>(10162u, 7807u, global0.x))) % vec3<u32>(32u));
    return _wgslsmith_add_vec3_i32(~reverseBits(vec3<i32>(22059i, u_input.a, u_input.a)), ~max(vec3<i32>(0i, -2147483647i, u_input.a), -vec3<i32>(u_input.a, 41349i, u_input.a))) << (vec3<u32>(global2.x, 1u, abs(4294967295u)) % vec3<u32>(32u));
}

fn func_1() -> u32 {
    global1 = array<bool, 30>();
    let var_0 = func_2();
    let var_1 = select(select(select(select(vec4<bool>(false, false, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(32664u, 30u)], false, true), true), !(!vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(25473u, 30u)], global1[_wgslsmith_index_u32(56716u, 30u)], false)), true), vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(27254u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])), any(!vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)])), false, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2.x, 4294967295u), 30u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(firstLeadingBit(53465u), 30u)], true, global1[_wgslsmith_index_u32(1u, 30u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(2355u, 30u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(97335u, 30u)], global1[_wgslsmith_index_u32(53702u, 30u)], true)), select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)], true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 30u)], false, global1[_wgslsmith_index_u32(global0.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global0.x, 30u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(83989u, 30u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, global0.x), 30u)]))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.x, 4294967295u), 30u)], global1[_wgslsmith_index_u32(4294967295u >> (global2.x % 32u), 30u)], global1[_wgslsmith_index_u32(firstLeadingBit(27680u), 30u)], all(vec3<bool>(global1[_wgslsmith_index_u32(14299u, 30u)], global1[_wgslsmith_index_u32(86056u, 30u)], false))), vec4<bool>(false, !global1[_wgslsmith_index_u32(global0.x, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)], false | global1[_wgslsmith_index_u32(4294967295u, 30u)]), global0.x == global0.x), vec4<bool>(any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(94598u, 30u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(51891u, 30u)], true), vec3<bool>(false, true, false))), -1000f == global3.x, global1[_wgslsmith_index_u32(1u, 30u)], (global1[_wgslsmith_index_u32(global0.x, 30u)] | false) | all(vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], true, false, false))), ~0i < min(_wgslsmith_mod_i32(var_0.x, 2147483647i), _wgslsmith_mod_i32(3052i, 28128i))), !any(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 0u), 30u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(34781u, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)])), true, !global1[_wgslsmith_index_u32(21729u, 30u)])));
    let var_2 = vec4<u32>(global2.x, 6588u, max(global2.x, ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(19193u, global0.x, 0u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u)))), global0.x);
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(select(global3.x, global3.x, true)), _wgslsmith_f_op_f32(-global3.x), -1218f);
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(var_2), _wgslsmith_clamp_vec4_u32(var_2, max(vec4<u32>(49358u, 9805u, 35104u, 54757u), var_2), ~vec4<u32>(1u, 1u, 1u, 4294967295u))), ~(~55732u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> vec2<u32> {
    global1 = array<bool, 30>();
    global3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1210f, global3.x, -340f, global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(global3.x - -1271f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(floor(global3.x)))))));
    var var_0 = ~(~min(vec4<u32>(51066u, global0.x, global0.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, global2.x, 24036u, arg_1), vec4<u32>(global0.x, global0.x, 11656u, 59551u))) >> (reverseBits(vec4<u32>(~0u, 4294967295u << (global2.x % 32u), _wgslsmith_clamp_u32(arg_1, 77751u, 76716u), 89890u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~abs(4294967295u), 0u, ~(~605u), _wgslsmith_add_u32(func_1(), 47074u)), ~_wgslsmith_mult_vec4_u32(countOneBits(max(vec4<u32>(12590u, arg_1, 1u, global2.x), vec4<u32>(1u, global0.x, var_0.x, 22203u))), vec4<u32>(var_0.x, ~arg_1, global0.x & global2.x, _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(global0.x, global0.x)))));
    let var_1 = any(!vec4<bool>(!global1[_wgslsmith_index_u32(var_0.x | 7138u, 30u)], true, !(-1191f >= global3.x), global1[_wgslsmith_index_u32(0u << (arg_1 % 32u), 30u)]));
    return select(global2.xx << (vec2<u32>(63514u, 0u) % vec2<u32>(32u)), global2.zy ^ vec2<u32>(18416u, 3452u), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, var_1), false), !select(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], var_1), vec2<bool>(false, false), global1[_wgslsmith_index_u32(0u, 30u)]), vec2<bool>(true, true)), vec2<bool>(true, var_1), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true), vec2<bool>(global1[_wgslsmith_index_u32(15092u, 30u)], true), vec2<bool>(var_1, false)), select(vec2<bool>(false, false), vec2<bool>(var_1, global1[_wgslsmith_index_u32(global2.x, 30u)]), false), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(firstLeadingBit(global2.zx), ~(~vec2<u32>(2291u, 1u)), true);
    let var_0 = ~(-firstTrailingBit(firstTrailingBit(min(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a)))));
    let var_1 = func_4(-var_0.xxz, _wgslsmith_clamp_u32(global2.x & countOneBits(_wgslsmith_mult_u32(4294967295u, global2.x)), _wgslsmith_clamp_u32(countOneBits(83535u), global2.x, ~global0.x) << (51091u % 32u), ~(~72162u >> (func_1() % 32u))));
    var var_2 = global1[_wgslsmith_index_u32(global0.x, 30u)];
    let var_3 = Struct_1(574f, global3.x, 4294967295u);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), var_3.a, -269f, 227f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, _wgslsmith_div_f32(var_3.b, var_3.a), global3.x, _wgslsmith_div_f32(global3.x, -579f))), vec4<bool>(1u > firstTrailingBit(var_3.c), false, all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4946u, 0u, var_3.c), ~vec3<u32>(0u, var_1.x, 48333u)), 30u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.a, 2291f, 844f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit((vec3<u32>(30145u, global0.x, 4294967295u) << (vec3<u32>(22848u, var_3.c, 12949u) % vec3<u32>(32u))) ^ select(vec3<u32>(global0.x, var_3.c, 64103u), vec3<u32>(26816u, global2.x, 1u), global1[_wgslsmith_index_u32(19635u, 30u)]))), vec2<i32>(26314i, u_input.a) >> (~(~global2.xy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) + -918f) * 104f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(274f * _wgslsmith_div_f32(var_3.a, 702f))))), _wgslsmith_mod_u32(var_1.x, ~(~41779u)));
}

