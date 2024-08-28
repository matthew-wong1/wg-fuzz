struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 2060u);

var<private> global1: array<vec3<bool>, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(arg_0.b - 1f);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), 328f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(1738f, 121f)), arg_0.b)))), Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -2147483647i), vec2<i32>(-60986i, u_input.a.x)), ~(-1i)), 400f), vec2<bool>(true, true), arg_0, _wgslsmith_add_vec3_i32(vec3<i32>(var_0, u_input.a.x, arg_0.a.x), u_input.a) ^ -_wgslsmith_mod_vec3_i32(-u_input.a, ~vec3<i32>(var_0, u_input.a.x, -71034i)));
    global1 = array<vec3<bool>, 2>();
    var var_3 = Struct_1(~var_2.d.a >> (~abs(vec2<u32>(35570u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - -1228f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -714f)))));
    return ~(-(vec4<i32>(var_2.b.a.x ^ var_2.d.a.x, -60730i >> (0u % 32u), var_2.d.a.x << (1u % 32u), 39388i) & ~vec4<i32>(36506i, var_2.e.x, var_3.a.x, 28944i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(u_input.a.xz, arg_1.x);
    global1 = array<vec3<bool>, 2>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2822f)) - var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1125f)))) + _wgslsmith_f_op_f32(min(var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1080f))))))));
    global0 = vec2<u32>(global0.x, ~11867u);
    let var_2 = Struct_1(vec2<i32>(u_input.b & firstLeadingBit(var_0.a.x & -33993i), -var_0.a.x), var_1);
    return _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~(-func_3(var_2)), func_3(var_2)), vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(-1i, var_0.a.x), 1i), firstTrailingBit(max(var_0.a.x, var_0.a.x) & firstTrailingBit(1188i)), ~u_input.a.x, countOneBits(var_0.a.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = countOneBits(-func_2(vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(exp2(arg_0)))));
    let var_1 = Struct_1(abs(vec2<i32>(398i, reverseBits(-2147483647i))), arg_1);
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, ~global0.x), vec4<u32>(global0.x, 17660u, global0.x, global0.x) & min(vec4<u32>(global0.x, global0.x, 48900u, 1u), vec4<u32>(0u, 4294967295u, 0u, 9252u))), vec4<u32>(global0.x | 1u, global0.x, _wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global0.x, global0.x), vec4<u32>(4294967295u, global0.x, 9344u, global0.x))) | vec4<u32>(global0.x, global0.x | global0.x, 0u | global0.x, _wgslsmith_div_u32(global0.x, global0.x))), ~abs(70146u));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global0 = vec2<u32>(reverseBits(4294967295u), countOneBits(13884u));
    global1 = array<vec3<bool>, 2>();
    let var_0 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, global0.x, 16030u), vec3<u32>(19589u, 0u, 13403u)), ~(~(~vec3<u32>(0u, global0.x, 1u))));
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(39311u, 33811u), vec2<u32>(65653u, 50934u) << (vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u))))), vec2<u32>(1u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(global0.x, 82116u, global0.x), 4294967295u)));
    let var_2 = true;
    return _wgslsmith_f_op_f32(1000f - -274f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1169f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2007f) + -1182f) * 294f));
    var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(343f, var_0))))), vec2<f32>(_wgslsmith_f_op_f32(-1312f - var_0), _wgslsmith_f_op_f32(max(1531f, -1356f)))), Struct_1(u_input.a.xx, _wgslsmith_f_op_f32(trunc(var_0))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(~abs(vec2<i32>(u_input.b, u_input.b)), 1716f), (-u_input.a ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, -5004i), vec3<i32>(u_input.a.x, u_input.a.x, 0i))) | vec3<i32>(1i, u_input.a.x >> (global0.x % 32u), u_input.a.x)), Struct_2(vec2<f32>(-441f, _wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(var_0 * -219f))), Struct_1(vec2<i32>(u_input.a.x, 0i) << (~vec2<u32>(global0.x, 84573u) % vec2<u32>(32u)), 512f), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), true), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(758f, var_0, false)))), _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-2147483647i, -2147483647i, u_input.b)), -u_input.a) >> (vec3<u32>(1u, global0.x, abs(4294967295u)) % vec3<u32>(32u)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1050f) * vec2<f32>(var_0, var_0))))))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(560f, 839f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), _wgslsmith_f_op_f32(sign(-1000f)), 933f), !select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), Struct_1(u_input.a.xx, _wgslsmith_f_op_f32(1f - 904f)), vec3<i32>(reverseBits(reverseBits(func_1(vec2<f32>(1592f, 613f), -399f, 230f).a.x)), max(71713i, -2147483647i), u_input.b));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1459f, var_2.b.b) * vec4<f32>(var_0, 1123f, var_0, var_0)))) - vec4<f32>(_wgslsmith_f_op_f32(-805f + var_0), 1135f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(201f * -1813f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_2.a.x, 2015f, var_0) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.d.b, var_2.b.b, 402f, 263f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(253f, 373f, -751f, 308f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, var_0, -234f) * vec4<f32>(var_0, -591f, var_0, var_0))))));
    var var_4 = var_3.zzz;
    var var_5 = (any(!select(global1[_wgslsmith_index_u32(32375u, 2u)], vec3<bool>(true, var_2.c.x, var_2.c.x), true)) | any(vec4<bool>(true, !var_2.c.x, var_2.c.x, var_4.x == 1528f))) & any(!select(vec2<bool>(var_2.c.x, var_2.c.x), !vec2<bool>(var_2.c.x, var_2.c.x), vec2<bool>(var_2.c.x, true)));
    global1 = array<vec3<bool>, 2>();
    let var_6 = select(vec2<bool>(-min(u_input.b, 2147483647i) < (select(-2147483647i, u_input.b, var_2.c.x) & 1i), var_2.c.x), var_2.c, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(33566u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 7551u, 1u)), global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(3374u, global0.x))) >> (~(vec4<u32>(global0.x, global0.x, global0.x, global0.x) & vec4<u32>(4294967295u, 100359u, global0.x, 4294967295u)) % vec4<u32>(32u))), 2147483647i);
}

