struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 1u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = firstLeadingBit(vec3<u32>(~min(global1[_wgslsmith_index_u32(10156u, 3u)], u_input.b.x), u_input.b.x, _wgslsmith_mult_u32(arg_1.b, 0u) & ~global1[_wgslsmith_index_u32(arg_1.b, 3u)]) | vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 82002u), min(u_input.d, u_input.b.zx)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(5295u, reverseBits(77272u)), 3u)], countOneBits(u_input.b.x) ^ ~4294967295u));
    var var_1 = firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~max(0u, select(arg_1.b << (u_input.d.x % 32u), ~u_input.b.x, false)), 3u)], 3u)]);
    var var_2 = -724f;
    global1 = array<u32, 3>();
    var_1 = min(global1[_wgslsmith_index_u32(7041u, 3u)], _wgslsmith_div_u32(0u, ~40233u));
    return arg_1.c.a;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(947f - arg_0.a.x), _wgslsmith_f_op_f32(select(775f, arg_0.a.x, arg_1)), false)))), -429f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.c.x, Struct_3(arg_0, ~0u, Struct_2(vec2<f32>(arg_0.a.x, -1733f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1163f, var_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, arg_0.a.x, 901f)))))) + arg_0.a), u_input.b.zxz, vec2<bool>(any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), false)) & (-u_input.c.x < (u_input.e.x << (54747u % 32u))), all(!vec3<bool>(false, arg_1, false)) | arg_1));
    global1 = array<u32, 3>();
    var var_2 = vec3<i32>(55384i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x ^ ~(-42975i), u_input.e.x), ~(~u_input.a.x), 47620i), _wgslsmith_add_i32(-2147483647i, -_wgslsmith_dot_vec3_i32(~u_input.a.wyw, u_input.c.xzw)));
    global0 = true;
    return Struct_3(var_0, var_1.b.x, var_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -940f, arg_0.a.x, 515f)))))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = false;
    global0 = select(true, false, false && (any(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(true, true, arg_1.x, false), vec4<bool>(false, true, var_0, var_0))) & any(select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, true), var_0))));
    global1 = array<u32, 3>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a.a.x, 111f), vec2<f32>(arg_2.a.a.x, -305f), arg_1.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_2.a.a * vec2<f32>(-234f, 108f)))) + vec2<f32>(1567f, _wgslsmith_f_op_f32(-arg_2.d.x)))), vec3<u32>(min(~u_input.b.x, 54748u), ~(~u_input.d.x), arg_2.b), !arg_1);
    global1 = array<u32, 3>();
    return arg_2.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec2<bool>(true && all(vec2<bool>(true, true)), all(select(select(!arg_1.yzy, vec3<bool>(arg_1.x, arg_1.x, true), !vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.zzz, !(false & arg_1.x))));
    var var_1 = Struct_3(func_4(max(select(vec3<i32>(41559i, arg_0.x, -11275i), countOneBits(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), arg_1.yzx), ~reverseBits(u_input.a.ywz)), vec2<bool>(any(arg_1.zzy), true), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1122f, -795f))), var_0.x)), 45620u, func_4(vec3<i32>(_wgslsmith_mult_i32(reverseBits(arg_0.x), _wgslsmith_mult_i32(-2147483647i, arg_0.x)), -1i, countOneBits(arg_0.x)), vec2<bool>(all(arg_1.wz), var_0.x), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1319f, 1000f) - vec2<f32>(-327f, 526f))), ~global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 3u)], func_4(-u_input.a.yyy, select(arg_1.wz, arg_1.xw, arg_1.x), Struct_3(Struct_2(vec2<f32>(-462f, 408f)), u_input.b.x, Struct_2(vec2<f32>(384f, -2580f)), vec4<f32>(779f, -567f, -860f, -1645f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -847f, -1210f, 683f) + vec4<f32>(-749f, 1359f, -632f, -1485f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f), -150f), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(484f, -1056f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -957f) + _wgslsmith_f_op_f32(step(763f, -186f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.c.a, _wgslsmith_f_op_vec2_f32(-var_1.d.zw), true)))), vec3<u32>(var_1.b, 53758u, ~global1[_wgslsmith_index_u32(u_input.d.x, 3u)] << (abs(u_input.b.x) % 32u)) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4849u, var_1.b, var_1.b), u_input.b.zwx, var_0.x), u_input.b.wzx), ~(u_input.b.wxy & vec3<u32>(u_input.b.x, 15440u, u_input.d.x))), vec2<bool>(!arg_1.x, var_0.x));
    global1 = array<u32, 3>();
    var var_3 = !(var_0.x | all(arg_1.xxw));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~min(i32(-1i) * -2147483647i, 30989i), func_1(-u_input.e, vec4<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), all(vec4<bool>(false, false, false, true)), true)));
    let var_1 = firstLeadingBit(u_input.b) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(27265u, global1[_wgslsmith_index_u32(23897u, 3u)])), 3u)], 3u)], ~54645u, _wgslsmith_add_u32((global1[_wgslsmith_index_u32(u_input.d.x, 3u)] & global1[_wgslsmith_index_u32(u_input.d.x, 3u)]) | ~global1[_wgslsmith_index_u32(u_input.d.x, 3u)], _wgslsmith_mult_u32(u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 3u)] >> (u_input.b.x % 32u))), ~firstLeadingBit(1u));
    var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(-62503i, _wgslsmith_mod_i32(23410i, -var_0.x)), min(vec2<i32>(1i, -37499i), u_input.e));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1395f - -1050f) - _wgslsmith_f_op_f32(-672f + 1139f)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1115f, -1642f)) * _wgslsmith_f_op_f32(1297f - -814f))));
    let var_5 = Struct_2(func_4(vec3<i32>(_wgslsmith_div_i32(u_input.e.x, ~(-3170i)), var_0.x, 0i), !(!select(vec2<bool>(false, false), vec2<bool>(var_2, true), vec2<bool>(var_2, var_2))), func_2(func_2(Struct_2(vec2<f32>(1078f, var_4)), select(var_2, var_2, true)).a, !(var_2 || false))).a);
    var var_6 = Struct_3(func_4(~(vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, u_input.c.x)), vec2<bool>(var_5.a.x >= _wgslsmith_f_op_f32(-var_5.a.x), true), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(func_3(-36517i, Struct_3(var_5, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37316u, 3u)], 3u)], var_5, vec4<f32>(1006f, -1245f, 1625f, var_5.a.x)), vec3<f32>(var_5.a.x, 1638f, var_4)))), var_2)), global1[_wgslsmith_index_u32(4294967295u, 3u)], Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(560f, 1000f), vec2<f32>(848f, var_5.a.x)))))), vec4<f32>(261f, var_4, -146f, _wgslsmith_f_op_f32(1666f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-471f + var_5.a.x), _wgslsmith_f_op_f32(285f * 563f), var_2 && var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec2<f32>(var_4, func_2(Struct_2(var_6.a.a), _wgslsmith_f_op_f32(exp2(var_4)) < _wgslsmith_f_op_f32(-var_4)).d.x), var_5.a.x, ~abs(var_0.x) & -2147483647i, ~_wgslsmith_div_u32(~57460u, 10050u));
}

