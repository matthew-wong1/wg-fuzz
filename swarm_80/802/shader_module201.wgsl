struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = u_input.a.yx;
    var_0 = select(vec2<i32>(-8866i, firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, 2367i), firstTrailingBit(-1i)))), -vec2<i32>(1i, -78783i), !global1.yy);
    global1 = !(!vec4<bool>(!(!global1.x), true, true, true));
    var var_1 = ~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 4384u), firstLeadingBit(18343u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 46603u, 57408u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), ~vec3<u32>(~27950u, max(0u, 4294967295u), 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(245f, -398f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-671f)), _wgslsmith_f_op_f32(f32(-1f) * -136f))), _wgslsmith_div_f32(880f, 542f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: u32) -> bool {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global1 = vec4<bool>(global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(arg_2, arg_0.x), (arg_2 << (_wgslsmith_mod_u32(4294967295u, 49232u) % 32u)) | 4294967295u, global1.x), 19u)], true, global0[_wgslsmith_index_u32(4294967295u, 19u)], -1000f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(func_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], global0[_wgslsmith_index_u32(6221u, 19u)], false))), !global1.x)) + -906f));
    var var_0 = 31521u;
    global0 = array<bool, 19>();
    return !(!select(select(true, arg_2 <= 0u, all(vec3<bool>(global1.x, false, global1.x))), global0[_wgslsmith_index_u32(arg_2, 19u)], false));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = vec4<u32>(44581u, countOneBits(_wgslsmith_mult_u32(select(79574u, 0u, all(vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(0u, 19u)]))), 19326u)), 1u, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = !vec4<bool>(true, all(!(!global1.wxy)), true, func_2(var_0.zw, vec2<f32>(_wgslsmith_f_op_f32(min(1284f, -1333f)), _wgslsmith_f_op_f32(f32(-1f) * -960f)), ~var_0.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-371f, _wgslsmith_f_op_f32(step(-336f, _wgslsmith_f_op_f32(f32(-1f) * -791f))))), _wgslsmith_f_op_f32(2353f + _wgslsmith_f_op_f32(f32(-1f) * -2282f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-838f, _wgslsmith_f_op_f32(f32(-1f) * -1495f))) * -356f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-1031f + var_1.x))), var_1.x);
    let var_2 = Struct_5(vec4<i32>(-1i, 45501i, countOneBits(u_input.a.x), 0i));
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 284f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -497f))), 1u, u_input.a.x, true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(317f)))))), min(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, _wgslsmith_add_u32(62603u, abs(0u)), abs(~60247u), _wgslsmith_sub_u32(~0u, 1u >> (0u % 32u)))), func_1(firstLeadingBit(10565i)), countOneBits(select(abs(select(vec4<i32>(4736i, u_input.a.x, 25733i, 2147483647i), vec4<i32>(u_input.a.x, -28794i, -1i, 1i), vec4<bool>(false, global0[_wgslsmith_index_u32(1787u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], false))), max(vec4<i32>(-2147483647i, 308i, u_input.a.x, 10862i), vec4<i32>(-2147483647i, 0i, 29025i, 22178i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -17832i)), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(6005u, 19u)]))));
    global1 = !(!select(vec4<bool>(var_0.a.d, var_0.d.x != u_input.a.x, global1.x, any(vec2<bool>(global1.x, global1.x))), select(vec4<bool>(false, true, true, global1.x), vec4<bool>(false, false, false, true), 38129i != u_input.a.x), true));
    var var_1 = Struct_4(Struct_1(_wgslsmith_div_f32(-932f, var_0.a.a), ~65046u, -31641i, (countOneBits(5948i) ^ _wgslsmith_add_i32(u_input.a.x, -44476i)) <= ~var_0.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x + var_0.a.e) - _wgslsmith_f_op_f32(var_0.a.e + 759f))))), _wgslsmith_clamp_vec4_u32(var_0.b | _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.b, var_0.a.b, 1u, var_0.b.x), var_0.b), ~_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 3768u, 0u, var_0.b.x)), _wgslsmith_mult_vec4_u32(var_0.b, ~vec4<u32>(32144u, 31746u, var_0.b.x, 1u))) | vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.a.b, 43290u, var_0.b.x, var_0.a.b), vec4<u32>(var_0.b.x, 5509u, var_0.a.b, var_0.a.b)), ~vec4<u32>(36016u, 4294967295u, var_0.a.b, 28902u)), var_0.a.b, _wgslsmith_mult_u32(var_0.a.b, 1u), reverseBits(reverseBits(58053u))), var_0.c, ~vec4<i32>(2147483647i, min(1i, var_0.a.c), var_0.a.c, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.wyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.a - var_1.c.a.x), _wgslsmith_f_op_f32(exp2(var_0.a.a)), _wgslsmith_f_op_f32(ceil(var_1.a.e))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.e, 1018f, var_1.a.e) + vec3<f32>(235f, var_0.c.a.x, -516f)), vec3<f32>(-369f, var_1.a.e, var_0.a.e))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), -494f, _wgslsmith_f_op_f32(var_0.c.a.x + 1285f)))), var_0.a.e, min(vec2<i32>(-2147483647i | u_input.a.x, countOneBits(var_0.d.x)), vec2<i32>(u_input.a.x, i32(-1i) * -24835i)) & ~select(vec2<i32>(var_1.d.x, u_input.a.x) ^ vec2<i32>(var_1.a.c, var_0.a.c), var_0.d.yx, all(global1.wyz)), _wgslsmith_dot_vec4_i32(var_0.d, ~_wgslsmith_add_vec4_i32(var_1.d, -vec4<i32>(-1i, u_input.a.x, var_1.d.x, u_input.a.x))));
}

