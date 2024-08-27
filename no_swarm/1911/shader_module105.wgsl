struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_1, 16>();
    var var_0 = -(-1i & _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -1i), ~(-21593i), -1i)) & _wgslsmith_clamp_i32(-2147483647i, select(_wgslsmith_mod_i32(-1445i, 11147i), -13433i, true) ^ select(1i, 2147483647i << (0u % 32u), true), _wgslsmith_mult_i32(-12261i, 0i));
    var var_1 = Struct_2(select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), false), -341f, global0[_wgslsmith_index_u32(select(~27656u, ~select(53925u, u_input.a, true), !select(all(vec3<bool>(true, true, false)), true, true)), 16u)], Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-318f, _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1420f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + -113f)))));
    global0 = array<Struct_1, 16>();
    var_0 = min(-19964i, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -1i), ~(-5569i), min(-2147483647i, -15990i), max(-1i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)))));
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_0 = Struct_2(select(vec4<bool>((true & arg_1) || arg_1, arg_1, !(!arg_1), any(select(vec4<bool>(true, true, false, arg_1), vec4<bool>(arg_1, false, false, false), false))), !(!(!vec4<bool>(arg_1, arg_1, arg_1, false))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b.x))) + 1000f)), Struct_1(arg_2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.b)))), arg_2);
    var var_1 = ~(_wgslsmith_clamp_u32(1u, firstLeadingBit(52088u) & ~u_input.a, func_3(_wgslsmith_f_op_f32(-821f * 954f))) << (u_input.a % 32u));
    return all(var_0.a.xyx);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    var var_0 = vec4<u32>(u_input.a, u_input.a, (_wgslsmith_sub_u32(abs(1u), ~u_input.a) ^ 0u) >> (_wgslsmith_add_u32(countOneBits(firstLeadingBit(u_input.a)), u_input.a) % 32u), 1u ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 40212u, 71218u, u_input.a), vec4<u32>(0u, u_input.a, 18648u, 4294967295u)) | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 9005u, 0u), vec3<u32>(4294967295u, 49156u, 0u) | vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = abs(1u);
    let var_2 = select(!(!(!vec3<bool>(true, arg_2.a.x, arg_3))), arg_2.a.yxx, !func_2(~(~vec2<u32>(1u, var_0.x)), false, Struct_1(_wgslsmith_f_op_f32(117f - arg_0), vec3<f32>(-1000f, -1000f, arg_0))));
    global0 = array<Struct_1, 16>();
    return Struct_1(arg_1.b.x, arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = -971f;
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return !(false | all(vec3<bool>(false, true, true))) == true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(select(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false, true), func_4(func_1(_wgslsmith_f_op_f32(-415f * 1137f), global0[_wgslsmith_index_u32(~u_input.a, 16u)], Struct_2(vec4<bool>(true, false, true, true), 886f, Struct_1(-1399f, vec3<f32>(685f, 255f, 950f)), global0[_wgslsmith_index_u32(4294967295u, 16u)]), false), global0[_wgslsmith_index_u32(~u_input.a, 16u)]), func_2(vec2<u32>(0u, 19446u), false, global0[_wgslsmith_index_u32(u_input.a, 16u)]) | (reverseBits(-50250i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1212i, 28498i), vec3<i32>(1i, -1i, 28833i))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1048f, -856f) - _wgslsmith_f_op_f32(max(149f, -451f))))) - 1f), global0[_wgslsmith_index_u32(~8072u, 16u)], Struct_1(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, 387f, 1278f) + vec3<f32>(1070f, 579f, -2774f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, -142f, 512f) - vec3<f32>(-1246f, -1154f, 724f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -592f), _wgslsmith_f_op_f32(f32(-1f) * -1220f)) * vec2<f32>(-140f, _wgslsmith_f_op_f32(-var_0.d.b.x)))), -364f, var_0.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -369f, var_1.b, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -505f, -1454f, -1787f) - vec4<f32>(var_1.b, 193f, var_1.b, var_0.d.b.x)))))));
    let var_3 = _wgslsmith_mod_u32(u_input.a, 1u);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_0.b, var_0.d.b.x, -143f) * vec4<f32>(var_2.x, var_0.b, var_2.x, 374f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1757f, -634f, -1014f), vec4<f32>(-286f, -1266f, var_2.x, var_2.x)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2116f, var_1.b, func_1(920f, var_0.d, var_0, !var_0.a.x).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.x))))));
    let var_4 = true | (var_3 <= 1u);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.d.a)), 1194f, -706f, -1608f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1550f, _wgslsmith_f_op_f32(step(-393f, 334f)), _wgslsmith_f_op_f32(-1281f - var_1.b), -735f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_0.c.a, var_1.a.x) + vec4<f32>(var_0.b, var_1.a.x, var_0.b, -1168f))))));
    var var_5 = select(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec2_i32(max(vec2<i32>(1i, 1i), vec2<i32>(-8126i, 6324i) >> (vec2<u32>(var_3, 4294967295u) % vec2<u32>(32u))), ~vec2<i32>(27725i, 2147483647i))), -1000f, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_3, 1u, var_3, _wgslsmith_clamp_u32(7552u, var_3, 65058u)), select(select(vec4<u32>(var_3, u_input.a, 4294967295u, u_input.a), vec4<u32>(var_3, 70246u, 14051u, 85251u), var_4), vec4<u32>(62035u, u_input.a, var_3, var_3) ^ vec4<u32>(78709u, 4294967295u, 98996u, 1u), !vec4<bool>(true, false, var_4, var_1.c))), ~_wgslsmith_sub_u32(1u, min(var_3, var_3)), _wgslsmith_clamp_u32(~80694u, u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(174f)), var_2.x)))));
}

