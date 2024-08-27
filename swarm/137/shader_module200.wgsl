struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    var var_0 = all(vec3<bool>(!all(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), any(vec2<bool>(true, true))));
    var var_1 = arg_0.x;
    var var_2 = Struct_3(~abs(u_input.d) < ~select(reverseBits(31421i), -1i, true));
    let var_3 = -(~(~max(vec3<i32>(u_input.a, -29967i, u_input.a), vec3<i32>(u_input.d, -1i, 54275i))) ^ vec3<i32>(u_input.a, 25149i, ~u_input.a));
    var_2 = Struct_3(var_2.a);
    return 4294967295u;
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = !vec4<bool>(false, false, arg_0.a, true);
    var var_1 = vec4<bool>(false, all(select(var_0, var_0, !var_0)), arg_0.a, arg_0.a);
    let var_2 = Struct_2(Struct_1(!var_1.zxy, _wgslsmith_mod_u32(abs(4294967295u) << (0u % 32u), func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-669f, -479f, -1000f))), 49342u))), Struct_1(vec3<bool>(var_1.x, var_0.x, all(vec2<bool>(arg_0.a, var_1.x)) || true), ~(u_input.b << (0u % 32u)) << ((1u << (_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.b) % 32u)) % 32u)), Struct_1(!(!select(var_1.xxx, vec3<bool>(true, false, false), var_0.x)), ~u_input.c.x));
    var_1 = select(var_0, !(!var_0), !(!var_0));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1484f, _wgslsmith_f_op_f32(sign(-881f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1361f, 1035f)), _wgslsmith_f_op_f32(sign(-621f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(132f, -914f) + vec2<f32>(1855f, -1195f)), vec2<f32>(-1000f, -736f))), _wgslsmith_div_vec2_f32(vec2<f32>(-266f, _wgslsmith_f_op_f32(sign(-802f))), vec2<f32>(1f, 1f)), vec2<bool>(any(!var_1.wx), ~u_input.a <= (u_input.a << (u_input.b % 32u))))));
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1216f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_3.x) * _wgslsmith_f_op_f32(f32(-1f) * -1487f)), true))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-561f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-2151f)), _wgslsmith_f_op_f32(func_2(Struct_3(true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-649f, 1581f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(323f + -102f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(198f, 1068f)) + _wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1554f)), _wgslsmith_f_op_f32(sign(-871f))))))));
    return Struct_1(!arg_0, firstLeadingBit(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, false))), 20195u);
    let var_1 = func_1(var_0.a, any(vec4<bool>(false, !any(vec4<bool>(true, true, true, var_0.a.x)), true, true | var_0.a.x)));
    var_0 = var_1;
    var var_2 = -max(-1i, -2147483647i);
    var var_3 = all(!var_1.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(823f + 398f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -608f) - _wgslsmith_f_op_f32(-1000f - 996f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1091f, 958f)))))), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 44352i, 28248i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i), vec4<i32>(1i, 1i, u_input.d, u_input.d))), _wgslsmith_sub_i32(2147483647i >> (var_0.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(35305i, 77033i, 0i), vec3<i32>(0i, -16919i, u_input.d))), -(u_input.d >> (1u % 32u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~6891u, var_1.b) >> (_wgslsmith_sub_u32(4294967295u >> (var_0.b % 32u), var_0.b) % 32u), ~0u), vec2<i32>(countOneBits(u_input.d), -_wgslsmith_mult_i32(min(u_input.d, 38340i), firstTrailingBit(u_input.d))));
}

