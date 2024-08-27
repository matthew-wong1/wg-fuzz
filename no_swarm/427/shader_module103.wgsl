struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = true;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = !vec3<bool>(any(vec3<bool>(true, false, true)), !func_3(-962f, Struct_2(Struct_1(u_input.a, vec4<f32>(-564f, -586f, 1378f, 937f), -1618f, 1i, 216f), 57038u)) || true, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)));
    var var_1 = Struct_1(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a.x, -u_input.b, u_input.a.x << (1u % 32u), -2990i), vec4<i32>(u_input.a.x, 0i, 1i, u_input.b) & select(u_input.a, u_input.a, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-821f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(524f - 1512f))), _wgslsmith_f_op_f32(floor(-768f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(660f, -886f, true)) + -107f)))), 1088f, _wgslsmith_sub_i32(0i ^ u_input.b, -2147483647i), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f + -497f) * 1f)))));
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-7564i, u_input.a.x), u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(var_1.d, u_input.b, var_1.d, u_input.b) ^ u_input.a), _wgslsmith_mult_i32(~1i, u_input.a.x), -5049i), u_input.a), var_1.b, -1000f, ~(~_wgslsmith_sub_i32(reverseBits(36854i), i32(-1i) * -1i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x)))))));
    var var_2 = Struct_2(Struct_1(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(45257i, -20891i, var_1.a.x), u_input.a.xyx)), _wgslsmith_add_i32(~u_input.a.x, u_input.b), -8559i, 30529i >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.b.x, var_1.e), var_1.b.x, _wgslsmith_f_op_f32(1572f - -166f), _wgslsmith_f_op_f32(var_1.b.x - var_1.c)) + var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) - var_1.b.x) * 757f), 15836i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(abs(103f)), any(var_0.zy)))), abs(0u));
    let var_3 = Struct_1(abs(-var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.b), var_2.a.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-550f)) + _wgslsmith_f_op_f32(var_1.b.x - 112f)))))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1749f + -575f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-180f - 387f), var_1.e)) * -863f)));
    return var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(52933i, -38009i), arg_1.a.a.x)), _wgslsmith_sub_i32(arg_1.a.a.x, i32(-1i) * -2147483647i), -370i), ~_wgslsmith_mult_vec4_i32(arg_1.a.a, vec4<i32>(~0i, firstLeadingBit(var_0.d), _wgslsmith_mod_i32(u_input.a.x, 1i), 35447i)), var_0.a);
    let var_2 = min(-8734i, ~_wgslsmith_sub_i32(arg_1.a.a.x, -18822i));
    let var_3 = Struct_3(!vec4<bool>(true, !all(vec2<bool>(true, false)), !(var_0.a.x <= 1i), true), _wgslsmith_mult_i32(arg_1.a.a.x, var_2), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, ~(arg_1.b ^ 7578u), arg_1.b, ~arg_1.b), ~(~vec4<u32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))));
    let var_4 = arg_1;
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(17872u, 0u), firstTrailingBit(vec2<u32>(1u, arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(45449u, 1u, func_4(Struct_2(Struct_1(u_input.a, vec4<f32>(-344f, 2326f, -946f, -1412f), -699f, u_input.b, -699f), 0u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), func_1(vec3<f32>(-1811f, 153f, -843f), Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -2147483647i), vec4<f32>(-943f, 639f, -128f, -1038f), -1204f, u_input.b, 700f), 42996u)), _wgslsmith_mod_vec4_i32(vec4<i32>(7044i, 2147483647i, -73281i, u_input.b), u_input.a))), ~(~firstLeadingBit(vec3<u32>(0u, 46048u, 0u)))) ^ vec3<u32>(20389u, _wgslsmith_sub_u32(abs(1u), 1u), 4294967295u);
    let var_1 = vec3<u32>(77124u, 72460u, 91174u);
    let var_2 = select(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2171f) - func_1(vec3<f32>(838f, -1138f, 270f), Struct_2(Struct_1(u_input.a, vec4<f32>(-336f, 1215f, 1002f, -1000f), -1000f, u_input.a.x, -505f), var_0.x)).a.c) > -1000f, true, true, true), true);
    let var_3 = _wgslsmith_f_op_vec3_f32(-func_2().b.xzw);
    var var_4 = ~select(reverseBits(var_0.x | var_0.x), ~1u, false) >> (~func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(var_3)))), func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(157f, 439f, var_3.x))), func_1(var_3, Struct_2(Struct_1(u_input.a, vec4<f32>(1183f, 695f, -517f, var_3.x), var_3.x, -20675i, -792f), 4294967295u)))).b % 32u);
    let var_5 = select(vec4<bool>(var_2.x, false, any(select(!var_2.wy, vec2<bool>(var_2.x, false), var_2.xw)), func_3(_wgslsmith_f_op_f32(select(-343f, var_3.x, false)), Struct_2(func_2(), ~3256u))), select(!var_2, !var_2, !var_2.x), false & var_2.x);
    var_4 = var_1.x;
    var_4 = var_0.x;
    var var_6 = Struct_3(vec4<bool>(true, false, false, var_2.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.wwy, ~u_input.a.xxx), -u_input.a.x) << (var_0.x % 32u), ~(~vec4<u32>(4227u, var_1.x, _wgslsmith_add_u32(0u, 1u), ~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b, min(vec2<u32>(~(~1u), 31010u), ~vec2<u32>(136117u << (var_1.x % 32u), _wgslsmith_add_u32(var_6.c.x, 0u))));
}

