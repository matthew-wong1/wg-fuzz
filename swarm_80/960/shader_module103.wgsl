struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = vec4<bool>(false, true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f * 184f) + -835f) != _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-707f)))) & false, true);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(13096u, arg_0) ^ vec2<u32>(0u, 23702u)), ~vec2<u32>(52598u, arg_0), !(arg_0 != arg_0)), countOneBits(vec2<u32>(arg_0, 43423u))), 1221f);
    var_1 = Struct_1(vec2<u32>(~_wgslsmith_mult_u32(0u, firstTrailingBit(1u)), firstTrailingBit(22974u)), _wgslsmith_f_op_f32(round(var_1.b)));
    return 745f;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> u32 {
    let var_0 = vec4<bool>(true, true, true & select(true, false, select(true, arg_1 < arg_0.x, true)), 43473u <= firstTrailingBit(arg_0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(235f - 1248f) + 1487f), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(arg_1, 51588u))), _wgslsmith_f_op_f32(196f * -870f))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0.x, abs(39542u)), 7u)];
    var var_3 = Struct_1(~vec2<u32>(4294967295u, 1301u), -307f);
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(32164i, u_input.a, 20291i, u_input.a), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-6996i, u_input.a, u_input.a, u_input.a), vec4<i32>(-17298i, u_input.a, u_input.a, 2147483647i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a << (0u % 32u), u_input.a, _wgslsmith_div_i32(1i, u_input.a), u_input.a), vec4<i32>(1i, 2147483647i, u_input.a, u_input.a) >> (vec4<u32>(26619u, 23789u, var_2.a.x, arg_0.x) % vec4<u32>(32u)))), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 25478i, u_input.a), vec3<i32>(19590i, u_input.a, -1i))), 2147483647i, u_input.a), select(-vec3<i32>(2945i, u_input.a, 0i) << (~_wgslsmith_add_vec3_u32(vec3<u32>(48614u, arg_1, var_3.a.x), vec3<u32>(arg_0.x, arg_1, 7083u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -7278i, 18812i), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(-2147483647i, 0i, u_input.a) ^ vec3<i32>(-11442i, u_input.a, u_input.a)), ~(~vec3<i32>(0i, u_input.a, 40323i))), select(vec3<bool>(1u <= var_2.a.x, false, !var_0.x), !(!var_0.yyx), !var_0.x)));
    return abs(arg_1) >> (~66471u % 32u);
}

fn func_1() -> Struct_1 {
    var var_0 = (8874i <= ~u_input.a) & (true & all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)));
    var var_1 = ~u_input.a;
    var var_2 = ~reverseBits(func_2(vec2<u32>(1u, 1u), ~113724u) >> (abs(1u) % 32u));
    let var_3 = 805f;
    let var_4 = ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(60669u, 1u, 4294967295u), vec3<u32>(0u, 7100u, 4294967295u), vec3<bool>(true, false, true)), vec3<u32>(1u, 1u, firstTrailingBit(28903u))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 70976u, 0u), vec3<u32>(66007u, 99422u, 42247u)));
    return global0[_wgslsmith_index_u32(47202u, 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<u32>(arg_0.a.x, 1142u);
    var var_1 = func_1();
    var var_2 = func_1();
    var_1 = func_1();
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u & var_2.a.x, 84575u), 7u)];
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, false)), true, select(false, all(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false)))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, -9210i < u_input.a))), vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)));
    var var_1 = 658f;
    let var_2 = func_1();
    let var_3 = vec2<i32>(1i ^ _wgslsmith_div_i32(-max(-41265i, u_input.a), ~u_input.a), -min(~(-u_input.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 0i))));
    var var_4 = vec3<i32>(var_3.x << (1u % 32u), ~reverseBits(~var_3.x) | abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, var_3.x), u_input.a ^ var_3.x)), select(57987i, 17355i, true));
    return vec3<u32>(min(_wgslsmith_add_u32(_wgslsmith_mod_u32(select(var_2.a.x, 0u, true), abs(arg_0.a.x)), ~var_2.a.x), ~1u), 29562u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -385f;
    let var_1 = func_5(func_4(func_1(), 352f, max(~u_input.a, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -3420i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 48046i, u_input.a)))));
    var_0 = -133f;
    var var_2 = func_4(func_1(), -1766f, abs(u_input.a));
    var_2 = global0[_wgslsmith_index_u32(98276u | ((~(~var_2.a.x) & 1u) & ~(~2200u >> (~var_2.a.x % 32u))), 7u)];
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -693f);
    var var_3 = ~var_2.a;
    let var_4 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.b, _wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(sign(var_2.b)))), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~var_3.x))))), countOneBits(vec4<i32>(min(u_input.a, _wgslsmith_mult_i32(1i, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -38725i, u_input.a), vec3<i32>(1502i, u_input.a, -36676i))), 1i, u_input.a)));
}

