struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = countOneBits(-_wgslsmith_mod_vec4_i32(reverseBits(min(vec4<i32>(arg_0.x, arg_0.x, 1i, u_input.c), vec4<i32>(-4922i, u_input.a, 2147483647i, u_input.a))), vec4<i32>(_wgslsmith_add_i32(-7334i, -84555i), abs(arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, arg_0.x), global0[_wgslsmith_index_u32(72594u, 24u)]), firstTrailingBit(22942i))));
    var var_1 = vec2<f32>(260f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-418f * -645f))) * 1f), _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(233f, 1134f, true))))));
    let var_2 = vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.x, arg_0.x), var_0.x), u_input.a, _wgslsmith_sub_i32(var_0.x << (u_input.b % 32u), min(1i, -1i))) | -(-vec3<i32>(var_0.x, arg_0.x, arg_0.x) | ~vec3<i32>(var_0.x, u_input.a, -2147483647i));
    var var_3 = Struct_2(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-181f, 1344f), vec2<f32>(-247f, var_1.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-204f, var_1.x), vec2<f32>(1532f, var_1.x))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1070f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), all(vec4<bool>(true, false, false, false)) & all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1378f)), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.b) >> (~reverseBits(38617u) % 32u), 1u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(-646f)))), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), false), _wgslsmith_f_op_f32(f32(-1f) * -312f)));
    let var_4 = var_3.d;
    return abs(_wgslsmith_div_u32(~_wgslsmith_mod_u32(~u_input.b, var_3.c), 17951u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = u_input.b;
    var var_1 = vec4<u32>(1u, ~func_3(vec2<i32>(u_input.c, u_input.c)) << (0u % 32u), firstTrailingBit(39376u), ~84155u);
    var_1 = ~(~vec4<u32>(0u, 4294967295u, max(var_0, 1u), _wgslsmith_div_u32(0u, ~var_1.x)));
    var_1 = select(vec4<u32>(u_input.b << (var_1.x % 32u), 21117u, _wgslsmith_mod_u32(55176u, (u_input.b | u_input.b) >> ((var_0 | 1u) % 32u)), 0u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(max(11820u, var_0), countOneBits(100641u), _wgslsmith_mod_u32(u_input.b, 30315u), reverseBits(var_1.x))), ~(~vec4<u32>(var_0, 5224u, var_1.x, var_1.x) & vec4<u32>(0u, 31404u, 0u, 4294967295u))), !(!select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, true), false), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, true)), true)));
    var var_2 = Struct_2(vec2<bool>(!any(arg_0.yz) | true, arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1374f, -1499f), vec2<f32>(-1181f, 266f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, 570f))))), vec3<bool>(true, false & (arg_0.x || true), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -558f)))))), ~var_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(-1389f, _wgslsmith_f_op_f32(min(657f, -712f)), true)), _wgslsmith_f_op_f32(-325f - -1762f)), vec3<bool>(arg_0.x, !arg_0.x, !all(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2187f * _wgslsmith_f_op_f32(floor(-876f))))));
    return !vec4<bool>(true, arg_0.x, any(vec4<bool>(false, u_input.a >= -2147483647i, false, true)), true);
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 24>();
    var var_0 = select(select(!vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), false), false), func_2(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(false, true, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, -6093i < u_input.a), func_2(vec3<bool>(true, false, true)).x), func_2(select(vec3<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, func_2(vec3<bool>(true, false, false)).x))));
    var_0 = select(func_2(vec3<bool>(var_0.x, !(var_0.x | true), false)), !(!vec4<bool>(false, all(vec3<bool>(var_0.x, false, false)), var_0.x, all(vec3<bool>(var_0.x, false, var_0.x)))), vec4<bool>(true | !select(true, var_0.x, true), ~(~u_input.b) <= 4294967295u, !all(!vec2<bool>(var_0.x, var_0.x)), true));
    let var_1 = -(~(-select(vec4<i32>(u_input.a, -76866i, 2147483647i, u_input.a), vec4<i32>(3083i, 5348i, u_input.a, u_input.c) >> (vec4<u32>(1u, u_input.b, u_input.b, 33167u) % vec4<u32>(32u)), vec4<bool>(var_0.x, var_0.x, true, var_0.x))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, -2438f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1352f, -1376f) * vec2<f32>(-636f, 647f)), func_2(var_0.zyy).yx)), vec2<f32>(550f, _wgslsmith_f_op_f32(abs(1000f)))))), var_0.zzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(582f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<vec2<i32>, 24>();
    global0 = array<vec2<i32>, 24>();
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.b.a.x, -184f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(535f, 407f, false)) - _wgslsmith_f_op_f32(-668f - 1060f)))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(734f - -194f)))));
    global0 = array<vec2<i32>, 24>();
    return Struct_2(vec2<bool>(func_2(arg_0.b.b).x, !all(arg_0.a)), func_1(), arg_0.c, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(abs(u_input.b), 4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b));
    global0 = array<vec2<i32>, 24>();
    var var_1 = func_4(Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_1(), var_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, 1085f) - vec2<f32>(1591f, 351f)) + vec2<f32>(-502f, -1890f)), vec3<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(false, false))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(-508f, -305f)))), countOneBits(firstTrailingBit(vec4<i32>(u_input.c, 13553i >> (0u % 32u), 35502i, ~u_input.c))));
    var var_2 = var_1.c;
    var_2 = _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(34803u, ~_wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(var_0.x, 59784u)) >> (~(~47310u) % 32u), ~reverseBits(_wgslsmith_mod_u32(u_input.b, 81294u))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-(~vec3<i32>(u_input.c, -2147483647i, 1i))), var_1.b.a, ~(~4294967295u), ~vec4<u32>(u_input.b, min(~0u, 4294967295u), 0u, var_1.c | 41166u), 53086u);
}

