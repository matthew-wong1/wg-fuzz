struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(379f, -796f, 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = false;
    var var_1 = Struct_1(~1u, u_input.a.x | (46076u | _wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    var var_2 = u_input.a;
    global0 = arg_0;
    global0 = Struct_2(-306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f + arg_0.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(648f)) - _wgslsmith_f_op_f32(1000f - 210f)) + _wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(global0.a, arg_0.c)))), arg_0.a);
    return ~(~4294967295u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_1(arg_2.x, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.x, u_input.a.x, arg_2.x, arg_2.x)), vec4<u32>(u_input.a.x, 46593u, 18545u, arg_2.x))));
    var var_1 = var_0.b;
    var_0 = Struct_1(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, 22089u, ~7977u)), ~(~(~(~var_0.a))));
    var var_2 = Struct_1(~0u, func_2(arg_0, 10315u == _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(10334u, var_0.a)), vec2<u32>(4294967295u, var_0.b)), _wgslsmith_mult_vec2_i32(arg_1.wz, arg_1.xz)));
    let var_3 = select(!(!(!(-19318i >= arg_1.x))), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), -22769i >= arg_1.x)), select(true, false, !(arg_0.c <= _wgslsmith_div_f32(1873f, arg_0.a))));
    return select(vec3<bool>(any(!select(vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(true, false, false, var_3), true)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0.b)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * global0.b) - -2695f)), !select(!select(vec3<bool>(var_3, false, false), vec3<bool>(true, var_3, var_3), var_3), !(!vec3<bool>(var_3, true, false)), all(select(vec2<bool>(var_3, var_3), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<bool>(true, !all(select(vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, false, true), vec3<bool>(false, false, false))), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(102f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1914f * -449f))), global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-633f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-590f)))));
    var var_1 = _wgslsmith_clamp_i32(reverseBits(382i), -2147483647i, _wgslsmith_div_i32(-48382i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(15732i, -1i), vec2<i32>(1i, 1i)))));
    let var_2 = !(4294967295u != _wgslsmith_sub_u32(1u >> (1u % 32u), u_input.a.x)) == all(vec2<bool>(any(vec4<bool>(false, true, arg_0.x, true)) && false, !any(vec3<bool>(true, false, arg_0.x))));
    var var_3 = Struct_1(1u, 1u);
    var var_4 = vec2<i32>(-_wgslsmith_div_i32(~(~15812i), -countOneBits(-2147483647i)), ~1i);
    return reverseBits(-var_4.x);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = select(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), vec3<u32>(abs(4294967295u), ~u_input.a.x, 28943u)), vec3<u32>(u_input.a.x, func_2(arg_3, !arg_0, abs(vec2<i32>(-2147483647i, 2147483647i))), _wgslsmith_add_u32(u_input.a.x & 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)))), !select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, arg_0)), vec3<bool>(false, true, false), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, false)))) ^ vec3<u32>(~4294967295u, u_input.a.x | ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 33755u >> (~u_input.a.x % 32u));
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    global0 = Struct_2(arg_3.c, arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))));
    let var_1 = func_4(select(!select(!vec3<bool>(false, arg_0, arg_0), func_3(Struct_2(3298f, -481f, -2216f), vec4<i32>(0i, 55908i, 1i, 2147483647i), var_0), arg_0 || false), vec3<bool>(true & arg_0, arg_0, arg_0), vec3<bool>(arg_0, all(!vec3<bool>(arg_0, arg_0, false)), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + _wgslsmith_f_op_f32(f32(-1f) * -1319f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))));
    var var_2 = Struct_1(var_0.x, 0u);
    return Struct_2(-1178f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c - arg_2.b), -2260f, (firstTrailingBit(var_1) >> (22516u % 32u)) <= _wgslsmith_mult_i32(0i, i32(-1i) * -51816i))), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!all(vec2<bool>(false, false))), vec4<f32>(-680f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(floor(474f))) * -400f), global0.b, _wgslsmith_f_op_f32(600f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-688f, global0.c)))), Struct_2(global0.c, -1320f, -1000f), Struct_2(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-global0.c)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * global0.c)));
    let var_1 = Struct_1(u_input.a.x, ~4294967295u);
    var var_2 = _wgslsmith_add_vec4_u32(select(vec4<u32>(abs(_wgslsmith_add_u32(u_input.a.x, 23824u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 65035u, 40335u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 3397u, u_input.a.x), ~vec4<u32>(27149u, 68872u, var_1.a, 28506u)), ~_wgslsmith_sub_u32(var_1.b, 4294967295u), abs(_wgslsmith_div_u32(4294967295u, u_input.a.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, 1u, var_1.a, var_1.b), vec4<u32>(1u, 1u, 113877u, 1884u)), ~(~vec4<u32>(17699u, var_1.a, 81708u, 0u))), vec4<bool>(true, true, ~4294967295u <= firstTrailingBit(0u), true)), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.a, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, var_1.a)))));
    global0 = Struct_2(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 1009f))) + -155f), var_0.c);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(2254f, _wgslsmith_f_op_f32(select(-649f, 981f, true))), func_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, -700f, var_0.c) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(468f, 1183f, global0.c, 2102f), vec4<f32>(var_0.b, -1125f, var_0.a, var_0.b), false))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 870f, -179f, -2459f) * vec4<f32>(-122f, -1153f, 1161f, 966f))))), Struct_2(global0.c, var_0.c, _wgslsmith_f_op_f32(-1374f - global0.c)), Struct_2(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(step(-108f, _wgslsmith_f_op_f32(global0.c + global0.a))))).c, 963f);
    let x = u_input.a;
    s_output = StorageBuffer(7208i, ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i) * -vec4<i32>(-1i, 1i, -26686i, -63864i)), i32(-1i) * -1i);
}

