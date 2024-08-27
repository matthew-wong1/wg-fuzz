struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-2222f, vec4<i32>(6154i, -1i, 59446i, i32(-2147483648)));

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-7626i, -30435i, 13730i, 0i), vec4<i32>(-21778i, i32(-2147483648), 19505i, -14873i), vec4<i32>(59869i, -46103i, -1i, -93845i), vec4<i32>(-58034i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 473i, 1i, 0i), vec4<i32>(-46067i, -64758i, -21443i, 0i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 14436i), vec4<i32>(31325i, 7044i, 1i, 3886i), vec4<i32>(34261i, -1i, i32(-2147483648), 1i), vec4<i32>(1i, 1i, -27905i, 38213i), vec4<i32>(2147483647i, -1i, 1i, 15594i), vec4<i32>(-55627i, 0i, i32(-2147483648), 22771i), vec4<i32>(1i, 38839i, 0i, 0i), vec4<i32>(i32(-2147483648), -1i, 6565i, -54914i), vec4<i32>(27599i, 21495i, -7252i, 2147483647i), vec4<i32>(-1i, 0i, 72313i, 57501i), vec4<i32>(22389i, 10918i, -20747i, -1i), vec4<i32>(1i, 2147483647i, -1i, -4825i), vec4<i32>(60854i, -1i, 11277i, 34229i), vec4<i32>(13417i, -1i, 1i, 12123i), vec4<i32>(1i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(36046i, -1i, i32(-2147483648), 15584i), vec4<i32>(0i, -1i, 2147483647i, 31602i), vec4<i32>(3720i, 24397i, 1i, i32(-2147483648)), vec4<i32>(-21180i, 0i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 2112i, i32(-2147483648), -90083i));

var<private> global2: vec4<u32> = vec4<u32>(1u, 7858u, 66233u, 17521u);

var<private> global3: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(210f, -1000f, -432f), vec3<f32>(1797f, 821f, 125f), vec3<f32>(1649f, -1209f, 403f), vec3<f32>(1570f, 1017f, -1712f), vec3<f32>(-560f, -182f, 545f), vec3<f32>(2134f, -272f, -344f), vec3<f32>(2061f, 736f, -2357f), vec3<f32>(675f, -636f, -287f), vec3<f32>(-448f, 1000f, -1173f), vec3<f32>(-391f, -614f, -2722f), vec3<f32>(-460f, 196f, -1551f), vec3<f32>(-567f, 134f, 330f), vec3<f32>(142f, 1000f, -1000f), vec3<f32>(-343f, 2159f, -1000f), vec3<f32>(765f, 831f, 1013f), vec3<f32>(1508f, -820f, 1000f), vec3<f32>(1029f, 1061f, -116f), vec3<f32>(892f, 156f, -802f), vec3<f32>(196f, -608f, 863f), vec3<f32>(-127f, 457f, 225f), vec3<f32>(1014f, -1615f, -360f), vec3<f32>(-977f, -1006f, -317f), vec3<f32>(186f, -2814f, -263f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    global0 = Struct_3(-418f, global0.b);
    return ~global2.x;
}

fn func_1() -> Struct_1 {
    global3 = array<vec3<f32>, 23>();
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(global0.b.wxw, vec3<i32>(-5195i, firstTrailingBit(global0.b.x), u_input.b.x)), vec2<i32>(~global0.b.x, firstLeadingBit(~_wgslsmith_div_i32(global0.b.x, 51237i))));
    global1 = array<vec4<i32>, 26>();
    global2 = vec4<u32>(_wgslsmith_add_u32(0u, global2.x), global2.x, func_2(), global2.x) >> (~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(13849u, 55002u, global2.x, 22190u)), reverseBits(vec4<u32>(global2.x, global2.x, global2.x, 42372u)) & ~vec4<u32>(57683u, global2.x, 1u, 0u)) % vec4<u32>(32u));
    var var_1 = ~global2.x;
    return Struct_1(global0.b.wzy, var_0.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> u32 {
    global2 = vec4<u32>(global2.x, ~13919u, 4294967295u, 0u);
    let var_0 = -vec2<i32>(-(~(-2147483647i)), min(13290i, arg_1.b.x >> (_wgslsmith_div_u32(global2.x, 0u) % 32u)));
    global3 = array<vec3<f32>, 23>();
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global2.zx, vec2<u32>(5172u, global2.x) << (vec2<u32>(global2.x, 38650u) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(1u, 1u))), abs(global2.zy), !(!(!select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false), var_1.x))));
    return _wgslsmith_mod_u32(32852u, ~_wgslsmith_sub_u32(~1u, var_2.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_3 {
    global3 = array<vec3<f32>, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a, global0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a)), _wgslsmith_f_op_f32(trunc(global0.a)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-801f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(-1000f - arg_1.a)))), _wgslsmith_f_op_f32(abs(-118f))));
    let var_1 = arg_0;
    global1 = array<vec4<i32>, 26>();
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.a, var_0.x), 1262f))), arg_1.a)), abs(vec4<i32>(~_wgslsmith_div_i32(arg_1.b.x, u_input.c), var_1.e.b.x, 76459i, -12703i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global1 = array<vec4<i32>, 26>();
    var var_1 = global2.wyy;
    let var_2 = func_4(Struct_2(func_1(), vec3<i32>(_wgslsmith_div_i32(1i, -1i), ~(-39109i), u_input.a) ^ vec3<i32>(~(-42543i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33938i, 62939i, global0.b.x, -1i), vec4<i32>(global0.b.x, 7746i, global0.b.x, u_input.a)), -2147483647i), func_1(), vec4<u32>(_wgslsmith_mult_u32(10056u, global2.x ^ global2.x), func_2(), var_1.x, abs(func_3(Struct_1(u_input.b, u_input.b.zz), Struct_3(291f, global1[_wgslsmith_index_u32(global2.x, 26u)]), -953f))), func_1()), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(767f)))), vec4<i32>(global0.b.x, u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(-2147483647i, global0.b.x)), -11250i), ~31940i)), vec2<bool>(any(vec3<bool>(any(vec4<bool>(true, true, false, true)), global0.a <= global0.a, false)), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, true, false)))));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~global2.x, 0u), ~vec2<u32>(~var_1.x, 30320u)), global2.x, global2.x);
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.x ^ 0i, u_input.a, _wgslsmith_mult_i32(u_input.a, -2147483647i)), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, global0.b.x, var_2.b.x, -24510i), var_2.b), 0i)), var_2.b.x | func_1().b.x, reverseBits(0i), _wgslsmith_clamp_i32(~_wgslsmith_sub_i32(u_input.a, -2147483647i), countOneBits(i32(-1i) * -20868i), _wgslsmith_dot_vec2_i32(abs(global0.b.xx), _wgslsmith_div_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, 2147483647i))))), vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -1i), firstTrailingBit(vec3<i32>(u_input.b.x, global0.b.x, global0.b.x))), -16031i, any(vec4<bool>(true, true, false, false))), 15722i, _wgslsmith_div_i32(~(-19486i), var_2.b.x) ^ 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.b.x, 3325i, -58029i) & _wgslsmith_mult_vec4_i32(var_2.b, vec4<i32>(8011i, var_2.b.x, 34680i, 56492i)), global0.b)));
    var_1 = var_3 | vec3<u32>(~(~func_3(Struct_1(var_2.b.zwz, global0.b.yx), Struct_3(var_2.a, vec4<i32>(u_input.b.x, -57676i, global0.b.x, 0i)), 101f)), _wgslsmith_sub_u32(var_3.x, min(1u << (var_1.x % 32u), 0u)), select(~77271u, max(func_3(Struct_1(vec3<i32>(var_2.b.x, 1i, -2147483647i), vec2<i32>(var_2.b.x, var_4.x)), var_2, -838f), 1u), var_3.x != _wgslsmith_mod_u32(global2.x, 5u)));
    var var_5 = -firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 26u)], vec4<i32>(-60106i, 17430i, u_input.a, -40179i)), global0.b ^ vec4<i32>(global0.b.x, u_input.b.x, var_2.b.x, 1i)) >> (vec4<u32>(abs(var_1.x), var_1.x, var_1.x, var_1.x) % vec4<u32>(32u)));
    var var_6 = func_4(Struct_2(Struct_1(reverseBits(vec3<i32>(52132i, u_input.c, 11761i)), ~vec2<i32>(-54476i, 28975i)), ~(~(var_4.yxz & u_input.b)), func_1(), max(vec4<u32>(max(119932u, 0u), _wgslsmith_div_u32(global2.x, 1u), var_3.x, var_3.x >> (global2.x % 32u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(2244u, 4294967295u, global2.x, var_3.x)), vec4<u32>(var_3.x, 4294967295u, global2.x, 35889u))), func_1()), func_4(Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(var_2.b.yyx, var_5.wxw), vec2<i32>(-6746i, 2147483647i)), global0.b.zyw, func_1(), ~(~vec4<u32>(4294967295u, 58997u, 10149u, 4294967295u)), Struct_1(u_input.b, vec2<i32>(2147483647i, u_input.a))), Struct_3(global0.a, max(vec4<i32>(-2640i, u_input.b.x, u_input.a, 56367i), -vec4<i32>(u_input.c, -2147483647i, var_5.x, 12419i))), vec2<bool>(true, false)), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1126f, var_6.a)))), ~_wgslsmith_dot_vec2_u32(global2.xx, _wgslsmith_add_vec2_u32(reverseBits(var_1.xy), vec2<u32>(var_3.x, 0u))), u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-877f)), -279f)));
}

