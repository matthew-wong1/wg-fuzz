struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = -max(vec2<i32>(20976i, reverseBits(firstTrailingBit(-32976i))), vec2<i32>(u_input.b.x, 1i ^ _wgslsmith_mult_i32(1322i, u_input.a)));
    var var_1 = Struct_2(Struct_1(!vec2<bool>(false, any(vec2<bool>(true, true))), vec4<i32>(u_input.a, var_0.x, -1i, _wgslsmith_sub_i32(i32(-1i) * -77055i, max(0i, u_input.a)))), false);
    let var_2 = Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(false, true, var_1.a.a.x)), true), var_1.a.b), false);
    var var_3 = 7810u;
    var var_4 = var_2;
    return !vec3<bool>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.b.x, 2147483647i, u_input.b.x, 50536i), var_1.a.b) <= var_4.a.b.x, true, false);
}

fn func_2() -> f32 {
    let var_0 = !select(func_3(), vec3<bool>(true, any(func_3()), true), false);
    var var_1 = Struct_1(var_0.zz, _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, select(-22065i, -2147483647i, var_0.x), 1i, u_input.b.x), select(-abs(u_input.b), u_input.b, vec4<bool>(false, true, true, var_0.x))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(41095u, 0u)))) & 1u, _wgslsmith_clamp_u32(~(~20675u), 1u, select(firstTrailingBit(~25792u), 54896u, false)), reverseBits(83891u));
    var_1 = Struct_1(!var_1.a, u_input.b);
    var var_3 = -624f;
    return -938f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1183f, 1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-854f, 237f), vec2<f32>(1564f, 247f), vec2<bool>(false, false))) + vec2<f32>(-834f, -961f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(max(-913f, -1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(849f, 730f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, -1743f) - vec2<f32>(426f, 1044f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(587f, -414f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, -2171f) + vec2<f32>(1002f, -1092f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-986f, 446f) + vec2<f32>(-1655f, -932f))), vec2<bool>(all(vec3<bool>(true, true, false)), true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 156f)));
    var var_2 = Struct_1(select(vec2<bool>(!all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec2<bool>(true, true)), u_input.b.x != (u_input.a | u_input.b.x)), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_sub_vec4_i32(-firstLeadingBit(u_input.b), vec4<i32>(-1i) * -abs(u_input.b)));
    var var_3 = Struct_2(Struct_1(var_2.a, vec4<i32>(7467i, -15531i, _wgslsmith_add_i32(1i, u_input.b.x), (var_2.b.x & -10953i) << (~8998u % 32u))), !all(select(!vec3<bool>(var_2.a.x, var_2.a.x, false), select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(true, true, false), true), true)));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1, var_0.x) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, 1395f, var_0.x), vec3<f32>(-142f, var_1, var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1905f, _wgslsmith_f_op_f32(min(var_1, var_1)), var_1))), !vec3<bool>(true, all(vec3<bool>(var_3.b, var_2.a.x, true)), all(var_3.a.a)))), Struct_1(var_2.a, select(countOneBits(vec4<i32>(-32315i, 1i, u_input.b.x, -1i)) & vec4<i32>(-1i, -30605i, var_3.a.b.x, var_2.b.x), ~u_input.b & _wgslsmith_clamp_vec4_i32(var_3.a.b, vec4<i32>(var_2.b.x, 1i, 24533i, var_3.a.b.x), vec4<i32>(var_3.a.b.x, var_3.a.b.x, 1i, u_input.b.x)), !select(vec4<bool>(var_2.a.x, false, var_3.b, var_3.b), vec4<bool>(var_3.a.a.x, true, var_2.a.x, var_2.a.x), false))), max(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(9365u, 4294967295u, 1u))) ^ _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(97532u, 73397u, 4294967295u)), select(vec3<u32>(1u, 1u, 53815u), vec3<u32>(4294967295u, 4294967295u, 34113u), vec3<bool>(true, var_2.a.x, var_2.a.x)) | vec3<u32>(1u, 4294967295u, 1u)), Struct_2(var_3.a, !(_wgslsmith_div_i32(1i, u_input.a) == _wgslsmith_mod_i32(var_2.b.x, -2502i))));
    return Struct_1(var_4.d.a.a, vec4<i32>(var_4.b.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_4.b.b.x, var_4.b.b.x, 6313i), -vec3<i32>(1i, -12441i, 12909i), max(vec3<i32>(0i, var_2.b.x, var_3.a.b.x), var_2.b.wxy)), -vec3<i32>(-2147483647i, var_2.b.x, 1i)), var_4.d.a.b.x, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-2147483647i, -2147483647i, var_4.d.a.b.x, var_2.b.x)), -var_4.d.a.b)));
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = vec4<bool>(any(func_1().a), 1224f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -701f), 582f, true)), any(vec2<bool>(true, false)))), func_1().a.x, arg_0.a.a.x);
    var_0 = select(!(!(!(!vec4<bool>(true, arg_0.a.a.x, var_0.x, var_0.x)))), select(!vec4<bool>(!arg_0.a.a.x, true, !var_0.x, arg_0.a.a.x), vec4<bool>(all(select(arg_0.a.a, vec2<bool>(true, true), false)), arg_0.a.a.x, select(func_3().x, false, false), arg_0.a.a.x), select(vec4<bool>(arg_0.a.a.x && false, var_0.x || false, var_0.x, true), select(select(vec4<bool>(false, var_0.x, arg_0.a.a.x, var_0.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, true), true), select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, arg_0.a.a.x, false, arg_0.a.a.x), arg_0.a.a.x), select(vec4<bool>(arg_0.a.a.x, var_0.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, false, false), vec4<bool>(arg_0.a.a.x, false, var_0.x, false))), arg_0.a.a.x)), all(select(select(select(vec4<bool>(true, false, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(var_0.x, arg_0.a.a.x, arg_0.a.a.x, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, false)), !vec4<bool>(arg_0.a.a.x, false, true, true), vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x)), vec4<bool>(true, var_0.x, arg_0.a.a.x, true), all(vec4<bool>(true, true, true, true)))));
    var var_1 = ~_wgslsmith_clamp_u32(46676u, 1u, 0u);
    let var_2 = arg_0.a;
    var_0 = vec4<bool>(true, false, false, var_2.a.x);
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(func_1()))));
    var_0 = -479f;
    var_0 = 617f;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-213f, -425f), vec2<f32>(636f, -543f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-188f, 339f), vec2<f32>(-344f, -737f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1353f, -1520f)))))));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

