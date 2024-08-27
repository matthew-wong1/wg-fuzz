struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(2876u, 0u, 0u, 4294967295u, 0u, 51453u, 0u, 48836u, 26431u, 58449u, 1u, 0u, 0u, 1u, 0u, 4294967295u, 5336u, 30313u, 75556u, 0u, 0u, 0u, 46847u, 23145u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 1445f, arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(806f * -1099f), -1433f, 544f, _wgslsmith_f_op_f32(exp2(var_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 931f, _wgslsmith_f_op_f32(arg_1.x + 112f), _wgslsmith_f_op_f32(var_0.x - arg_0.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -561f, arg_1.x, -1366f)), vec4<f32>(-1013f, arg_0.a.x, 848f, var_0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, -903f, 1495f, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(169f, var_0.x, 455f, -1000f), vec4<f32>(arg_0.d, -1243f, -732f, 446f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, -1022f, 498f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, var_0.x, arg_1.x) - vec4<f32>(-1888f, -2068f, -1000f, arg_1.x))))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(arg_0.e, 12858u) ^ firstTrailingBit(arg_2)), 52819u, ~global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 1u, 49349u, 15283u), vec4<u32>(15550u, 7374u, 0u, 0u)), min(vec4<u32>(31150u, 27133u, 20895u, u_input.a), vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u))), ~select(0u, 4294967295u, false))), vec4<u32>(global0[_wgslsmith_index_u32(~13318u, 24u)], abs(global0[_wgslsmith_index_u32(52531u, 24u)]) << (43929u % 32u), arg_0.e, arg_2));
    return u_input.b.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(285f, 128f, 555f)))))), u_input.b.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x << (4294967295u % 32u), select(2147483647i, u_input.b.x, false), func_3(Struct_1(vec3<f32>(286f, 1455f, -1693f), u_input.b.x, vec4<i32>(u_input.b.x, -2147483647i, 28437i, u_input.b.x), -1000f, u_input.a), vec2<f32>(900f, 200f), 57609u)), reverseBits(reverseBits(u_input.b)), vec4<i32>(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, u_input.b.x, u_input.b.x)), ~0i, -u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1745f), _wgslsmith_f_op_f32(f32(-1f) * -1395f))), 4294967295u));
    global0 = array<u32, 24>();
    let var_1 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)));
    global0 = array<u32, 24>();
    var var_2 = !var_1.x && !select(false, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, var_0.a.c.x), u_input.b.xzy) != 2147483647i, true);
    return Struct_4(Struct_1(var_0.a.a, -2147483647i, _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b.x, -1i, -32377i >> (u_input.a % 32u), 39169i), abs(-vec4<i32>(var_0.a.b, var_0.a.c.x, u_input.b.x, 21843i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(-var_0.a.d)))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53270u, u_input.a), vec2<u32>(var_0.a.e, 15434u)), var_0.a.e >> (4294967295u % 32u), var_0.a.e), 24u)], ~67355u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_i32(min(~select(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 18504i), false), ~(-14492i)), u_input.b.x, u_input.b.x);
    global0 = array<u32, 24>();
    var var_1 = ~769u;
    let var_2 = func_2();
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a.d)) + _wgslsmith_f_op_f32(307f * var_2.a.d)), 369f)), !all(vec2<bool>(true, true)), Struct_3(51147i, vec2<i32>(u_input.b.x, _wgslsmith_div_i32(18658i, u_input.b.x) << (44399u % 32u))), select(vec2<bool>(true, true), vec2<bool>(true, true), (i32(-1i) * -var_0) > 2147483647i));
    return Struct_3(var_0, -max(vec2<i32>(0i, -2147483647i), vec2<i32>(var_2.a.c.x, var_3.c.a)) & firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, var_2.a.c.x, 8723i), var_0)));
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_5 {
    global0 = array<u32, 24>();
    var var_0 = func_1(abs(vec2<u32>(global0[_wgslsmith_index_u32(~(~1u), 24u)], 14266u)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(63002u, 33671u, global0[_wgslsmith_index_u32(0u, 24u)], 1u), vec4<u32>(u_input.a, 41645u, u_input.a, 4294967295u) ^ vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34266u, 24u)], 24u)], 24u)], 0u, 0u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 58989u, 4294967295u) >> (vec3<u32>(u_input.a, 21573u, 41924u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(0u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20526u, 24u)], 24u)]))), ~vec3<u32>(u_input.a, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]))), 4294967295u);
    var_0 = func_1(_wgslsmith_clamp_vec2_u32(~abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~_wgslsmith_mod_u32(16375u, 39489u), u_input.a), ~(~abs(vec2<u32>(35319u, u_input.a)))));
    var_0 = func_1(max(vec2<u32>(u_input.a ^ u_input.a, _wgslsmith_mod_u32(var_1, u_input.a)) << (vec2<u32>(~global0[_wgslsmith_index_u32(64410u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)] & 1u) % vec2<u32>(32u)), abs(~min(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.a), vec2<u32>(126733u, 21428u)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1210f + -314f), _wgslsmith_div_f32(430f, -515f), false)), -989f), true, func_1(~vec2<u32>(42105u, 0u)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), 135f);
    var var_1 = reverseBits(global0[_wgslsmith_index_u32(func_2().a.e, 24u)] & ~abs(func_2().a.e));
    let var_2 = Struct_1(func_2().a.a, var_0.c.b.x << (u_input.a % 32u), vec4<i32>(~(var_0.c.a & 19988i) ^ _wgslsmith_sub_i32(~2147483647i, var_0.c.b.x), countOneBits(_wgslsmith_clamp_i32(abs(37460i), -2147483647i, u_input.b.x)), -u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_0.a.x), u_input.a);
    let var_3 = func_2().a;
    var var_4 = var_2.b;
    var var_5 = u_input.b.xzz;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.yz, firstLeadingBit(~(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(41413u, 24u)], 23145u, var_2.e) << (vec4<u32>(1u, 1u, var_3.e, 87976u) % vec4<u32>(32u))))), -var_2.b, 2147483647i);
}

