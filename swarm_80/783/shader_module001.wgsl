struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~(~(~arg_0.b.wzy))), ~((_wgslsmith_add_vec3_u32(arg_0.b.wzy, vec3<u32>(22588u, 13871u, arg_0.b.x)) >> (countOneBits(vec3<u32>(arg_0.b.x, u_input.b, u_input.b)) % vec3<u32>(32u))) >> (~select(arg_0.b.xzw, arg_0.b.wzw, arg_0.c.x) % vec3<u32>(32u))));
    var_0 = vec3<u32>(~min(max(4431u >> (var_0.x % 32u), u_input.b), ~reverseBits(arg_0.a)), 1u, ~var_0.x);
    var_0 = firstTrailingBit(arg_0.b.wzw) << ((arg_0.b.wyz & arg_0.b.xyz) % vec3<u32>(32u));
    let var_1 = abs(48127i);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-959f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-211f * _wgslsmith_f_op_f32(ceil(685f)))))), firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(118835u, 67588u, 0u, u_input.a), vec4<u32>(var_0.x, u_input.a, 1u, var_0.x)))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-9772i, -40827i ^ select(reverseBits(var_1), -2147483647i | arg_1.x, arg_0.c.x), _wgslsmith_clamp_i32(var_1, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1, var_1, arg_1.x), vec4<i32>(arg_1.x, -30113i, var_1, 27655i)), _wgslsmith_dot_vec2_i32(arg_1, arg_1), _wgslsmith_clamp_i32(9685i, arg_1.x, 1i)), arg_1.x), _wgslsmith_sub_i32(~var_1, 24637i) ^ 17152i), vec4<i32>(arg_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(15577i, 22163i, var_1), vec3<i32>(-33446i, 2147483647i, 1i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, arg_1.x, 13756i, 6010i), vec4<i32>(-20446i, -1179i, var_1, 12371i)), var_1, 33064i)), arg_1.x, var_1));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_i32(firstTrailingBit(abs(-1i)), _wgslsmith_clamp_i32(~31347i << (~arg_0 % 32u), ~2147483647i >> (_wgslsmith_sub_u32(u_input.a, 18188u) % 32u), firstTrailingBit(1i)), func_3(Struct_5(firstLeadingBit(1u), vec4<u32>(u_input.a, u_input.a, 11244u, u_input.b), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), vec2<i32>(32322i, 11012i))) & func_3(Struct_5(arg_0, _wgslsmith_mod_vec4_u32(vec4<u32>(23181u, 0u, arg_0, 4294967295u), max(vec4<u32>(4294967295u, u_input.b, 18558u, 24394u), vec4<u32>(arg_0, u_input.b, arg_0, arg_0))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), select(false, true, true))), select(vec2<i32>(-2147483647i, ~(-27842i)), vec2<i32>(~2147483647i, 0i), vec2<bool>(true, false)));
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -690f)))) + -293f));
    let var_3 = ~select(1u, arg_0, true);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -423f)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, var_4, -476f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1598f, -580f) * vec3<f32>(-501f, -302f, -642f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-166f, var_2.a, var_4) - vec3<f32>(984f, -1704f, -772f)))))));
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -358f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f + _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
    var var_1 = Struct_1(~(~(~vec3<u32>(u_input.a, u_input.b, u_input.b))), ~6740u, ~(~vec4<u32>(1u, countOneBits(u_input.a), ~57492u, ~79522u)), vec4<f32>(-221f, 2196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(178f)))), _wgslsmith_f_op_f32(round(arg_0.x))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~u_input.a)), var_1.d.yzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(-638f)), _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(-822f + -114f))))))));
    let var_1 = all(!(!vec2<bool>(var_0.x >= 930f, -1245f != var_0.x)));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(min(932f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(126f, -1781f, -701f), vec3<f32>(1301f, -339f, var_0.x), var_1)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1852f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 1000f))))), _wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-287f * -174f), var_0.x, 1437f))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1030f, -1931f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1800f - var_0.x))), _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1374f, var_0.x, var_0.x)))))).x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.x)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 473f), -1845f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f * 1592f), _wgslsmith_sub_vec4_u32(max(~(~vec4<u32>(u_input.a, u_input.a, 0u, 0u)), ~vec4<u32>(87821u, 533u, u_input.b, 75729u)), min((vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b) & vec4<u32>(75277u, 51612u, u_input.b, u_input.a)) | ~vec4<u32>(0u, u_input.a, u_input.b, 18337u), vec4<u32>(u_input.b, u_input.a, 105463u, u_input.a) << (vec4<u32>(4294967295u, u_input.a, 6976u, u_input.a) % vec4<u32>(32u)))), ~_wgslsmith_clamp_i32(-32821i, firstLeadingBit(1i), 2147483647i), vec2<u32>(_wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.b, 46990u, 0u, u_input.b), vec4<u32>(u_input.a, u_input.b, 1u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 11530u, u_input.a)), ~(vec4<u32>(4294967295u, u_input.a, 39525u, u_input.a) ^ vec4<u32>(u_input.a, 51935u, u_input.a, u_input.b))), 0u));
}

