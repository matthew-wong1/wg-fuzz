struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = select(vec4<bool>(any(select(!vec3<bool>(arg_0.e.d.x, global0.x, global0.x), vec3<bool>(arg_0.c.a, arg_1.a, true), arg_0.e.d)), arg_0.e.c.x, any(global0.zy), arg_1.a), select(!select(!vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, arg_1.a, true, global0.x), true), !select(!vec4<bool>(arg_0.e.c.x, global0.x, true, true), select(vec4<bool>(true, arg_0.e.c.x, false, arg_1.a), vec4<bool>(true, false, arg_1.a, global0.x), true), any(vec4<bool>(false, arg_0.c.a, arg_0.e.d.x, arg_1.a))), any(select(!arg_0.e.d, arg_0.e.d, vec3<bool>(false, false, false)))), !select(select(vec4<bool>(false, true, arg_0.c.a, false), vec4<bool>(false, true, arg_0.c.a, global0.x), !arg_1.a), !vec4<bool>(global0.x, true, false, global0.x), arg_1.a));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-200f, -2017f))))), arg_0.e.b.x)), abs(_wgslsmith_add_i32(-(~arg_0.b), countOneBits(arg_2.x) << (min(arg_0.e.a, 45318u) % 32u))), Struct_2(true), vec2<u32>(4294967295u, arg_0.e.a), Struct_1(~arg_0.e.a, vec2<f32>(121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -328f))), !(!vec2<bool>(arg_0.c.a, true)), !arg_0.e.d, countOneBits(2147483647i)));
    var var_2 = var_1.e;
    var var_3 = vec4<f32>(137f, _wgslsmith_div_f32(173f, var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.x, 2086f))), var_1.e.b.x, false)) * -482f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-700f, var_1.a))), 1617f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(352f)))))));
    var_0 = vec4<bool>(true || var_0.x, var_0.x, var_0.x, var_0.x);
    return select(var_0.zzw, var_0.zxw, var_2.d);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> i32 {
    var var_0 = arg_1.c;
    let var_1 = arg_1.e.d;
    global0 = !vec3<bool>(var_1.x, global0.x, !((var_1.x || false) && false));
    var var_2 = var_1;
    var var_3 = firstLeadingBit(~(-1i));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: u32) -> vec4<bool> {
    var var_0 = vec3<bool>(!(_wgslsmith_div_u32(arg_3 | 1u, min(arg_3, 1u)) <= arg_3), false, !((!global0.x | arg_0.a) | !arg_0.a));
    let var_1 = vec2<i32>(func_4(global1.zz, Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2242f)))), 24839i, Struct_2(false | var_0.x), arg_2.zy, Struct_1(~47793u, _wgslsmith_f_op_vec2_f32(arg_1.xz + vec2<f32>(1248f, -1792f)), vec2<bool>(false, global0.x), func_3(Struct_4(arg_1.x, u_input.b.x, Struct_2(var_0.x), vec2<u32>(32523u, 9683u), Struct_1(2599u, vec2<f32>(global1.x, -331f), vec2<bool>(false, var_0.x), vec3<bool>(arg_0.a, false, arg_0.a), 24832i)), Struct_2(true), vec2<i32>(24002i, u_input.b.x), vec2<i32>(u_input.a, 3843i)), u_input.b.x))), u_input.a);
    let var_2 = arg_1.x;
    var_0 = func_3(Struct_4(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(trunc(arg_1.x))), -u_input.b.x, Struct_2(true), vec2<u32>(~1u, arg_3), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-arg_1.xz), vec2<bool>(global1.x > -129f, true), !vec3<bool>(var_0.x, true, var_0.x), 0i)), Struct_2(all(func_3(Struct_4(global1.x, 0i, Struct_2(false), arg_2.xx, Struct_1(arg_3, vec2<f32>(global1.x, -215f), vec2<bool>(arg_0.a, var_0.x), vec3<bool>(var_0.x, true, true), var_1.x)), Struct_2(arg_0.a), -vec2<i32>(-1i, -2147483647i), u_input.b.zw))), -countOneBits(vec2<i32>(_wgslsmith_div_i32(26944i, -2147483647i), -2147483647i)), select(min(vec2<i32>(35348i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 35002i, u_input.a), u_input.b.yzw)), firstLeadingBit(-vec2<i32>(u_input.b.x, -52720i))), u_input.b.zx, !arg_0.a));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1), arg_1);
    return vec4<bool>(true, any(global0.zx), var_0.x, !select(select(var_0.x, true, true), true, true));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = global1.x;
    var var_1 = Struct_2(true);
    var_1 = Struct_2(arg_1.x >= -400f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 1370f, arg_1.x), arg_1, true)) - _wgslsmith_f_op_vec4_f32(sign(arg_1))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, arg_1.x, 1000f, -320f) * arg_1), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, global1.x, 275f))), func_2(Struct_2(false), vec3<f32>(global1.x, 265f, 427f), vec4<u32>(1u, 54237u, 37421u, 1u), 0u)))) + arg_1));
    var var_3 = Struct_2(!any(!vec3<bool>(false, global0.x, global0.x)) & false);
    return vec3<i32>(u_input.b.x, 0i, ~(0i ^ min(~u_input.b.x, func_4(vec2<f32>(529f, 2007f), Struct_4(global1.x, 1i, Struct_2(var_3.a), vec2<u32>(1056u, 4899u), Struct_1(19323u, vec2<f32>(global1.x, -1952f), global0.zx, vec3<bool>(var_1.a, var_3.a, false), u_input.b.x))))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<bool> {
    global1 = vec3<f32>(-1435f, 1401f, -672f);
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - global1.x))), 364f, 615f, global1.x)))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 82774u), vec2<u32>(18653u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(68343u, 14875u)))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(45681u, 3871u), 51u), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 36454u), vec2<u32>(4294967295u, 161310u)), _wgslsmith_add_vec2_u32(vec2<u32>(78188u, 42063u), vec2<u32>(46932u, 5947u)))));
    let var_2 = Struct_2(select(!all(!arg_0), false && ((global0.x & arg_2.a) & (false && arg_0.x)), true));
    let var_3 = global1.yz;
    return vec4<bool>(!(!select(!var_2.a, global1.x > global1.x, !arg_0.x)), arg_0.x, true, !(var_2.a | arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<bool>(global0.x, !(!select(false, true, false)), global0.x), max(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -54452i, u_input.b.x), u_input.b.zxy), func_1(1i, vec4<f32>(1943f, global1.x, global1.x, -893f))), ~u_input.b.yxx) | vec3<i32>(min(-18091i, reverseBits(-2147483647i)), _wgslsmith_mult_i32(u_input.a, ~2147483647i), _wgslsmith_dot_vec3_i32(reverseBits(u_input.b.xwx), vec3<i32>(u_input.b.x, u_input.a, u_input.b.x))), Struct_2(false));
    var var_1 = u_input.b.x;
    global0 = var_0.xzz;
    var_1 = u_input.b.x ^ ~_wgslsmith_mult_i32(-35380i >> (1u % 32u), -u_input.a);
    let var_2 = -u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(17910i, vec4<f32>(_wgslsmith_f_op_f32(-610f * global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + _wgslsmith_f_op_f32(global1.x - global1.x)), global1.x, -1000f)).xy, abs(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, ~0u, ~43338u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1172f, 437f, 982f, 523f), vec4<f32>(global1.x, 1158f, global1.x, 1097f), vec4<bool>(true, global0.x, false, true))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-227f, global1.x, 125f, global1.x), vec4<f32>(720f, global1.x, 1151f, global1.x), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1358f, global1.x, -984f, 804f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) - 1000f) * -1181f)), max(-2147483647i, -7044i));
}

