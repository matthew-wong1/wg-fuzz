struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3>;

var<private> global1: array<u32, 27> = array<u32, 27>(15174u, 0u, 0u, 32319u, 1u, 0u, 59949u, 0u, 111019u, 0u, 34053u, 0u, 1u, 0u, 8234u, 7233u, 4294967295u, 72461u, 11550u, 1u, 237u, 0u, 1u, 4294967295u, 46055u, 1u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = (107891u == u_input.a) | true;
    global1 = array<u32, 27>();
    global0 = array<vec3<i32>, 3>();
    var var_1 = ~(-(~(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]) | select(global0[_wgslsmith_index_u32(26468u, 3u)], global0[_wgslsmith_index_u32(59935u, 3u)], vec3<bool>(var_0, true, var_0)))));
    var_1 = vec3<i32>(u_input.b, countOneBits(select(min(var_1.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 2147483647i, u_input.b), vec3<i32>(u_input.b, var_1.x, -51994i)), var_0)) & 0i, countOneBits(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -39371i, 59449i, 0i), vec4<i32>(1i, u_input.b, var_1.x, var_1.x)))));
    return countOneBits(~vec4<u32>(firstLeadingBit(63445u), firstTrailingBit(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(39050u, 27u)], 28664u)), 75157u, u_input.a));
}

fn func_2() -> vec4<u32> {
    global1 = array<u32, 27>();
    global0 = array<vec3<i32>, 3>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))));
    global0 = array<vec3<i32>, 3>();
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~14301u, 70225u, global1[_wgslsmith_index_u32(reverseBits(u_input.a), 27u)], u_input.a), _wgslsmith_sub_vec4_u32(func_3(_wgslsmith_add_u32(1u, ~u_input.a)), ~(~(~vec4<u32>(1u, 833u, 0u, u_input.a)))), vec4<u32>(_wgslsmith_add_u32(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 27u)]) & firstLeadingBit(15770u), _wgslsmith_mult_u32(abs(0u), u_input.a), 4294967295u, ~firstLeadingBit(u_input.a)) | vec4<u32>(_wgslsmith_sub_u32(~72859u, ~u_input.a), ~(1u ^ u_input.a), 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(34776u, 27u)]))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-522f));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1323f, -642f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(609f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f + 1009f))), -549f))));
    var var_1 = global1[_wgslsmith_index_u32((~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.yxy, arg_0.wxw), max(vec3<u32>(u_input.a, u_input.a, 4294967295u), arg_0.zwz)) >> (~_wgslsmith_add_u32(~86232u, abs(global1[_wgslsmith_index_u32(4294967295u, 27u)])) % 32u)) | 1u, 27u)];
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, -504f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(938f, 156f)), _wgslsmith_f_op_f32(-245f * 1337f))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_3.x)))), -1i, var_3.x, select(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, 21780u)), ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(16113u, global1[_wgslsmith_index_u32(func_2().x, 27u)]), vec2<bool>(true, true)) >> ((_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.zz, arg_0.xw), ~arg_0.yx) ^ ~(~arg_0.xx)) % vec2<u32>(32u)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 27u)], 34261u));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(func_4(countOneBits(~func_2())), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(false, true)))), vec2<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], u_input.a, u_input.a, 15217u), vec4<u32>(31177u, 34851u, u_input.a, u_input.a)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 27u)], 26022u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 110144u), vec3<u32>(1u, 2936u, 0u))), 27u)], _wgslsmith_div_u32(8596u, max(1u, max(1u, 23477u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-1701f)), -646f, _wgslsmith_f_op_f32(f32(-1f) * -844f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-713f * -477f), -218f, _wgslsmith_f_op_f32(select(1374f, 1341f, false)))))), _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(min(18197u, u_input.a))), 27u)]));
    var var_1 = ~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0.c.x, u_input.a, 4294967295u, global1[_wgslsmith_index_u32(1u, 27u)])) & vec4<u32>(~76974u, ~4294967295u, ~4294967295u, u_input.a), ~(abs(vec4<u32>(u_input.a, 54336u, 25228u, var_0.a.d.x)) | (vec4<u32>(global1[_wgslsmith_index_u32(152561u, 27u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 27u)], 22114u) ^ vec4<u32>(var_0.e, 1u, u_input.a, 4294967295u))));
    let var_2 = ~vec2<u32>(u_input.a, 1u);
    var var_3 = Struct_3(var_0.c, var_0.a.e >> (var_1.x % 32u), global0[_wgslsmith_index_u32(0u, 3u)]);
    var var_4 = ~(4294967295u & ~(~abs(var_1.x)));
    return Struct_3(reverseBits(vec2<u32>(_wgslsmith_sub_u32(~var_1.x, var_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(64375u, var_1.x, var_2.x, 0u), select(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 74028u, u_input.a, var_1.x), vec4<u32>(1u, 1u, var_1.x, var_2.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true))))), var_3.a.x, vec3<i32>(-56887i, countOneBits(-18474i), ~(~min(19652i, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-832f)), 2929f);
    let var_1 = func_1(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i) ^ vec2<i32>(-4271i, u_input.b), ~vec2<i32>(-24340i, u_input.b)), -27784i)));
    var var_2 = reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(37417u, countOneBits(global1[_wgslsmith_index_u32(u_input.a, 27u)]), u_input.a, func_2().x), vec4<u32>(func_4(vec4<u32>(2975u, var_1.b, 8269u, u_input.a)).d.x, u_input.a, global1[_wgslsmith_index_u32(41758u, 27u)], var_1.b)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), -593f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1845f, var_0.x)), vec2<f32>(146f, 1494f), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))))));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))));
    var var_5 = func_4(~vec4<u32>(select(func_1(-30011i).b, _wgslsmith_add_u32(1u, u_input.a), any(vec3<bool>(true, true, true))), abs(var_1.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 27u)], var_1.b), vec3<u32>(4294967295u, var_1.a.x, var_1.b)) ^ ~0u, 27u)], 5299u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.b, ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.c.x, u_input.b), 0i)), -237f, _wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(step(-325f, var_5.a)), _wgslsmith_f_op_f32(var_0.x * -1598f), _wgslsmith_f_op_f32(min(-714f, 929f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(858f, 1000f, var_4, var_5.c), vec4<f32>(var_0.x, var_0.x, -1378f, -402f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.c, var_5.a, _wgslsmith_f_op_f32(ceil(var_3.x)), -1000f))), abs(reverseBits(~min(var_5.b, -7160i))));
}

