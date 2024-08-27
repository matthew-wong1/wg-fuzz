struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 1035f;

var<private> global2: array<bool, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-215f + -580f), arg_1.x);
    global1 = global0.a.b.x;
    var var_0 = !arg_0;
    return ~0u;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = -16324i;
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_f_op_f32(arg_3 * arg_3)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.b.x * arg_3), _wgslsmith_f_op_f32(arg_2.a - arg_2.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2993f, -1000f)), 2412f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b, -1475f))) * global0.a.b))), global0.a.c, select(1u, global0.a.d, any(arg_0)));
    let var_2 = (_wgslsmith_mod_u32(~_wgslsmith_mult_u32(arg_2.d, var_1.d), 20682u) << (max(func_3(arg_0, _wgslsmith_div_vec2_u32(u_input.a.zy, u_input.a.zw), select(vec3<i32>(1i, -1i, 1i), vec3<i32>(9113i, var_0, var_0), arg_0), max(4294967295u, var_1.d)), ~global0.c) % 32u)) >> (u_input.a.x % 32u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(575f))))))));
    var var_3 = 2147483647i;
    return max(-var_0, (_wgslsmith_div_i32(1i, -var_0) << (10440u % 32u)) ^ max(-var_0, 0i << (~global0.c % 32u)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = !vec4<bool>(true, arg_2, select(func_2(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1.a.d, 9u)], true), global2[_wgslsmith_index_u32(u_input.b, 9u)], global0.a, arg_1.b), _wgslsmith_mod_i32(20892i, arg_0), global0.a.c.b | false) < _wgslsmith_add_i32(arg_0, 0i), all(select(vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(false, true), arg_2), all(vec4<bool>(arg_2, false, true, true)))));
    var var_1 = vec4<bool>(true, select(true || !(arg_1.a.d > u_input.a.x), false | (~arg_0 <= abs(arg_0)), !arg_1.a.c.b), false, _wgslsmith_clamp_i32(-1i << (1u % 32u), -19650i, -10923i) != arg_0);
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1163f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.a))))))));
    let var_2 = ~(-1i);
    var var_3 = _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-arg_1.a.a)));
    return Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(2147483647i, Struct_3(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-989f, 817f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global0.a.d, 0u, u_input.a.x), vec4<u32>(u_input.b, 1u, global0.a.d, u_input.b)), 9u)])) - global0.a.b.x), u_input.b), global0.a.b.x == _wgslsmith_f_op_f32(-global0.b));
    global0 = Struct_3(func_1(_wgslsmith_dot_vec2_i32(min(select(vec2<i32>(-1i, -1i), vec2<i32>(-1i, 17896i), global2[_wgslsmith_index_u32(26047u, 9u)]), vec2<i32>(-1i, 27628i)), vec2<i32>(min(-48130i, 2147483647i), _wgslsmith_clamp_i32(3115i, -1i, 15805i))), Struct_3(func_1(-2147483647i, func_1(1i, Struct_3(Struct_2(546f, vec2<f32>(606f, global0.a.c.a), global0.a.c, u_input.b), global0.b, global0.a.d), true), global0.a.c.b).a, global0.b, global0.a.d), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.a.d, u_input.b), 9u)]).a, _wgslsmith_f_op_f32(-global0.a.b.x), u_input.a.x);
    global0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(-2233f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(global0.a.b))))), func_1(-1i, Struct_3(func_1(2147483647i, Struct_3(Struct_2(-1912f, vec2<f32>(-105f, global0.a.c.a), global0.a.c, 10407u), 1000f, 0u), global2[_wgslsmith_index_u32(4294967295u, 9u)]).a, global0.a.b.x, _wgslsmith_mod_u32(u_input.b, 12185u)), false).a.c, 43162u), -1080f, ~4294967295u);
    let var_0 = _wgslsmith_div_f32(func_1(~(~(~(-14522i))), func_1(_wgslsmith_add_i32(0i, func_2(vec3<bool>(false, true, global2[_wgslsmith_index_u32(103801u, 9u)]), global0.a.c.b, Struct_2(-1000f, global0.a.b, global0.a.c, 0u), -890f)), func_1(-1098i, Struct_3(Struct_2(-1871f, vec2<f32>(global0.b, 1621f), Struct_1(global0.a.b.x, global2[_wgslsmith_index_u32(5497u, 9u)]), global0.a.d), global0.b, u_input.a.x), true), all(vec4<bool>(true, true, global0.a.c.b, true))), global0.c == min(~u_input.b, global0.a.d)).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1027f)) + global0.b), _wgslsmith_f_op_f32(abs(global0.a.b.x)), true)));
    let var_1 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, 35764i, -1i, -2147483647i), vec4<i32>(-1i, 2147483647i, -31015i, -47698i), vec4<bool>(global2[_wgslsmith_index_u32(16935u, 9u)], false, global2[_wgslsmith_index_u32(42230u, 9u)], global2[_wgslsmith_index_u32(42229u, 9u)])), vec4<i32>(1i, 1i, 1i, 1i))), ~vec4<i32>(8005i, -firstLeadingBit(-35568i), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -20664i), vec2<i32>(-333i, 12195i)), -10531i));
    var var_2 = func_1(_wgslsmith_sub_i32(var_1.x & func_2(!vec3<bool>(global0.a.c.b, true, false), global2[_wgslsmith_index_u32(~global0.a.d, 9u)], func_1(var_1.x, Struct_3(global0.a, -1956f, 35924u), false).a, _wgslsmith_f_op_f32(-global0.a.a)), -1i), Struct_3(global0.a, _wgslsmith_f_op_f32(step(global0.b, -973f)), ~firstTrailingBit(~4294967295u)), !(select(global2[_wgslsmith_index_u32(33748u, 9u)], false, global0.a.c.b) & false)).a.c.b;
    let var_3 = global0.a.d;
    let var_4 = _wgslsmith_mod_vec4_i32(~var_1, var_1);
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1090f, _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c, _wgslsmith_mult_u32(u_input.a.x, 22359u) | 0u, global0.c, global0.c), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1108f)))), vec2<u32>(~(~_wgslsmith_mod_u32(1u, 72237u)), 0u), 4573i);
}

