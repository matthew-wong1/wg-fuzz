struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 14> = array<i32, 14>(9829i, 12607i, -8164i, 0i, i32(-2147483648), 36188i, -1i, 0i, 1i, i32(-2147483648), 21704i, -1i, i32(-2147483648), -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec3<bool>(true, true, !(!(global0.b | false)) || global0.b);
    var var_1 = vec2<bool>(false, arg_1.x);
    var var_2 = max(1501u, (~arg_0 << (arg_0 % 32u)) >> (global0.a.x % 32u));
    let var_3 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 0u, global0.a.x, 4294967295u), _wgslsmith_div_vec4_u32(global0.a, vec4<u32>(68277u, u_input.b.x, 14097u, 3490u))), ~(global0.a & global0.a)), select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(54053u, 36922u, arg_0, 0u), global0.a)), vec4<u32>(u_input.a, _wgslsmith_mod_u32(arg_0, u_input.b.x), ~0u, 28218u), true));
    var_1 = select(!select(select(arg_1.xx, vec2<bool>(true, var_1.x), var_0.zz), var_0.zy, !vec2<bool>(arg_1.x, true)), !var_0.zz, select(!vec2<bool>(var_1.x, arg_1.x), select(vec2<bool>(true, true), arg_1.xy, vec2<bool>(true, false)), arg_1.x));
    return _wgslsmith_f_op_f32(-145f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) - _wgslsmith_f_op_f32(535f * -671f))), 469f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>) -> vec2<f32> {
    global0 = Struct_1(max(_wgslsmith_div_vec4_u32(~(~global0.a), global0.a), global0.a), false);
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_2.x)), arg_2.zx)), _wgslsmith_f_op_vec2_f32(-arg_0.yz))), ~select(reverseBits(_wgslsmith_dot_vec3_u32(global0.a.zyw, global0.a.zxz)), reverseBits(arg_1), true));
    let var_1 = Struct_4(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 14u)]) >> (~global0.a.zy % vec2<u32>(32u)), vec2<i32>(-8125i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(36540u, 14u)], global1[_wgslsmith_index_u32(var_0.b, 14u)], 1i), vec3<i32>(1i, 5823i, -1i)))) ^ -_wgslsmith_mult_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 14u)], -6417i), _wgslsmith_sub_vec2_i32(vec2<i32>(22622i, 7423i), vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 14u)], -16039i))), firstTrailingBit(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~(var_0.b >> (0u % 32u)), 14u)], -(~(-2147483647i)), 1i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_0.a.x, arg_2.x, var_0.a.x)))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1452f, -132f), var_0.a.x), _wgslsmith_f_op_f32(func_3(~u_input.a, select(vec3<bool>(global0.b, true, false), vec3<bool>(global0.b, true, false), vec3<bool>(false, false, true)))))) - _wgslsmith_f_op_f32(-var_0.a.x));
    var var_3 = -1340f;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(479f, arg_2.x) * vec2<f32>(-1087f, arg_2.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    global1 = array<i32, 14>();
    var var_0 = 51327u;
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_1.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1055f, -915f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(584f, arg_1.a, arg_1.a, -1506f), arg_2.x, vec3<f32>(-567f, arg_1.a, -674f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(755f, arg_1.a)))))), global0.a.x);
    var_0 = ~0u;
    let var_2 = _wgslsmith_clamp_i32(1i, 0i, -(22861i ^ _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(6672u, 14u)], arg_0.x, global1[_wgslsmith_index_u32(global0.a.x, 14u)])), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], 18231i, -2147483647i)))));
    return firstLeadingBit(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.x, -28909i, -2683i, var_2), min(vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(1u, 14u)], -18170i, var_2), vec4<i32>(17424i, 0i, 88229i, -7588i))), vec4<i32>(-4126i, -2147483647i, arg_0.x, arg_0.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: bool, arg_3: vec2<f32>) -> Struct_3 {
    global1 = array<i32, 14>();
    let var_0 = vec2<bool>(any(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_2, false), arg_2), vec2<bool>(true, arg_2), !arg_0), vec2<bool>(any(vec4<bool>(true, arg_1.e.b, true, arg_2)), global0.b), select(arg_3.x > arg_3.x, all(vec2<bool>(arg_2, arg_1.e.b)), global0.b))), global0.b);
    let var_1 = Struct_5(~vec3<i32>(arg_1.d.b & _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(3091u, 14u)], 8031i), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.c, 14u)], _wgslsmith_mod_i32(arg_1.d.b, 2147483647i)), 40303i), countOneBits(32551u), u_input.a, arg_1.d, arg_1.e);
    var var_2 = all(!select(select(vec3<bool>(arg_0, true, false), vec3<bool>(false, var_1.e.b, var_0.x), true), !vec3<bool>(false, var_1.e.b, var_0.x), arg_3.x <= var_1.d.c.x)) & (arg_0 && (1u != arg_1.c));
    var var_3 = 774f;
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-709f, -638f) * vec2<f32>(726f, _wgslsmith_f_op_f32(var_1.d.c.x + 714f))) * vec2<f32>(-469f, _wgslsmith_f_op_f32(-arg_3.x))), ~(~59183u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.b;
    let var_1 = func_4(false, Struct_5(vec3<i32>(func_1(vec2<i32>(40997i, -2147483647i), Struct_2(124f), global0.a), -global1[_wgslsmith_index_u32(45552u, 14u)], -global1[_wgslsmith_index_u32(746u, 14u)]) >> (_wgslsmith_clamp_vec3_u32(global0.a.yzy, vec3<u32>(50090u, u_input.a, 124582u), vec3<u32>(10009u, u_input.a, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_div_u32(0u >> (global0.a.x % 32u), ~17358u), firstTrailingBit(~1804u), Struct_4(-vec2<i32>(1i, 1i), -21812i, vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(~(~vec4<u32>(26885u, global0.a.x, 4294967295u, global0.a.x)), true)), any(!vec4<bool>(!global0.b, global0.b, any(vec4<bool>(global0.b, false, false, true)), any(vec2<bool>(global0.b, true)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 903f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-992f, -326f), vec2<f32>(-1322f, 1333f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-376f)), -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-169f - -2295f), -112f)))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~23098u, ~_wgslsmith_mod_u32(u_input.a, u_input.a)), 14u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~global0.a.yxx, ~global0.a.zxw)), 14u)]), -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-56804i, 29497i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(31111i, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<i32>(global1[_wgslsmith_index_u32(80196u, 14u)], -1i), vec2<i32>(-183i, -60472i))) << (global0.a.x % 32u));
    let var_3 = vec2<bool>(false, false);
    let var_4 = var_1.b;
    var var_5 = u_input.a;
    var var_6 = var_1.a.x;
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1[_wgslsmith_index_u32(1u, 14u)]), countOneBits(-5364i), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(var_1.b & 0u), var_1.b), ~func_4(global0.b, Struct_5(vec3<i32>(0i, 1i, 24213i), 0u, var_1.b, Struct_4(vec2<i32>(var_2, 2147483647i), var_2, vec4<f32>(1000f, var_7.a.x, var_1.a.x, var_1.a.x)), Struct_1(global0.a, var_3.x)), true, vec2<f32>(1218f, var_7.a.x)).b), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), global0.a.xy, vec2<u32>(var_7.b, 31354u)), vec2<u32>(var_4, u_input.b.x)) ^ _wgslsmith_add_u32(~(~0u), var_4), u_input.a ^ 3766u);
}

