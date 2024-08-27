struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 12500u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<i32> {
    global0 = arg_1.e;
    let var_0 = arg_3.xy;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -909f), arg_0.c, arg_0.b, Struct_2(arg_1, countOneBits(select(min(arg_0.c.a, arg_1.a), select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, arg_1.a.x), var_0), all(vec3<bool>(true, true, arg_3.x)))), !arg_3.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x + -2628f), 1017f), arg_0.d))));
    var var_2 = -124f;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(740f, arg_0.b, _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2180f, arg_0.d.x, 190f) * vec3<f32>(486f, var_1.a, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, var_1.c, arg_0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.a, var_1.c) * vec3<f32>(-1000f, var_1.a, 157f))))), select(arg_3, select(vec3<bool>(any(vec4<bool>(arg_1.e, true, var_0.x, var_1.d.c.x)), var_1.b.e, !var_1.d.c.x), !vec3<bool>(true, var_0.x, arg_1.e), all(select(vec3<bool>(var_1.b.e, true, true), vec3<bool>(arg_0.c.e, true, true), vec3<bool>(arg_0.c.e, arg_3.x, var_1.b.e)))), select(true, !any(vec3<bool>(arg_1.e, false, var_1.d.c.x)), all(!arg_3.zy)))));
    return countOneBits(-vec2<i32>(1297i, var_1.b.a.x));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = any(vec3<bool>(false, u_input.b >= ~(~u_input.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0, arg_0, false)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1256f)));
    global1 = 4294967295u;
    return Struct_1(max(func_3(Struct_3(u_input.a, 1219f, Struct_1(vec2<i32>(u_input.a, u_input.a), u_input.b, 2147483647i, u_input.b, true), vec2<f32>(-2140f, -562f)), Struct_1(vec2<i32>(2290i, 809i), u_input.b, -1i, u_input.b, true), vec2<u32>(u_input.b, 11990u), vec3<bool>(true, true, true)) ^ ~(-vec2<i32>(10079i, -2147483647i)), min(min(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 35800i)) >> (~vec2<u32>(u_input.b, 64143u) % vec2<u32>(32u)), min(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -7227i), vec2<i32>(u_input.a, -1237i), vec2<i32>(5521i, 34098i))))), u_input.b, -7718i, abs(u_input.b), all(vec2<bool>(false, u_input.a != -8037i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_3(arg_1.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1.b.d.x)), _wgslsmith_f_op_f32(717f - arg_1.b.b))) - _wgslsmith_f_op_f32(f32(-1f) * -475f)))), Struct_1(-countOneBits(vec2<i32>(49169i, arg_0.a.c)), _wgslsmith_mod_u32(arg_0.a.b, _wgslsmith_clamp_u32(70435u, _wgslsmith_mod_u32(arg_0.a.d, 1u), ~arg_1.a.x)), reverseBits((arg_0.b.x << (arg_0.a.d % 32u)) >> (_wgslsmith_dot_vec2_u32(arg_1.a.wx, vec2<u32>(arg_1.b.c.d, arg_1.a.x)) % 32u)), ~(~u_input.b), select(!arg_0.c.x, select(arg_1.b.c.b, 46743u, false) >= _wgslsmith_add_u32(u_input.b, arg_0.a.d), true)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.b.d, arg_1.b.d), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.b + -2125f), arg_1.b.d.x), _wgslsmith_f_op_vec2_f32(arg_1.b.d - _wgslsmith_f_op_vec2_f32(-arg_1.b.d)))));
    global0 = true;
    global1 = 785u;
    var var_1 = 49956u <= u_input.b;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(583f, -1164f))) - _wgslsmith_f_op_f32(2271f * -1249f)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1502f)) * 304f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(654f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.d.x - var_0.b) - _wgslsmith_f_op_f32(arg_1.b.d.x + arg_1.b.b))))), Struct_2(func_2(var_0.d.x), _wgslsmith_add_vec2_i32(arg_1.b.c.a, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-12196i, arg_0.b.x), vec2<i32>(-1i, 2147483647i)), ~arg_0.b.x)), !arg_0.c), var_0.d);
    return ~(~48476u);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> vec4<u32> {
    global0 = -func_3(arg_2, arg_2.c, firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, arg_2.c.d), vec2<u32>(4616u, 57246u), vec2<u32>(arg_0, arg_2.c.b))), !select(vec3<bool>(arg_1, true, arg_2.c.e), vec3<bool>(arg_1, true, true), vec3<bool>(arg_2.c.e, false, false))).x <= _wgslsmith_add_i32(min(arg_2.c.c, arg_2.a), 0i);
    let var_0 = true || all(vec2<bool>(any(!vec2<bool>(arg_2.c.e, false)), false));
    var var_1 = vec3<bool>(arg_1, ~u_input.b < 49052u, arg_1);
    var var_2 = vec3<bool>(true || var_1.x, false, var_1.x);
    var var_3 = abs(~(~vec3<u32>(3098u, u_input.b, 19075u) & select(vec3<u32>(arg_0, arg_2.c.d, arg_0), vec3<u32>(1u, 10671u, u_input.b), vec3<bool>(var_1.x, arg_2.c.e, false)))) & vec3<u32>(~u_input.b, ~53000u, u_input.b);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(21635u, 85817u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 0u, u_input.b), ~vec3<u32>(var_3.x, var_3.x, 1u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(34706u, 1u, 0u), vec3<u32>(arg_2.c.b, 4294967295u, 4294967295u)) % vec3<u32>(32u))), ~(~arg_2.c.d)), ~firstLeadingBit(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, arg_2.c.b, 19143u)))), firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(23813u, arg_0, 0u, arg_2.c.b), vec4<u32>(arg_0, 13273u, var_3.x, arg_2.c.b))));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = true;
    let var_1 = false;
    global1 = 0u;
    global1 = u_input.b;
    var var_2 = var_1;
    return StorageBuffer(0u, func_5(func_4(Struct_2(func_2(-118f), vec2<i32>(u_input.a, 0i), select(vec2<bool>(var_0, false), vec2<bool>(var_1, false), false)), Struct_5(max(vec4<u32>(arg_0.x, 17248u, 0u, arg_0.x), vec4<u32>(arg_0.x, 120311u, arg_0.x, 7979u)), Struct_3(u_input.a, 916f, Struct_1(vec2<i32>(u_input.a, u_input.a), u_input.b, u_input.a, u_input.b, true), vec2<f32>(599f, -1121f)), !var_0, 1i ^ u_input.a)), false, Struct_3(-1i, _wgslsmith_f_op_f32(sign(573f)), func_2(_wgslsmith_f_op_f32(444f + -1031f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(857f, -177f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(363f, 241f), vec2<f32>(-515f, -510f))), vec2<bool>(true, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = select(vec2<bool>(true, ((40209i ^ u_input.a) >= 31214i) & true), vec2<bool>(select(any(vec4<bool>(true, true, true, true)), select(true, select(true, false, true), any(vec3<bool>(false, true, true))), any(vec2<bool>(true, false))), true), !((1u | ~u_input.b) > ~u_input.b));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(u_input.b, 6324u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(31928u, 0u), vec2<u32>(u_input.b, 24565u))), vec2<u32>(countOneBits(1u), 24462u)));
}

