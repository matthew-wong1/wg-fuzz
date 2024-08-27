struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    return _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(30711i, arg_0.a.x) << (arg_0.b.x % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a), 1i)), ~arg_0.a.zy), -arg_0.a.yy);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(358f, _wgslsmith_div_f32(-306f, -550f)), -1074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-334f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1194f) + 1993f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(683f * -766f), _wgslsmith_f_op_f32(f32(-1f) * -430f))), vec4<f32>(1534f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1245f)), _wgslsmith_div_f32(-315f, -1000f)))));
    let var_1 = ~arg_3.b.x;
    var var_2 = firstTrailingBit(u_input.a);
    var var_3 = vec2<f32>(var_0.x, -2976f);
    let var_4 = arg_3;
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_sub_u32(arg_1.b.x, arg_0.b.x);
    var var_2 = arg_1;
    var var_3 = arg_3.ww;
    var_1 = countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(arg_2, ~66188u), firstTrailingBit(min(min(95413u, arg_0.b.x), _wgslsmith_div_u32(var_0.b.x, 8596u))), 4294967295u));
    return Struct_1(vec3<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, 59041i), func_3(var_0, vec2<i32>(arg_0.a.x, -31423i), 4294967295u, Struct_1(var_2.a, var_0.b)))), _wgslsmith_mult_i32((var_0.a.x | 70946i) & arg_0.a.x, _wgslsmith_div_i32(arg_0.a.x, ~(-15634i))), _wgslsmith_add_i32(-1i, -1i)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(countOneBits(countOneBits(u_input.c.x)), _wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x), u_input.c.x);
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.a) >> (~vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u)), abs(func_1(Struct_1(vec3<i32>(-59353i, u_input.b, 20672i), var_0)))), u_input.a), vec2<i32>(20133i, u_input.b));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1599f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-780f + 288f) - _wgslsmith_f_op_f32(sign(2487f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f - -1113f))))));
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_add_i32(func_1(func_2(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), vec3<u32>(var_0.x, u_input.c.x, var_0.x)), Struct_1(vec3<i32>(var_1.x, u_input.a.x, 0i), vec3<u32>(4294967295u, 42475u, u_input.c.x)), u_input.c.x, vec4<bool>(false, true, false, false))).x, -48887i), -var_1.x, -80175i), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(var_4.b.zy, abs(vec2<u32>(min(var_4.b.x, 9153u), _wgslsmith_div_u32(var_4.b.x, 1u)))), select(var_4.a, func_2(Struct_1(var_4.a, var_4.b), Struct_1(var_4.a, var_4.b), 114503u, select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), false)).a, true), 1000f, u_input.c);
}

