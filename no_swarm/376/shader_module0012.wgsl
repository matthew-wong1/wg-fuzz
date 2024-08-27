struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: u32 = 1501u;

var<private> global2: array<u32, 21> = array<u32, 21>(26794u, 4294967295u, 15306u, 1u, 62636u, 1786u, 4294967295u, 0u, 4294967295u, 0u, 10467u, 67920u, 0u, 44067u, 4893u, 0u, 57682u, 84513u, 26984u, 0u, 21418u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global1 = ~(~_wgslsmith_mod_u32(firstTrailingBit(reverseBits(4294967295u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x & 1u, _wgslsmith_mod_u32(u_input.c, global0[_wgslsmith_index_u32(71340u, 4u)])), 21u)]));
    let var_0 = Struct_1(~vec4<u32>(~u_input.c, u_input.b, _wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 4u)]), 19300u), 50349u), true, u_input.d, 0u, _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 4u)], 21u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 61414u, global0[_wgslsmith_index_u32(4294967295u, 4u)]) & select(vec4<u32>(4294967295u, u_input.a.x, u_input.b, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6743u, 4u)], 21u)]), vec4<u32>(u_input.a.x, 16210u, global0[_wgslsmith_index_u32(u_input.c, 4u)], u_input.c), false), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(countOneBits(1u), 21u)], _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(3667u, 21u)], 1u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 21u)], 4u)]), global0[_wgslsmith_index_u32(95379u, 4u)] >> (13182u % 32u))), ~abs(vec4<u32>(1u, 18330u, global2[_wgslsmith_index_u32(49703u, 21u)], 37891u))));
    let var_1 = var_0.c.xx;
    let var_2 = var_0;
    global1 = global0[_wgslsmith_index_u32(1u, 4u)];
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1418f, _wgslsmith_div_f32(130f, -341f), var_0.b)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-974f * -1611f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1445f))))), 1000f));
}

fn func_2() -> Struct_1 {
    let var_0 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-636f, -115f) + _wgslsmith_f_op_f32(func_3())) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f))), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)) == any(vec3<bool>(true, true, true)));
    var var_1 = select(~u_input.d.zz, select(~(~vec2<i32>(u_input.e, -44680i)) | max(u_input.d.xy, vec2<i32>(u_input.e, 24366i)), (-u_input.d.xy | firstLeadingBit(u_input.d.yx)) ^ _wgslsmith_sub_vec2_i32(u_input.d.xx, u_input.d.yy), all(!var_0)), var_0.x);
    let var_2 = ~(~0i);
    global0 = array<u32, 4>();
    var var_3 = u_input.d.x;
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 4294967295u, 20405u, 0u) >> (vec4<u32>(global2[_wgslsmith_index_u32(58414u, 21u)], 1u, u_input.a.x, 2152u) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(41233u, 21u)], 1u, 30406u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], 4u)], 4u)])) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(51103u, 21u)], 1u, u_input.b), vec4<u32>(4294967295u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3411u, 21u)], 21u)], 4u)], 4u)], global2[_wgslsmith_index_u32(4294967295u, 21u)]))), global0[_wgslsmith_index_u32(~7948u, 4u)], abs(4294967295u), select(u_input.a.x, ~firstTrailingBit(28448u), any(!vec3<bool>(var_0.x, true, false)))), true, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, var_2, -2147483647i)), vec3<i32>(var_2, u_input.e, var_1.x)), -_wgslsmith_mult_vec3_i32(u_input.d, u_input.d)), u_input.d), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.yz), reverseBits(global2[_wgslsmith_index_u32(8268u, 21u)])) >> (~1153u % 32u), 21u)], ~(~min(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(112694u, 21u)], u_input.c, 60829u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 21u)], 4u)], global2[_wgslsmith_index_u32(54606u, 21u)], global2[_wgslsmith_index_u32(3656u, 21u)]))) & reverseBits(firstLeadingBit(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(46473u, 4u)], 0u))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = var_0.a.x ^ ~firstLeadingBit(global2[_wgslsmith_index_u32(~1u ^ ~global0[_wgslsmith_index_u32(var_0.a.x, 4u)], 21u)]);
    var_1 = 1u;
    let var_2 = ~vec2<i32>(reverseBits(var_0.c.x), -2147483647i);
    var var_3 = !all(!select(vec2<bool>(var_0.b, arg_1.x), vec2<bool>(false, arg_0), any(vec2<bool>(arg_0, false))));
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], max(global0[_wgslsmith_index_u32(44751u, 4u)], u_input.b)), vec2<u32>((global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 21u)], 4u)] ^ 29566u) | ~global2[_wgslsmith_index_u32(0u, 21u)], ~reverseBits(var_0.e.x))) >> (u_input.a.zx % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~func_1(any(vec2<bool>(true, all(vec4<bool>(false, true, false, false)))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)));
    var var_2 = Struct_1(max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(22375u, 21u)], global0[_wgslsmith_index_u32(7126u, 4u)], 4969u, 1u)) << (func_2().e % vec4<u32>(32u)), max(vec4<u32>(35958u, var_1.x, 0u, 78808u), vec4<u32>(1u, var_1.x, u_input.a.x, u_input.c)) << (firstTrailingBit(vec4<u32>(0u, var_1.x, var_1.x, 20311u)) % vec4<u32>(32u))), abs(~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59358u, 4u)], 21u)], 0u, u_input.a.x, global0[_wgslsmith_index_u32(7156u, 4u)])))), 51450i < _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(2147483647i, 6004i, 2147483647i, 0i)), select(~vec4<i32>(20852i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(0i, -12154i, 2147483647i, 2147483647i), vec4<bool>(true, false, true, true))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.d.x), u_input.d.x >> (func_1(true, vec4<bool>(false, false, true, false)).x % 32u), -_wgslsmith_clamp_i32(min(u_input.d.x, u_input.e), -23280i, u_input.d.x)), 0u, ~reverseBits(vec4<u32>(23457u, 4294967295u, reverseBits(5327u), _wgslsmith_dot_vec4_u32(vec4<u32>(62219u, 4294967295u, 1u, 4294967295u), vec4<u32>(50294u, var_1.x, u_input.c, global2[_wgslsmith_index_u32(8415u, 21u)])))));
    let var_3 = u_input.a.x;
    global2 = array<u32, 21>();
    let var_4 = func_2();
    let var_5 = var_4.e.yxz;
    let var_6 = vec2<i32>(_wgslsmith_clamp_i32(-u_input.d.x, var_4.c.x << (~(~var_1.x) % 32u), -1i), abs(~_wgslsmith_div_i32(_wgslsmith_add_i32(var_4.c.x, var_4.c.x), var_4.c.x | var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -294f)) + 1149f), _wgslsmith_f_op_f32(-1131f * -1000f), _wgslsmith_f_op_f32(step(345f, -217f))), var_4.e.zxw, -16581i, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(ceil(138f)))))));
}

