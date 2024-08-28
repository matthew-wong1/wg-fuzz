struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<bool> {
    var var_0 = vec2<bool>(arg_0.b.c, any(vec2<bool>(arg_0.b.c, all(select(vec4<bool>(arg_0.b.c, false, arg_0.b.c, arg_0.b.c), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b.c, true, arg_0.b.c, true))))));
    var_0 = vec2<bool>(-675f >= _wgslsmith_f_op_f32(select(arg_0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2136f), !select(true, false, true))), true);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~37656u, 0u, 5198u), reverseBits(vec4<u32>(arg_0.d, arg_0.d, 8871u, 0u)) >> (~vec4<u32>(2471u, 4294967295u, arg_0.b.a, arg_0.b.a) % vec4<u32>(32u))), countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_0.b.a, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(16224u, 1u, arg_0.b.a)), arg_0.b.a, arg_0.b.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(601f, 301f, arg_0.b.b.x, arg_1))), _wgslsmith_f_op_vec4_f32(arg_0.b.b + arg_0.b.b)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(783f, arg_0.b.b.x, 1097f, 268f), vec4<f32>(arg_1, -1244f, -2290f, arg_1)))))), arg_1 != arg_1, select(~min(abs(vec2<i32>(u_input.a.x, -4735i)), select(vec2<i32>(arg_0.c, -2147483647i), vec2<i32>(1i, 1i), true)), -u_input.a.zy, true));
    let var_2 = arg_0;
    var_0 = vec2<bool>(!any(vec3<bool>(var_0.x, true, true)), true);
    return select(!select(vec4<bool>(all(vec3<bool>(var_0.x, var_2.b.c, false)), all(vec3<bool>(var_0.x, arg_0.b.c, true)), true, any(vec4<bool>(var_2.b.c, false, true, true))), vec4<bool>(all(vec4<bool>(arg_0.b.c, var_2.b.c, var_1.c, var_0.x)), false, !arg_0.b.c, var_1.c), vec4<bool>(var_2.b.b.x < 808f, false, any(vec4<bool>(var_2.b.c, var_0.x, var_0.x, true)), false || arg_0.b.c)), !vec4<bool>(any(!vec4<bool>(true, true, var_1.c, var_1.c)), any(vec4<bool>(true, var_2.b.c, false, var_0.x)) || true, false, arg_0.b.c), select(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, arg_0.b.c), vec4<bool>(arg_0.b.c, arg_0.b.c, true, var_1.c), arg_0.b.c), var_1.c), vec4<bool>(true, all(select(vec2<bool>(var_1.c, var_2.b.c), vec2<bool>(arg_0.b.c, var_0.x), vec2<bool>(var_2.b.c, true))), true, arg_0.b.c), !(!vec4<bool>(true, true, var_0.x, arg_0.b.c))));
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = vec2<f32>(757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f)));
    var var_1 = !func_3(Struct_2(firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.a.yw, u_input.a.zw)), arg_0.b, 2147483647i, arg_0.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(260f - 1000f), _wgslsmith_f_op_f32(ceil(var_0.x)), arg_0.b.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-728f, var_0.x))))));
    let var_2 = -(vec3<i32>(-1i) * -u_input.a.ywy);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.b.b.wx, _wgslsmith_f_op_vec2_f32(arg_0.b.b.wz * vec2<f32>(-593f, arg_0.b.b.x)))) - arg_0.b.b.yz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(arg_0.b.b.x + 480f))))));
    var var_3 = Struct_1(min(_wgslsmith_clamp_u32(~arg_0.b.a, arg_0.d, ~_wgslsmith_div_u32(4294967295u, 42555u)), _wgslsmith_add_u32(select(_wgslsmith_mod_u32(arg_0.d, arg_0.d), arg_0.b.a, var_1.x), 0u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(202f, arg_0.b.b.x))))), _wgslsmith_f_op_f32(exp2(arg_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 716f), false, ~select(-(vec2<i32>(-65082i, -21477i) >> (vec2<u32>(1u, arg_0.d) % vec2<u32>(32u))), min(u_input.a.yx, ~vec2<i32>(-12408i, var_2.x)), any(func_3(Struct_2(vec2<i32>(u_input.a.x, var_2.x), arg_0.b, -1i, 23677u), 1594f))));
    return Struct_4(var_1.xwy, func_3(arg_0, arg_0.b.b.x), min(~(vec2<u32>(10623u, arg_0.d) & vec2<u32>(4294967295u, arg_0.b.a)), ~vec2<u32>(arg_0.d, 8586u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec2<u32>(0u, ~arg_1.c.x);
    var var_1 = Struct_3(arg_2, abs(~(-(1i >> (arg_2.a % 32u)))), func_3(Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.d, arg_2.d), arg_2.d), arg_2, (arg_2.d.x ^ arg_2.d.x) & u_input.a.x, var_0.x), _wgslsmith_f_op_f32(-1707f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1807f, 1000f))))).x);
    return arg_1.b;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = u_input.a.wzw;
    let var_1 = 0i;
    var var_2 = Struct_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), false, false), vec3<bool>(true, true, true)), select(!func_4(~vec4<i32>(2147483647i, 2147483647i, 1711i, 5767i), func_2(Struct_2(vec2<i32>(1137i, 0i), Struct_1(60684u, vec4<f32>(arg_0, -1574f, arg_0, arg_0), true, var_0.xz), 2147483647i, 4294967295u)), Struct_1(42174u, vec4<f32>(arg_0, 1382f, arg_0, arg_0), true, vec2<i32>(u_input.a.x, 35494i))), !vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(!any(vec3<bool>(false, true, true)), true, true, false)), vec2<u32>(1u, 1u));
    var_2 = func_2(Struct_2(firstLeadingBit(vec2<i32>(-12802i, -2147483647i)), Struct_1(~var_2.c.x, vec4<f32>(arg_0, _wgslsmith_f_op_f32(max(arg_0, arg_0)), -382f, -141f), false, ~u_input.a.yz), max(abs(firstTrailingBit(-1i)), ~(-13150i)), min(~_wgslsmith_mult_u32(32195u, 464u), 1u)));
    var_2 = func_2(Struct_2(abs(reverseBits(vec2<i32>(2147483647i, u_input.a.x))), Struct_1(~var_2.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 949f, arg_0) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -137f, -1503f, 834f), vec4<f32>(1316f, arg_0, 102f, arg_0), var_2.b))), !any(vec4<bool>(true, false, var_2.b.x, var_2.b.x)), ~vec2<i32>(-2147483647i, u_input.a.x)), var_1, _wgslsmith_div_u32(var_2.c.x, var_2.c.x)));
    return Struct_1(~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(1472f)), arg_0, arg_0, arg_0))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(971f, -475f, var_2.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), -1000f)), 220f, arg_0)), true, var_0.xy);
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -1577f;
    let var_1 = arg_2;
    let var_2 = _wgslsmith_add_u32(~4294967295u, ~(~_wgslsmith_mult_u32(var_1.d, var_1.b.a)) | 48025u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-arg_2.b.b);
    let var_4 = false;
    return Struct_2(arg_2.a & -select(var_1.a & u_input.a.xy, max(var_1.b.d, vec2<i32>(var_1.c, u_input.a.x)), !arg_2.b.c), var_1.b, 1i, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(~select(vec2<u32>(28267u, 46796u), vec2<u32>(3884u, 0u), vec2<bool>(true, false)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 54825u), vec2<u32>(1u, 1047u))), !all(vec3<bool>(true, false, true))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), 577f, Struct_2(max(u_input.a.yz, u_input.a.xz), func_1(_wgslsmith_f_op_f32(floor(-786f))), -(min(0i, u_input.a.x) >> (~0u % 32u)), ~(~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, 977f, _wgslsmith_f_op_f32(f32(-1f) * -280f))));
}

