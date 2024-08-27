struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3.b.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f + -631f));
    var var_2 = vec4<bool>(all(select(select(select(vec3<bool>(true, arg_3.b.a.x, true), vec3<bool>(true, var_0.x, arg_2.b.a.x), arg_3.b.a.x), select(vec3<bool>(arg_2.b.c, arg_2.b.c, arg_0.a.x), vec3<bool>(arg_0.a.x, arg_3.b.a.x, arg_2.b.a.x), vec3<bool>(arg_2.b.a.x, var_0.x, var_0.x)), !vec3<bool>(true, false, arg_0.c)), vec3<bool>(var_0.x, true, true), false)), arg_2.b.a.x, select(all(arg_2.b.a), all(select(select(vec4<bool>(false, arg_2.b.c, false, false), vec4<bool>(true, arg_2.b.c, arg_3.b.c, true), false), !vec4<bool>(var_0.x, false, arg_2.b.c, false), select(vec4<bool>(arg_3.b.a.x, arg_0.a.x, true, true), vec4<bool>(true, true, arg_2.b.a.x, true), var_0.x))), !all(select(vec3<bool>(arg_2.b.c, arg_3.b.c, false), vec3<bool>(var_0.x, false, arg_3.b.a.x), arg_0.c))), ~(~0i) == _wgslsmith_div_i32(min(-16099i, 1i), arg_0.b.x));
    var var_3 = arg_2;
    var_2 = vec4<bool>(!(false | (_wgslsmith_f_op_f32(step(677f, -488f)) <= _wgslsmith_f_op_f32(f32(-1f) * -445f))), all(arg_3.b.a) & true, any(!select(arg_0.a, var_2.zw, true)), true);
    return !select(vec4<bool>(select(true, any(vec4<bool>(var_3.b.c, var_0.x, true, var_2.x)), true), select(arg_0.a.x, arg_3.b.c && true, u_input.c.x <= u_input.c.x), true, select(u_input.a > u_input.c.x, var_3.b.c, true)), select(!(!vec4<bool>(arg_3.b.a.x, var_2.x, true, var_2.x)), vec4<bool>(all(var_2.zy), all(var_0), true, true), true), !select(var_0.x, true, var_2.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1.b.x, Struct_1(arg_0.a, _wgslsmith_add_vec4_i32(~vec4<i32>(49407i, 1i, 2147483647i, 0i) & countOneBits(vec4<i32>(arg_2.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), select(max(arg_1.b, vec4<i32>(arg_2.x, -24251i, 51189i, 2147483647i)), _wgslsmith_mult_vec4_i32(arg_0.b, arg_0.b), vec4<bool>(arg_0.c, true, false, false))), arg_1.a.x == any(func_3(arg_0, arg_0.b.x, Struct_2(u_input.b.x, Struct_1(vec2<bool>(true, arg_1.c), vec4<i32>(arg_1.b.x, -12846i, u_input.b.x, arg_1.b.x), false)), Struct_2(u_input.b.x, Struct_1(vec2<bool>(true, arg_0.c), vec4<i32>(-58934i, 0i, -1i, arg_1.b.x), arg_0.c))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1824f + _wgslsmith_f_op_f32(sign(-962f)))));
    return Struct_2(0i, Struct_1(select(select(vec2<bool>(arg_0.a.x, arg_1.c), !arg_1.a, select(vec2<bool>(var_0.b.a.x, arg_0.c), vec2<bool>(arg_1.a.x, true), arg_1.a)), vec2<bool>(any(vec2<bool>(true, arg_0.a.x)), !arg_0.a.x), !vec2<bool>(arg_0.c, arg_1.c)), ~vec4<i32>(var_0.b.b.x, u_input.b.x, arg_2.x, 1i) ^ vec4<i32>(23180i, arg_0.b.x, _wgslsmith_dot_vec2_i32(arg_0.b.xz, u_input.b), _wgslsmith_mult_i32(arg_2.x, -6748i)), arg_0.a.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.xy - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -1665f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x))))))));
    var var_1 = reverseBits(~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.a, 6109u)), firstLeadingBit(vec2<u32>(u_input.a, u_input.c.x)), u_input.c.zz) << (u_input.c.xz % vec2<u32>(32u)));
    var_1 = max(~(~u_input.c.xy), u_input.c.xz);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(-2650f - -112f)) + arg_0.x);
    let var_3 = _wgslsmith_div_f32(410f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1023f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_0.x - var_2)))))));
    return -1018f;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = vec3<f32>(1598f, -968f, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 396f, -121f, arg_2))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1000f, 141f, -516f))), func_2(Struct_1(vec2<bool>(false, arg_1.b.a.x), vec4<i32>(-2147483647i, 40207i, arg_1.b.b.x, arg_3.x), arg_1.b.c), Struct_1(arg_1.b.a, arg_1.b.b, arg_1.b.c), arg_1.b.b.wyx), arg_1.b, func_2(arg_1.b, Struct_1(arg_1.b.a, arg_1.b.b, arg_1.b.c), ~vec3<i32>(arg_1.b.b.x, 2147483647i, 2147483647i))))));
    var var_1 = vec4<bool>(true, !(!func_2(arg_1.b, Struct_1(vec2<bool>(arg_1.b.c, arg_1.b.a.x), vec4<i32>(2147483647i, arg_1.a, 0i, arg_1.a), arg_1.b.c), _wgslsmith_mult_vec3_i32(vec3<i32>(29261i, 0i, arg_1.a), arg_1.b.b.wzy)).b.a.x), func_3(func_2(func_2(func_2(Struct_1(arg_1.b.a, vec4<i32>(1i, u_input.b.x, 1i, -1i), arg_1.b.c), arg_1.b, vec3<i32>(arg_3.x, 3568i, -2147483647i)).b, Struct_1(vec2<bool>(false, false), vec4<i32>(33662i, -2147483647i, -2147483647i, arg_1.b.b.x), true), vec3<i32>(-24632i, arg_3.x, -2147483647i)).b, func_2(Struct_1(arg_1.b.a, vec4<i32>(u_input.b.x, arg_3.x, 32426i, u_input.b.x), arg_1.b.c), func_2(Struct_1(arg_1.b.a, vec4<i32>(1i, arg_1.b.b.x, arg_1.a, arg_1.b.b.x), arg_1.b.a.x), Struct_1(arg_1.b.a, vec4<i32>(-13597i, -1i, arg_3.x, u_input.b.x), arg_1.b.c), arg_1.b.b.zwy).b, arg_1.b.b.wzw | vec3<i32>(arg_1.b.b.x, 2147483647i, -30797i)).b, ~(-arg_1.b.b.wzx)).b, -func_2(arg_1.b, func_2(arg_1.b, arg_1.b, arg_1.b.b.zxx).b, select(vec3<i32>(-1i, arg_3.x, u_input.b.x), vec3<i32>(arg_3.x, 1i, 0i), vec3<bool>(arg_1.b.a.x, true, arg_1.b.a.x))).a, Struct_2(arg_3.x, Struct_1(func_2(Struct_1(arg_1.b.a, vec4<i32>(50066i, -11672i, arg_3.x, u_input.b.x), arg_1.b.a.x), arg_1.b, arg_1.b.b.wxx).b.a, vec4<i32>(-10871i, arg_3.x, -44828i, 0i), arg_1.b.a.x)), arg_1).x, arg_1.b.a.x);
    let var_2 = ~u_input.a;
    let var_3 = func_2(Struct_1(arg_1.b.a, -vec4<i32>(arg_1.b.b.x, arg_1.a, -19404i, u_input.b.x) & vec4<i32>(~1i, max(0i, arg_3.x), firstLeadingBit(-1i), 2147483647i), var_1.x), arg_1.b, arg_1.b.b.yxw);
    let var_4 = -arg_3.x;
    return func_2(var_3.b, Struct_1(select(vec2<bool>(true, true), var_1.wz, false), vec4<i32>(-1i) * -func_2(arg_1.b, Struct_1(vec2<bool>(true, var_3.b.c), vec4<i32>(-28517i, -1i, arg_1.b.b.x, 1i), true), vec3<i32>(arg_1.a, var_3.a, 20040i)).b.b, arg_1.b.a.x), select(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.a, arg_3.x, var_3.b.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(8773i, 62628i, 2147483647i), var_3.b.b.ywz), vec3<i32>(-1i, -26936i, -2147483647i)), arg_1.b.b.yzw, true));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = 2147483647i <= u_input.b.x;
    var var_2 = ~arg_2.b.x ^ ~(-38146i);
    var_1 = !arg_1.b.a.x;
    var_2 = _wgslsmith_div_i32(func_1(min(_wgslsmith_add_u32(var_0, 58092u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 4294967295u)), 1u | var_0)), Struct_2(~(-48178i), func_1(abs(4294967295u), Struct_2(0i, Struct_1(arg_1.b.a, vec4<i32>(arg_2.b.x, 2750i, arg_1.b.b.x, -2147483647i), true)), -334f, vec2<i32>(-1i, -51398i)).b), 874f, _wgslsmith_div_vec2_i32(u_input.b, select(u_input.b, arg_1.b.b.ww | arg_1.b.b.zz, true))).b.b.x, ~0i << (~(var_0 << (var_0 % 32u)) % 32u));
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, 129f)) * _wgslsmith_div_f32(-883f, 1397f)), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), arg_0)), func_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.c.x, countOneBits(109894u)), abs(~u_input.c.x)), func_2(func_2(arg_2, func_1(4294967295u, arg_1, 1000f, vec2<i32>(u_input.b.x, 0i)).b, -arg_2.b.zzy).b, arg_1.b, ~vec3<i32>(31806i, -60788i, arg_2.b.x)), arg_0, arg_1.b.b.wy), arg_2, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(634f)))), _wgslsmith_f_op_f32(-1f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -284f))), func_1(countOneBits(50750u), Struct_2(u_input.b.x, Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, u_input.b.x, 15241i), true)), _wgslsmith_f_op_f32(-var_1), u_input.b), func_1(~4294967295u, Struct_2(-25741i, Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -1i), false)), -229f, vec2<i32>(u_input.b.x, u_input.b.x)).b, vec3<bool>(false, var_1 <= -133f, all(vec4<bool>(false, true, true, false))))) + _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec4<f32>(153f, var_1, 737f, var_1), Struct_2(u_input.b.x, Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), true)), Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), true), Struct_2(-1i, Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i), true)))), 1f, true)))));
    var_0 = ~(u_input.a << (~(~countOneBits(6147u)) % 32u));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(-785f, -205f, var_2, var_1), vec4<f32>(-409f, var_2, var_2, 458f)), Struct_2(u_input.b.x, Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -11015i), true)), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.b.x, u_input.b.x, -21530i, u_input.b.x), false), func_1(u_input.a, Struct_2(u_input.b.x, Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.b.x, 27364i, u_input.b.x, u_input.b.x), true)), var_1, vec2<i32>(56457i, u_input.b.x)))) + _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(trunc(-335f))), var_2, _wgslsmith_f_op_f32(f32(-1f) * -123f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1048f * var_2), var_1));
}

