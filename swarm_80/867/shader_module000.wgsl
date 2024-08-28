struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(~arg_0.b.a.yz, arg_0.b);
    global0 = array<vec2<f32>, 21>();
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -firstTrailingBit(vec2<i32>(-2147483647i, 1i))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(25783i, 24982i)), vec2<i32>(_wgslsmith_mod_i32(-21025i, -2147483647i), ~27188i))));
    let var_2 = select(false, true, true);
    var_0 = arg_0;
    return arg_0.b;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    return firstLeadingBit(arg_1.x ^ -arg_0);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<bool> {
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1232f + _wgslsmith_f_op_f32(1641f - -936f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)));
    return vec2<bool>(any(vec4<bool>(true, true, true, true)), true);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    let var_0 = !func_4(func_2(Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(41974u, u_input.a)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 22947u)))), vec3<i32>(-52248i, func_3(firstTrailingBit(2147483647i), ~vec3<i32>(-8015i, 21612i, 2147483647i)), ~(-1i)));
    var var_1 = ~(~vec2<i32>(1i, 40735i));
    var_1 = ~(~vec2<i32>(_wgslsmith_sub_i32(var_1.x, ~17139i), ~abs(-60052i)));
    var var_2 = true;
    global0 = array<vec2<f32>, 21>();
    return var_1.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = arg_0.a.zxy;
    var var_1 = Struct_2(~vec2<u32>(48589u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(0u, u_input.a, 4294967295u), countOneBits(vec3<u32>(u_input.a, 12555u, 34651u)))), func_2(Struct_2(vec2<u32>(countOneBits(1u), 1065u), Struct_1(vec4<u32>(7888u, u_input.a, 39272u, 18250u) ^ vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)))));
    var var_2 = Struct_2(firstTrailingBit(abs(vec2<u32>(var_1.a.x, _wgslsmith_add_u32(u_input.a, var_1.b.a.x)))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~70496u, _wgslsmith_add_u32(u_input.a, 46588u), var_1.a.x, u_input.a), abs(vec4<u32>(var_1.a.x, 1u, var_1.a.x, u_input.a)))));
    var_0 = arg_0.a.xyy;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(5447u, 21u)] * vec2<f32>(_wgslsmith_f_op_f32(-159f + 621f), _wgslsmith_f_op_f32(step(-1296f, 797f))))) + global0[_wgslsmith_index_u32(abs(var_1.a.x), 21u)]);
    return Struct_2(vec2<u32>(var_1.b.a.x, ~_wgslsmith_sub_u32(4294967295u, var_2.a.x)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 21>();
    let var_0 = func_5(Struct_3(vec4<bool>(true | select(true, true, false), false, true, true)), vec3<bool>(select(_wgslsmith_div_i32(2147483647i, -1687i), func_1(false, 209f, vec4<bool>(true, true, false, false)), true) <= _wgslsmith_add_i32(-20832i, 1i), true, true));
    var var_1 = vec2<bool>(all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), func_4(Struct_1(var_0.b.a), vec3<i32>(12872i, -30334i, -46481i)).x), false)), true | (_wgslsmith_mult_u32(func_2(var_0).a.x, 43989u) <= 4294967295u));
    var var_2 = -firstLeadingBit(vec4<i32>(~2147483647i, -_wgslsmith_dot_vec2_i32(vec2<i32>(28414i, -2147483647i), vec2<i32>(-25228i, 2147483647i)), 1i, abs(_wgslsmith_mult_i32(47867i, -2545i))));
    let var_3 = Struct_3(!select(vec4<bool>(!var_1.x, all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), var_1.x, any(vec3<bool>(var_1.x, false, var_1.x))), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(false, false, true, var_1.x)), var_1.x | true));
    var var_4 = select(!vec4<bool>(true, var_2.x == ~var_2.x, false, any(!vec3<bool>(false, var_1.x, false))), select(!(!vec4<bool>(var_3.a.x, var_3.a.x, true, false)), var_3.a, var_1.x), true);
    let var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(var_2.xz, var_2.yw), _wgslsmith_mult_i32(var_2.x, 0i) ^ -83239i, var_2.x, var_2.x) | vec4<i32>(_wgslsmith_sub_i32(-41999i, var_2.x), _wgslsmith_mult_i32(-1i, -17808i), (2147483647i ^ var_2.x) & ~var_2.x, var_2.x | _wgslsmith_clamp_i32(-12207i, 1i, var_2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x) >> ((u_input.a ^ var_0.a.x) % 32u), i32(-1i) * -45539i, 1i, 21944i), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, var_2.x, -30569i), vec4<i32>(21511i, var_2.x, 25459i, 2147483647i)) & (vec4<i32>(var_2.x, var_2.x, var_2.x, 2147483647i) << (var_0.b.a % vec4<u32>(32u)))), vec4<i32>(1i, func_1(func_4(var_0.b, var_2.xyz).x, _wgslsmith_div_f32(-1226f, -132f), var_3.a), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(-35036i, var_2.x, var_2.x)), _wgslsmith_mod_i32(abs(1i), 1i))));
    global0 = array<vec2<f32>, 21>();
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-170f, -666f))), 764f)), min(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_2.x), vec2<i32>(var_2.x, 0i))), vec2<i32>(_wgslsmith_sub_i32(var_2.x, 33953i), var_5.x)), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(22857i, 51950i, -47700i, 1i), var_5)), -8051i));
}

