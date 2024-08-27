struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: array<f32, 24>;

var<private> global2: vec2<u32> = vec2<u32>(34100u, 36838u);

var<private> global3: array<f32, 10> = array<f32, 10>(150f, 1632f, 224f, -2124f, -1106f, 843f, -318f, 1830f, -714f, 1538f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_3(20394u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~global2.x, 10u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.x, 10u)], global3[_wgslsmith_index_u32(global2.x, 10u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - 1492f) - arg_1.a))), arg_1, abs(~(u_input.c.yz >> (u_input.c.yy % vec2<u32>(32u)))) & vec2<u32>(_wgslsmith_div_u32(18186u, global2.x), ~(~4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1069f, _wgslsmith_f_op_f32(-1085f + _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(~var_0.a, 10u)]))))));
    let var_2 = Struct_2(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(var_0.a, 1u) >> (u_input.c.zy % vec2<u32>(32u))), u_input.c.yy));
    var var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f - arg_1.a) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 24u)]))), _wgslsmith_div_f32(-650f, global1[_wgslsmith_index_u32((u_input.c.x | 0u) | global2.x, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.a.x, 10u)] * var_0.b)))), 4684u, global2.x);
    var var_4 = _wgslsmith_mult_u32(4294967295u, 0u);
    return vec4<u32>(u_input.c.x, u_input.c.x, ~(~var_3.c) & _wgslsmith_div_u32(4294967295u, 51647u), global2.x);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    var var_0 = arg_0 | arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, _wgslsmith_div_f32(-106f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.d), arg_2.c.x))), -186f) - arg_2.c);
    var var_2 = vec4<i32>(u_input.b << (abs(arg_3.b) % 32u), u_input.a, u_input.a, 0i);
    let var_3 = func_3(abs(~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.x, var_2.x), abs(u_input.b))), Struct_1(-1229f));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x * 484f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_3.x, 10u)])))));
    return 865f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> i32 {
    global3 = array<f32, 10>();
    let var_0 = firstLeadingBit(abs(_wgslsmith_mult_vec4_i32(arg_1, firstLeadingBit(vec4<i32>(u_input.b, arg_1.x, u_input.b, arg_1.x)))));
    var var_1 = ~_wgslsmith_clamp_vec3_i32(~(arg_1.yxw ^ vec3<i32>(-28293i, 13663i, arg_1.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 2147483647i), var_0.zzy), vec3<i32>(var_0.x, 5074i, -var_0.x));
    var var_2 = ~1u & _wgslsmith_div_u32(global2.x, _wgslsmith_clamp_u32(~reverseBits(arg_0.x), abs(u_input.c.x) >> (reverseBits(arg_0.x) % 32u), max(~arg_0.x, _wgslsmith_sub_u32(global2.x, 160498u))));
    let var_3 = Struct_4(select(!vec3<bool>(true, true, all(vec3<bool>(true, false, false))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(33739u, 10u)] - 1815f) >= _wgslsmith_f_op_f32(func_2(true, 55677u, Struct_4(vec3<bool>(false, true, true), false, vec3<f32>(global1[_wgslsmith_index_u32(17072u, 24u)], arg_2.x, -1813f), global3[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_5(arg_2, arg_0.x, global2.x))), true, select(true, select(true, true, true), -1534f == arg_2.x))), any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, false))))), global3[_wgslsmith_index_u32(~func_3(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, var_0.x), arg_1.zz), vec2<i32>(-20029i, u_input.a)), Struct_1(_wgslsmith_div_f32(1018f, -969f))).x, 10u)]);
    return _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~reverseBits(arg_1.x), 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 29409i), vec2<i32>(arg_1.x, var_1.x)), 1i), ~(~arg_1.x)), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 8>();
    var var_0 = select(all(global0[_wgslsmith_index_u32(46101u, 8u)]), reverseBits(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, global2.x, 1u)) >> (_wgslsmith_mult_u32(4294967295u, global2.x) % 32u)) == global2.x, all(!vec3<bool>(any(vec2<bool>(true, false)), true, false)));
    var_0 = !(!(~u_input.c.x == global2.x) || !all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, global2.x), 8u)]));
    var var_1 = 14466u;
    var var_2 = _wgslsmith_f_op_f32(trunc(-983f));
    let var_3 = _wgslsmith_div_vec3_i32(countOneBits(~vec3<i32>(min(-3848i, -2147483647i), _wgslsmith_add_i32(-2147483647i, 0i), ~0i)), vec3<i32>(-(i32(-1i) * -u_input.b), func_1(_wgslsmith_div_vec3_u32(max(u_input.c, u_input.c), vec3<u32>(33897u, global2.x, 31720u)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(33781i, 0i, 19110i, u_input.b), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-456f, 1076f, global3[_wgslsmith_index_u32(36067u, 10u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1165f, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(global2.x, 24u)]) + vec3<f32>(551f, -3029f, 762f)))), _wgslsmith_mod_i32(select(35023i, u_input.b, true), reverseBits(u_input.a >> (global2.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, u_input.c.x, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), global3[_wgslsmith_index_u32(global2.x, 10u)], vec3<u32>(~(~firstTrailingBit(u_input.c.x)), firstTrailingBit(~_wgslsmith_add_u32(global2.x, 11547u)), _wgslsmith_mult_u32(select(0u, u_input.c.x, any(vec2<bool>(false, true))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 11576u, u_input.c.x, 24830u)), vec4<u32>(u_input.c.x, global2.x, 1u, u_input.c.x)))), vec3<u32>(global2.x, 4294967295u, abs(global2.x)));
}

