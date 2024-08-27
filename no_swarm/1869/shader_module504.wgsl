struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 6> = array<f32, 6>(341f, 823f, 846f, -929f, 328f, -596f);

var<private> global2: vec4<f32> = vec4<f32>(1000f, -1452f, 128f, -1008f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> bool {
    return false;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_1(~(select(abs(vec4<i32>(u_input.a, arg_1, -1i, 1i)), abs(vec4<i32>(-2147483647i, u_input.a, arg_1, 0i)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) & vec4<i32>(_wgslsmith_mod_i32(-14797i, arg_1), arg_1, 1i, _wgslsmith_sub_i32(u_input.a, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) + global2.x), true);
    global0 = !(var_0.b > var_0.b);
    let var_1 = Struct_2(43322u, true, var_0, _wgslsmith_f_op_vec2_f32(global2.wy * global2.xx), var_0);
    var var_2 = firstLeadingBit(27709i);
    global1 = array<f32, 6>();
    return var_1.d;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(103384u, select(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), 10906u == arg_2)), true, true), Struct_1(vec4<i32>(abs(-2147483647i), abs(2147483647i), 2147483647i, ~u_input.a) | (vec4<i32>(41556i, arg_1, -2147483647i, u_input.a) & vec4<i32>(arg_1, -1i, u_input.a, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -424f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 6u)]))), true), _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, !all(vec4<bool>(true, false, true, false)), true), _wgslsmith_sub_i32(abs(0i), -max(u_input.a, 24378i)))), Struct_1(select(abs(-vec4<i32>(arg_1, 2147483647i, u_input.a, u_input.a)), firstTrailingBit(-vec4<i32>(u_input.a, u_input.a, u_input.a, arg_1)), true), global1[_wgslsmith_index_u32(max(arg_2, ~(~4294967295u)), 6u)], false && (0u >= arg_2)));
    let var_1 = u_input.b.x;
    global0 = 49196u > _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10757u, arg_2, var_0.a) & vec4<u32>(var_1, var_1, 9713u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_1)), 4294967295u);
    var var_2 = var_0;
    var var_3 = Struct_1(firstLeadingBit(vec4<i32>(min(arg_1, 0i), var_2.c.a.x, -1i, abs(u_input.a))) | firstLeadingBit(var_2.e.a), 672f, 0u > ~arg_2);
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    let var_0 = Struct_3(2147483647i, Struct_1(~vec4<i32>(u_input.a ^ -1i, u_input.a, 2147483647i, _wgslsmith_add_i32(-5047i, 2147483647i)), global2.x, true), Struct_2(arg_3.a, arg_3.b | arg_0, func_2(741f, firstLeadingBit(arg_3.c.a.x) | ~2147483647i, countOneBits(arg_3.a) >> (1u % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global2.x)) - _wgslsmith_f_op_vec2_f32(-arg_3.d)), vec2<f32>(-950f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_3.a, 6u)], 311f, false)))), Struct_1(-vec4<i32>(arg_2, 2147483647i, 1i, 1i), 646f, arg_0)), Struct_1(_wgslsmith_div_vec4_i32(arg_3.c.a, arg_3.c.a << (_wgslsmith_clamp_vec4_u32(vec4<u32>(78948u, u_input.b.x, 36241u, 20735u), vec4<u32>(arg_3.a, arg_3.a, 23623u, u_input.b.x), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, arg_3.a)) % vec4<u32>(32u))), global2.x, func_2(_wgslsmith_div_f32(arg_3.c.b, _wgslsmith_f_op_f32(floor(447f))), reverseBits(arg_2) >> (16044u % 32u), (u_input.b.x & u_input.b.x) | arg_3.a).c), arg_0);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d.x, 525f, _wgslsmith_f_op_f32(abs(var_0.c.c.b)), _wgslsmith_f_op_f32(f32(-1f) * -747f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(872f, arg_1.x, arg_3.d.x, arg_3.e.b))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(false, true, var_0.c.b, false), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 0i, arg_2, u_input.a), var_0.b.a))).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.b * _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x * -335f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), -1458f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b + global1[_wgslsmith_index_u32(arg_3.a, 6u)])), func_2(-181f, 2147483647i, 1u).c & arg_3.e.c)), var_0.d.b));
    let var_1 = arg_3.c;
    return StorageBuffer(vec2<i32>(firstLeadingBit(abs(i32(-1i) * -6782i)), arg_3.e.a.x), 48981u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -109f, _wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(floor(var_0.c.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1337f, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], -164f, var_1.b)) + vec4<f32>(1306f, var_0.d.b, arg_3.e.b, global2.x)))), -_wgslsmith_clamp_i32(min(0i, _wgslsmith_dot_vec3_i32(arg_3.c.a.xwz, var_0.d.a.zwz)), var_1.a.x, -23477i ^ _wgslsmith_mult_i32(2147483647i, arg_2)), ~var_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 6u)])))));
    global0 = !(((false && func_1(-395f, vec4<i32>(1149i, u_input.a, -2147483647i, -1i))) == (global2.x <= global2.x)) && true);
    global0 = any(!vec2<bool>(!all(vec3<bool>(false, false, true)), false));
    var var_1 = _wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)] * -334f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-203f, -666f), global2.x)))));
    let x = u_input.a;
    s_output = func_4(true & (-1i <= (u_input.a & u_input.a)), global2.xyy, u_input.a, Struct_2(select(19405u, u_input.b.x, (u_input.b.x | 28303u) > ~19163u), all(vec4<bool>(true, true, func_1(-1480f, vec4<i32>(u_input.a, u_input.a, 10469i, 17420i)), true)), Struct_1(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 49793i)), global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 6u)], global2.x != _wgslsmith_f_op_f32(-global2.x)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(724f, global1[_wgslsmith_index_u32(u_input.b.x, 6u)]))), -660f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(80035u, 6u)], -1265f))), u_input.a, u_input.b.x)));
}

