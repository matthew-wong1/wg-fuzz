struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(-((global0.a ^ _wgslsmith_sub_i32(global0.a, 16490i)) ^ 3604i), global0.b, ~_wgslsmith_mod_u32(max(arg_1.x, 23696u >> (arg_0 % 32u)), _wgslsmith_clamp_u32(17955u, arg_1.x, _wgslsmith_clamp_u32(1u, 4294967295u, arg_0))));
    let var_1 = Struct_1(0i, all(!select(vec2<bool>(true, false), !vec2<bool>(arg_2, false), vec2<bool>(global0.b, true))), _wgslsmith_sub_u32(~arg_1.x >> (~_wgslsmith_mod_u32(arg_0, arg_1.x) % 32u), abs(~_wgslsmith_mod_u32(24123u, arg_0))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) + _wgslsmith_f_op_f32(floor(890f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1237f, 1165f), -345f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-935f))), _wgslsmith_f_op_f32(ceil(-369f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-135f - 457f), -575f, _wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(1000f + -313f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-399f, -179f, -216f, -1968f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 1650f, 414f, -1244f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-461f, 413f, -1000f, -2392f)))))))));
    var var_3 = -_wgslsmith_mult_vec3_i32(vec3<i32>(~(-6111i), firstLeadingBit(_wgslsmith_mod_i32(var_1.a, -20103i)), 2765i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-16074i, var_0.a, u_input.a) >> (max(vec3<u32>(24148u, 4294967295u, 1u), vec3<u32>(47502u, 4294967295u, 32488u)) % vec3<u32>(32u)), ~(-vec3<i32>(var_0.a, 4968i, -28303i)), vec3<i32>(u_input.a, ~global0.a, var_1.a)));
    let var_4 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(~(~(-72669i)), ~firstTrailingBit(37499i)), 3455i);
    return var_1.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = ~19953u >> (~(~global0.c ^ 3932u) % 32u);
    var var_1 = Struct_1(-1i, global0.b, 0u);
    var var_2 = Struct_1(-1i | (global0.a & func_3(_wgslsmith_sub_u32(arg_2.x, arg_1.x), vec2<u32>(0u, 53480u) >> (arg_1.zz % vec2<u32>(32u)), 75617i > u_input.a)), var_1.b, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_2.x, var_1.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43201u, arg_1.x, arg_1.x), vec4<u32>(4294967295u, global0.c, 41304u, var_1.c))), arg_1)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) - -659f), 1f, 2408f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-171f - 1047f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, -711f, -1125f, -601f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(221f, 220f, 1387f, -325f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, 605f, -635f, -1000f)))));
    var var_4 = Struct_1(1i, !var_2.b || true, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(arg_1.zy), ~arg_2.xz) | countOneBits(global0.c));
    return select(select(vec2<bool>(false, any(!vec4<bool>(true, var_1.b, true, var_4.b))), select(vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(global0.b, false), vec2<bool>(var_2.b, true), global0.b), false), vec2<bool>((global0.c ^ global0.c) > 7409u, 15038i <= -u_input.a)), vec2<bool>(true, global0.b), vec2<bool>(all(select(vec3<bool>(true, true, var_4.b), vec3<bool>(global0.b, var_1.b, var_4.b), !vec3<bool>(var_2.b, var_4.b, false))), !var_2.b));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(~u_input.a, true, global0.c);
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.a, -82656i), vec3<i32>(1i, 19394i, var_0.a))), -2147483647i), u_input.a), all(select(select(vec2<bool>(global0.b, false), vec2<bool>(true, true), select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, false), true)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(global0.b, global0.b, false)), false))), ~(~(~global0.c)));
    global0 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-471f, _wgslsmith_f_op_f32(1f + -1000f), 226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f + -975f)))));
    var var_3 = select(!func_2(min(-vec2<i32>(0i, 37124i), vec2<i32>(79297i, -1i)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, 26508u, var_0.c), vec3<u32>(global0.c, 8002u, 26089u)), vec3<u32>(~var_0.c, var_1.c >> (var_0.c % 32u), var_0.c)), vec2<bool>(!(var_2.x < _wgslsmith_f_op_f32(-var_2.x)), true), false);
    return Struct_1(-(~_wgslsmith_mod_i32(3953i, global0.a)), -4419i < ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, 4945i), ~vec2<i32>(2147483647i, var_0.a)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(104733u, global0.c, 1u), vec3<u32>(_wgslsmith_clamp_u32(~112089u, 3575u, ~global0.c), global0.c, min(abs(global0.c), global0.c ^ 54325u)));
    let var_1 = func_1();
    var_0 = ~(vec3<u32>(countOneBits(61272u), select(var_1.c ^ 4294967295u, 0u, var_1.b && true), var_0.x) << (~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(19244u, global0.c, global0.c), vec3<u32>(4294967295u, global0.c, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_mod_i32(48388i, -min(_wgslsmith_mod_i32(-3442i, 6096i), ~global0.a)), var_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.c), 1u) >> ((vec2<u32>(var_1.c, var_1.c) ^ (var_0.yz << (var_0.yy % vec2<u32>(32u)))) % vec2<u32>(32u)), var_0.zx));
    var var_3 = var_1;
    let var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~global0.c, ~(var_0.x & global0.c)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1487f, 661f))))), 643f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-880f)) - _wgslsmith_f_op_f32(654f * 403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2179f + 1563f) - 1601f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-2798f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(307f, -836f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-799f)) + _wgslsmith_f_op_f32(step(438f, 625f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1151f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-916f, -351f, -1104f, 652f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1304f, -1265f, 1383f, 266f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(397f, -2328f, 1000f, 170f)))))));
}

