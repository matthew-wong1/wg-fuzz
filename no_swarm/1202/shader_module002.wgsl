struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_2.a, arg_2.b, arg_2.c);
    let var_1 = arg_2;
    let var_2 = true;
    var var_3 = var_0;
    var_3 = Struct_1(true, vec2<u32>(_wgslsmith_mult_u32(4294967295u, countOneBits(var_3.c.x)), 1u), vec3<u32>(~4294967295u, _wgslsmith_add_u32(~firstLeadingBit(77536u), var_0.c.x), ~var_1.c.x));
    return 25842u;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, u_input.c)), u_input.b.xy) ^ -8250i, -2147483647i, -_wgslsmith_div_i32(-(u_input.c | -2147483647i), 1i));
    var var_1 = Struct_1(true, vec2<u32>(u_input.a, arg_1), ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 26584u), vec3<u32>(27530u, 54907u, arg_1)))));
    var var_2 = var_0.x ^ reverseBits(_wgslsmith_dot_vec3_i32(firstTrailingBit(select(vec3<i32>(-2147483647i, 66312i, u_input.b.x), vec3<i32>(u_input.b.x, var_0.x, u_input.c), vec3<bool>(var_1.a, var_1.a, arg_0.x))), vec3<i32>(u_input.d | -63830i, _wgslsmith_dot_vec4_i32(vec4<i32>(-19028i, u_input.b.x, u_input.d, u_input.d), vec4<i32>(-1i, u_input.d, u_input.c, var_0.x)), -45837i & var_0.x)));
    var var_3 = Struct_1(true, vec2<u32>(arg_1, ~var_1.c.x), ~vec3<u32>(~u_input.a, ~_wgslsmith_mult_u32(0u, arg_1), countOneBits(arg_1 << (var_1.b.x % 32u))));
    var var_4 = ~(~u_input.a);
    return 830u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> bool {
    var var_0 = ~func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(f32(-1f) * -798f)), 1i, Struct_1(true, vec2<u32>(arg_1.x, u_input.a), arg_1.wxy)) >= _wgslsmith_sub_u32(abs(arg_1.x), _wgslsmith_add_u32(func_3(!arg_0.wxy, u_input.a, _wgslsmith_f_op_f32(-1016f * 192f)), ~arg_1.x));
    var_0 = !(_wgslsmith_div_i32(-(u_input.c << (104654u % 32u)), 17342i) <= _wgslsmith_mod_i32(0i, u_input.b.x));
    let var_1 = firstLeadingBit(~_wgslsmith_div_vec3_u32(arg_1.wyz, _wgslsmith_mod_vec3_u32(arg_1.zzz, vec3<u32>(arg_1.x, 1u, u_input.a) ^ arg_1.wzz)));
    let var_2 = Struct_1(arg_0.x, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, abs(1u)), ~firstLeadingBit(vec2<u32>(var_1.x, u_input.a))), var_1);
    return all(vec3<bool>(arg_0.x, !any(vec4<bool>(true, arg_0.x, false, true)), all(arg_0.zxw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, any(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(33609u, u_input.a, 61974u, 27825u)), ~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 21642u)), vec4<u32>(0u, _wgslsmith_sub_u32(u_input.a, u_input.a), 0u, _wgslsmith_div_u32(u_input.a, u_input.a)))), ~abs(vec2<u32>(u_input.a, _wgslsmith_add_u32(16153u, u_input.a))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(_wgslsmith_add_u32(5711u, 47810u), _wgslsmith_sub_u32(36563u, 0u), 35287u), vec3<u32>(12790u, abs(1u), ~u_input.a)), abs((vec3<u32>(1u, 0u, u_input.a) ^ vec3<u32>(1u, 33343u, 4294967295u)) << ((vec3<u32>(1u, u_input.a, 1u) ^ vec3<u32>(13074u, u_input.a, u_input.a)) % vec3<u32>(32u)))));
    var var_1 = abs(_wgslsmith_clamp_i32(u_input.c, ~(~1i), ~(-u_input.c) | 18604i));
    var_1 = abs(u_input.b.x ^ _wgslsmith_sub_i32(u_input.c | 1i, u_input.d));
    var_1 = _wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1254f, -1788f, 643f), vec3<f32>(1121f, -685f, 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 633f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1081f, 944f)), var_2.zy) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_2.zy, vec2<f32>(var_2.x, -1000f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 162f) * vec2<f32>(-1175f, 1411f)))))), u_input.b.yy, var_2.yz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -437f) - vec3<f32>(var_2.x, var_2.x, 413f)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_2.x), -612f, _wgslsmith_f_op_f32(trunc(-1203f))), vec3<f32>(_wgslsmith_f_op_f32(var_2.x * 729f), _wgslsmith_f_op_f32(-var_2.x), -467f), true)))));
}

