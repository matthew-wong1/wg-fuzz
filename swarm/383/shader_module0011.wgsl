struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a >> (u_input.d % 32u), u_input.c.x), abs(u_input.c.x)), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(~u_input.c.xy, ~vec2<u32>(4294967295u, 25221u))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(firstTrailingBit(~var_0 >> (~var_0 % vec2<u32>(32u))), ~u_input.c.wx));
    var var_2 = u_input.b.xyz;
    let var_3 = var_1.a;
    let var_4 = vec4<i32>(var_2.x, i32(-1i) * -34132i, var_2.x, 2147483647i);
    return Struct_2(~var_0.x >> (var_1.a % 32u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    let var_0 = arg_3.x;
    let var_1 = Struct_5(Struct_1(select(vec4<bool>(arg_1.x, 2147483647i >= u_input.b.x, true, arg_1.x && arg_1.x), vec4<bool>(all(vec3<bool>(false, arg_1.x, true)), true, true, !arg_1.x), true), select(!vec4<bool>(false, arg_1.x, true, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false)), !vec4<bool>(arg_1.x, false, false, arg_1.x))), select(~(u_input.c.wxy | vec3<u32>(u_input.c.x, 22857u, 0u)), vec3<u32>(~arg_2.a, 71687u ^ arg_2.a, abs(arg_2.a)), !vec3<bool>(true, false, arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, -1560f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(min(-955f, arg_0.x)), -1000f, _wgslsmith_f_op_f32(ceil(156f)))), false), vec2<f32>(-178f, 665f));
    let var_2 = ~vec3<i32>(u_input.b.x, firstLeadingBit(1i), min(-3399i, _wgslsmith_add_i32(-u_input.b.x, 1i)));
    let var_3 = max(-(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(abs(countOneBits(0i)), _wgslsmith_sub_i32(1i, 60723i)));
    var var_4 = vec2<u32>(52658u, ~(var_1.a.c.x << (~var_1.a.c.x % 32u)));
    return _wgslsmith_f_op_f32(floor(-2197f));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -752f))) - vec2<f32>(-1000f, -2250f)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), func_2(), _wgslsmith_clamp_vec4_i32(~u_input.b, vec4<i32>(u_input.b.x, -16194i, 2147483647i, u_input.b.x), min(u_input.b, u_input.b)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -415f, arg_0, arg_0)))))));
    var_0 = arg_0;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-396f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0)), -316f, true)) + 1000f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1643f);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = u_input.b.x;
    let var_1 = vec3<u32>(~(~(~u_input.a)), 111264u, _wgslsmith_mult_u32(59206u, firstLeadingBit(4294967295u)));
    var var_2 = select(min(var_1.x, countOneBits(38449u)), ~26945u, all(select(vec2<bool>(true, true), !vec2<bool>(arg_1.x, false), any(!vec4<bool>(true, arg_1.x, true, arg_1.x)))));
    let var_3 = false;
    var var_4 = vec2<bool>(true, !(!(!all(vec4<bool>(var_3, var_3, arg_1.x, var_3)))));
    return !vec4<bool>(!(~u_input.b.x < _wgslsmith_mod_i32(-1i, 1i)), true, !all(arg_1.yx), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(vec4<bool>(false, true, u_input.b.x > u_input.b.x, select(true, false, false)), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), func_4(func_1(1997f, vec3<u32>(79296u, u_input.a, u_input.c.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))), false), vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(false, true, false)))), true, false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), select(_wgslsmith_add_vec3_u32(abs(u_input.c.xxx), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 23237u, u_input.c.x), u_input.c.xxy, u_input.c.xyw)), vec3<u32>(u_input.c.x, abs(u_input.d), 1u), func_4(func_1(_wgslsmith_f_op_f32(func_3(vec2<f32>(-596f, 994f), vec2<bool>(true, false), Struct_2(u_input.c.x), u_input.b)), vec3<u32>(u_input.d, 1u, 78316u)), vec3<bool>(true, true, true)).yxy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), false);
    let var_1 = firstLeadingBit(u_input.b.zy | _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.zz), max(abs(vec2<i32>(u_input.b.x, 1i)), -vec2<i32>(2147483647i, 9868i))));
    let var_2 = func_2();
    let var_3 = ~8861u;
    let var_4 = u_input.b.zzx;
    let var_5 = Struct_1(var_0.a, func_4(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.x), 335f)), vec3<u32>(var_2.a, u_input.d, 1u)), var_0.a.zxx), select(_wgslsmith_add_vec3_u32(~u_input.c.xww, ~var_0.c), select(var_0.c, vec3<u32>(~var_0.c.x, ~1u, 0u), !var_0.b.zxz), !all(vec3<bool>(true, var_0.a.x, var_0.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))) + var_0.d), var_0.e);
    var var_6 = var_0.a.ww;
    var_6 = select(var_5.a.yy, var_5.b.yy, select(var_5.b.yz, var_5.a.zz, vec2<bool>(var_6.x, 0u > ~var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(u_input.b.x << (51761u % 32u), firstTrailingBit(var_4.x))), u_input.b.x), u_input.b.xy, vec4<u32>(1u, _wgslsmith_div_u32(~30250u, ~_wgslsmith_mult_u32(var_5.c.x, 0u)), firstTrailingBit(12969u), u_input.a), _wgslsmith_mod_vec3_u32(var_0.c, var_0.c) << (var_0.c % vec3<u32>(32u)), var_5.c.xy);
}

