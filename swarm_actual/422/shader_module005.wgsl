struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1222f, -1043f, -836f);

var<private> global1: array<vec3<bool>, 23>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global1 = array<vec3<bool>, 23>();
    var var_0 = 1u;
    var var_1 = ~u_input.b;
    let var_2 = true;
    var_0 = _wgslsmith_mult_u32(0u, 12888u);
    return firstTrailingBit(13089u);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<u32> {
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f), -903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -1419f, _wgslsmith_f_op_f32(round(514f)));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(select(global0.x, 1364f, true)), global0.x);
    var var_0 = vec4<u32>(arg_0 | (~arg_1 ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29545u, arg_0), vec2<u32>(4294967295u, 35702u)), firstLeadingBit(4294967295u))), _wgslsmith_mod_u32(arg_0, 1u), select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_0), vec2<u32>(1u, arg_1) >> (vec2<u32>(4294967295u, 10155u) % vec2<u32>(32u))), ~arg_1, arg_1 >> (~11753u % 32u)), arg_1 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 82361u), vec2<u32>(22772u, arg_0)) % 32u), all(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, reverseBits(78382u)), 23u)])), arg_1);
    var_0 = max(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, var_0.x, 2046u, 4294967295u) | vec4<u32>(arg_0, 29994u, 4294967295u, var_0.x), vec4<u32>(var_0.x, 35307u, 1u, 33u)), vec4<u32>(_wgslsmith_add_u32(0u, 0u), firstLeadingBit(49533u), var_0.x, func_2(vec3<bool>(false, false, true)))), ~vec4<u32>(1u, ~7033u, arg_1, var_0.x >> (0u % 32u))) | vec4<u32>(max(0u, var_0.x), _wgslsmith_div_u32(var_0.x, ~(~var_0.x)), _wgslsmith_add_u32(29016u, max(~var_0.x, 1u)), var_0.x);
    var_0 = _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_1, firstLeadingBit(54601u), 0u ^ var_0.x, 33916u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.wwx, vec3<u32>(var_0.x, 0u, 12733u)), var_0.x, _wgslsmith_div_u32(62400u, arg_0), arg_1 >> (var_0.x % 32u))) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u & var_0.x, 15424u, ~104255u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(42609u, 30140u, 1u, var_0.x) ^ select(vec4<u32>(0u, arg_1, arg_1, var_0.x), vec4<u32>(26322u, 45027u, arg_1, arg_1), false), vec4<u32>(arg_0, 17322u, 59140u, var_0.x | arg_1)));
    return vec3<u32>((13056u >> (arg_0 % 32u)) ^ reverseBits(abs(arg_0 ^ 1u)), 2721u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, arg_0, 29566u, arg_0)), max(vec4<u32>(arg_0, 44657u, 4294967295u, 1u), vec4<u32>(1252u, arg_0, 1u, var_0.x))), arg_1));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = min(~firstLeadingBit(~1u), func_2(select(select(global1[_wgslsmith_index_u32(4294967295u, 23u)], vec3<bool>(false, arg_0.x, arg_0.x), true), select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(91428u, 23u)]), arg_0.x | arg_0.x))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(func_3(12298u, _wgslsmith_clamp_u32(3724u, 4707u, 4294967295u)), ~vec3<u32>(16036u, 1u, 4294967295u))) % 32u);
    return 29219u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c.x >> (~52075u % 32u), ~_wgslsmith_sub_u32(func_1(vec2<bool>(false, false)), 1u));
    var var_1 = _wgslsmith_clamp_vec3_i32(u_input.c.xxw, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.zwy, u_input.c.xzz ^ vec3<i32>(u_input.b.x, var_0.a, -2147483647i)) & ~60271i, var_0.a, firstTrailingBit(abs(var_0.a))), vec3<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, var_0.a), u_input.a.x), max(countOneBits(~var_0.a), ~(~var_0.a)), var_0.a));
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f + global0.x) * _wgslsmith_f_op_f32(step(1358f, global0.x))), 1177f) - _wgslsmith_f_op_f32(f32(-1f) * -887f)));
    let var_2 = ~(~(~vec4<u32>(4294967295u, 20655u, 20581u, var_0.b) & ((vec4<u32>(4294967295u, var_0.b, 1u, var_0.b) & vec4<u32>(var_0.b, 43485u, var_0.b, 1u)) | (vec4<u32>(30323u, var_0.b, var_0.b, var_0.b) ^ vec4<u32>(var_0.b, var_0.b, 54947u, 25542u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(global0.x))), global0.x, _wgslsmith_f_op_f32(146f + global0.x), global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(327f - 729f), -100f, _wgslsmith_f_op_f32(f32(-1f) * -1280f), -440f)))));
    let var_4 = ~(~select(abs(vec2<u32>(1u, 1u)), vec2<u32>(var_2.x, var_0.b), select(vec2<bool>(false, true), vec2<bool>(true, true), false)) | min(vec2<u32>(_wgslsmith_mod_u32(0u, var_2.x), 0u), _wgslsmith_clamp_vec2_u32(var_2.zw ^ vec2<u32>(var_0.b, var_0.b), var_2.ww, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 9253u), vec2<u32>(var_2.x, var_2.x), vec2<u32>(4294967295u, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, countOneBits(var_2.x) << (0u % 32u));
}

