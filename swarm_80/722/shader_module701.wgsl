struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<f32>(-1091f, -1925f, -206f, 1000f), false, -1457i);

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(45281i, 2147483647i, 6507i), vec3<i32>(i32(-2147483648), 8135i, -38897i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(43568i, 13238i, -59770i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(-1i, 0i, 12120i), vec3<i32>(2147483647i, 1i, -20562i), vec3<i32>(i32(-2147483648), -25602i, 24959i), vec3<i32>(-1i, 44174i, -16383i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = global0.b.x;
    var_0 = global0.b.x;
    var var_1 = any(select(vec2<bool>(true, false), select(!(!vec2<bool>(global0.a, global0.a)), select(select(vec2<bool>(global0.c, global0.a), vec2<bool>(true, false), global0.c), !vec2<bool>(global0.c, global0.c), select(vec2<bool>(global0.a, global0.c), vec2<bool>(global0.a, global0.c), true)), !global0.a), global0.c));
    let var_2 = Struct_1(min(0u, _wgslsmith_mult_u32(u_input.b, 1u)) <= firstLeadingBit(u_input.b), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -588f)))), -1022f, _wgslsmith_f_op_f32(-global0.b.x)), (global0.a & any(!vec4<bool>(global0.a, true, false, true))) != all(select(select(vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.a, global0.c, global0.a, false), global0.a), !vec4<bool>(true, global0.c, false, global0.a), global0.c)), 1i);
    var_1 = all(vec4<bool>(true, global0.c, any(select(select(vec2<bool>(false, true), vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, var_2.a)), vec2<bool>(var_2.c, true), all(vec4<bool>(true, global0.a, true, true)))), !any(!vec2<bool>(var_2.c, var_2.c))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(941f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1488f, global0.b.x), -206f, all(vec3<bool>(false, var_2.a, var_2.c))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_1(!(arg_0.x & global0.c), global0.b, arg_0.x, ~(-abs(-u_input.a)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_3(abs(global0.d))), -1000f, _wgslsmith_f_op_f32(global0.b.x - var_0.b.x)) + _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -657f, global0.b.x, var_0.b.x))))), true, u_input.a);
    let var_1 = Struct_1(any(!vec4<bool>(false, global0.a | var_0.a, false, true)), _wgslsmith_f_op_vec4_f32(-global0.b), select(false, var_0.a, !all(!vec2<bool>(false, global0.c))), u_input.a);
    var_0 = Struct_1(select(arg_1.x, var_1.a, global0.a) && true, var_0.b, !(!(0i >= (16857i ^ global0.d))), firstLeadingBit(0i));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) * _wgslsmith_f_op_f32(global0.b.x - var_0.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-514f))))) - vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-1f), -644f));
    return global2[_wgslsmith_index_u32(u_input.b, 9u)];
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 19195i >> (u_input.b % 32u)), ~func_2(vec4<bool>(true, true, false, false), vec3<bool>(true, global0.c, arg_2.a))), -abs(~vec3<i32>(arg_1.d, -45253i, 74137i) >> ((vec3<u32>(55489u, 4294967295u, u_input.b) | vec3<u32>(26809u, 0u, 0u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_add_vec3_i32(max(vec3<i32>(abs(max(u_input.a, global0.d)), arg_1.d, -abs(-1i)), -global2[_wgslsmith_index_u32(57941u, 9u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(62755u, 37336u, 1u)), ~vec3<u32>(u_input.b, 9182u, 114812u) | ~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~u_input.b), 9u)]);
    var var_2 = 28522u;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(401f + global0.b.x), _wgslsmith_f_op_f32(func_3(~u_input.a & -arg_1.d))) == _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1030f));
    let var_4 = Struct_1(!(!(!arg_2.c)), _wgslsmith_f_op_vec4_f32(-arg_1.b), false, firstLeadingBit(~1i));
    return _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), _wgslsmith_f_op_f32(sign(-964f))))))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), var_4.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a;
    let var_0 = Struct_1(func_1(-2447f, Struct_1(global0.c, global0.b, -1000f > _wgslsmith_f_op_f32(ceil(-1318f)), _wgslsmith_add_i32(1i, 22038i)), Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -739f, 1383f, global0.b.x) + vec4<f32>(655f, -964f, global0.b.x, -209f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1599f, global0.b.x, -273f, global0.b.x)))), !any(vec2<bool>(global0.c, true)), 0i), select(select(!vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), vec2<bool>(true, global0.c)), vec2<bool>(true, global0.c), vec2<bool>(global0.d != -2814i, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 321f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1390f), _wgslsmith_f_op_f32(global0.b.x - 1050f), _wgslsmith_f_op_f32(-global0.b.x), -157f))), true, global0.d);
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(25066u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)) | ~vec3<u32>(0u, u_input.b, 9102u)), 9u)] & vec3<i32>(countOneBits(-(~global0.d)), select(abs(i32(-1i) * -1i), reverseBits(-1i | u_input.a), var_0.a), global0.d);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(-160f, _wgslsmith_div_f32(-113f, global0.b.x), var_0.b.x, global0.b.x))), any(!select(select(vec3<bool>(false, global0.c, var_0.a), vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.a, false, false)), !vec3<bool>(false, var_0.c, var_0.a), global0.a)), global0.d);
    var var_2 = 79150u;
    global2 = array<vec3<i32>, 9>();
    var_2 = u_input.b;
    var_2 = 31496u;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_vec2_i32(-var_1.xy, vec2<i32>(var_0.d, global0.d)) | vec2<i32>(_wgslsmith_mod_i32(-1i, var_0.d), _wgslsmith_div_i32(var_0.d, -5197i))) | (vec2<i32>(-global0.d, ~var_1.x) ^ ~vec2<i32>(global0.d, 23584i)), -1402f, -_wgslsmith_add_i32(u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b)) % 32u), -15846i & _wgslsmith_dot_vec2_i32(vec2<i32>(-63701i, -35186i), vec2<i32>(7468i, -30173i))), 0i & (-var_1.x | var_1.x), global0.b);
}

