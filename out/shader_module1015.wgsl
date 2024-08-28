struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 56278u, 53957u, 3313u);

var<private> global1: f32 = 1979f;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, arg_2.x))), vec2<f32>(arg_0.x, 1244f))), _wgslsmith_f_op_vec2_f32(arg_2.zy * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.xx, vec2<f32>(-1101f, -1159f)))))));
    global1 = _wgslsmith_div_f32(176f, arg_2.x);
    global0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 79064u, 1u)), reverseBits((vec4<u32>(78192u, 4294967295u, global0.x, global0.x) & vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(21142u, 0u, 4294967295u, global0.x), vec4<u32>(u_input.b.x, 4294967295u, 54319u, 0u)))) ^ vec4<u32>(~(~11653u), reverseBits(1u), 0u, u_input.b.x);
    let var_1 = Struct_2(arg_2.x, -1454f);
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-964f)));
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = vec2<bool>(abs(2689u) >= ~reverseBits(u_input.b.x), !(_wgslsmith_f_op_f32(func_3(vec4<f32>(835f, arg_0.x, arg_0.x, arg_0.x), 8208i, arg_0)) == _wgslsmith_f_op_f32(f32(-1f) * -161f)) | all(vec3<bool>(true, true, true)));
    var_0 = !vec2<bool>(true, var_0.x);
    var_0 = vec2<bool>(u_input.a.x > 0i, false);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(~0u), 12414u, 1u), reverseBits(~(vec3<u32>(global0.x, u_input.b.x, 44883u) ^ vec3<u32>(0u, u_input.b.x, 2806u)))) ^ (u_input.b.x ^ ((global0.x ^ 1u) << (3282u % 32u)));
    var_0 = select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), true);
    return vec4<i32>(u_input.a.x, countOneBits(~(~countOneBits(-2147483647i))), firstLeadingBit(reverseBits(countOneBits(-1i))), abs(1i));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = vec4<i32>(~(-10102i >> (global0.x % 32u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 37060i), vec4<i32>(u_input.a.x, -1i, 22587i, u_input.a.x), arg_0), func_2(vec4<f32>(936f, -1275f, 703f, 102f)))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(1i, -1i, u_input.a.x, 1i)), -(~vec4<i32>(-59938i, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(57569i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | 1i, u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mod_i32(3019i, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(abs(1503f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f));
    global0 = vec4<u32>(4294967295u, ~global0.x, _wgslsmith_add_u32(25041u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(74479u, 3397u, 9700u), ~vec3<u32>(11894u, global0.x, global0.x))), global0.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) + 2371f) - var_1.b));
    let var_2 = false;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(1u, ~func_1(all(vec3<bool>(true, true, true))));
    var var_1 = ~var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2055f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(131f, -1162f, true)) - -1000f)), -279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-518f, 115f) - _wgslsmith_f_op_f32(f32(-1f) * -1604f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-381f)), 328f)), -690f)));
    let var_3 = !any(vec3<bool>(false, any(vec2<bool>(false, true)), false));
    var_1 = global0.x;
    global0 = vec4<u32>(global0.x, countOneBits(_wgslsmith_sub_u32(max(1u << (var_0 % 32u), ~14209u), u_input.b.x)), 1386u, global0.x ^ 1u);
    let var_4 = -2257i;
    var var_5 = vec4<i32>(_wgslsmith_add_i32(-reverseBits(abs(-23738i)), -27791i), firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_4, _wgslsmith_mod_i32(var_4, var_4)), ~_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-8107i, u_input.a.x)), u_input.a), _wgslsmith_add_vec2_i32(u_input.a, -(vec2<i32>(var_4, -1i) & vec2<i32>(u_input.a.x, 0i)))), select(reverseBits(-12935i), _wgslsmith_add_i32(var_4, -_wgslsmith_mult_i32(var_4, var_4)), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(-abs(_wgslsmith_add_vec4_i32(vec4<i32>(12595i, var_4, var_5.x, var_5.x), vec4<i32>(u_input.a.x, 11456i, var_4, 1i))), ~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, var_4), u_input.a.x, -var_5.x, abs(u_input.a.x))), -(~vec4<i32>(u_input.a.x, -2147483647i, ~(-2147483647i), u_input.a.x)));
}

