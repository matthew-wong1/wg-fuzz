struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f - -1729f) + _wgslsmith_f_op_f32(-arg_0))) * -1000f), -1014f));
    var var_1 = vec3<f32>(-991f, _wgslsmith_f_op_f32(exp2(arg_0)), -766f);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2324f, 1f, -764f, 1272f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1420f * arg_0)), 1f, _wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(min(var_1.x, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-346f + var_0), _wgslsmith_f_op_f32(f32(-1f) * -947f)), false)));
    let var_3 = Struct_2(Struct_1(firstLeadingBit(max(abs(vec2<u32>(20146u, 1u)), vec2<u32>(u_input.d.x, global1.a.x)))));
    global0 = vec3<u32>(1u, ~u_input.d.x, select(~firstLeadingBit(1u), 4294967295u, any(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(ceil(var_0));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(612f))) - 496f)));
    let var_1 = arg_1;
    global1 = var_1.b;
    var_0 = 1092f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1586f - -582f) + _wgslsmith_f_op_f32(func_3(-448f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f + -1218f) - _wgslsmith_f_op_f32(-568f * -795f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f))))), u_input.b.x, ~(-13587i), arg_0, !vec2<bool>(true, ~u_input.b.x < var_1.a));
    return arg_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    var var_0 = true;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = -firstTrailingBit(2147483647i);
    var var_3 = vec2<i32>((arg_1.a << (~1u % 32u)) & -16920i, -11690i);
    var var_4 = vec3<u32>(63546u, abs(25524u), abs(17344u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-1159f)))) * _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(201f - 662f), _wgslsmith_f_op_f32(1550f - 2018f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2140f, 143f) - _wgslsmith_f_op_f32(step(1243f, 1000f)))))), 2011f);
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-576f - -1043f)))), 939f, _wgslsmith_f_op_f32(func_4(func_2(true, Struct_4(u_input.c.x, Struct_1(vec2<u32>(40938u, global1.a.x)), vec2<i32>(2147483647i, u_input.c.x))), Struct_4(u_input.c.x, func_2(false, Struct_4(u_input.a.x, Struct_1(global1.a), vec2<i32>(u_input.c.x, u_input.a.x))), -u_input.b.xx), Struct_1(global1.a), vec3<u32>(0u, u_input.d.x, global1.a.x) | firstTrailingBit(vec3<u32>(global1.a.x, global0.x, u_input.d.x)))), -1000f)));
    let var_1 = Struct_2(Struct_1(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), global0.zz))));
    return func_2(true, Struct_4(u_input.a.x, Struct_1(var_1.a.a), -u_input.b.zz)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(abs(vec2<u32>(_wgslsmith_mult_u32(countOneBits(global0.x), 1u), select(~global1.a.x, global0.x, u_input.b.x > 26278i))));
    let var_0 = Struct_1(func_1());
    let var_1 = var_0;
    let var_2 = Struct_1(func_1());
    global1 = func_2(true, Struct_4(_wgslsmith_mult_i32(abs(firstTrailingBit(-26723i)), u_input.b.x), Struct_1(~vec2<u32>(18350u, var_0.a.x)), abs(vec2<i32>(-1i) * -u_input.c)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1559f - -984f), 1235f))) - -739f), ~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, u_input.c.x, 8045i, ~(-1i)) << (abs(~vec4<u32>(global1.a.x, var_0.a.x, 44823u, var_0.a.x)) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -17512i, u_input.c.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 33836i)), firstTrailingBit(vec2<i32>(u_input.b.x, u_input.a.x))), -u_input.a.x & reverseBits(-1i))), false, vec2<bool>(any(vec3<bool>(false, any(vec2<bool>(false, true)), 0i < u_input.a.x)), false));
    global0 = ~(vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, func_1().x), (0u >> (1u % 32u)) | ~var_1.a.x, func_2(any(var_3.e), Struct_4(-34658i, Struct_1(vec2<u32>(0u, 14737u)), u_input.a)).a.x) | vec3<u32>(select(global1.a.x, 4294967295u, true), _wgslsmith_mod_u32(19599u, max(4294967295u, 43827u)), max(27419u, u_input.d.x) | _wgslsmith_sub_u32(var_0.a.x, var_1.a.x)));
    var var_4 = Struct_2(func_2(true, Struct_4(-43066i, func_2(!var_3.d, Struct_4(u_input.b.x, Struct_1(vec2<u32>(var_1.a.x, var_0.a.x)), u_input.b.xz)), u_input.a)));
    let var_5 = vec2<i32>(firstLeadingBit((~u_input.c.x << (var_2.a.x % 32u)) | (var_3.c | abs(2147483647i))), select(var_3.c, 17842i, !(!any(vec3<bool>(false, var_3.d, var_3.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-189i, var_3.c, u_input.a.x), u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + var_3.a), _wgslsmith_f_op_f32(sign(-1468f))) + -1261f), var_3.a), min(vec2<i32>(abs(var_5.x), var_5.x) << (~(vec2<u32>(var_1.a.x, var_2.a.x) >> (vec2<u32>(0u, var_2.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, ~(-46001i)), countOneBits(vec2<i32>(var_5.x, -16305i)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-327f, var_3.a, 377f)))))))), vec3<u32>(_wgslsmith_clamp_u32(1u, var_2.a.x << (~4294967295u % 32u), abs(_wgslsmith_clamp_u32(0u, 72968u, var_1.a.x))), u_input.d.x, global0.x));
}

