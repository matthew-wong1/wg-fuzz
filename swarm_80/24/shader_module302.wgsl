struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(657f, 466f)) * -612f))), -780f, _wgslsmith_f_op_f32(min(265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f) - _wgslsmith_f_op_f32(f32(-1f) * -609f)))));
    var var_2 = min(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(31070i, u_input.a.x, u_input.a.x), vec3<i32>(var_0, u_input.a.x, var_0)) ^ ~vec3<i32>(u_input.a.x, var_0, -22967i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -2147483647i, 38324i), vec3<i32>(2147483647i, u_input.a.x, -1i)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 1u), u_input.b.yxw ^ vec3<u32>(1u, 24063u, u_input.b.x)) % vec3<u32>(32u))), -vec3<i32>(max(-25809i, 0i) >> (u_input.b.x % 32u), u_input.a.x, -1i));
    var_2 = abs(countOneBits(countOneBits(vec3<i32>(-2147483647i, -22179i, -var_2.x))));
    let var_3 = u_input.a.x << (~u_input.b.x % 32u);
    return -1i;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = u_input.b;
    var_0 = arg_2.c;
    let var_1 = arg_0;
    var_0 = vec4<u32>(~4294967295u, arg_2.a.e.x, ~var_0.x, ~19980u);
    let var_2 = arg_2;
    return -_wgslsmith_dot_vec3_i32(max(abs(~vec3<i32>(u_input.a.x, 4084i, var_2.a.c)), select(vec3<i32>(11304i, -965i, u_input.a.x), ~vec3<i32>(1i, var_1.c, arg_2.a.c), arg_1.zxw)), firstLeadingBit(_wgslsmith_div_vec3_i32(min(vec3<i32>(-2147483647i, 3336i, -30892i), vec3<i32>(-1i, arg_2.b.x, u_input.a.x)), vec3<i32>(-1i, arg_0.c, arg_0.c))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x >> (_wgslsmith_div_u32(u_input.b.x, 1u) % 32u)) ^ min(func_2(), ~func_3(Struct_1(vec2<bool>(true, false), u_input.b.x, -2147483647i, vec4<bool>(false, false, true, false), u_input.b.yz), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec2<bool>(false, false), 1u, -2147483647i, vec4<bool>(false, true, true, true), u_input.b.xz), vec2<i32>(0i, -1i), u_input.b))), -(_wgslsmith_add_i32(u_input.a.x, -u_input.a.x) & u_input.a.x));
    var var_1 = Struct_2(Struct_1(vec2<bool>(true, true), ~u_input.b.x, var_0, select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), max(_wgslsmith_clamp_vec2_u32(u_input.b.yz, ~u_input.b.wz, ~vec2<u32>(u_input.b.x, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), select(u_input.b.yz, u_input.b.zw, vec2<bool>(true, true))))), max(vec2<i32>(var_0, var_0) ^ vec2<i32>(u_input.a.x, var_0), u_input.a) ^ vec2<i32>(-1i, i32(-1i) * -u_input.a.x), u_input.b);
    var var_2 = Struct_2(var_1.a, -var_1.b, u_input.b);
    let var_3 = var_2.a.a.x;
    var_2 = Struct_2(Struct_1(vec2<bool>(_wgslsmith_clamp_u32(u_input.b.x, var_2.c.x, u_input.b.x) >= 31401u, var_2.a.d.x), var_1.a.e.x, min(16216i, -u_input.a.x), vec4<bool>(select(var_1.a.d.x, all(var_1.a.d), true), false, any(!var_2.a.d), _wgslsmith_f_op_f32(trunc(arg_0.x)) < _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), vec2<u32>(~75939u, var_2.a.e.x)), select(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-19888i, -1i), vec2<i32>(var_1.b.x, 0i), vec2<i32>(63952i, var_1.b.x)) & _wgslsmith_div_vec2_i32(vec2<i32>(var_0, var_1.a.c), var_1.b), var_1.b), var_2.b, true), ~var_2.c);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(342f)) + -1513f), -462f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(152f)), _wgslsmith_f_op_f32(1676f - -1054f))), _wgslsmith_f_op_f32(f32(-1f) * -423f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(435f - 1000f), _wgslsmith_f_op_f32(-617f * -218f), -371f, _wgslsmith_f_op_f32(func_1(vec2<f32>(-1298f, -712f))))))));
    let var_1 = var_0.x;
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(true, u_input.a.x != u_input.a.x), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(false, true, true)), vec2<bool>(true, true)), ~_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(0u, u_input.b.x, 4294967295u, 0u)), -(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), _wgslsmith_sub_vec2_u32(u_input.b.yw, ~u_input.b.wz)), ~vec2<i32>(0i, ~(~1i)), u_input.b);
    var var_3 = var_2.a.c;
    var_3 = ~1i;
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1607f, -1108f, _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f * -853f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-483f, var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -712f), -163f)));
    var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x))) * -882f), _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_add_u32(firstLeadingBit(1u), u_input.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1211f), var_0.yz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1325f, var_4.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yz - var_0.xx) * var_4.zw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(230f, -383f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1505f, var_0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_4.x))))), _wgslsmith_f_op_f32(-var_4.x));
}

