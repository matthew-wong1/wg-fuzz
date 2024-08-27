struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = 0i;
    var var_1 = Struct_2(global1.x, Struct_1(16083i, 11046u), -822f);
    var_0 = var_1.b.a;
    var var_2 = arg_0;
    var_2 = var_1.b;
    return 23932u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> f32 {
    global0 = array<vec2<i32>, 31>();
    var var_0 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(arg_0, max(4294967295u, arg_0))), 31u)]);
    global0 = array<vec2<i32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-250f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2348f)))))));
    var var_2 = Struct_4(select(vec4<u32>(func_3(Struct_1(1i, arg_0), 56111u >> (arg_0 % 32u)), 1u, 39456u, ~_wgslsmith_mod_u32(8978u, arg_0)), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 21646u) | u_input.b, u_input.b & u_input.e, 4294967295u, ~(~1u)), select(vec4<bool>(arg_2.c.x || arg_1, arg_2.c.x, any(arg_2.c.xy), false), !(!vec4<bool>(true, true, global1.x, arg_2.a)), true)), Struct_2(true, Struct_1(var_0.x, ~arg_0), 417f));
    return _wgslsmith_f_op_f32(854f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1395f + _wgslsmith_f_op_f32(-var_2.b.c)) * var_2.b.c));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(func_2(4294967295u, !global1.x, Struct_3(true, abs(u_input.d.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, global1.x), vec3<bool>(false, global1.x, false)))))));
    let var_1 = reverseBits(1i);
    global0 = array<vec2<i32>, 31>();
    var var_2 = Struct_3(true, _wgslsmith_clamp_i32(abs(~(-var_1)), u_input.a.x, -7092i), select(vec3<bool>(!(!global1.x), global1.x, all(select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global1.x, global1.x, true), true))), vec3<bool>(global1.x, (var_1 << (u_input.b % 32u)) <= -21446i, true), select(!select(vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false)), !(!vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(global1.x, global1.x, true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, var_0)))) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(func_2(1u, false, Struct_3(var_2.a, var_2.b, var_2.c))), _wgslsmith_f_op_f32(arg_0 - -197f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(328f, var_0, var_0) * vec3<f32>(-420f, var_0, 1389f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-707f, -146f, var_0)), var_2.b > 2147483647i)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1640f, var_0, arg_0) * vec3<f32>(167f, -442f, arg_0)), vec3<f32>(1000f, 2734f, var_0)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-351f, 1000f, -253f), vec3<f32>(var_0, -873f, -2556f)))))))));
    return abs(u_input.e) ^ ~_wgslsmith_add_u32(countOneBits(select(u_input.e, u_input.b, true)), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(u_input.d.x, firstLeadingBit(~0i)), min(arg_0.b, abs(_wgslsmith_clamp_u32(~u_input.e, arg_0.b, 42195u))));
    let var_1 = -1i;
    global1 = !(!vec2<bool>(global1.x, 1i == _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 11086i), vec2<i32>(arg_3.x, var_0.a))));
    let var_2 = abs(var_0.a) & _wgslsmith_dot_vec2_i32(arg_3.zx, _wgslsmith_sub_vec2_i32(arg_3.xz, -vec2<i32>(-4333i, -17200i)));
    let var_3 = Struct_4(firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, arg_0.b, var_0.b, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.b)))) << (select(~vec4<u32>(arg_0.b, 1u, arg_0.b, 5303u), vec4<u32>(0u, _wgslsmith_mult_u32(arg_0.b, var_0.b), 1u, ~var_0.b), 1675i == -u_input.c.x) % vec4<u32>(32u)), Struct_2(global1.x, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~u_input.c.x, ~func_1(_wgslsmith_f_op_f32(2451f * 391f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-1765f))), u_input.c.x, abs(-vec3<i32>(u_input.a.x, -2147483647i, -1i)) ^ u_input.d);
    global1 = select(!vec2<bool>(func_4(func_4(Struct_1(var_0.b.b.a, 0u), var_0.b.c, -2147483647i, vec3<i32>(u_input.c.x, u_input.d.x, -1i)).b.b, -2768f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, var_0.b.b.a), vec3<i32>(0i, var_0.b.b.a, 47682i)), abs(u_input.d)).b.a, global1.x), !select(select(select(vec2<bool>(var_0.b.a, false), vec2<bool>(true, global1.x), global1.x), !vec2<bool>(var_0.b.a, false), any(vec3<bool>(true, true, global1.x))), vec2<bool>(var_0.b.a, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.b.a), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), global1.x), select(vec2<bool>(var_0.b.a, global1.x), vec2<bool>(var_0.b.a, true), global1.x))), all(select(vec2<bool>(global1.x, var_0.a.x != 26395u), !select(vec2<bool>(false, true), vec2<bool>(false, global1.x), true), select(select(vec2<bool>(var_0.b.a, false), vec2<bool>(true, false), vec2<bool>(true, global1.x)), select(vec2<bool>(false, global1.x), vec2<bool>(true, global1.x), vec2<bool>(false, global1.x)), select(global1.x, var_0.b.a, false)))));
    var var_1 = ~(~(~abs(abs(var_0.a.wyz))));
    let var_2 = vec4<f32>(1479f, _wgslsmith_f_op_f32(exp2(var_0.b.c)), -1000f, -113f);
    global1 = vec2<bool>(true, true);
    var var_3 = Struct_1(_wgslsmith_div_i32(var_0.b.b.a, -countOneBits(_wgslsmith_mult_i32(var_0.b.b.a, u_input.a.x))), min(~u_input.e, var_0.b.b.b));
    var_3 = func_4(func_4(var_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-343f))) + _wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_add_i32(-countOneBits(var_3.a), 1i), _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.c.x, u_input.c.x, 7007i))).b.b, 348f, var_0.b.b.a, _wgslsmith_mult_vec3_i32(~vec3<i32>(var_3.a, u_input.d.x, 2147483647i) | select(vec3<i32>(u_input.d.x, -2147483647i, u_input.a.x) << (var_0.a.zzz % vec3<u32>(32u)), min(vec3<i32>(var_0.b.b.a, 11625i, -15318i), u_input.d), select(vec3<bool>(false, false, global1.x), vec3<bool>(true, global1.x, var_0.b.a), true)), _wgslsmith_add_vec3_i32(u_input.d, abs(vec3<i32>(u_input.c.x, -2147483647i, -1i))))).b.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c, min(var_0.b.b.a, 1290i));
}

