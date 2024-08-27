struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = !arg_1.x;
    let var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(18609i, var_0.c.x, 0i)), vec3<i32>(-2147483647i, arg_0.c.x, -29026i)), vec3<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, u_input.c), var_0.c.x, -var_0.c.x)), var_0.c.x);
    var var_3 = arg_0;
    return arg_1;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(-16008i, -20133i, arg_2.c.x), vec3<i32>(arg_1.c.x, arg_1.c.x, -13191i)), vec3<i32>(arg_2.c.x, 13311i, arg_1.c.x) ^ vec3<i32>(1i, u_input.b.x, arg_2.c.x)), -vec3<i32>(46658i, arg_1.c.x, 2147483647i)), arg_1.c.x));
    var var_1 = func_3(arg_1, !(!(!select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))));
    var var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_clamp_i32(-1i, -1i, u_input.c), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(5072i, arg_2.c.x)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, var_0.x, 0i) ^ vec3<i32>(var_0.x, var_0.x, 0i), firstLeadingBit(vec3<i32>(-11036i, -16383i, -2147483647i)))), max(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, -1i, var_0.x), vec4<i32>(270i, -29670i, u_input.c, u_input.b.x)), vec4<i32>(u_input.c, u_input.b.x, u_input.c, 0i) & vec4<i32>(arg_1.c.x, 77599i, 2941i, 28173i)), vec4<i32>(arg_1.c.x, _wgslsmith_clamp_i32(12954i, 3091i, -72214i), -2147483647i, abs(var_0.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-1162f - _wgslsmith_f_op_f32(step(arg_1.a.x, -2593f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(217f)))), _wgslsmith_f_op_f32(step(arg_2.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -608f))))), arg_2.d.x)));
    var_0 = vec2<i32>(63718i, ~2147483647i);
    return reverseBits(_wgslsmith_mult_u32((min(u_input.a.x, u_input.d) ^ arg_1.b.x) >> ((arg_1.b.x ^ select(1u, 92502u, arg_0.x)) % 32u), ~_wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), arg_2.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1008f - arg_0.a.x), 1073f, -348f, arg_0.a.x))), vec4<u32>(~(u_input.d ^ 4294967295u) | arg_0.b.x, firstTrailingBit(_wgslsmith_add_u32(arg_0.b.x, u_input.a.x) & 8532u), 4294967295u, 0u), countOneBits(vec2<i32>(1i << (func_2(vec2<bool>(false, true), arg_0, arg_0) % 32u), -1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.a.xz, _wgslsmith_f_op_vec2_f32(-arg_0.d)))));
    let var_1 = ~_wgslsmith_sub_u32(arg_0.b.x, 37974u);
    var var_2 = select(min(firstLeadingBit(arg_0.c.x & 1i), 847i), countOneBits(~arg_0.c.x), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) || all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)));
    var_2 = -_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(12671i, -1i, 2147483647i, arg_0.c.x)), max(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(10935i, 15718i, var_0.c.x), vec3<i32>(-1i, arg_0.c.x, -6742i)), 24749i, -8451i >> (arg_1 % 32u), ~22669i), -vec4<i32>(u_input.c, var_0.c.x, 17936i, 2147483647i)));
    var var_3 = arg_0.d.x;
    return _wgslsmith_f_op_f32(-var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-782f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(698f * -311f) - -533f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-387f)) - -505f));
    let var_1 = u_input.b.x;
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(var_0.x, -695f, -126f, 231f), u_input.a, vec2<i32>(u_input.c, var_1), vec2<f32>(-264f, var_0.x)), u_input.a.x)) - var_0.x), -560f, _wgslsmith_f_op_f32(trunc(2557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f - 318f))) * vec4<f32>(-886f, -728f, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x))));
    var var_2 = min(_wgslsmith_add_i32(-28030i, -u_input.c), u_input.c);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(var_0.x, var_0.x, 515f, var_0.x), vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<i32>(u_input.b.x, u_input.c), var_0.zx), u_input.a.x)), -137f, _wgslsmith_f_op_f32(f32(-1f) * -288f), var_0.x) * vec4<f32>(-1897f, -1223f, 777f, -925f)), ~((u_input.a >> (reverseBits(vec4<u32>(1u, 1u, u_input.a.x, 29967u)) % vec4<u32>(32u))) << (~vec4<u32>(u_input.a.x, 44496u, 1u, 9239u) % vec4<u32>(32u))), u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(324f, var_0.x) - vec2<f32>(-547f, var_0.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1547f, 1000f))))), var_0.wy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(1241f, var_3.a.x)), var_3.a.x, _wgslsmith_f_op_f32(291f - var_3.a.x)))), vec3<f32>(var_3.d.x, var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), var_3.d.x))), !vec3<bool>(true, 24582i == u_input.c, false))));
}

