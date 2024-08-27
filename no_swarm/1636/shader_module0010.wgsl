struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = abs(-40108i);
    global0 = 103058u;
    global0 = 1u;
    global1 = array<vec2<i32>, 3>();
    return abs(~4294967295u);
}

fn func_1() -> i32 {
    var var_0 = ~select(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(1i, -5467i, -49277i), i32(-1i) * -1i, ~(-36703i))), ~abs(~vec3<i32>(1i, -2147483647i, 1i)), !vec3<bool>(any(vec3<bool>(false, true, true)), true, select(true, false, true)));
    let var_1 = ~u_input.b;
    var var_2 = firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1, 60276u), ~vec3<u32>(41496u, u_input.a.x, 0u)) << (select(u_input.a.x, func_2(var_1, Struct_2(Struct_1(-5141i, -260f, vec2<f32>(247f, -2128f), vec3<i32>(var_0.x, 2147483647i, 50689i), vec2<u32>(0u, var_1)))), any(vec2<bool>(true, true))) % 32u), 102698u));
    var_2 = var_1;
    global0 = ~abs(u_input.a.x);
    return -(~(-var_0.x) >> (~func_2(4294967295u, Struct_2(Struct_1(9397i, 241f, vec2<f32>(1000f, 700f), vec3<i32>(9990i, var_0.x, var_0.x), vec2<u32>(u_input.a.x, u_input.b)))) % 32u)) ^ var_0.x;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec2<u32> {
    global0 = ~(~countOneBits(abs(1u)));
    global0 = ~min(38394u, 1u) >> (abs(~(~_wgslsmith_dot_vec2_u32(arg_1.zw, arg_1.zy))) % 32u);
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(11140i), 1i) ^ -47291i, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 46454i, -2147483647i, 17998i), vec4<i32>(2934i, 42337i, -1i, -51462i)), _wgslsmith_add_vec4_i32(min(vec4<i32>(-24633i, 64296i, 17226i, -1i), vec4<i32>(-1274i, 42075i, -1951i, -11226i)), abs(vec4<i32>(21500i, -1i, 1i, -1i))))), _wgslsmith_div_vec2_i32(~(~(-vec2<i32>(-2147483647i, -39259i))), global1[_wgslsmith_index_u32(arg_1.x, 3u)]));
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-34276i, min(var_0.x, var_0.x)), _wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(1u, 3u)], vec2<i32>(var_0.x, var_0.x)) | _wgslsmith_mod_vec2_i32(var_0, var_0)) | var_0.x;
    let var_2 = max(min(~abs(vec4<i32>(-1i, 1i, var_1, var_1)) >> (vec4<u32>(arg_1.x, _wgslsmith_sub_u32(22201u, u_input.a.x), u_input.a.x >> (49522u % 32u), max(u_input.b, 0u)) % vec4<u32>(32u)), ~(~vec4<i32>(0i, -9996i, -33473i, -1i) | (vec4<i32>(-6315i, -1i, var_0.x, var_1) ^ vec4<i32>(var_1, var_0.x, 2147483647i, -40587i)))), firstLeadingBit(~(~vec4<i32>(var_1, var_0.x, var_1, var_1))) | _wgslsmith_div_vec4_i32(~(~vec4<i32>(3538i, var_1, -44489i, var_0.x)), vec4<i32>(2147483647i, _wgslsmith_mod_i32(var_0.x, 2147483647i), var_0.x, firstLeadingBit(var_1))));
    return reverseBits(~vec2<u32>(_wgslsmith_sub_u32(~arg_1.x, u_input.a.x | 30294u), max(~32588u, ~arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(55972i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-415f)) - -866f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(255f, -677f) * vec2<f32>(-413f, 705f))))), vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-6909i, 0i, -2147483647i), vec3<i32>(76580i, 0i, 11749i)) & min(-1i, 40303i), 1i), ~_wgslsmith_clamp_vec2_u32(abs(u_input.a), ~u_input.a, u_input.a)));
    var var_1 = abs(vec3<i32>(var_0.a.a, ~(~(-13999i)), -4260i)) >> ((((~vec3<u32>(1u, var_0.a.e.x, 1u) & ~vec3<u32>(1u, u_input.a.x, var_0.a.e.x)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(33957u, u_input.b, 0u), vec3<u32>(5141u, u_input.a.x, 12474u)) % vec3<u32>(32u))) ^ vec3<u32>(~4790u, u_input.a.x, ~(4294967295u ^ u_input.b))) % vec3<u32>(32u));
    let var_2 = Struct_1(reverseBits(var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.c.x)) - -473f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x * 1000f) + _wgslsmith_f_op_f32(round(376f)))), _wgslsmith_f_op_f32(abs(var_0.a.b))), _wgslsmith_clamp_vec3_i32(-var_0.a.d, max(reverseBits(vec3<i32>(2147483647i, var_0.a.a, var_1.x) >> (vec3<u32>(var_0.a.e.x, var_0.a.e.x, u_input.b) % vec3<u32>(32u))), min(vec3<i32>(-39064i, var_0.a.d.x, var_0.a.d.x), vec3<i32>(29062i, var_1.x, var_1.x) << (vec3<u32>(1u, u_input.b, var_0.a.e.x) % vec3<u32>(32u)))), ~vec3<i32>(firstLeadingBit(var_0.a.a), var_1.x, func_1())), _wgslsmith_mult_vec2_u32(abs(func_3(_wgslsmith_f_op_f32(-var_0.a.b), vec4<u32>(7136u, var_0.a.e.x, 1u, var_0.a.e.x))), u_input.a));
    var_0 = Struct_2(Struct_1(0i, var_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1159f, var_2.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(249f, var_0.a.b) * vec2<f32>(-1312f, var_0.a.c.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -1142f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1295f, var_0.a.c.x), vec2<f32>(149f, -205f))))), vec3<i32>(_wgslsmith_add_i32(var_1.x, firstLeadingBit(var_1.x)), firstTrailingBit(var_1.x), max(2147483647i, select(1i, -1i, true))), ~u_input.a));
    let var_3 = vec3<bool>(3206i >= _wgslsmith_mod_i32(0i, i32(-1i) * -var_2.d.x), false, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), any(vec4<bool>(true, true, false, false)) & (0i < var_1.x))));
    var var_4 = var_1.x;
    let var_5 = _wgslsmith_f_op_f32(floor(-1796f));
    let var_6 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~_wgslsmith_div_u32(var_2.e.x, var_0.a.e.x), min(u_input.b, 1854u), func_2(~4174u, Struct_2(var_2))), vec4<u32>(var_2.e.x, var_0.a.e.x, firstLeadingBit(var_2.e.x), ~45953u)) == var_0.a.e.x;
    var_4 = _wgslsmith_mod_i32(var_2.a, ~var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.yy, u_input.b, vec2<i32>(-(~(-31034i)), var_0.a.a) | var_2.d.xz);
}

