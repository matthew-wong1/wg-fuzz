struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(1397f, -206f, 832f, -1223f, 750f, 161f, 458f, -296f, 317f, -541f, 228f, 316f, 611f, 1138f, -759f, -394f, -397f, 1434f, 1016f, 2119f);

var<private> global1: array<u32, 14>;

var<private> global2: array<i32, 3> = array<i32, 3>(-1i, i32(-2147483648), 27746i);

var<private> global3: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    global1 = array<u32, 14>();
    let var_0 = global3.c;
    var var_1 = Struct_3(global3.a, reverseBits(~_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.b.yx, arg_0.yz))), false, global3.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a, 20u)]));
    global0 = array<f32, 20>();
    return _wgslsmith_div_f32(935f, arg_1.x);
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~global3.a, 20u)], arg_0));
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(_wgslsmith_add_i32(-3544i, 10027i), global3.b | 40933i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2180f, 293f, arg_0, 1518f)))))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 0u) ^ ~global1[_wgslsmith_index_u32(global3.a, 14u)], 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1436f)) - _wgslsmith_f_op_f32(-arg_0))))));
    global3 = Struct_3(firstLeadingBit(global3.a), countOneBits(select(0i, 1i, any(!global3.d.c.wxz))), true, Struct_1(global3.d.c.x, max(u_input.b.x, abs(_wgslsmith_mod_i32(u_input.b.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46829u, 14u)], 3u)]))), !vec4<bool>(false, global3.d.a, true, global3.c), min(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), -1i)));
    return _wgslsmith_mod_i32(1i, global2[_wgslsmith_index_u32(1u, 3u)]);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = arg_2;
    global0 = array<f32, 20>();
    var var_1 = reverseBits(~(~(~vec4<u32>(53150u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 14u)], 14u)], 14u)], global3.a, 44327u))));
    global3 = Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1.x, ~global1[_wgslsmith_index_u32(global3.a, 14u)] ^ ~41033u), 14u)], func_4(_wgslsmith_f_op_f32(func_3((u_input.b ^ u_input.b) & (u_input.b | u_input.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-112f, -1665f, var_0.b.x, 245f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], -1197f, 978f, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b.x, -654f, 1000f, -1000f), vec4<f32>(-344f, global0[_wgslsmith_index_u32(19053u, 20u)], 969f, arg_2.b.x)))))))), any(vec3<bool>(all(select(vec3<bool>(false, var_0.a.a, arg_2.a.c.x), global3.d.c.wyz, vec3<bool>(arg_1, false, arg_3.x))), true, reverseBits(53848u) >= global3.a)), Struct_1(!all(vec3<bool>(false, false, false)), ~_wgslsmith_add_i32(~var_0.a.d, -1i), vec4<bool>(false, !all(arg_3), select(true, true, !arg_1), arg_3.x), var_0.a.b));
    global2 = array<i32, 3>();
    return arg_0;
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(true, max(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 14u)], 14u)], 3u)], ~global2[_wgslsmith_index_u32(global3.a & global3.a, 3u)] & _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 3u)], global3.d.d) | vec2<i32>(global2[_wgslsmith_index_u32(46938u, 3u)], u_input.a), func_2(u_input.b.yz, global3.d.a, Struct_2(global3.d, vec2<f32>(-183f, 794f)), vec3<bool>(false, false, global3.d.a)))), global3.d.c, -global3.b);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-825f, _wgslsmith_f_op_f32(ceil(-2317f)))));
    var var_2 = global3.d.c;
    global2 = array<i32, 3>();
    let var_3 = reverseBits(countOneBits(80961u));
    return !vec2<bool>(true, any(select(!vec2<bool>(true, global3.d.c.x), var_0.c.yx, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 14>();
    var var_0 = select(select(global3.d.c.xy, select(select(global3.d.c.xy, global3.d.c.zz, !global3.d.a), !(!global3.d.c.xx), global3.d.c.zy), all(!global3.d.c)), select(global3.d.c.zw, !func_1(), !global3.c), vec2<bool>(global3.c, !all(global3.d.c.xwx)));
    global0 = array<f32, 20>();
    var_0 = vec2<bool>(true, true);
    var var_1 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 14u)], 14u)], global3.a, 4294967295u, 1u), vec4<u32>(global3.a, 29663u, global1[_wgslsmith_index_u32(0u, 14u)], 12739u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(15673u, 14u)], 1u)) | vec4<u32>(79411u, global3.a, 30720u, global1[_wgslsmith_index_u32(0u, 14u)])), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global3.a, 14u)], 0u, 4294967295u, 4294967295u), vec4<u32>(global3.a, 0u, global3.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17280u, 14u)], 14u)], 14u)])));
    let var_2 = global3.a;
    var var_3 = ~vec3<i32>(-29975i, ~(global3.b & 16062i) << (1u % 32u), -2147483647i);
    let var_4 = (min(_wgslsmith_mult_i32(-2147483647i, firstLeadingBit(u_input.a)), i32(-1i) * -8037i) & -36011i) << (~0u % 32u);
    let var_5 = Struct_2(Struct_1(!(global3.a < global1[_wgslsmith_index_u32(9566u, 14u)]), global3.b, select(!vec4<bool>(true, global3.c, global3.d.c.x, global3.d.c.x), select(global3.d.c, global3.d.c, var_0.x), select(global3.d.c, global3.d.c, func_1().x)), firstLeadingBit(global2[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 14u)] | var_1.x), 3u)])), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(209f, 765f), vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 20u)], global0[_wgslsmith_index_u32(17956u, 20u)])))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41896u, 14u)], 20u)], -1293f) - vec2<f32>(766f, global0[_wgslsmith_index_u32(global3.a, 20u)])) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 20u)], global0[_wgslsmith_index_u32(1u, 20u)])))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 20u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1339i, global3.b, -2147483647i)), var_3.x), vec4<f32>(_wgslsmith_f_op_f32(-var_5.b.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.yyx, vec3<u32>(global1[_wgslsmith_index_u32(55030u, 14u)], 79032u, var_1.x)), 20u)], _wgslsmith_f_op_f32(333f * 1807f), _wgslsmith_f_op_f32(select(-1463f, global0[_wgslsmith_index_u32(4294967295u, 20u)], false))))), var_5.b.x), -max(-26275i, _wgslsmith_clamp_i32(func_4(-931f), -1i, i32(-1i) * -64334i)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 14u)], 87599u << (1u % 32u), ~global3.a, abs(1u))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(var_1.x, 14u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24684u, 14u)], 14u)], global3.a), vec4<u32>(global3.a, 74975u, var_1.x, 56817u)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a, 20u)]))))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(86691u), 14u)], 20u)], -843f)), -2116f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global3.a, 20u)] - global0[_wgslsmith_index_u32(var_1.x, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(77862u, 20u)]))))), min(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_2(vec2<i32>(u_input.a, var_4), global3.d.a, var_5, global3.d.c.xxx).x, _wgslsmith_add_i32(-10294i, var_5.a.b)), -2147483647i, global2[_wgslsmith_index_u32(var_1.x, 3u)]), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, global2[_wgslsmith_index_u32(global3.a, 3u)], -2147483647i), abs(vec4<i32>(0i, 0i, var_3.x, 14205i))) & firstTrailingBit(~61721i)));
}

