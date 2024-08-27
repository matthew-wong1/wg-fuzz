struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(6942i, -68849i, -15368i), vec3<i32>(2147483647i, -1i, 13283i), vec3<i32>(-1i, -46909i, -3995i), vec3<i32>(27460i, 14989i, -1i), vec3<i32>(2147483647i, 60540i, -210i), vec3<i32>(0i, -26342i, -1i), vec3<i32>(-1586i, 0i, 1i), vec3<i32>(40200i, 86304i, 0i), vec3<i32>(20390i, -39500i, 1i), vec3<i32>(1i, 2147483647i, 19386i), vec3<i32>(-4208i, 2539i, -5223i), vec3<i32>(2147483647i, 42052i, 0i), vec3<i32>(-45511i, -10386i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 7003i), vec3<i32>(-16859i, -2399i, -30459i), vec3<i32>(1i, 2147483647i, 18580i), vec3<i32>(2147483647i, -18427i, 29361i), vec3<i32>(4904i, i32(-2147483648), 6612i), vec3<i32>(11610i, 55081i, 2147483647i), vec3<i32>(-68959i, 41381i, 0i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, 1701f, 943f, -438f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, 481f, arg_0.x, 1009f))))))));
    var var_1 = ~0u > firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 81745u, u_input.c) | (vec3<u32>(0u, 16963u, 1u) << (vec3<u32>(10257u, u_input.c, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.c, 28013u, 0u), vec3<u32>(4294967295u, 1u, u_input.c), arg_2), vec3<u32>(33609u, 3338u, 0u))));
    var var_2 = Struct_2(Struct_1(!(!(!vec2<bool>(arg_2, arg_2)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))));
    let var_3 = _wgslsmith_f_op_f32(trunc(-818f));
    let var_4 = var_2.a;
    return false;
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = Struct_3(~vec3<i32>(~(-2147483647i), ~(~(-1i)), u_input.d), (firstTrailingBit(vec2<u32>(0u, 42611u)) | u_input.b) & vec2<u32>((5250u ^ u_input.b.x) << (u_input.c % 32u), u_input.c ^ firstLeadingBit(u_input.b.x)), vec2<bool>(!arg_0.x, false), arg_0.x, _wgslsmith_add_u32(16239u, _wgslsmith_sub_u32(1u, u_input.c)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1448f, _wgslsmith_f_op_f32(min(1319f, _wgslsmith_f_op_f32(select(-1499f, 590f, var_0.c.x)))), true))), _wgslsmith_f_op_f32(1000f + -895f), _wgslsmith_f_op_f32(f32(-1f) * -1018f));
    let var_2 = u_input.a;
    let var_3 = select(!select(!select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false)), !vec3<bool>(arg_0.x, var_0.c.x, arg_0.x), vec3<bool>(true, var_0.d, 337f != var_1.x)), vec3<bool>(!arg_0.x, var_1.x == var_1.x, true), select(!select(!vec3<bool>(true, var_0.d, false), select(vec3<bool>(arg_0.x, true, var_0.d), vec3<bool>(false, false, arg_0.x), vec3<bool>(var_0.d, true, arg_0.x)), var_0.c.x & arg_0.x), !select(select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(false, var_0.c.x, arg_0.x), vec3<bool>(arg_0.x, false, false)), select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_0.d, var_0.c.x, var_0.c.x), arg_0.x), true), (u_input.d << (~15279u % 32u)) != 1i));
    global0 = array<vec3<i32>, 20>();
    return ~(~u_input.c) & _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(16738u, 12602u), var_0.e), u_input.b.x), min(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e, 0u, u_input.c, u_input.b.x), vec4<u32>(68404u, 6730u, 0u, 31663u)), vec4<u32>(0u, 4294967295u, u_input.b.x, var_0.e)), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, 12535u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e, var_0.e), vec2<u32>(10638u, u_input.b.x)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    let var_0 = !(u_input.a >= _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, -28628i), abs(2147483647i) << (~u_input.b.x % 32u)));
    var var_1 = ~(51833u | arg_2.x);
    let var_2 = arg_1;
    return func_3(!select(!vec2<bool>(var_0, var_0), vec2<bool>(all(vec2<bool>(var_0, var_0)), func_2(vec2<f32>(348f, -657f), -1i, var_0)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.b, select(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), firstTrailingBit(u_input.b)), vec2<u32>(func_1(u_input.b, vec4<u32>(37013u, u_input.b.x, u_input.c, u_input.c), u_input.b), u_input.c)), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-460f, -303f)), _wgslsmith_f_op_f32(-725f + 854f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f))));
    let var_1 = select(!(_wgslsmith_dot_vec3_i32(-global0[_wgslsmith_index_u32(var_0.x, 20u)], ~global0[_wgslsmith_index_u32(4294967295u, 20u)]) <= u_input.d), any(vec2<bool>(true, true)) != true, !any(vec2<bool>(true, true)));
    global0 = array<vec3<i32>, 20>();
    global0 = array<vec3<i32>, 20>();
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(var_0.x | (25235u | var_0.x), u_input.b.x), reverseBits(0u));
    global0 = array<vec3<i32>, 20>();
    let var_3 = Struct_2(Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(var_1, true), false), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, true)), true), true)), 1000f);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b, -1136f)))));
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 7919u, 2862u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 73571u, u_input.b.x, 56173u), vec4<u32>(var_2.x, u_input.c, u_input.c, var_0.x)), select(vec4<bool>(true, false, var_3.a.a.x, var_1), vec4<bool>(false, false, var_1, var_3.a.a.x), vec4<bool>(var_3.a.a.x, true, var_3.a.a.x, var_1))), ~vec4<u32>(1u, var_2.x, u_input.c, var_0.x)), ~(~vec4<u32>(~var_2.x, abs(33903u), _wgslsmith_div_u32(8986u, 53747u), func_1(u_input.b, vec4<u32>(1u, 65860u, var_0.x, var_0.x), u_input.b)))), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-342f, var_3.b, -1339f), vec3<f32>(1256f, var_3.b, var_3.b)) - vec3<f32>(var_3.b, var_4.x, var_4.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-362f, var_4.x, -1597f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1094f, -319f, -1634f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, var_3.b, -978f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-785f, 258f, -1000f) * vec3<f32>(1067f, 219f, var_3.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, 1638f, 2105f), vec3<f32>(var_4.x, 588f, -682f), vec3<bool>(var_1, true, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1192f, 623f, var_4.x))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1766f)), var_4.x, 594f));
}

