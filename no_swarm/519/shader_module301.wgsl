struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: vec2<u32> = vec2<u32>(62563u, 4954u);

var<private> global3: array<vec2<u32>, 25>;

var<private> global4: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(~(i32(-1i) * -u_input.c.x), u_input.a.x), -1i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f + 728f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 871f)))));
    let var_2 = vec3<u32>(abs(4294967295u), ~(1u | abs(global2.x)), ~_wgslsmith_mod_u32(36563u, u_input.b) & 98504u);
    var var_3 = ~_wgslsmith_mod_i32(reverseBits(~9088i), u_input.c.x);
    return ~33779u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    let var_0 = Struct_1(vec3<i32>(reverseBits(select(-13381i, 0i, any(vec2<bool>(true, false)))), 7371i, abs(_wgslsmith_add_i32(-u_input.c.x, -6504i << (arg_1.x % 32u)))), _wgslsmith_add_u32(~arg_1.x, firstLeadingBit(~24878u)) >> (~(~1u) % 32u), u_input.a.x | firstLeadingBit(-_wgslsmith_clamp_i32(5766i, u_input.c.x, u_input.a.x)), ~vec4<u32>(func_3(_wgslsmith_f_op_f32(232f + 314f), -1654f), 8517u, ~_wgslsmith_mod_u32(global2.x, 4294967295u), u_input.b));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, (1u & _wgslsmith_mod_u32(firstLeadingBit(u_input.b), 4294967295u)) | var_0.d.x), 25u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(574f - 224f))))), Struct_1(vec3<i32>(~_wgslsmith_clamp_i32(0i, 2147483647i, 19451i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.c, -8145i), u_input.c) & u_input.a.x, var_0.a.x), arg_1.x, 20424i, vec4<u32>(arg_1.x, u_input.b, ~func_3(-269f, 996f), global2.x)), select(arg_0.yx, arg_0.yz, vec2<bool>(false, all(arg_0) && false)));
    global2 = ~var_1.b.d.wz >> (firstLeadingBit(var_1.b.d.wz) % vec2<u32>(32u));
    global0 = firstLeadingBit(firstLeadingBit(max(reverseBits(-1i), 0i)));
    return var_1.b.d.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(537f + _wgslsmith_f_op_f32(round(-2035f)));
    var var_1 = vec4<bool>(!(u_input.c.x < u_input.c.x), arg_2.d.a.x, !(_wgslsmith_f_op_f32(arg_2.a - -549f) < -676f) && (true | arg_2.d.a.x), arg_2.d.a.x && all(vec4<bool>(all(arg_2.d.a), true, true, all(vec2<bool>(arg_2.d.a.x, arg_2.d.a.x)))));
    global3 = array<vec2<u32>, 25>();
    var var_2 = Struct_1(vec3<i32>(-2147483647i, -(-20732i ^ u_input.a.x), -_wgslsmith_add_i32(~(-8034i), arg_0)), _wgslsmith_clamp_u32(~func_2(var_1.zyy, global3[_wgslsmith_index_u32(abs(arg_2.c), 25u)], any(vec2<bool>(var_1.x, var_1.x))), 45637u, ~global2.x), u_input.a.x, ~(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_2.c, 1u, u_input.b, 0u)), vec4<u32>(u_input.b, 0u, 0u, u_input.b))));
    let var_3 = vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -2261f));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_add_i32(~u_input.a.x, -2147483647i);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-447f))), _wgslsmith_f_op_f32(f32(-1f) * -1897f))) + -562f);
    global0 = -36689i;
    var var_1 = max(min(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b | 26649u, func_1(u_input.c.x, vec3<f32>(243f, -1442f, var_0), Struct_5(901f, u_input.c, u_input.b, Struct_3(vec2<bool>(false, true)))), _wgslsmith_mod_u32(0u, global2.x)), global2.x | (u_input.b ^ u_input.b)), u_input.b), global2.x);
    var var_2 = _wgslsmith_f_op_f32(ceil(397f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(372f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1206f))));
    var var_3 = Struct_3(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), -1672f, _wgslsmith_f_op_f32(var_0 - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2096f, -577f, 1420f, var_0)))) - vec4<f32>(458f, -937f, var_0, _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_mod_vec3_u32(~min(vec3<u32>(4294967295u, global2.x, u_input.b), ~vec3<u32>(global2.x, global2.x, u_input.b)), max(_wgslsmith_add_vec3_u32(vec3<u32>(3871u, global2.x, 16327u), vec3<u32>(global2.x, u_input.b, 4294967295u)), ~(~vec3<u32>(u_input.b, global2.x, global2.x)))), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, u_input.b, u_input.b, global2.x), vec4<u32>(global2.x, 8785u, 1u, u_input.b)), ~global2.x), countOneBits(~vec2<u32>(u_input.b, u_input.b)))), -vec3<i32>(0i, firstTrailingBit(~1i), -1i));
}

