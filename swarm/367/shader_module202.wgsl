struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(835f, -687f), _wgslsmith_f_op_f32(f32(-1f) * -1337f))))));
    let var_1 = arg_0.b.b.c;
    let var_2 = vec4<u32>(abs(4294967295u >> (arg_3.b % 32u)), arg_3.b, ~95924u, _wgslsmith_dot_vec2_u32(vec2<u32>(~39285u, _wgslsmith_div_u32(arg_0.b.d.a, 7354u)), ~vec2<u32>(_wgslsmith_mult_u32(arg_3.d.a, 18161u), ~47711u)));
    var var_3 = abs(select(select(arg_3.a, ~firstTrailingBit(vec3<i32>(2147483647i, 10501i, arg_2)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_3.c.x), all(vec2<bool>(false, true)))), _wgslsmith_mult_vec3_i32(-arg_0.b.c.zxw, arg_3.a) >> ((var_2.xwz | vec3<u32>(1228u, arg_3.d.b, arg_3.b)) % vec3<u32>(32u)), !select(select(vec3<bool>(false, arg_1.x, true), arg_3.c, arg_0.b.b.d.x), !arg_3.c, !vec3<bool>(true, true, arg_0.b.b.d.x))));
    var var_4 = firstLeadingBit(5829u);
    return 2147483647i;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = select(arg_0.a.xy, ~vec2<i32>(min(u_input.a >> (arg_0.d.b % 32u), _wgslsmith_mod_i32(4223i, arg_0.a.x)), -func_3(Struct_5(true, Struct_4(u_input.b, Struct_1(1u, 65956u, -1i, arg_0.d.d), vec4<i32>(2147483647i, 1i, 2147483647i, 8094i), Struct_1(arg_0.b, 0u, u_input.a, vec2<bool>(arg_0.c.x, true)), arg_0.d.d.x)), arg_0.c, arg_0.a.x, Struct_3(arg_0.a, 6482u, arg_0.c, Struct_1(70619u, arg_0.b, -1i, vec2<bool>(arg_0.d.d.x, arg_0.d.d.x))))), arg_0.b < 1u);
    let var_1 = any(select(select(vec3<bool>(arg_0.d.d.x, true, true), select(select(arg_0.c, arg_0.c, arg_0.c.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.c.x, true, arg_0.c.x)), false | !arg_0.c.x), select(!(!vec3<bool>(arg_0.d.d.x, arg_0.d.d.x, false)), vec3<bool>(any(vec4<bool>(false, arg_0.d.d.x, false, arg_0.c.x)), any(vec4<bool>(true, true, true, arg_0.d.d.x)), any(arg_0.d.d)), arg_0.c.x), arg_0.d.d.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_u32(~44886u, arg_0.b), 36737u, u_input.b, vec2<bool>(true, arg_0.d.d.x)), max(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, -23848i), ~vec2<i32>(var_0.x, 0i)), ~(arg_0.a.xx & _wgslsmith_clamp_vec2_i32(arg_0.a.zz, arg_0.a.zz, arg_0.a.zy))), vec2<f32>(1209f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(237f))))));
    var_0 = _wgslsmith_add_vec2_i32((var_2.b | var_2.b) | vec2<i32>(_wgslsmith_sub_i32(u_input.b >> (40044u % 32u), ~(-2147483647i)), max(1i, -55925i)), vec2<i32>(abs(~(~arg_0.a.x)), var_2.a.c));
    let var_3 = ~vec4<u32>(arg_0.d.b, arg_0.b & 16994u, ~(~(arg_0.b >> (arg_0.d.b % 32u))), ~select(reverseBits(77637u), var_2.a.b, true));
    return Struct_1(1u, 0u, max(arg_0.a.x, _wgslsmith_clamp_i32(0i, var_0.x, min(-39998i, 10101i))), arg_0.c.xx);
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = 1306f;
    let var_1 = Struct_5((arg_0.a.x < u_input.a) | true, Struct_4(25418i, Struct_1(~_wgslsmith_sub_u32(1u, arg_0.d.a), _wgslsmith_mod_u32(~arg_0.d.a, _wgslsmith_mod_u32(1u, arg_0.d.a)), 2147483647i, arg_0.d.d), abs(~(-vec4<i32>(arg_0.d.c, arg_0.d.c, arg_0.a.x, arg_0.a.x))), func_2(Struct_3(vec3<i32>(u_input.a, 32250i, arg_0.d.c), _wgslsmith_sub_u32(1u, arg_0.b), arg_0.c, Struct_1(arg_0.b, arg_0.d.a, arg_0.d.c, arg_0.d.d))), true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-722f, -892f, true)) + _wgslsmith_f_op_f32(-500f * -652f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(195f - -1133f), _wgslsmith_div_f32(-419f, 708f)))))) - -1224f);
    let var_2 = var_1.b.d.c;
    let var_3 = arg_0.c;
    return ~22589u;
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = abs(0u);
    var_0 = _wgslsmith_sub_u32(reverseBits(abs(min(arg_1.d.b, arg_1.d.a))), arg_1.d.a);
    var_0 = ~func_4(Struct_3(arg_1.a, ~1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(17491u, 28968u, 33300u, arg_1.b), vec4<u32>(arg_1.b, 51183u, arg_1.b, 14052u)) % 32u), select(select(arg_1.c, arg_1.c, arg_1.d.d.x), vec3<bool>(arg_1.c.x, false, false), true), func_2(Struct_3(vec3<i32>(arg_1.a.x, 39429i, arg_0), 4294967295u, vec3<bool>(arg_1.d.d.x, true, false), arg_1.d))));
    var var_1 = func_2(Struct_3(_wgslsmith_mult_vec3_i32(arg_1.a, _wgslsmith_div_vec3_i32(abs(arg_1.a), vec3<i32>(arg_1.d.c, u_input.b, u_input.a))), arg_1.d.a, select(select(arg_1.c, arg_1.c, vec3<bool>(arg_1.d.d.x, arg_1.c.x, arg_1.d.d.x)), select(select(arg_1.c, vec3<bool>(false, false, false), arg_1.d.d.x), !arg_1.c, false), !arg_1.c), func_2(Struct_3(arg_1.a, func_4(Struct_3(arg_1.a, arg_1.b, arg_1.c, arg_1.d)), arg_1.c, func_2(arg_1)))));
    var_1 = func_2(Struct_3(abs(countOneBits(min(vec3<i32>(var_1.c, 16839i, -1i), arg_1.a))), arg_1.b, select(arg_1.c, select(select(arg_1.c, vec3<bool>(false, arg_1.d.d.x, true), false), arg_1.c, vec3<bool>(arg_1.c.x, true, false)), vec3<bool>(arg_1.d.d.x, !var_1.d.x, var_1.d.x && arg_1.d.d.x)), Struct_1(~func_2(arg_1).a, _wgslsmith_clamp_u32(~1u, ~0u, arg_1.b), ~_wgslsmith_dot_vec2_i32(vec2<i32>(3179i, 29334i), arg_1.a.yz), arg_1.d.d)));
    return 47538u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(firstTrailingBit(-vec3<i32>(-1i, u_input.a, -21476i)) << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 46137u, 0u)) & vec3<u32>(func_1(u_input.b, Struct_3(vec3<i32>(40347i, 0i, -16906i), 1u, vec3<bool>(false, true, true), Struct_1(636u, 60334u, 49242i, vec2<bool>(false, false)))), func_4(Struct_3(vec3<i32>(1i, -54246i, -1i), 4294967295u, vec3<bool>(true, true, true), Struct_1(60115u, 3741u, u_input.b, vec2<bool>(true, false)))), ~4294967295u)) % vec3<u32>(32u)), 0u, select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, false)), false), true), Struct_1(_wgslsmith_add_u32(select(select(63505u, 35198u, false), 12281u, false), 4294967295u), ~4294967295u, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.b, -8032i)), min(vec2<i32>(-46050i, u_input.b), vec2<i32>(u_input.b, u_input.a))) | countOneBits(_wgslsmith_add_i32(-436i, -34616i)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = -(~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, var_0.a.x, -47297i), vec4<i32>(60430i, u_input.b, 15252i, u_input.a)), vec4<i32>(u_input.a, 18608i, u_input.b, 0i)), vec4<i32>(~var_0.a.x, _wgslsmith_dot_vec2_i32(var_0.a.yy, vec2<i32>(-2147483647i, -1i)), var_0.a.x, i32(-1i) * -1i), vec4<i32>(-26954i, u_input.a, -u_input.a, min(51603i, u_input.b))));
    var_1 = _wgslsmith_mod_vec4_i32(countOneBits(-vec4<i32>(u_input.b, -1i, min(u_input.b, 7595i), firstLeadingBit(-1i))), select(~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_0.d.c, var_0.a.x), vec4<i32>(-26784i, -2147483647i, u_input.b, 13361i), vec4<i32>(11818i, var_1.x, 2147483647i, var_0.a.x)), vec4<i32>(var_1.x, var_0.a.x, -1i, -338i) | vec4<i32>(16479i, var_0.a.x, var_0.d.c, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, var_0.d.c, 0i, var_0.d.c), vec4<i32>(var_1.x, 2016i, -57856i, -17513i))), max(vec4<i32>(1i, var_0.a.x, var_0.d.c >> (var_0.d.a % 32u), ~(-1i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(80229i, var_1.x, var_1.x, 8315i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.d.c, 85526i, 0i), vec4<i32>(u_input.a, u_input.b, u_input.a, 2147483647i)))), !vec4<bool>(any(var_0.c), true, true, true && var_0.d.d.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(610f + -662f) - _wgslsmith_f_op_f32(f32(-1f) * -644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1175f, 1105f))) - 947f)) - vec3<f32>(_wgslsmith_f_op_f32(-1f), 1623f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(609f)))))));
    var_1 = -firstLeadingBit(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(2147483647i, var_1.x, var_0.d.c, var_0.a.x)), -(~vec4<i32>(u_input.a, 1i, u_input.a, u_input.b))));
    let var_3 = Struct_2(var_0.d, var_0.a.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, var_2.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, -805f, _wgslsmith_div_f32(1000f, 1f), _wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-405f, var_3.c.x)), _wgslsmith_f_op_f32(max(1251f, 2533f))))))));
    let var_5 = -5261i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1065f, 364f, true)) * -105f))), -721f, abs(vec2<i32>(~2147483647i, firstTrailingBit(u_input.b))) | var_1.yy);
}

