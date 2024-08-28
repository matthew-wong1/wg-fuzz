struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<i32, 9> = array<i32, 9>(49188i, -1i, 2147483647i, 1i, 30665i, -1i, -23999i, -41879i, 37350i);

var<private> global2: i32 = 1i;

var<private> global3: array<vec2<f32>, 3>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    let var_0 = vec4<i32>(abs(-firstTrailingBit(0i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(48658u, 9u)], -2147483647i), vec2<bool>(true, true)), reverseBits(vec2<i32>(-2147483647i, -49664i) >> (vec2<u32>(46435u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_mod_i32(2147483647i, 18697i)), (_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 1446i), -vec2<i32>(1i, 2147483647i)) | _wgslsmith_dot_vec2_i32(vec2<i32>(-52074i, global1[_wgslsmith_index_u32(u_input.a, 9u)]) | vec2<i32>(1242i, global1[_wgslsmith_index_u32(1u, 9u)]), vec2<i32>(-18876i, 2147483647i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) << (1u % 32u), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~36671i, global1[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 9u)] << (u_input.a % 32u)), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4326u, u_input.a, u_input.a, u_input.a) & vec4<u32>(45014u, 22432u, 1u, 37854u), ~vec4<u32>(21353u, 1u, 52256u, u_input.a))), 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1405f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-975f))))), _wgslsmith_f_op_f32(f32(-1f) * -610f));
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(abs(u_input.a), 9u)], vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), true, true, ((u_input.a == u_input.a) & true) & true), var_1, var_1, Struct_1(var_0.x, var_0.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(u_input.a, 3u)]) - global3[_wgslsmith_index_u32(16196u, 3u)])), max(_wgslsmith_sub_u32(abs(84548u), 1u), 0u)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_clamp_i32(countOneBits(~var_2.e.b.x), var_2.e.a, -13242i), var_0.wx << (vec2<u32>(9004u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(428f, var_1) + var_2.e.c) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1274f), 1742f)), ~25637u), var_0, countOneBits(var_0.zzw >> ((~vec3<u32>(u_input.a, 1u, 21533u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 14040u, u_input.a), vec3<u32>(var_2.e.d, u_input.a, var_2.e.d))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(1834f - _wgslsmith_f_op_f32(-var_1)));
    var var_4 = vec2<bool>(!var_2.b.x, all(var_2.b.zx));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-125f, 266f, 1684f))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(-980f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1), -1479f));
}

fn func_2() -> vec3<f32> {
    global3 = array<vec2<f32>, 3>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_1.b.x;
    global1 = array<i32, 9>();
    var var_1 = ~(~12240u);
    global1 = array<i32, 9>();
    let var_2 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u >> (arg_3.a.d % 32u), ~(~50944u), firstTrailingBit(countOneBits(0u))), vec3<u32>(1u >> (~4294967295u % 32u), _wgslsmith_div_u32(u_input.a ^ 0u, 88674u), ~_wgslsmith_sub_u32(arg_3.a.d, 1u))), ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 15721u, arg_3.a.d), vec3<u32>(arg_1.e.d, 25386u, 40315u), false) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_3.a.d, u_input.a), vec3<u32>(arg_3.a.d, 20801u, arg_1.e.d), vec3<u32>(4294967295u, u_input.a, u_input.a)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.e.d, 33336u, 4260u), vec3<u32>(arg_3.a.d, u_input.a, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.a))), ~vec3<u32>(u_input.a, arg_3.a.d, u_input.a)), arg_1.b.x);
    return global0[_wgslsmith_index_u32(abs(4294967295u), 7u)];
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(func_2()), Struct_2(abs(0i), !vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(599f))))), _wgslsmith_f_op_f32(sign(1f)), global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -354f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1150f)), -683f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -177f))), Struct_3(Struct_1(~(-18735i), ~vec2<i32>(10454i, 14693i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(-548f * 843f)), firstTrailingBit(u_input.a)), vec4<i32>(abs(~global1[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 2147483647i), global1[_wgslsmith_index_u32(u_input.a, 9u)]), global1[_wgslsmith_index_u32(72378u, 9u)], global1[_wgslsmith_index_u32(countOneBits(firstTrailingBit(55726u)), 9u)]), ~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 2147483647i, global1[_wgslsmith_index_u32(2848u, 9u)]), vec3<i32>(51409i, -2147483647i, global1[_wgslsmith_index_u32(61154u, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(217f + -794f))))));
    global1 = array<i32, 9>();
    global2 = var_0.a;
    var var_1 = Struct_2(-8907i, !(!vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, var_0.a == 1i)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, 1000f) - -266f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c.x, var_0.c.x)))))), var_0);
    var var_2 = Struct_2(var_1.a, vec4<bool>(all(!select(var_1.b, var_1.b, var_1.b.x)), var_1.b.x, !(var_1.b.x || (var_0.c.x > 1106f)), true), _wgslsmith_f_op_vec3_f32(func_3()).x, -111f, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_1.c, -1935f) - vec3<f32>(var_1.d, 804f, 1908f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x) * vec3<f32>(var_0.c.x, var_1.c, var_0.c.x)))), Struct_2(-(3617i >> (var_0.d % 32u)), !select(vec4<bool>(false, var_1.b.x, var_1.b.x, false), vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b.x), 995f, 1081f, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, var_0.c.x, var_1.e.c.x) * vec3<f32>(var_1.c, var_0.c.x, -420f)), Struct_2(-30616i, vec4<bool>(true, false, true, true), -383f, 1071f, Struct_1(6607i, var_0.b, vec2<f32>(var_0.c.x, 1984f), var_1.e.d)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, var_0.c.x, 926f, var_0.c.x), vec4<f32>(274f, -1499f, var_1.d, 553f), var_1.b.x)), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec4<i32>(-2147483647i, var_0.b.x, 2147483647i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(var_1.e.d, 9u)], -2147483647i, var_1.e.a), -899f))), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x - _wgslsmith_f_op_f32(786f * 1751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x)), Struct_3(func_4(vec3<f32>(1436f, 2647f, -1000f), Struct_2(1i, vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), var_1.d, var_0.c.x, var_0), vec4<f32>(var_0.c.x, -393f, -439f, var_0.c.x), Struct_3(Struct_1(var_0.a, var_0.b, vec2<f32>(var_0.c.x, -1136f), var_1.e.d), vec4<i32>(var_1.a, -17773i, var_1.a, -2147483647i), vec3<i32>(var_0.b.x, var_0.b.x, 4335i), 2136f)), ~vec4<i32>(var_1.a, -74683i, -61930i, var_0.b.x), vec3<i32>(-1i) * -vec3<i32>(var_0.b.x, var_1.a, 0i), _wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(1000f * var_0.c.x)))));
    return StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_1.e.d, var_0.d, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(22206u, 1u, var_2.e.d), vec3<u32>(var_1.e.d, 4294967295u, u_input.a))), _wgslsmith_add_u32(29960u, countOneBits(4319u)), max(_wgslsmith_div_u32(70332u, var_0.d), ~37674u), ~_wgslsmith_mult_u32(var_0.d, var_2.e.d)), min(abs(var_1.a), 26460i << (1u % 32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1374f, 1274f, var_0.c.x, 1085f) + vec4<f32>(627f, -1535f, var_0.c.x, var_1.e.c.x))))))), var_2.e.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

