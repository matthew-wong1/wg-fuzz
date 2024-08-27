struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 178f));
    var_0 = Struct_3(279f);
    var var_1 = var_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1061f))) + _wgslsmith_f_op_f32(-arg_1)));
    let var_3 = Struct_1(0u);
    return ~(~(-21618i));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = ~vec2<u32>(1u, 1u);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_div_i32(u_input.a, u_input.b.x), 0i), 2776i);
    let var_2 = Struct_1(64680u);
    var var_3 = ~(max(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.b.x), vec3<i32>(1i, var_1, u_input.a)), vec3<i32>(-var_1, var_1, ~var_1)) ^ vec3<i32>(-25487i, u_input.b.x, 0i));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a)))), arg_0.a);
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = false;
    let var_1 = !func_3(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1321f))));
    let var_2 = max(~arg_1.a.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(~arg_1.a.wxz, arg_1.a.ywx), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, 45287u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 1u), arg_1.a.xxx))));
    let var_3 = Struct_4(2147483647i << (arg_1.a.x % 32u), min(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_2, arg_1.a.x, arg_1.a.x, arg_1.a.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2, 38251u, arg_1.a.x, 4294967295u), arg_1.a)), ~_wgslsmith_mod_u32(abs(arg_1.a.x), 0u >> (arg_1.a.x % 32u))));
    return func_3(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), arg_0))).xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_3.xwy))) * _wgslsmith_f_op_vec3_f32(arg_3.zzy - vec3<f32>(1000f, -880f, arg_3.x))))));
    let var_1 = Struct_3(-1247f);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(var_0.x, 1000f)));
    let var_3 = func_3(var_1).x;
    var_2 = var_1;
    return Struct_4(u_input.b.x & 2147483647i, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, arg_1.a.x)), countOneBits(~vec2<u32>(27189u, 1u))), ~(~abs(arg_1.a.xw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4((u_input.a | u_input.a) ^ u_input.b.x, abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(23380u, 4294967295u), _wgslsmith_mult_u32(13525u, 0u)), abs(0u))));
    var var_1 = -(abs(vec4<i32>(2147483647i ^ u_input.b.x, firstTrailingBit(60125i), 57810i, -79061i)) | vec4<i32>(var_0.a, u_input.a, _wgslsmith_div_i32(min(-10053i, u_input.b.x), func_1(u_input.a, 489f, Struct_2(vec4<u32>(var_0.b, 4294967295u, var_0.b, 1u), false))), -7198i));
    var var_2 = Struct_2(vec4<u32>(~var_0.b, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(18482u, 4294967295u, 0u), abs(var_0.b)), 1u, var_0.b), true);
    var_0 = func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -434f), Struct_2(var_2.a & vec4<u32>(32710u, 0u, var_2.a.x, 1u), !any(vec2<bool>(var_2.b, var_2.b)))), Struct_2(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b, var_0.b, 4294967295u, 5769u)), countOneBits(vec4<u32>(var_0.b, var_2.a.x, 12435u, var_0.b))) ^ ~vec4<u32>(25034u, var_0.b, 4294967295u, var_2.a.x), any(vec4<bool>(var_2.b && true, false == var_2.b, func_3(Struct_3(320f)).x, var_2.b))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f - -483f) - _wgslsmith_f_op_f32(floor(-793f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-601f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-864f, 1098f, 2673f, -157f)))))))));
    var_0 = func_4(!(!vec2<bool>(!var_2.b, var_2.b)), Struct_2(vec4<u32>(~34301u, var_0.b, ~_wgslsmith_mult_u32(var_2.a.x, var_0.b), var_0.b & countOneBits(var_2.a.x)), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1966f))), _wgslsmith_f_op_f32(f32(-1f) * -1024f), var_2.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, 1495f, -1060f, 1769f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-360f, -609f, -1027f, -305f), vec4<f32>(162f, 746f, -274f, -1114f), vec4<bool>(true, var_2.b, true, true))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-480f, 1041f, -497f, 1602f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(158f, -563f, -908f, -1438f), vec4<f32>(328f, -136f, 410f, -2032f), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 1u, 1u, select(vec3<i32>(u_input.a, -_wgslsmith_sub_i32(var_0.a, -13953i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 2147483647i, 29375i), var_1.xyx))), var_1.xzy, vec3<bool>(!func_3(Struct_3(-518f)).x, any(!vec3<bool>(true, true, var_2.b)), true)));
}

