struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_dot_vec4_i32(arg_1, firstTrailingBit(vec4<i32>(arg_0.c, 39207i, 11125i, u_input.d)))) << (_wgslsmith_mod_u32(~reverseBits(~u_input.a), ~(~arg_0.a)) % 32u);
    let var_1 = Struct_5(arg_1.www, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(781f, 628f, 680f, -266f), vec4<f32>(788f, -1015f, 937f, -900f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, 849f, 1239f, -928f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1180f, 160f, 1201f, -459f) + vec4<f32>(167f, -847f, -366f, 401f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(361f, -673f, 734f, 1807f), vec4<f32>(880f, 371f, -1349f, -1000f), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(986f, 953f, -151f, 858f))) - vec4<f32>(349f, 982f, 3034f, -957f))))));
    let var_2 = vec3<bool>(4294967295u == (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, 55777u), select(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(7609u, arg_0.a, arg_0.a), vec3<bool>(true, false, false))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39895u), vec2<u32>(42257u, 8537u))), false, any(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true)));
    let var_3 = false;
    var var_4 = select(~_wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(62534u, 4294967295u)), ~(~vec2<u32>(arg_0.b, u_input.a))), select(~vec2<u32>(max(31563u, arg_0.a), select(u_input.a, 0u, var_3)), vec2<u32>(~min(4294967295u, u_input.a), firstTrailingBit(~arg_0.b)), var_2.xx), var_2.xy);
    return !(!select(var_2.xz, var_2.xz, arg_0.a <= 4294967295u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = vec2<bool>(arg_0.x != !arg_0.x, any(vec3<bool>(true, !any(vec3<bool>(arg_0.x, arg_0.x, true)), all(func_3(Struct_2(8013u, u_input.a, 0i), vec4<i32>(-2147483647i, 18739i, u_input.c, -11159i))))));
    let var_1 = true && all(select(select(vec4<bool>(arg_0.x, var_0.x, arg_0.x, false), vec4<bool>(var_0.x, false, arg_0.x, arg_0.x), true), select(select(vec4<bool>(true, true, arg_0.x, var_0.x), vec4<bool>(true, true, false, false), vec4<bool>(arg_0.x, true, var_0.x, var_0.x)), !vec4<bool>(var_0.x, true, true, arg_0.x), true), vec4<bool>(true, any(vec4<bool>(arg_0.x, false, var_0.x, arg_0.x)), true, false)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-701f)) * -548f);
    let var_3 = Struct_5(~vec3<i32>(abs(u_input.d), 41008i, abs(~u_input.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2013f, var_2, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 903f) + 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(453f, 1593f, 661f, var_2) * vec4<f32>(var_2, var_2, var_2, var_2)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2, 1439f, var_2, var_2)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_2, -331f, var_2), vec4<f32>(var_2, -259f, var_2, var_2), vec4<bool>(var_1, var_1, arg_0.x, var_1))))))));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f + -219f) + var_3.b.x)), _wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(-383f * _wgslsmith_f_op_f32(-var_3.b.x))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(var_3.b.x - _wgslsmith_f_op_f32(step(var_2, 1014f))))));
    return Struct_2(78270u, 1046u, -1i);
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_3(true, func_2(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), countOneBits(_wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-73491i, 25129i), vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.b, u_input.d)), vec2<i32>(81651i, 1i))));
    var_0 = Struct_3(any(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), var_0.a), !(!vec2<bool>(true, var_0.a)), _wgslsmith_f_op_f32(trunc(-154f)) >= _wgslsmith_f_op_f32(floor(-495f)))), var_0.b, var_0.c);
    var_0 = Struct_3(var_0.a, var_0.b, vec2<i32>(_wgslsmith_dot_vec2_i32(~var_0.c, var_0.c) | u_input.d, var_0.c.x));
    var var_1 = Struct_3(any(select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, false, true), true), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, true, false), vec3<bool>(false, true, var_0.a)), var_0.a)), var_0.b, min(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -1i, 0i), var_0.c << (vec2<u32>(32660u, arg_0.x) % vec2<u32>(32u))), -(~(~var_0.c))));
    var_0 = Struct_3(all(vec4<bool>(true, var_1.a, any(vec4<bool>(false, var_1.a, false, false)), var_0.a)) | var_1.a, func_2(func_3(func_2(func_3(var_1.b, vec4<i32>(u_input.c, -1i, var_1.c.x, var_1.c.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.b.c, u_input.d, var_1.c.x), vec4<i32>(u_input.d, 18602i, u_input.b, 0i)))), ~(-vec2<i32>(min(1i, 2147483647i), _wgslsmith_mult_i32(var_1.b.c, 0i))));
    return ~(-firstTrailingBit(vec4<i32>(i32(-1i) * -47212i, -8775i, ~u_input.d, firstLeadingBit(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(~func_1(vec3<u32>(u_input.a, u_input.a, 140264u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, 3604i, 37079i, -1i), vec4<i32>(-78655i, u_input.c, 53263i, 2232i)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(11303u, u_input.a, u_input.a, u_input.a), select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<bool>(false, true, false, false))) % vec4<u32>(32u)), true);
    var_0 = select(~func_1(vec3<u32>(0u, 1u, 0u)), vec4<i32>(370i, var_0.x, -1i ^ var_0.x, var_0.x), vec4<bool>(true & all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, false)), (var_0.x <= 0i) | false, true)) >> (~(vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, 1u), firstTrailingBit(76231u), ~u_input.a) | vec4<u32>(~u_input.a, u_input.a ^ 0u, 98163u, u_input.a)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-((-var_0.xxy | select(var_0.www, vec3<i32>(u_input.b, 40899i, 10278i), false)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(27560u, 44122u, u_input.a)) % vec3<u32>(32u))), var_0.x, abs(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x)) ^ ~(-vec4<i32>(u_input.c, -11222i, u_input.d, 25147i)), 928f, u_input.a);
}

