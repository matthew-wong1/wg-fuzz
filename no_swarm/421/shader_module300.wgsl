struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 4294967295u;

var<private> global2: i32;

var<private> global3: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f))))));
    global2 = countOneBits(1i >> (_wgslsmith_sub_u32(select(u_input.a.x, ~u_input.a.x, false), ~u_input.a.x | _wgslsmith_sub_u32(4294967295u, 8228u)) % 32u));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a), vec4<f32>(global0.a.x, global0.a.x, -862f, 1000f)), global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a)))));
    var var_2 = Struct_1(global0.a);
    var var_3 = 0u;
    return all(vec2<bool>(true, !(!all(vec2<bool>(true, false)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = select(vec2<u32>(0u, _wgslsmith_clamp_u32(6459u, 4294967295u, reverseBits(u_input.a.x))), u_input.a, select(select(vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), false), !any(vec2<bool>(true, false))), select(vec2<bool>(false, func_3()), vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true)), !(u_input.a.x >= 1u)));
    global2 = ~(~(-28899i));
    global2 = min(-reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 41572i), ~vec3<i32>(-1i, 58265i, 0i))), ~firstLeadingBit(-(~(-1i))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.a.x));
    global0 = arg_0;
    return -49139i;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(vec4<f32>(291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-global0.a.x), arg_1));
    let var_1 = ~u_input.a;
    let var_2 = min(abs(vec2<i32>(1i, _wgslsmith_mult_i32(func_2(Struct_1(var_0.a), var_0, var_0), _wgslsmith_mult_i32(0i, -2581i)))), vec2<i32>(-28412i, 39564i));
    var var_3 = arg_0;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, global0.a.x, arg_1, 1254f), _wgslsmith_f_op_vec4_f32(global0.a + arg_2))))));
    return ~10756u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(select(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-47343i, ~13325i), 33022i), 1i << (_wgslsmith_div_u32(func_1(false, 597f, global0.a), ~u_input.a.x) % 32u), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-13462i, 0i, -13169i), vec3<i32>(-2147483647i, -2147483647i, 53415i)) >= (-27287i >> (u_input.a.x % 32u)))), -(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, -10371i)), firstTrailingBit(vec2<i32>(13911i, -2147483647i))) | -13120i));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-872f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(178f, 1652f, false)) * _wgslsmith_f_op_f32(268f + global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, global0.a.x) - 555f)))));
    global2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~(-(vec3<i32>(-835i, 15571i, 75377i) << (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), vec3<i32>(-1i) * -(~vec3<i32>(-3299i, -13442i, 30175i))), ~select(0i, reverseBits(-19694i), true));
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-1547f)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-469f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-678f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x), func_3())))));
    var var_1 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, func_2(Struct_1(vec4<f32>(var_0.a.x, -968f, global0.a.x, 1217f)), Struct_1(vec4<f32>(global0.a.x, global0.a.x, 240f, 105f)), Struct_1(global0.a))), vec2<i32>(1i, 1i) << (_wgslsmith_mult_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 21124i)), vec2<i32>(1i, 1i))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 9757i, -2147483647i, 2147483647i), firstLeadingBit(vec4<i32>(-59568i, 33318i, -45689i, -1i))) & -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -3532i, 2890i), vec3<i32>(-22785i, 43588i, 1i))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, var_0.a, vec4<bool>(false, true, true, select(false, false, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, global0.a.x, 1000f, 994f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, -2312f, -1060f, global0.a.x), global0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a.x), 0u, _wgslsmith_div_u32(4294967295u, ~(~u_input.a.x) | _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, u_input.a.x, 64187u)), vec3<u32>(4294967295u, 0u, u_input.a.x))), 67406u, min(select(~(~u_input.a.x), 37045u, (var_0.a.x > 177f) & true), _wgslsmith_mod_u32(reverseBits(~54144u), ~39101u)));
}

