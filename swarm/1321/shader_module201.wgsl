struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(22853i), Struct_1(2147483647i), Struct_1(5678i), Struct_1(-55259i), Struct_1(-6362i), Struct_1(20506i), Struct_1(0i), Struct_1(-28136i), Struct_1(1i), Struct_1(7366i), Struct_1(35597i), Struct_1(-19864i), Struct_1(i32(-2147483648)), Struct_1(-59776i), Struct_1(-24435i), Struct_1(-28797i), Struct_1(40519i), Struct_1(-59838i), Struct_1(11872i), Struct_1(-10467i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = u_input.b >> (0u % 32u);
    var var_1 = Struct_1(0i);
    return ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(var_0, u_input.b), select(1u, var_0, true), ~11852u), vec4<u32>(~25530u, u_input.b, u_input.a, 11321u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, u_input.a, 27217u, 60961u) ^ vec4<u32>(u_input.b, var_0, var_0, 28610u), abs(vec4<u32>(u_input.b, 0u, u_input.a, 1u)), countOneBits(vec4<u32>(u_input.a, 9755u, u_input.a, var_0)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> bool {
    let var_0 = vec2<i32>(-(~u_input.c) >> (_wgslsmith_dot_vec4_u32(func_3(), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.x, arg_3.x, arg_2.x, arg_3.x), max(vec4<u32>(arg_3.x, 1u, 14098u, arg_3.x), vec4<u32>(arg_2.x, u_input.a, u_input.a, 0u)))) % 32u), u_input.c);
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_mod_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(~0u, firstLeadingBit(46306u), 1u, func_3().x))), ~firstLeadingBit(vec4<u32>(~4294967295u, max(arg_2.x, 30884u), arg_3.x ^ u_input.b, 4294967295u)));
    return !((_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0, var_0), vec2<i32>(var_0.x, var_0.x)) == _wgslsmith_div_i32(i32(-1i) * -1i, u_input.c)) && any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0, 20u)];
    return global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0, u_input.a, u_input.a, 0u)), ~abs(select(vec4<u32>(26490u, u_input.b, u_input.a, 1u), vec4<u32>(0u, u_input.b, u_input.b, arg_0), vec4<bool>(arg_2.x, true, true, arg_2.x)))), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, 1u, 69404u), func_3())), select(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, u_input.b, u_input.b), vec4<u32>(arg_0, arg_0, arg_0, arg_0))), arg_0, false))), 20u)];
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    var var_0 = select(arg_1, firstTrailingBit(72150u) ^ _wgslsmith_mult_u32(~max(96703u, u_input.b), 4294967295u), true);
    let var_1 = abs(~_wgslsmith_mult_u32(arg_1, 4294967295u)) & ~_wgslsmith_mult_u32(u_input.a, ~u_input.a << (min(0u, 1u) % 32u));
    var_0 = var_1;
    var var_2 = -40689i;
    var_0 = ~arg_1;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f) - _wgslsmith_f_op_f32(477f * -177f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f * -940f) + -553f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2305f, 160f)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1732f)))));
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_5(func_4(abs(4294967295u), var_0, vec3<bool>(true, arg_1.x, func_2(abs(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, -1276f, var_0, var_0), vec4<f32>(-2357f, -304f, 531f, var_0)), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)), vec3<u32>(15351u, 0u, 4294967295u)))), 60344u));
    return countOneBits(20777u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_i32(-(~vec2<i32>(-1i, u_input.c)), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -12607i), vec2<i32>(0i, u_input.c)))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false))) | _wgslsmith_mod_u32(92345u, abs(u_input.a));
    var var_1 = global0[_wgslsmith_index_u32(min(abs(~4294967295u), 16914u), 20u)];
    global0 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_sub_u32(~var_0, 0u) <= ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 14045u), vec3<u32>(0u, 43309u, u_input.b)) ^ _wgslsmith_clamp_u32(24610u, 24593u, u_input.a), abs(max(80144u, 49502u)));
    let var_3 = Struct_2(~min(~vec3<u32>(4294967295u, var_0, 6885u) & vec3<u32>(var_0, 44477u, var_0), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u) ^ vec3<u32>(u_input.b, 1u, var_0), _wgslsmith_div_vec3_u32(vec3<u32>(19940u, var_0, 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_0)))), ~max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.a, var_1.a, 3760i, var_1.a), -vec4<i32>(u_input.c, u_input.c, 11236i, -24203i), ~vec4<i32>(-1i, 0i, u_input.c, -1i)), -vec4<i32>(u_input.c, var_1.a, var_1.a, u_input.c)));
    var var_4 = vec3<bool>(var_2, reverseBits(2147483647i) < _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.a, -1i), vec2<i32>(var_1.a << (1u % 32u), firstLeadingBit(30597i))), all(vec2<bool>(!var_2, true)));
    let var_5 = Struct_1(_wgslsmith_add_i32(~firstTrailingBit(-2147483647i), u_input.c));
    global0 = array<Struct_1, 20>();
    var_4 = !vec3<bool>(!select(select(false, false, true), true, true), func_2(~var_3.a.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2760f, 1000f, 648f, -639f)))), var_3.a.zx, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a.x, 1u, 53070u), var_3.a, var_3.a)), func_2(~var_3.a.yx, vec4<f32>(-1011f, 518f, 1664f, 738f), ~var_3.a.zy, ~vec3<u32>(4294967295u, var_3.a.x, 1u)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0, var_3.a.x), ~0u), var_3.a.zy) & var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) + -730f));
}

