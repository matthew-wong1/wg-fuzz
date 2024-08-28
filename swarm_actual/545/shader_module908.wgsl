struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, true, false, true, false, false, false, true, false, false, false, true, false, true, false, false, false, true, true, false, false, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: u32) -> i32 {
    global1 = array<bool, 25>();
    let var_0 = ~96443u;
    let var_1 = arg_2;
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    return arg_0;
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-759f, -383f));
    var var_1 = arg_0;
    var var_2 = ~abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(1865u, 63043u)), u_input.b ^ 38034u, ~_wgslsmith_div_u32(u_input.b, u_input.b)));
    let var_3 = u_input.a;
    var var_4 = vec4<i32>(firstTrailingBit(~(-1i)) | ~1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, -2726i), ~arg_0, _wgslsmith_add_i32(arg_0, -44422i), 2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 38060i, var_3.x, 23818i), vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x)), -vec4<i32>(-2147483647i, var_3.x, -33784i, 3436i))), u_input.a.x), 6503i, var_3.x);
    return -vec4<i32>(-86513i, _wgslsmith_dot_vec3_i32(vec3<i32>(-24407i, u_input.c, 28837i) << (vec3<u32>(var_2.x, var_2.x, 0u) % vec3<u32>(32u)), -(vec3<i32>(10355i, u_input.c, var_3.x) | var_4.ywy)), _wgslsmith_clamp_i32(min(select(u_input.c, -29139i, global1[_wgslsmith_index_u32(42077u, 25u)]), 0i), -_wgslsmith_mod_i32(arg_0, 46045i), 69464i), 1i);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(~func_2(-11377i, vec2<f32>(-1149f, 912f), global1[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u), 29532i, -10699i, -2147483647i), func_3(_wgslsmith_mod_i32(arg_1, arg_1)), vec4<i32>(min(u_input.c, abs(arg_1)), ~2147483647i, -8183i, 71918i)));
    global0 = array<vec3<bool>, 29>();
    var var_1 = !(!select(select(global0[_wgslsmith_index_u32(4294967295u, 29u)], select(global0[_wgslsmith_index_u32(29873u, 29u)], vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 25u)], arg_2), true), vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 25u)], true)), global0[_wgslsmith_index_u32(0u, 29u)], true));
    global1 = array<bool, 25>();
    var var_2 = _wgslsmith_sub_vec2_i32(u_input.a, abs(var_0.a.xy));
    return _wgslsmith_dot_vec3_i32(var_0.a.xxz, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9405i, 11715i, u_input.a.x), var_0.a.xyw, firstLeadingBit(vec3<i32>(-2147483647i, 1i, arg_1))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(55075u, arg_3.x, 1u) | vec3<u32>(u_input.b, arg_3.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 53606u, arg_3.x), vec3<u32>(arg_3.x, u_input.b, u_input.b))) % vec3<u32>(32u)), var_0.a.zyw, _wgslsmith_add_vec3_i32(~vec3<i32>(arg_1, -26269i, 42946i) | (var_0.a.xwy >> (vec3<u32>(55634u, u_input.b, 17596u) % vec3<u32>(32u))), vec3<i32>(u_input.c, 20212i, arg_1 >> (4294967295u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(firstLeadingBit(vec4<i32>(u_input.a.x, firstTrailingBit(max(u_input.a.x, u_input.a.x)), func_1(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true), 2147483647i, any(vec4<bool>(global1[_wgslsmith_index_u32(28370u, 25u)], global1[_wgslsmith_index_u32(78734u, 25u)], false, false)), vec2<u32>(4294967295u, u_input.b) & vec2<u32>(u_input.b, 73157u)), 0i)));
    var var_1 = Struct_2(countOneBits(vec4<i32>(2635i, var_0.a.x, _wgslsmith_dot_vec3_i32(~var_0.a.yzx, -vec3<i32>(u_input.a.x, -11099i, 0i)), ~2147483647i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f + 813f)), _wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1667f + 769f)))))));
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b << (39786u % 32u), 0u, 4294967295u, _wgslsmith_clamp_u32(~0u >> (_wgslsmith_sub_u32(23773u, u_input.b) % 32u), u_input.b, 121784u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(1u, 17865u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 34319u, u_input.b, u_input.b), vec4<u32>(333u, 10053u, 0u, u_input.b) | vec4<u32>(19063u, u_input.b, u_input.b, 1u)))));
    var var_4 = countOneBits(_wgslsmith_mod_vec4_i32(var_1.a >> (~reverseBits(vec4<u32>(var_3.x, var_3.x, 54785u, u_input.b)) % vec4<u32>(32u)), var_1.a));
    global1 = array<bool, 25>();
    let var_5 = var_0;
    var_1 = Struct_2(-vec4<i32>(u_input.a.x, -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-31645i, -28488i), vec2<i32>(-2147483647i, -1i)), _wgslsmith_div_i32(_wgslsmith_div_i32(52348i, 4404i), ~0i)));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -161f, -674f) * vec4<f32>(469f, 1265f, -1763f, var_2.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_div_f32(-1000f, var_2.x), 137f, _wgslsmith_f_op_f32(f32(-1f) * -580f)))), _wgslsmith_add_u32(~4294967295u, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - var_2.zz)))))));
}

