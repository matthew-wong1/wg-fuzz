struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 13571u;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(27909i, 0i, -12875i), vec3<i32>(-39798i, 1i, -17067i), vec3<i32>(19724i, -1i, 25578i), vec3<i32>(-40128i, 0i, -48482i), vec3<i32>(1i, 1i, -46047i), vec3<i32>(10647i, -28158i, -60568i), vec3<i32>(-13451i, 62641i, -30917i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(-1i, 40593i, -67410i), vec3<i32>(-36983i, -40578i, -568i), vec3<i32>(41968i, 44302i, 2147483647i), vec3<i32>(39517i, 0i, 1i), vec3<i32>(1i, -1i, -44649i), vec3<i32>(-1i, 22497i, -11021i), vec3<i32>(i32(-2147483648), -45349i, 1i), vec3<i32>(16381i, 19334i, -80989i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-1i, 2147483647i, 32312i), vec3<i32>(2147483647i, 313i, -1i), vec3<i32>(0i, 1i, 40160i), vec3<i32>(-16637i, 2147483647i, -1i), vec3<i32>(1i, -1i, 1i), vec3<i32>(1i, -30426i, 8924i), vec3<i32>(1i, 20650i, i32(-2147483648)), vec3<i32>(-31560i, i32(-2147483648), -1i));

var<private> global3: Struct_2 = Struct_2(27698u, Struct_1(1u), 22441u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> f32 {
    global0 = global3.b;
    var var_0 = _wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 0i, -1061i), vec3<i32>(-51115i, -1i, 58304i), firstTrailingBit(global2[_wgslsmith_index_u32(50414u, 26u)])), global2[_wgslsmith_index_u32(firstLeadingBit(~40179u), 26u)])), vec3<i32>(-1i) * -((global2[_wgslsmith_index_u32(global3.b.a, 26u)] | global2[_wgslsmith_index_u32(18856u, 26u)]) >> (~vec3<u32>(arg_0.x, arg_0.x, 1u) % vec3<u32>(32u))));
    let var_1 = abs(var_0.x);
    global1 = 1u;
    var var_2 = -61270i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-arg_2)))), -1225f));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> Struct_4 {
    global2 = array<vec3<i32>, 26>();
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1607f, arg_0.x)), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))));
    global3 = Struct_2(global3.b.a, global3.b, ~67052u);
    var var_2 = !vec4<bool>(!(-1000f <= _wgslsmith_f_op_f32(func_3(u_input.b, false, arg_0.x))), ~(-2147483647i) >= arg_2.x, select(false, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)))));
    return Struct_4(arg_0.x, 1i & reverseBits(var_0));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f + 705f) - arg_2.a), max(vec4<u32>(1u, 4294967295u, ~_wgslsmith_mult_u32(u_input.c, global3.c), ~55006u | u_input.b.x), vec4<u32>(15548u, 11422u, u_input.c, ~u_input.a | _wgslsmith_dot_vec3_u32(vec3<u32>(15542u, 27824u, 0u), vec3<u32>(96869u, 0u, global3.a)))));
    global0 = global3.b;
    global0 = Struct_1(_wgslsmith_mult_u32(global0.a, 1u) | 1u);
    var var_1 = _wgslsmith_add_vec4_u32(min(~(vec4<u32>(73461u, 0u, global0.a, u_input.c) >> (var_0.b % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b.x, var_0.b.x, global0.a, var_0.b.x)), ~(~vec4<u32>(global0.a, 4027u, 1u, 0u)))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c | 74047u, ~global0.a, ~u_input.a, 6312u), ~min(vec4<u32>(global0.a, global3.b.a, 32890u, global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(52774u, u_input.b.x, global0.a, u_input.b.x), vec4<u32>(u_input.a, var_0.b.x, u_input.a, var_0.b.x)))));
    global2 = array<vec3<i32>, 26>();
    return countOneBits(_wgslsmith_div_u32(countOneBits(var_1.x), global3.a));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_4 {
    global2 = array<vec3<i32>, 26>();
    let var_0 = ~vec4<u32>(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, arg_2.a, arg_2.a, arg_1.a)), true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, arg_1.a, arg_2.a, arg_2.a)), _wgslsmith_mod_u32(global0.a, 89167u), vec2<i32>(arg_1.b, arg_1.b), -4646i)), 92452u, ~firstLeadingBit(~global0.a), _wgslsmith_clamp_u32(~16210u, _wgslsmith_add_u32(firstLeadingBit(global0.a), global3.c), ~global0.a));
    global0 = Struct_1(countOneBits(_wgslsmith_sub_u32(u_input.b.x, 39857u)));
    global1 = global0.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, -714f, -1502f, -863f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 324f, -215f, arg_2.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(688f, -658f, arg_1.a, -2034f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, arg_2.a, 805f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_1.a, -872f, -967f))), vec4<bool>(true, true, false, !arg_0)))));
    return Struct_4(var_1.x, -31579i);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2175f, arg_1.a, arg_1.a, _wgslsmith_div_f32(-975f, _wgslsmith_f_op_f32(500f - arg_1.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -1471f, 865f, 1223f)) + vec4<f32>(804f, -343f, arg_1.a, -397f))) - vec4<f32>(arg_1.a, 922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2605f)), arg_1.a)));
    var var_1 = vec3<f32>(-1675f, _wgslsmith_f_op_f32(var_0.x - 510f), var_0.x);
    var var_2 = false;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(func_3(u_input.b, -arg_1.b < arg_0, arg_1.a)), select(any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(true, true, true))), any(vec4<bool>(true, true, select(false, false, true), true)), any(vec2<bool>(true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), all(vec4<bool>(true, true, true, true)))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(568f)), _wgslsmith_f_op_f32(ceil(533f))) + -1990f)), abs(~vec4<u32>(21739u, 0u, 0u, u_input.b.x)) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(43816u, 34988u, global0.a, u_input.c) & vec4<u32>(global0.a, 44275u, 9037u, 1u)), vec4<u32>(u_input.c & global0.a, ~37458u, _wgslsmith_div_u32(4294967295u, global0.a), ~28374u)) % vec4<u32>(32u)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(select(-1720f, _wgslsmith_f_op_f32(func_5(~(~0i), func_1(all(vec2<bool>(true, true)), Struct_4(var_0.a, -2147483647i), Struct_4(var_0.a, -2147483647i)), ~4294967295u)), any(vec3<bool>(true, true, true)))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(global0.a, 109131u, var_0.b.x, 0u)), min(vec4<u32>(47813u, 52307u, 0u, 0u), var_0.b)), max(min(17607u, 4294967295u), ~global3.a) & ~u_input.a, 0u, ~(~firstTrailingBit(global0.a))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-684f - 1000f), _wgslsmith_f_op_f32(1000f + var_0.a))))), _wgslsmith_clamp_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 82680u, 1u, 14806u), vec4<u32>(1u, global3.c, global0.a, 1u)) & var_0.b), ~var_0.b, vec4<u32>(4294967295u, firstLeadingBit(reverseBits(9035u)), 1u, ~_wgslsmith_dot_vec3_u32(var_0.b.zwz, var_0.b.yyy))));
    global1 = var_0.b.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1632f, 243f) - _wgslsmith_f_op_f32(step(1123f, -1039f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -169f))), 1270f);
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1676f, 1006f))))) + vec2<f32>(-166f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2100f, 668f) - vec2<f32>(_wgslsmith_f_op_f32(sign(333f)), var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1i >> (~u_input.c % 32u), vec4<u32>(_wgslsmith_mod_u32(~(global0.a | u_input.c), func_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, -1000f, var_1.x, -562f))), true, Struct_4(var_1.x, -1i))), 6508u, ~61375u, global3.c));
}

