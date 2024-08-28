struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = abs(~u_input.a.x);
    var_0 = -2147483647i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 38362u))), vec4<u32>(0u, arg_0.x, arg_0.x, 1u)), u_input.b.x) % 32u);
    var_0 = -u_input.a.x & _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2250i, u_input.a.x), vec2<i32>(2147483647i, 2182i))), -u_input.a.x);
    let var_1 = !(!(_wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.a.x) >= (-2472i << (arg_0.x % 32u))) & true);
    global0 = array<vec3<f32>, 26>();
    return Struct_3(~(-vec3<i32>(_wgslsmith_add_i32(-49437i, 2147483647i), 1i, _wgslsmith_mult_i32(1i, 0i))), _wgslsmith_sub_i32(-2147483647i & ~u_input.a.x, _wgslsmith_sub_i32(-4585i, 574i)) & 1i);
}

fn func_2(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<vec3<f32>, 26>();
    var var_0 = (vec2<i32>(arg_0.b, ~u_input.a.x) << (u_input.b.yx % vec2<u32>(32u))) >> (~vec2<u32>(~(~u_input.b.x), ~(~1u)) % vec2<u32>(32u));
    global0 = array<vec3<f32>, 26>();
    let var_1 = (~(-(arg_0.b >> (1u % 32u))) | u_input.a.x) | (~func_1(u_input.b.xxx).a.x & ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1242i, -2147483647i, var_0.x) & vec4<i32>(var_0.x, 0i, 11025i, -2147483647i), vec4<i32>(2147483647i, var_0.x, var_0.x, var_0.x) >> (u_input.b % vec4<u32>(32u))));
    let var_2 = vec4<bool>(true, true, (_wgslsmith_add_u32(u_input.b.x, 1u) | ~_wgslsmith_sub_u32(u_input.b.x, 1u)) <= ~u_input.b.x, false);
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b.wyy);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(187f - _wgslsmith_div_f32(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(708f, 672f))))), -689f, -1202f, _wgslsmith_f_op_f32(359f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(134f + 183f)) * _wgslsmith_f_op_f32(381f + -1517f))));
    var var_2 = func_2(var_0);
    let var_3 = Struct_2(select(select(abs(abs(vec4<i32>(u_input.a.x, var_0.a.x, u_input.a.x, 35319i))), vec4<i32>(1i, ~2147483647i, -u_input.a.x, -2147483647i), true), vec4<i32>(u_input.a.x, u_input.a.x, 7777i, 1158i), vec4<bool>(!(u_input.b.x >= 9822u), false, true, _wgslsmith_f_op_f32(-2542f + var_1.x) <= _wgslsmith_f_op_f32(-1290f * var_1.x))));
    var var_4 = select(vec2<bool>(!(!any(vec3<bool>(false, true, false))), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    let var_5 = func_1(select(abs(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, var_2.x), var_2.x ^ 3572u, ~u_input.b.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(24047u, 4294967295u, 0u), vec3<u32>(u_input.b.x, 17872u, var_2.x)) << ((~u_input.b.wwy << ((var_2.xxx & vec3<u32>(4294967295u, var_2.x, 76268u)) % vec3<u32>(32u))) % vec3<u32>(32u)), all(vec4<bool>(false, true, !var_4.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx, var_3.a.xy & _wgslsmith_clamp_vec2_i32(var_3.a.yz, u_input.a, _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), var_0.a.yy))));
}

