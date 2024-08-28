struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.c)))));
    var_0 = arg_0.c;
    var var_1 = ~firstTrailingBit(~7839u);
    var var_2 = select(!vec2<bool>(arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), !select(!vec2<bool>(arg_1, arg_1), !select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), true), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true))), select(vec2<bool>(arg_1, arg_1), vec2<bool>(all(vec2<bool>(true, arg_1)), !any(vec4<bool>(true, true, arg_1, arg_1))), !any(vec4<bool>(false, arg_1, arg_1, arg_1)) != arg_1));
    var_2 = select(vec2<bool>(all(!vec3<bool>(var_2.x, true, false)), var_2.x), !select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), false), !select(vec2<bool>(arg_1, var_2.x), vec2<bool>(false, arg_1), true), vec2<bool>(true, true)), !vec2<bool>(-25904i > (u_input.c.x ^ -1i), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(sign(var_0.x)))), var_0.x))) + arg_0.a.x);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1523f))) + _wgslsmith_f_op_f32(f32(-1f) * -300f))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-130f, 1000f, -1000f, -198f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -1227f, 1622f, -1433f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-163f, -962f, -813f, 490f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(874f, 1000f, 128f, -1494f) - vec4<f32>(-716f, 1190f, 1562f, 201f)))), reverseBits(~vec4<u32>(41644u, 0u, 4294967295u, 24691u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-720f, 612f)), vec2<f32>(2250f, -467f))) - vec2<f32>(2904f, 1f))), select(vec3<bool>(false, _wgslsmith_f_op_f32(-701f * -394f) != _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(215f, 1151f, 1000f, -1266f), vec4<u32>(46147u, 4294967295u, u_input.a.x, u_input.a.x), vec2<f32>(845f, -303f)), true)), all(vec3<bool>(true, true, true))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), !all(vec4<bool>(false, true, false, false))), true), ~(-arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.a.xwy * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(sign(var_0.a)), 120f))) - var_0.b.a.wwy);
    let var_2 = var_0.b;
    var var_3 = Struct_2(var_1.x, var_0.b, select(var_0.c, vec3<bool>(true, var_0.c.x == (var_0.b.b.x == 39388u), false), var_0.c), -_wgslsmith_mod_vec4_i32(max(vec4<i32>(var_0.d.x, arg_0.x, arg_0.x, arg_0.x), var_0.d), arg_0) & vec4<i32>(_wgslsmith_div_i32(var_0.d.x, var_0.d.x), u_input.c.x, 2147483647i, select(~2147483647i, _wgslsmith_mod_i32(32332i, 33744i), all(var_0.c.yx))));
    let var_4 = firstLeadingBit(vec3<u32>(~9775u, select(_wgslsmith_sub_u32(~var_2.b.x, ~13314u), 1u, false), max(4294967295u, ~_wgslsmith_add_u32(54588u, 0u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), -717f, 1512f, var_3.a) * var_0.b.a) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.a - var_0.b.a)))), vec4<u32>(~var_4.x << (u_input.b.x % 32u), var_2.b.x, u_input.a.x << (22261u % 32u), 10476u), _wgslsmith_f_op_vec2_f32(-var_0.b.c));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -303f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(max(-1034f, -1000f)), true)))));
    let var_1 = u_input.d.wz;
    var var_2 = var_1.x;
    let var_3 = func_2(-(~_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_3, u_input.c.x, -29643i, -23027i), countOneBits(vec4<i32>(1i, 14740i, u_input.c.x, 2147483647i)))));
    var var_4 = func_2(~select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, u_input.c.x, 1i), vec4<i32>(u_input.c.x, arg_3, -1100i, arg_3)), ~2147483647i, arg_3, arg_3), vec4<i32>(1i, 31328i, -u_input.c.x, u_input.c.x), !vec4<bool>(arg_2, true, arg_0.x, true)));
    return firstLeadingBit(-vec3<i32>(-14839i, arg_3, _wgslsmith_sub_i32(arg_3, 36036i)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_2.x;
    var var_1 = func_2(vec4<i32>(arg_1.x ^ ~arg_1.x, u_input.c.x & arg_3.x, ~(-22381i), abs(2147483647i)));
    let var_2 = ~var_1.b.x;
    var var_3 = select(vec2<i32>(arg_1.x, _wgslsmith_mult_i32(reverseBits(arg_3.x), arg_1.x)), u_input.c, vec2<bool>(true, true));
    return Struct_2(-497f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 185f, arg_2.x, var_1.a.x) - vec4<f32>(var_1.c.x, var_1.a.x, arg_2.x, var_0))) - var_1.a), u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, _wgslsmith_f_op_f32(-942f * -867f)))), vec3<bool>(true, var_1.b.x <= _wgslsmith_div_u32(~36204u, _wgslsmith_mod_u32(arg_0, 127916u)), true), countOneBits(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mod_u32(~(52776u | u_input.d.x), 4294967295u), -firstLeadingBit(max(func_1(vec2<bool>(false, true), vec4<bool>(false, false, true, false), true, u_input.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -27434i, u_input.c.x), vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec3<i32>(u_input.c.x, -1i, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-753f, _wgslsmith_f_op_f32(-799f + _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1717f, -1118f, 692f, 771f), vec4<u32>(u_input.b.x, 11333u, u_input.b.x, 0u), vec2<f32>(-516f, -483f)), false))), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)).a.x * _wgslsmith_f_op_f32(1184f + -363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) + -1208f)))), ~reverseBits(vec4<i32>(countOneBits(42553i), abs(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -9366i), u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -17138i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))));
    var var_1 = var_0;
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a));
}

