struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec4<u32>, 10>;

var<private> global2: array<vec3<bool>, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.e.x, 1071f, 1307f))) + vec3<f32>(-866f, arg_0.e.x, arg_0.e.x)), vec3<f32>(-1070f, _wgslsmith_f_op_f32(sign(arg_0.e.x)), -358f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_0.e.x, 731f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x))), any(arg_0.a.yx)))), vec3<f32>(1505f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f), -1000f) + _wgslsmith_f_op_f32(160f - -446f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x - arg_0.e.x), _wgslsmith_f_op_f32(trunc(arg_0.e.x))))));
    global0 = array<Struct_1, 11>();
    global2 = array<vec3<bool>, 1>();
    var var_1 = vec3<u32>(4294967295u, 4294967295u, 0u);
    let var_2 = Struct_1(!select(arg_0.d, select(!vec3<bool>(true, arg_0.d.x, true), select(vec3<bool>(false, true, arg_0.d.x), vec3<bool>(true, true, false), false), true), select(vec3<bool>(false, arg_0.a.x, arg_0.d.x), vec3<bool>(arg_0.d.x, true, true), select(vec3<bool>(arg_0.a.x, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.d.x, false, false), false))), select(var_1.xz, vec2<u32>(~var_1.x, 0u), select(true, false != arg_0.a.x, u_input.a.x != 1i)) ^ vec2<u32>(arg_0.b.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 33896u, var_1.x)), ~vec4<u32>(74111u, var_1.x, arg_0.b.x, 4294967295u))), firstLeadingBit(abs(vec3<i32>(arg_0.c.x, arg_0.c.x, -1i))) & (arg_0.c | ~abs(vec3<i32>(0i, -2147483647i, u_input.a.x))), select(!vec3<bool>(!arg_0.a.x, 1u != u_input.c, select(arg_0.d.x, arg_0.d.x, false)), vec3<bool>(arg_0.a.x, any(!vec4<bool>(arg_0.d.x, true, arg_0.a.x, arg_0.d.x)), false), vec3<bool>(all(select(vec3<bool>(false, false, arg_0.d.x), vec3<bool>(true, arg_0.a.x, arg_0.d.x), global2[_wgslsmith_index_u32(25380u, 1u)])), arg_0.d.x, (526f == var_0.x) | true)), _wgslsmith_f_op_vec2_f32(-var_0.xz));
    return select(arg_0.a.x, all(!select(vec3<bool>(arg_0.a.x, true, var_2.d.x), var_2.a, var_2.d)) != (1456f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.e.x, -1257f)), _wgslsmith_f_op_f32(var_2.e.x * var_0.x))), (_wgslsmith_f_op_f32(floor(arg_0.e.x)) > arg_0.e.x) || (true && (arg_0.b.x >= arg_0.b.x)));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32((_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4721u, 1u))) << (5193u % 32u)) << (select(u_input.b << (~26961u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 49974u)), func_3(global0[_wgslsmith_index_u32(1u, 11u)])) % 32u), 1u)], countOneBits(firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 10836u), vec2<u32>(u_input.c, u_input.b)))), _wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(abs(vec3<i32>(25343i, 1i, -1i)), abs(vec3<i32>(0i, u_input.a.x, u_input.a.x))), countOneBits(countOneBits(-vec3<i32>(u_input.a.x, -2147483647i, 1i)))), global2[_wgslsmith_index_u32(countOneBits(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(1u, 55318u)))), 1u)], vec2<f32>(-935f, _wgslsmith_f_op_f32(floor(-1000f))));
    return _wgslsmith_div_i32(-1i, firstLeadingBit(var_0.c.x));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    global1 = array<vec4<u32>, 10>();
    var var_0 = vec4<i32>(firstLeadingBit(min(u_input.a.x, -16411i) >> (_wgslsmith_mod_u32(arg_0.x, arg_0.x) % 32u)), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x) & _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, select(u_input.a.x, 2147483647i, false), ~37766i, 0i), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), func_2(), -105283i >> (u_input.b % 32u)), abs(~u_input.a.x), countOneBits(firstLeadingBit(u_input.a.x)), ~firstLeadingBit(u_input.a.x)));
    let var_1 = global0[_wgslsmith_index_u32(~arg_0.x, 11u)];
    global1 = array<vec4<u32>, 10>();
    let var_2 = _wgslsmith_add_u32(u_input.c, ~arg_0.x);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.x), var_1.e.x), _wgslsmith_f_op_f32(exp2(var_1.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(1u, 1u)];
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(10598u, 1u)], ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b), 1u), u_input.b), vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), ~(-49285i), _wgslsmith_sub_i32(reverseBits(2147483647i), u_input.a.x | u_input.a.x)) << (~(firstTrailingBit(vec3<u32>(27451u, u_input.c, u_input.c)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, u_input.b), vec3<u32>(0u, 15830u, 77459u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(false, any(vec3<bool>(any(vec4<bool>(true, var_0.x, false, var_0.x)), true, any(vec4<bool>(true, var_0.x, true, var_0.x)))), false), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(-1185f, _wgslsmith_f_op_f32(abs(-212f))))), _wgslsmith_f_op_vec2_f32(func_1(global1[_wgslsmith_index_u32(~(u_input.c ^ 4294967295u), 10u)])))));
    var var_2 = var_1.a.zx;
    var var_3 = global0[_wgslsmith_index_u32(var_1.b.x ^ u_input.c, 11u)];
    let var_4 = global0[_wgslsmith_index_u32(1u, 11u)];
    var var_5 = Struct_1(!vec3<bool>(false, false, all(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, true, var_3.d.x, var_2.x), var_4.d.x))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.b.x, _wgslsmith_mult_u32(var_1.b.x, u_input.b)), _wgslsmith_sub_u32(select(var_4.b.x, 0u, false), 58181u)), u_input.c), var_4.c, var_3.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.e.x, 1f))));
    let var_6 = global0[_wgslsmith_index_u32(var_4.b.x, 11u)];
    var var_7 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~var_5.b.x), _wgslsmith_mod_u32(min(112909u, _wgslsmith_clamp_u32(var_5.b.x, 36774u, 4294967295u)), ~select(var_5.b.x, var_4.b.x, var_3.a.x))), 1u)], var_5.b, vec3<i32>(-64663i, _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(var_1.c.x, -447i, 89291i)) ^ 1i, 8879i), select(select(select(var_5.a, vec3<bool>(var_2.x, var_6.d.x, var_2.x), true), !vec3<bool>(var_4.d.x, false, true), !var_2.x), !select(!vec3<bool>(false, var_1.d.x, var_6.d.x), !global2[_wgslsmith_index_u32(75732u, 1u)], all(var_6.d)), all(select(var_5.d.zx, vec2<bool>(var_5.d.x, var_0.x), false))), var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(0i, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_7.c.x, abs(0i), var_6.c.x ^ var_6.c.x, ~var_1.c.x), vec4<i32>(var_5.c.x & 12244i, abs(var_5.c.x), var_4.c.x, max(var_1.c.x, 2147483647i)), vec4<i32>(-19375i, 5614i, 0i, -1i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_6.c.x, var_5.c.x, var_7.c.x, var_3.c.x), vec4<i32>(13301i, 44344i, 63227i, var_5.c.x)) & ~_wgslsmith_add_vec4_i32(vec4<i32>(var_6.c.x, 29706i, -1i, var_1.c.x), vec4<i32>(-20709i, 2147483647i, -2147483647i, var_3.c.x)), (any(var_7.d.xx) != !var_3.a.x) & false), max(var_1.b.x, _wgslsmith_clamp_u32(1u, 4294967295u, var_3.b.x)));
}

