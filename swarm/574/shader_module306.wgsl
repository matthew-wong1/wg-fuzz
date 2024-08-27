struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.b.x;
    var_0 = ~(~_wgslsmith_mod_i32(2147483647i, 24121i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(250f - _wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(300f))), _wgslsmith_f_op_f32(sign(-500f))));
    let var_2 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    var var_3 = Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, min(u_input.b.x, ~_wgslsmith_mod_i32(2147483647i, 1i)), -1i), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1089f))))), Struct_1(~u_input.a, 1i >> (0u % 32u), 0i, _wgslsmith_div_f32(var_1.x, var_1.x), ~(4294967295u & u_input.a) & (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 51666u), vec3<u32>(u_input.a, u_input.a, u_input.a)) << (u_input.a % 32u))), !(!select(vec4<bool>(false, false, true, true), !vec4<bool>(false, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(false, false, true, var_2.x)))));
    return ~(~(~min(vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(0u, 7923u, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 62777u, var_3.c.e))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_4(abs(~_wgslsmith_mult_u32(16673u, u_input.a)) ^ abs(~(~u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 455f, arg_1, arg_0.x))))))), select((~39042u ^ u_input.a) > abs(u_input.a), 1568f <= _wgslsmith_f_op_f32(608f * arg_1), true));
    var var_1 = true && (_wgslsmith_f_op_f32(arg_0.x - 135f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -1490f)));
    var_1 = all(vec4<bool>(var_0.d, _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(1707f * arg_1), any(vec4<bool>(var_0.b.x, true, var_0.d, var_0.d)))) != 809f, any(vec2<bool>(var_0.d, !var_0.d)), var_0.b.x));
    let var_2 = Struct_4(~47633u, select(vec2<bool>(true, true && any(vec3<bool>(true, var_0.b.x, true))), var_0.b, true), arg_0, all(select(!vec4<bool>(false, false, var_0.d, var_0.b.x), !(!vec4<bool>(var_0.b.x, var_0.d, true, false)), var_0.d)));
    var_1 = !var_0.b.x;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(var_2.a, abs(var_2.a)), 1u), vec2<u32>(55426u, u_input.a >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 4294967295u, var_0.a, 26023u), vec4<u32>(var_2.a, 0u, var_2.a, 4294967295u)), var_0.a) % 32u)), _wgslsmith_sub_vec2_u32(abs(max(_wgslsmith_mult_vec2_u32(vec2<u32>(4146u, 59603u), vec2<u32>(var_0.a, var_0.a)), vec2<u32>(var_0.a, var_0.a))), ~vec2<u32>(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(48017u, 82367u, var_2.a, var_0.a), vec4<u32>(53924u, var_2.a, 0u, 0u)))));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = -3468i << (select(u_input.a, ~(~u_input.a), true) % 32u);
    var_0 = _wgslsmith_div_i32(u_input.b.x ^ -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 0i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), min(_wgslsmith_dot_vec2_i32(min(min(vec2<i32>(-459i, 2147483647i), u_input.b), vec2<i32>(u_input.b.x, 29245i)), u_input.b), min(reverseBits(2147483647i), -63621i)));
    var_0 = reverseBits(u_input.b.x);
    var var_1 = Struct_4(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(1u, 12576u, arg_0), true), ~func_2()), vec2<bool>(true, false), vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-537f, 356f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) * 2339f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1404f + -682f)))), true);
    var_1 = Struct_4(47123u, select(vec2<bool>(false, var_1.b.x), var_1.b, vec2<bool>(true, all(select(vec2<bool>(var_1.d, var_1.b.x), vec2<bool>(var_1.d, var_1.b.x), var_1.b)))), var_1.c, true);
    return _wgslsmith_mult_vec2_u32(countOneBits(func_2().zz), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, 1045f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2131f, var_1.c.x, -372f, var_1.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(10442u);
    var var_1 = u_input.b.x >= 1i;
    var_1 = true;
    var_1 = false;
    var_1 = all(vec2<bool>(true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(797f - 927f), -242f, _wgslsmith_f_op_f32(f32(-1f) * -1729f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-706f, 1900f, 472f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 681f, -437f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -688f, 1153f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-372f, -630f, -816f) * vec3<f32>(631f, 1605f, -2138f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-480f, -226f, -402f), vec3<f32>(_wgslsmith_div_f32(1432f, 126f), 983f, _wgslsmith_f_op_f32(ceil(1049f))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1199f, -1188f, -1968f) - vec3<f32>(654f, -680f, 1203f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, 788f, -979f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(~0u, 94841u >> (u_input.a % 32u)))), vec4<i32>(-reverseBits(u_input.b.x), ~firstTrailingBit(~u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, 0i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, 3016i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x)))), max(u_input.b.x >> (func_1(4294967295u).x % 32u), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, i32(-1i) * -2147483647i))), _wgslsmith_div_i32(u_input.b.x, u_input.b.x));
}

