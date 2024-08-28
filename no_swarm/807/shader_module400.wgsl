struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    let var_0 = Struct_4(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 28u)], !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(36742u, arg_1), 28u)], true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1 << (arg_1 % 32u), _wgslsmith_add_u32(arg_1, 4294967295u)), 28u)]));
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, ~(-2147483647i), u_input.a ^ 0i, i32(-1i) * -2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -3386i, -36676i, u_input.a), vec4<i32>(-1i, -30429i, 2147483647i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(8642i, u_input.a, 2147483647i, u_input.a), vec4<i32>(12700i, -1303i, u_input.a, u_input.a)))) << (vec4<u32>((arg_1 >> (arg_1 % 32u)) | 0u, arg_1, (arg_1 << (22419u % 32u)) << (arg_1 % 32u), 9885u) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_i32(min(reverseBits(vec4<i32>(u_input.a, u_input.a, 0i, -23860i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, 46722i, 26868i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, 10373i, u_input.a))), abs(vec4<i32>(12058i, u_input.a, u_input.a, -50828i) >> (vec4<u32>(34439u, arg_1, 28740u, 62774u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), u_input.a ^ u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, -55716i))) >> (~select(vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 7124u, arg_1), true) % vec4<u32>(32u)), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) | vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(0i, -13940i)), u_input.a, i32(-1i) * -18963i), vec4<i32>(u_input.a, _wgslsmith_mult_i32(9461i, _wgslsmith_add_i32(u_input.a, u_input.a)), u_input.a, ~23168i)));
    var var_2 = firstTrailingBit(vec2<u32>(~arg_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 4294967295u, arg_1), ~vec3<u32>(25117u, arg_1, arg_1)) >> (arg_1 % 32u)));
    global0 = array<bool, 28>();
    let var_3 = var_1.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1162f + _wgslsmith_div_f32(arg_0, -120f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 1771f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1445f, arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -258f, -1016f, 1094f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -648f, arg_0) * vec4<f32>(arg_0, -176f, arg_0, -445f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-2237f * arg_0), arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0)))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_4 {
    global0 = array<bool, 28>();
    var var_0 = ~(~reverseBits(countOneBits(vec3<u32>(1u, 1u, 1u))));
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -250f), var_0.x << (var_0.x % 32u))))), select(global0[_wgslsmith_index_u32(var_0.x, 28u)], 0u <= (min(4294967295u, var_0.x) ^ ~var_0.x), true), _wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x * -1227f)))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-996f)), _wgslsmith_div_f32(arg_0.a.x, 842f)))))));
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    return Struct_4(!vec4<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], false)), arg_1.a.x, true, var_1.b != !var_1.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(397f, _wgslsmith_f_op_f32(f32(-1f) * -1510f)))), -1128f) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-195f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-856f + _wgslsmith_f_op_f32(-1344f - -146f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1159f, 182f)), _wgslsmith_f_op_f32(1086f + -568f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1474f - 1454f), _wgslsmith_f_op_f32(select(-1123f, 1286f, false))))));
    global0 = array<bool, 28>();
    return ~countOneBits(~2590u);
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4) -> i32 {
    let var_0 = vec3<u32>(63575u, 1u << (~func_4(select(arg_2.a.xy, arg_2.a.yy, vec2<bool>(true, arg_0.b)), any(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(28497u, 28u)])), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), true), func_2(Struct_2(arg_0.a.a.xw), arg_2, vec2<i32>(u_input.a, u_input.a))) % 32u), firstTrailingBit(1u));
    var var_1 = _wgslsmith_add_u32(~max(0u, ~1u), var_0.x);
    var var_2 = Struct_5(arg_0.a, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * -280f)))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(833f)))))));
    let var_3 = 38833i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.a.x, 1274f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f - var_2.a.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.a) - _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.a)))))));
    return 20850i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~max(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(max(vec3<i32>(58321i, u_input.a, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a))), -reverseBits(vec3<i32>(16455i, 2147483647i, u_input.a))), ~vec3<i32>(u_input.a << (18747u % 32u), func_1(Struct_5(Struct_3(vec4<f32>(686f, 386f, 1581f, 735f)), global0[_wgslsmith_index_u32(1u, 28u)], -136f, 311f), -567f, Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(119932u, 28u)], global0[_wgslsmith_index_u32(3183u, 28u)], false, global0[_wgslsmith_index_u32(76717u, 28u)]))), u_input.a)), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -1i, 53876i, u_input.a)), min(_wgslsmith_add_vec4_i32(vec4<i32>(-32524i, -15i, -1i, -5655i), vec4<i32>(2147483647i, -22235i, 2147483647i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)))));
    var var_1 = true;
    let var_2 = (~(~1u) << (~(~_wgslsmith_div_u32(46986u, 48436u)) % 32u)) | _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 1u, 1u)), abs(~vec3<u32>(37297u, 4294967295u, 4294967295u))));
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, ~var_0.x), ~_wgslsmith_clamp_i32(~1i, _wgslsmith_div_i32(var_0.x, u_input.a), -var_0.x)), _wgslsmith_clamp_vec2_i32(select(select(var_0.zy, var_0.yx | vec2<i32>(u_input.a, -23035i), vec2<bool>(true, false)), select(var_0.zx, var_0.zz, vec2<bool>(false, global0[_wgslsmith_index_u32(var_2, 28u)])), vec2<bool>(false, true)), var_0.xx, var_0.xx));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-562f + -1673f), 384f, _wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(966f * -144f)), 515f))));
    var var_5 = vec4<u32>(11819u, var_2 << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, var_2, 4683u), vec4<u32>(9649u, var_2, 1u, var_2))) % 32u), ~0u, var_2);
    var var_6 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 1899f)) * var_4.yz) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(var_4.zy))))) + _wgslsmith_div_vec2_f32(var_4.wx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -442f))))))));
    let var_7 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + var_4.x), -1159f, _wgslsmith_f_op_f32(step(-820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1499f + var_6.a.x)) + _wgslsmith_f_op_f32(abs(var_4.x))))), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(var_5.x, var_5.x, var_2), var_5.yxy, all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, true, global0[_wgslsmith_index_u32(var_2, 28u)]))), _wgslsmith_sub_vec3_u32(select(var_5.xyx, vec3<u32>(4294967295u, 1326u, var_5.x), vec3<bool>(true, global0[_wgslsmith_index_u32(58299u, 28u)], global0[_wgslsmith_index_u32(var_2, 28u)])), var_5.xyy)) << (vec3<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 0u, 46786u, var_5.x), vec4<u32>(var_2, var_2, var_2, var_2))), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_5.x, var_5.x, var_2, var_2), max(vec4<u32>(0u, 1u, var_2, var_5.x), vec4<u32>(1u, 1u, var_2, var_5.x)))) % vec3<u32>(32u)), vec4<u32>(var_2, select(_wgslsmith_div_u32(var_5.x, 1u), var_2 & ~var_2, global0[_wgslsmith_index_u32(var_2, 28u)]), countOneBits(func_4(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(65079u, 28u)]), u_input.a > var_0.x, var_0.zx, func_2(Struct_2(var_7.xx), Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, false, global0[_wgslsmith_index_u32(24980u, 28u)])), var_3))), func_4(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(32547u, 28u)], global0[_wgslsmith_index_u32(33634u, 28u)], global0[_wgslsmith_index_u32(var_2, 28u)])), global0[_wgslsmith_index_u32(firstTrailingBit(var_5.x), 28u)]), true, vec2<i32>(1i, _wgslsmith_mult_i32(-32066i, var_3.x)), Struct_4(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(1u, 28u)])))), ~(_wgslsmith_add_i32(var_0.x | 26222i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25631i, -1337i, -3900i, 8159i), vec4<i32>(-2147483647i, var_0.x, var_3.x, -2147483647i))) ^ ~(-1i)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(var_2, 0u, 0u, 45858u), vec4<u32>(var_5.x, 4294967295u, var_5.x, 1957u)), ~vec4<u32>(var_5.x, 251u, 0u, var_5.x)), vec4<u32>(var_5.x, abs(34634u), 0u, var_5.x)), ~11343u));
}

