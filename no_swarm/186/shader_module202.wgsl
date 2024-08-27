struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_1(true, countOneBits(vec4<i32>(u_input.a, max(22274i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.x, arg_0.x), vec3<i32>(u_input.a, -1i, arg_0.x))), u_input.a, _wgslsmith_mod_i32(arg_0.x, 1i) & _wgslsmith_mod_i32(-1i, 2147483647i))), arg_1, false, !select(!all(vec3<bool>(true, false, true)), true, true));
    let var_1 = arg_1;
    var var_2 = u_input.b.x;
    let var_3 = -1i;
    var var_4 = vec2<i32>(2147483647i, u_input.a);
    return _wgslsmith_f_op_f32(floor(arg_2.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5, arg_3: u32) -> bool {
    global0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(588f)) + _wgslsmith_f_op_f32(-arg_0))) > _wgslsmith_f_op_f32(func_3(arg_1.b, arg_2.b.x << (_wgslsmith_sub_u32(arg_3, 20450u) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, arg_0) * vec4<f32>(827f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, -697f, -2044f, arg_0))), select(false, arg_1.d, true))))));
    let var_0 = arg_2.d.x || arg_2.d.x;
    var var_1 = arg_2;
    let var_2 = -arg_2.a.b.zwz;
    var_1 = arg_2;
    return arg_2.e.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = -var_0.b.x;
    let var_2 = 1741f;
    global0 = select(var_0.e, true, !arg_1.e);
    var var_3 = vec4<i32>(0i, u_input.a, reverseBits(min(_wgslsmith_div_i32(var_0.b.x, _wgslsmith_mult_i32(var_1, var_0.c)), ~_wgslsmith_mod_i32(0i, -2147483647i))), _wgslsmith_div_i32(54980i, ~(-_wgslsmith_mult_i32(arg_2.b.x, -2147483647i))));
    return _wgslsmith_mod_vec3_i32(max(-(_wgslsmith_mod_vec3_i32(var_0.b.xzz, var_3.xxy) | arg_1.b.www), var_0.b.yxz), arg_1.b.yzw);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_3 {
    var var_0 = ~_wgslsmith_clamp_vec3_i32(~(~(-vec3<i32>(arg_3.a.b.x, -8763i, arg_3.a.c))), -vec3<i32>(_wgslsmith_mod_i32(0i, -79396i), u_input.a & -2147483647i, _wgslsmith_dot_vec4_i32(arg_3.a.b, vec4<i32>(arg_2.x, arg_3.a.b.x, arg_2.x, -2147483647i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, u_input.a, 2147483647i), arg_3.a.b.yzz));
    var_0 = arg_2;
    let var_1 = 253f;
    var_0 = select(arg_3.a.b.yxw, vec3<i32>(~reverseBits(abs(var_0.x)), arg_3.a.c, var_0.x), true);
    let var_2 = ~firstLeadingBit(_wgslsmith_div_u32(~60829u, u_input.b.x) << (arg_0.a.x % 32u));
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    let var_0 = Struct_4(func_5(Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), abs(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x)))), 0u, func_4(-2147483647i, Struct_1(arg_0.a.e, vec4<i32>(-17135i, u_input.a, arg_0.a.c, -69981i), -223i, func_2(2306f, Struct_1(false, arg_0.a.b, u_input.a, false, false), Struct_5(arg_0.a, vec2<i32>(arg_0.b, arg_0.b), Struct_3(vec4<u32>(1u, 0u, u_input.b.x, 19229u)), vec3<bool>(arg_0.a.a, false, arg_0.a.d), vec2<bool>(arg_0.a.e, arg_0.a.a)), 0u), true), Struct_4(Struct_3(vec4<u32>(u_input.b.x, 20500u, 6662u, u_input.b.x)), vec4<i32>(-28008i, arg_0.b, 10281i, arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-157f)) - 1f)), Struct_5(arg_0.a, _wgslsmith_sub_vec2_i32(vec2<i32>(19192i, -1i), arg_0.a.b.ww), Struct_3(countOneBits(u_input.b)), !vec3<bool>(arg_0.a.e, arg_0.a.a, true), !vec2<bool>(arg_0.a.a, false))), arg_0.a.b);
    global0 = select(true, !func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1405f)) + _wgslsmith_f_op_f32(select(-390f, 880f, true))), Struct_1(arg_0.a.a, var_0.b, _wgslsmith_add_i32(u_input.a, var_0.b.x), false, true), Struct_5(arg_0.a, func_4(arg_0.a.c, Struct_1(false, vec4<i32>(-1i, -1i, u_input.a, 2147483647i), -53398i, arg_0.a.a, true), var_0, -1000f).yz, Struct_3(var_0.a.a), vec3<bool>(arg_0.a.a, arg_0.a.d, arg_0.a.d), !vec2<bool>(false, arg_0.a.e)), 85131u), true);
    var var_1 = arg_0.a;
    var var_2 = 63996u;
    return Struct_5(arg_0.a, vec2<i32>((u_input.a >> (var_0.a.a.x % 32u)) & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i)), vec4<i32>(var_0.b.x, var_1.b.x, arg_0.b, u_input.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.b.yyx, vec3<i32>(var_0.b.x, 2147483647i, var_1.b.x)), -var_1.b.wzw) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(4330i, 26755i, arg_0.a.b.x, 2147483647i), arg_0.a.b)), var_0.a, !(!(!vec3<bool>(arg_0.a.d, true, false))), !select(select(!vec2<bool>(arg_0.a.e, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(arg_0.a.a, false)), any(vec2<bool>(arg_0.a.d, false))), select(!vec2<bool>(false, var_1.a), select(vec2<bool>(true, true), vec2<bool>(false, false), true), var_0.a.a.x != 4294967295u), any(vec4<bool>(true, true, true, true))));
}

fn func_6(arg_0: Struct_5, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = !(!any(!select(arg_0.d, arg_0.d, arg_0.d)));
    var var_1 = arg_0.c.a;
    var var_2 = !arg_0.e;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-801f, 143f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 870f))) * 1596f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0.a.c, -14272i, arg_0.a.b.x, u_input.a), -1i, vec4<f32>(-281f, 733f, 512f, 260f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(101f, -954f)) - _wgslsmith_f_op_f32(f32(-1f) * -1021f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-959f - -516f))))), _wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(293f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2075f, -748f, -1698f, var_3.x), vec4<f32>(var_3.x, var_3.x, 2346f, var_3.x))) - vec4<f32>(var_3.x, -1185f, var_3.x, 484f)), vec4<f32>(_wgslsmith_f_op_f32(var_3.x + -632f), _wgslsmith_f_op_f32(ceil(-1000f)), 533f, 1000f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-556f, 817f, 728f, var_3.x)))));
    return vec3<bool>(true, any(vec3<bool>(true, !arg_0.e.x, var_1.x > _wgslsmith_add_u32(u_input.b.x, 1u))), !arg_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = select(any(select(func_6(func_1(Struct_2(Struct_1(false, vec4<i32>(-23067i, u_input.a, u_input.a, -2147483647i), u_input.a, false, false), u_input.a)), _wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, 421u))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(1370f * 2411f)))) >= _wgslsmith_f_op_f32(select(702f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(392f - -449f)), false)));
    var var_0 = Struct_1(u_input.a == _wgslsmith_mult_i32(0i, firstTrailingBit(u_input.a | -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), -(~u_input.a), -18567i, ~u_input.a), _wgslsmith_mod_vec4_i32(~(vec4<i32>(2147483647i, -1i, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 8959i), vec4<i32>(u_input.a, 75205i, 41222i, 25809i)))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(1515i, -7476i, -1i, u_input.a) >> (vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(-31469i, -46482i), ~u_input.a, u_input.a, u_input.a))), u_input.a, _wgslsmith_add_u32(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.yw), ~vec2<u32>(u_input.b.x, u_input.b.x))) == (_wgslsmith_mult_u32(firstLeadingBit(46331u), 25440u >> (u_input.b.x % 32u)) ^ 0u), true && select(false, true, ~4294967295u != (u_input.b.x ^ 45055u)));
    let var_1 = 0u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -1000f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f))), 1000f);
    let var_3 = Struct_4(Struct_3(vec4<u32>(46483u, ~u_input.b.x, var_1 >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_1, var_1, 0u, u_input.b.x))) ^ _wgslsmith_div_vec4_u32(firstLeadingBit(u_input.b), ~u_input.b)), _wgslsmith_mult_vec4_i32(-vec4<i32>(~(-29943i), func_4(var_0.c, Struct_1(var_0.e, vec4<i32>(u_input.a, 32791i, -2147483647i, 20123i), u_input.a, var_0.e, var_0.e), Struct_4(Struct_3(vec4<u32>(24034u, var_1, var_1, 23673u)), var_0.b), 762f).x, u_input.a, u_input.a | var_0.b.x), _wgslsmith_sub_vec4_i32(-var_0.b, -var_0.b | abs(vec4<i32>(-1i, -32122i, var_0.b.x, 2147483647i)))));
    var var_4 = 814f;
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) - var_2.x), _wgslsmith_f_op_f32(trunc(-772f)))));
    var var_6 = _wgslsmith_sub_vec2_i32((vec2<i32>(-36487i, 2147483647i) & var_0.b.wx) | firstLeadingBit(~vec2<i32>(44118i, var_0.c)), vec2<i32>(abs(i32(-1i) * -10235i), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, -9822i), -3012i | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_3.b.yw), vec4<u32>(var_1 << ((var_3.a.a.x ^ ~var_3.a.a.x) % 32u), var_3.a.a.x, _wgslsmith_mult_u32(func_1(Struct_2(Struct_1(var_0.a, vec4<i32>(2147483647i, -2147483647i, var_3.b.x, var_3.b.x), var_6.x, var_0.e, var_0.a), -20518i)).c.a.x, var_3.a.a.x), firstTrailingBit(0u)), ~(~(var_3.a.a.x | 1u)), -21332i);
}

