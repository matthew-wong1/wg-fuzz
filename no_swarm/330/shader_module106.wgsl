struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> f32 {
    return -864f;
}

fn func_3(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(step(128f, -1099f)), _wgslsmith_f_op_f32(982f + 719f), 189f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-433f, 1000f, 1994f) - vec3<f32>(-501f, -2131f, 1000f)) + vec3<f32>(479f, -1230f, 1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-717f, -1076f, 2237f)))))), ~20004u, 35932i);
    var var_1 = Struct_1(firstTrailingBit(~_wgslsmith_clamp_u32(~arg_0.x, 13774u, firstTrailingBit(var_0.b))), arg_0.x << (arg_0.x % 32u), true, var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) + _wgslsmith_f_op_f32(-var_0.a.x)) * -1272f))));
    var var_2 = Struct_1(abs(1u), var_0.b, var_1.d > _wgslsmith_f_op_f32(975f - -480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f) * _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.xy + var_0.a.zx)), _wgslsmith_f_op_vec2_f32(var_0.a.yz * var_0.a.zz))));
    var_2 = Struct_1(select(var_0.b, 12435u, var_0.c <= abs(-1i)), 67325u, true, var_3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1356f * var_0.a.x) + _wgslsmith_f_op_f32(func_1())))), _wgslsmith_div_f32(-2083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) * _wgslsmith_f_op_f32(max(var_0.a.x, 484f)))), !(!(arg_0.x >= var_2.a)))));
    return var_1.c;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = vec3<bool>(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b, 4294967295u) ^ min(vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 6181u, u_input.c.x, 10954u)), select(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 1u), ~vec4<u32>(u_input.c.x, 19199u, u_input.b, 0u), true))), true, true);
    var var_1 = ~(~(~abs(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x))) & vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(30775u, u_input.b, 59748u), vec3<u32>(u_input.c.x, 0u, u_input.b)), u_input.c.x, u_input.c.x | max(u_input.b, 35771u), 0u));
    var var_2 = Struct_3(select(vec4<bool>(false, true, var_0.x, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), select(vec4<bool>(false, var_0.x, var_0.x, true), select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), false), vec4<bool>(true, arg_0.x >= arg_0.x, var_0.x, var_0.x)), vec4<bool>(!var_0.x, !all(vec3<bool>(var_0.x, true, false)), arg_0.x >= _wgslsmith_f_op_f32(max(arg_0.x, -471f)), false == var_0.x)), var_0.x);
    let var_3 = Struct_1(u_input.c.x, ~u_input.c.x, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -417f))), arg_0.x);
    let var_4 = -1130f;
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -680f), -717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(488f * -223f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2008f + -133f) + _wgslsmith_f_op_f32(trunc(-289f))), 176f)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(_wgslsmith_mod_u32(0u, u_input.b), 1729u)), ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4703u, 1u)), vec2<u32>(u_input.c.x, u_input.b))), _wgslsmith_sub_i32(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 612f, 503f))))), -firstTrailingBit(u_input.a.x)));
    var var_1 = Struct_1(u_input.b, u_input.c.x, all(vec3<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true)), true, any(vec4<bool>(false, false, false, true)) || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_f32(-var_0.a.x));
    var_1 = Struct_1(4294967295u | select(var_1.b, u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -123f) < _wgslsmith_f_op_f32(floor(var_1.d))), var_1.a, var_1.c, var_1.e, var_0.a.x);
    var var_2 = _wgslsmith_mult_u32(~19093u, var_0.b) == (~firstLeadingBit(var_0.b) | (_wgslsmith_clamp_u32(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_0.b, var_1.a, u_input.c.x), vec4<u32>(10847u, var_1.b, 97432u, 29420u)), 0u) & 65967u));
    var var_3 = _wgslsmith_f_op_f32(-606f + -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(4856i, 0i, -12488i, -1i), vec4<i32>(u_input.a.x, -39161i, u_input.a.x, u_input.a.x) << (vec4<u32>(18104u, u_input.c.x, 28076u, u_input.b) % vec4<u32>(32u))) | -var_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, max(u_input.a.x, 1i)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, -1i, 45713i) & vec4<i32>(var_0.c, u_input.a.x, 0i, -16200i)))), 1961f, -2147483647i);
}

