struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 43061u;

var<private> global1: array<u32, 3> = array<u32, 3>(13647u, 21543u, 8800u);

var<private> global2: array<Struct_2, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = !select(select(select(vec4<bool>(arg_0.c.b, arg_0.a.b, false, arg_0.a.b), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b), vec4<bool>(true, arg_0.c.b, false, false)), vec4<bool>(true, all(vec2<bool>(arg_0.a.b, false)), arg_0.c.b, any(vec4<bool>(true, arg_0.c.b, arg_0.c.b, true))), false | (u_input.c.x != u_input.b.x)), select(vec4<bool>(arg_0.c.b, all(vec3<bool>(arg_0.a.b, arg_0.c.b, true)), true, arg_0.a.b), !(!vec4<bool>(arg_0.a.b, false, arg_0.a.b, false)), !(!vec4<bool>(false, true, arg_0.c.b, arg_0.c.b))), !arg_0.c.b);
    return -abs(u_input.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(-758f, true, vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], 4294967295u), vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u)), ~vec4<u32>(arg_0, 46922u, u_input.a, u_input.a)), 1u, u_input.a | 9639u) & ~vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_0, 3u)], arg_0), 0u, min(3223u, u_input.a)));
    var var_1 = min(1u, var_0.c.x);
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 3u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -2147483647i, 20777i, -10664i)), -vec4<i32>(u_input.b.x, -26604i, 61325i, u_input.c.x)) == _wgslsmith_mult_i32(func_3(Struct_2(var_0, vec4<u32>(u_input.a, arg_0, var_0.c.x, u_input.a), var_0)), 2147483647i), var_0.c >> (~vec3<u32>(0u, 4294967295u, _wgslsmith_dot_vec2_u32(var_0.c.yz, vec2<u32>(u_input.a, 79625u))) % vec3<u32>(32u)));
    var var_4 = ~firstTrailingBit(u_input.c.x) | -1i;
    return Struct_2(var_0, vec4<u32>(~u_input.a, ~15838u, 65301u, var_0.c.x), Struct_1(_wgslsmith_f_op_f32(-var_3.a), !any(vec3<bool>(true, true, true)), vec3<u32>(~max(arg_0, arg_0), 4294967295u, u_input.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<i32> {
    let var_0 = 2147483647i;
    var var_1 = arg_2.c.c;
    var var_2 = -1490f;
    let var_3 = (firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, var_0, var_0), vec4<i32>(-2147483647i, u_input.b.x, -1i, 30211i)) & vec4<i32>(0i, u_input.b.x, 0i, 0i)) >> (firstTrailingBit(arg_2.b) % vec4<u32>(32u))) | abs(vec4<i32>(~var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 36418i, var_0, u_input.c.x) | vec4<i32>(-4780i, 0i, -2147483647i, var_0), abs(vec4<i32>(-16573i, 76593i, u_input.b.x, u_input.b.x))), -30833i, ~var_0));
    var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~arg_0 ^ u_input.a, 3u)], 0u, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, 1u))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.b.x, arg_0 & arg_0), ~arg_2.b.yyz)), max(~(abs(vec3<u32>(arg_0, 1u, 4294967295u)) ^ arg_2.a.c), abs(abs(select(vec3<u32>(u_input.a, arg_0, 0u), vec3<u32>(93568u, arg_2.a.c.x, global1[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(false, arg_2.c.b, true))))));
    return firstLeadingBit(vec2<i32>(-1i, var_0));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_4(10499u, func_2(~1u, vec4<f32>(-140f, arg_1.a, 763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + arg_1.a))), func_2(~(~arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2676f, arg_1.a, -1000f, arg_1.a)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-398f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), 499f)))));
    global1 = array<u32, 3>();
    global2 = array<Struct_2, 1>();
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, arg_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(168f, var_1.a))))))) - _wgslsmith_div_vec2_f32(vec2<f32>(931f, _wgslsmith_f_op_f32(337f - 757f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-309f, arg_1.a))))))));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    let var_0 = ~(~_wgslsmith_mult_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 3u)], 3u)]), ~_wgslsmith_add_u32(0u, arg_0.c.c.x)));
    global1 = array<u32, 3>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(544f, -1246f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, -503f) + vec2<f32>(arg_1.a, arg_0.a.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, -769f)))))), vec2<bool>(all(vec4<bool>(true, arg_1.b & arg_1.b, true, true)), true)));
    let var_2 = vec4<u32>(8682u, arg_2.x, 42864u, global1[_wgslsmith_index_u32(~((arg_0.a.c.x << (arg_0.b.x % 32u)) << (_wgslsmith_clamp_u32(13678u, 96094u, 0u) % 32u)) | 1u, 3u)]);
    global1 = array<u32, 3>();
    return _wgslsmith_f_op_f32(trunc(581f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1718f))), 1i >= u_input.b.x, vec3<u32>(countOneBits(~(~u_input.a)), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 0u)), _wgslsmith_add_u32(u_input.a, global1[_wgslsmith_index_u32(20851u, 3u)]), _wgslsmith_mod_u32(6023u, 4294967295u), global1[_wgslsmith_index_u32(4294967295u, 3u)]), ~vec4<u32>(0u, 4294967295u, u_input.a, 0u))));
    global0 = ~85347u;
    let var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(587f, 505f, 176f, 1360f) * vec4<f32>(var_0.a, 1456f, var_0.a, 355f))) - vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-var_1), var_1)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 689f, -231f, var_1), vec4<f32>(1156f, var_1, 2095f, var_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-459f, var_1, var_1, 553f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(global2[_wgslsmith_index_u32(abs(var_0.c.x), 1u)], func_1(global1[_wgslsmith_index_u32(4489u, 3u)], Struct_1(-1213f, var_0.b, var_0.c), vec3<bool>(var_0.b, false, var_0.b)), vec2<u32>(1u, var_0.c.x) & var_0.c.yy)))))), !(~(~var_0.c.x) <= ~select(53181u, global1[_wgslsmith_index_u32(4294967295u, 3u)], var_0.b)), ~var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(96u, global1[_wgslsmith_index_u32(1278u, 3u)]), 3u)] << (_wgslsmith_sub_u32(~11737u, global1[_wgslsmith_index_u32(1u, 3u)]) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 * var_2)), min(~(~4294967295u), 4294967295u), -2147483647i, -753f);
}

