struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = u_input.a;
    global1 = 2147483647i;
    global0 = array<f32, 27>();
    let var_0 = ~u_input.a;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(831f, global0[_wgslsmith_index_u32(arg_0.x, 27u)], true)))), Struct_1(vec2<i32>(u_input.c.x << (1u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-47111i, 1i, 26851i), ~vec3<i32>(29371i, var_0, var_0)))));
    return reverseBits(select(~firstTrailingBit(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(20476u, u_input.d), _wgslsmith_div_u32(32129u, arg_0.x)), ~firstTrailingBit(u_input.d)), all(vec4<bool>(true, true, true, true)) == true));
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<u32>(4294967295u, 22979u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d))), ~vec2<u32>(func_3(vec2<u32>(0u, u_input.d)), min(4294967295u, 43833u))));
    global0 = array<f32, 27>();
    var var_1 = u_input.e;
    return Struct_4(var_0.x, Struct_2(select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)), u_input.c.zy, Struct_1(firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)) | u_input.c.xz)), abs(u_input.d), Struct_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.d, 27u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(2754u), 27u)])), Struct_1(-u_input.c.yx)), vec4<i32>(_wgslsmith_div_i32(2147483647i, -21104i) >> (~u_input.d % 32u), ~u_input.a, -4743i, _wgslsmith_sub_i32(1i, -1i)) & countOneBits(firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, u_input.e, u_input.b, u_input.e)))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.a, global0[_wgslsmith_index_u32(0u, 27u)], -155f, 1188f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-479f, -688f, 1000f, 421f), vec4<f32>(-158f, 241f, global0[_wgslsmith_index_u32(26281u, 27u)], -105f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a, 1203f, 427f, 461f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1162f, arg_0.d.a, global0[_wgslsmith_index_u32(1u, 27u)], -1048f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(767f, arg_0.d.a, -268f, -655f) * vec4<f32>(502f, global0[_wgslsmith_index_u32(11698u, 27u)], 667f, arg_0.d.a))))))));
    var var_1 = func_2().d;
    var var_2 = _wgslsmith_div_u32(abs(_wgslsmith_div_u32(~arg_0.c, arg_0.c ^ 17722u)), reverseBits(0u));
    global0 = array<f32, 27>();
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(select(_wgslsmith_mod_u32(u_input.d, 1u), ~arg_0.a, any(vec3<bool>(false, false, false))), 1u), _wgslsmith_clamp_vec2_u32(max(select(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, u_input.d), false), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 14919u), vec2<u32>(arg_0.c, u_input.d))), abs(~vec2<u32>(10070u, 0u)), ~(~vec2<u32>(arg_0.a, arg_0.a)))) << (func_3(vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0.a) << (vec2<u32>(arg_0.a, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.d, 9699u)))) % 32u);
    return Struct_3(-229f, func_2().b.c);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_2 {
    global1 = u_input.c.x;
    global1 = _wgslsmith_add_i32(~min(_wgslsmith_sub_i32(arg_2, arg_2), u_input.e) & 19593i, (2147483647i >> (_wgslsmith_sub_u32(u_input.d, ~arg_0) % 32u)) | u_input.b);
    var var_0 = all(func_2().b.a);
    var var_1 = false;
    let var_2 = _wgslsmith_mult_u32(abs(~u_input.d), ~(~arg_0 >> (~4294967295u % 32u))) & select(~u_input.d, 4294967295u, true);
    return func_2().b;
}

fn func_1() -> i32 {
    global0 = array<f32, 27>();
    let var_0 = func_5(12071u, func_4(func_2()), _wgslsmith_mult_i32(~(u_input.e & min(-1561i, u_input.c.x)), _wgslsmith_div_i32(u_input.e, _wgslsmith_mod_i32(-1i, reverseBits(2147483647i)))), 739f);
    global1 = func_2().b.c.a.x;
    var var_1 = min(~abs(vec2<u32>(u_input.d, 1u)), ~(vec2<u32>(u_input.d, _wgslsmith_clamp_u32(71826u, 3564u, 4294967295u)) | ~vec2<u32>(0u, u_input.d)));
    var_1 = vec2<u32>(u_input.d, u_input.d);
    return -37412i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(~_wgslsmith_sub_u32(u_input.d, u_input.d), Struct_2(vec3<bool>(true, true, true), vec2<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, func_1()), ~firstTrailingBit(u_input.b)), Struct_1(abs(vec2<i32>(u_input.b, u_input.a)))), u_input.d, func_2().d, -vec4<i32>(0i | _wgslsmith_add_i32(u_input.b, 1i), -_wgslsmith_add_i32(4670i, u_input.b), -firstLeadingBit(u_input.e), u_input.e));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_sub_u32(u_input.d, var_0.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(2813u, 27u)], 1376f, global0[_wgslsmith_index_u32(var_1.x, 27u)], 1120f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, -1000f, 737f, 678f)), vec4<f32>(-1000f, -550f, global0[_wgslsmith_index_u32(27604u, 27u)], 656f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), _wgslsmith_f_op_f32(min(1000f, var_0.d.a)), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-var_0.d.a)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 27u)], var_0.d.a, global0[_wgslsmith_index_u32(67784u, 27u)], global0[_wgslsmith_index_u32(3154u, 27u)]), vec4<f32>(1101f, global0[_wgslsmith_index_u32(var_1.x, 27u)], var_0.d.a, var_0.d.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, -1000f, -341f, global0[_wgslsmith_index_u32(0u, 27u)])))))));
    global0 = array<f32, 27>();
    var var_3 = global0[_wgslsmith_index_u32(72711u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~max(countOneBits(vec4<u32>(var_0.c, var_0.a, var_0.a, 0u)), abs(vec4<u32>(var_1.x, var_1.x, 0u, 4294967295u))), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(26319u, 43436u, u_input.d, 0u), vec4<u32>(u_input.d, 0u, 79959u, 0u) >> (vec4<u32>(u_input.d, var_0.a, var_0.c, u_input.d) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, var_1.x, 4294967295u), vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x)) & (vec4<u32>(var_0.c, u_input.d, var_1.x, var_0.c) ^ vec4<u32>(0u, var_0.c, 1u, 30511u)), select(var_0.b.a.x, true, true))));
}

