struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_4) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = var_0;
    let var_2 = arg_2;
    let var_3 = Struct_4(~_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(44245i), arg_1.c), -min(vec2<i32>(arg_3.a.x, var_1.a.x), var_0.a), vec2<i32>(arg_3.a.x, var_0.a.x) ^ _wgslsmith_div_vec2_i32(arg_3.a, arg_0.a)), vec4<bool>(true, false, all(!vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.b.x, arg_3.b.x)), !((8062i != var_1.a.x) & true)));
    var var_4 = 1f;
    return ~var_1.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~func_3(Struct_4(arg_1.yy, vec4<bool>(arg_0.x, true, false, arg_0.x)), Struct_2(vec4<u32>(0u, u_input.a.x, 1u, u_input.b), -876f, -4952i, u_input.a.x, Struct_1(vec3<i32>(2147483647i, arg_1.x, 15182i))), vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 337f), Struct_4(vec2<i32>(arg_1.x, -57591i), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), (arg_1.wz >> (u_input.a.yz % vec2<u32>(32u))) << (vec2<u32>(60676u, u_input.a.x) % vec2<u32>(32u))), -arg_1.xy), select(select(!(!vec4<bool>(arg_0.x, false, arg_0.x, false)), select(vec4<bool>(true, false, true, false), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(!arg_0.x, true | arg_0.x, true, arg_0.x)), vec4<bool>(all(vec4<bool>(arg_0.x, false, true, arg_0.x)), _wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(-arg_2.x), 2147483647i <= arg_1.x, arg_0.x), vec4<bool>(all(vec4<bool>(true, arg_0.x, arg_0.x, false)), false, arg_0.x, arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1319f + arg_2.x)) + arg_2.x)));
    let var_2 = arg_1.zxw;
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.zx, select(vec2<u32>(104543u, 4294967295u), ~u_input.a.xy, var_0.b.xw)), select(u_input.a.x ^ 4294967295u, ~u_input.b, (var_2.x << (u_input.a.x % 32u)) >= var_2.x), _wgslsmith_div_u32(1u, 77279u), 33336u << (u_input.b % 32u));
    var_0 = Struct_4(countOneBits(_wgslsmith_div_vec2_i32(countOneBits(arg_1.xw | vec2<i32>(var_2.x, var_0.a.x)), select(-var_2.xy, var_2.xx, var_0.b.x))), var_0.b);
    return Struct_4(abs(vec2<i32>(_wgslsmith_add_i32(var_0.a.x, 0i), firstTrailingBit(1i))), !(!(!var_0.b)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<i32>(firstTrailingBit(firstTrailingBit(arg_2)), 1i, _wgslsmith_div_i32(abs(~(-arg_2)), arg_2));
    var var_1 = func_2(!vec2<bool>(true, arg_0), vec4<i32>(arg_2 & var_0.x, var_0.x, min(arg_2, select(var_0.x, arg_2, 2147483647i != arg_2)), firstLeadingBit(min(var_0.x, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) + _wgslsmith_f_op_f32(arg_1.x * arg_1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.wz))))));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.ww)));
    return Struct_2(abs(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31243u, var_3.x), var_3.yy), ~79389u, var_3.x, 8327u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.x))), ~30022i, 0u, Struct_1(vec3<i32>(reverseBits(var_0.x), _wgslsmith_sub_i32(arg_2, var_1.a.x) >> (4294967295u % 32u), 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(715f, -628f, 545f, -134f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1735f, 384f, 298f, -1287f) * vec4<f32>(-673f, 1124f, 118f, 674f)) - vec4<f32>(-2807f, -1693f, -1304f, -469f)))), max(1i, (1i << (u_input.b % 32u)) & (-2147483647i >> (_wgslsmith_mod_u32(0u, 1u) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(774f, -1501f), -396f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(380f, _wgslsmith_div_f32(-1339f, 1189f)))))));
    var var_2 = func_2(!(!(!func_2(vec2<bool>(false, false), vec4<i32>(-47679i, var_0.c, 2147483647i, 2147483647i), vec2<f32>(-525f, -505f)).b.wz)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_0.e.a.x, var_0.c, 43025i, 2147483647i)), ~vec4<i32>(1i, var_0.e.a.x, -32192i, var_0.e.a.x)), firstLeadingBit(vec4<i32>(var_0.e.a.x, -21347i, var_0.c, -2147483647i)) | ~vec4<i32>(var_0.e.a.x, 2147483647i, var_0.e.a.x, var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1556f, -799f) * vec2<f32>(var_0.b, var_0.b)))))));
    var var_3 = func_1(var_2.b.x & true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1028f, 1332f, -1856f)))))), func_3(func_2(var_2.b.wy, _wgslsmith_add_vec4_i32(~vec4<i32>(-5120i, 0i, 2147483647i, var_2.a.x), vec4<i32>(var_2.a.x, 74292i, var_2.a.x, var_0.c)), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b)), 1129f)), Struct_2(~vec4<u32>(4294967295u, u_input.b, 23987u, u_input.b) >> (select(vec4<u32>(19629u, 1u, var_0.d, 34346u), vec4<u32>(var_0.d, var_0.d, u_input.b, var_0.a.x), var_2.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f * 1000f)), select(var_2.a.x, func_3(Struct_4(vec2<i32>(var_2.a.x, -6311i), var_2.b), var_0, vec4<f32>(var_0.b, 553f, -554f, 1000f), Struct_4(var_2.a, vec4<bool>(false, false, var_2.b.x, true))).x, !var_2.b.x), var_0.a.x, var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-936f, -197f, var_0.b, var_0.b)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1523f, var_0.b, var_0.b, -398f)))))), func_2(vec2<bool>(true, true), vec4<i32>(_wgslsmith_add_i32(-50297i, 1817i), -var_0.e.a.x, 23780i, reverseBits(-22306i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-191f, var_0.b))))).x).e;
    var_1 = _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(step(var_0.b, -1220f)));
    var var_4 = ~(~(min(~18924u, ~var_0.d) | max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a.zx), 5723u << (var_0.d % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(2147483647i, 0i), var_0.a.x);
}

