struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = vec4<u32>(~0u, 69549u, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 29981u, 1907u) & vec4<u32>(12791u, arg_0.a, u_input.b.x, 1u), u_input.b << (u_input.b % vec4<u32>(32u))), 6661u), _wgslsmith_dot_vec2_u32(u_input.b.xx, ~countOneBits(vec2<u32>(20591u, 1u))));
    let var_1 = arg_0;
    let var_2 = -2223f;
    var var_3 = arg_0;
    var_3 = Struct_1(var_3.a);
    return !select(vec4<bool>(~arg_0.a > (u_input.e | var_1.a), var_2 > _wgslsmith_f_op_f32(-var_2), any(vec2<bool>(false, true)), (i32(-1i) * -2147483647i) == _wgslsmith_mult_i32(u_input.d, 9556i)), vec4<bool>(true, true, true, true), false);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(309f, 1000f), -346f, 960f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1209f, 1103f, arg_0, -281f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1789f, arg_0, 419f, arg_0)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0))), _wgslsmith_f_op_f32(-arg_0), arg_0)));
    var var_1 = Struct_1(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.e, ~_wgslsmith_mult_u32(4294967295u, u_input.e))));
    var var_2 = vec2<bool>(all(vec4<bool>(arg_1.x, true, any(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true)), arg_1.x);
    let var_3 = select(vec4<bool>(var_2.x, arg_1.x, arg_1.x && !all(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), true), func_3(Struct_1(reverseBits(u_input.b.x << (u_input.b.x % 32u)))), vec4<bool>(var_2.x, !(!arg_1.x), true, !arg_1.x));
    let var_4 = Struct_1(~(var_1.a ^ max(~44289u, var_1.a)));
    return -1i;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> vec2<u32> {
    let var_0 = vec3<i32>(arg_0, countOneBits(48463i), arg_0);
    var var_1 = Struct_1(_wgslsmith_mod_u32(u_input.b.x | _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.e))), u_input.b.x));
    let var_2 = vec4<bool>(-1000f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), true, 1i > _wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(21576i, arg_0, var_0.x, arg_0))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(20766i, u_input.d, var_0.x, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(6737i, 10496i, -34655i, 1i), vec4<i32>(var_0.x, -2147483647i, 11822i, 49040i)), ~vec4<i32>(1i, u_input.d, arg_0, 0i))), true);
    var var_3 = !(!select(!var_2.xzw, select(var_2.xzy, select(vec3<bool>(var_2.x, true, true), var_2.xxz, var_2.ywz), var_2.zww), var_2.ywx));
    var_1 = Struct_1(1u);
    return u_input.b.wx;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~u_input.b.yxx;
    let var_1 = ~func_4(min(14708i >> (~var_0.x % 32u), func_2(-402f, vec2<bool>(true, false)) | u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1974f, 688f, -1109f) * vec3<f32>(153f, -1894f, 750f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, 244f, -324f)))));
    let var_2 = Struct_1(_wgslsmith_div_u32(~0u, 26653u) & firstTrailingBit((var_0.x << (54949u % 32u)) << (_wgslsmith_clamp_u32(25108u, arg_0.a, u_input.b.x) % 32u)));
    var var_3 = vec2<bool>(true, true);
    var var_4 = Struct_1(arg_0.a);
    return 0u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(934f, -127f)) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))) == 2369f;
    return Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.yy, u_input.b.zz), min(~vec2<u32>(26706u, arg_1.a), u_input.b.yw))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1i;
    let var_1 = Struct_1(_wgslsmith_sub_u32(4760u, arg_0.a));
    let var_2 = var_1;
    let var_3 = func_5(var_1, func_5(func_5(Struct_1(0u), arg_0, vec2<i32>(u_input.a, u_input.c.x), false), Struct_1(var_2.a), ~u_input.c, !all(func_3(var_2).zw)), u_input.c, true);
    let var_4 = func_5(var_3, arg_0, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 11432i << (var_1.a % 32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, firstLeadingBit(u_input.c.x)), _wgslsmith_add_vec2_i32(u_input.c, u_input.c))), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_6(func_5(Struct_1(func_1(Struct_1(32787u))), Struct_1(_wgslsmith_clamp_u32(0u, 4294967295u, var_0)), countOneBits(select(u_input.c, u_input.c >> (vec2<u32>(1u, 10590u) % vec2<u32>(32u)), vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1330f, -367f, 287f), vec3<f32>(861f, 682f, -889f)))))));
    var var_3 = func_5(Struct_1(~6114u), func_6(Struct_1(_wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b))), _wgslsmith_mod_vec2_i32(-u_input.c, min(-u_input.c, u_input.c)), true);
    let var_4 = !vec2<bool>(false, true && func_3(Struct_1(28689u)).x);
    var var_5 = min(~_wgslsmith_sub_i32(~(~u_input.c.x), _wgslsmith_mod_i32(u_input.a << (u_input.b.x % 32u), -50964i >> (var_1.a % 32u))), u_input.c.x);
    var_1 = Struct_1(~var_0);
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1034f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-986f)))))), 1115f));
    let var_6 = Struct_1(81211u >> (var_1.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~_wgslsmith_div_u32(func_4(i32(-1i) * -4754i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_2.x, -1300f), vec3<f32>(-407f, var_2.x, var_2.x)))).x, countOneBits(_wgslsmith_mult_u32(var_0, var_6.a))));
}

