struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_4(Struct_2(vec2<i32>(reverseBits(reverseBits(-2147483647i)), 477i), _wgslsmith_f_op_f32(ceil(487f)), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), Struct_1(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-186f + 1126f), -1166f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f + 304f)), vec2<u32>(4294967295u, 1u)));
    var var_1 = Struct_4(var_0.a, var_0.a.d, var_0.c);
    var_1 = var_0;
    let var_2 = Struct_5(var_0.a.d.a, u_input.a, firstLeadingBit((abs(vec3<i32>(0i, var_1.a.a.x, var_1.a.a.x)) | vec3<i32>(var_0.a.a.x, var_1.a.a.x, var_0.a.a.x)) & vec3<i32>(select(var_1.a.a.x, var_1.a.a.x, false), var_1.a.a.x, _wgslsmith_mult_i32(-3935i, 18374i))), var_1.a.c.x);
    var_1 = var_0;
    return var_2.a;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(!vec3<bool>(false, any(vec2<bool>(true, true)), true));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-454f * 654f), _wgslsmith_f_op_f32(-1043f - -1457f))))), _wgslsmith_f_op_f32(-1f)));
    var_0 = Struct_1(func_3());
    var var_2 = vec2<i32>(1i, 1i) | -vec2<i32>(abs(-2147483647i << (u_input.a.x % 32u)), 1i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-772f)) - _wgslsmith_f_op_f32(582f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-334f, -1000f))))));
    return Struct_3(false, ~vec2<u32>(~(~u_input.a.x), 0u));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_2), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_2), _wgslsmith_mod_vec2_i32(vec2<i32>(2655i, -42458i), vec2<i32>(-28506i, -3357i)), vec2<i32>(2147483647i, arg_2) | vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(839f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0))), !select(select(vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a), vec4<bool>(false, false, arg_1.a, arg_1.a), arg_1.a), select(vec4<bool>(false, true, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), arg_1.a), arg_1.a), Struct_1(!(!vec3<bool>(false, true, arg_1.a)))), Struct_1(vec3<bool>(!any(vec4<bool>(arg_1.a, true, arg_1.a, true)), select(func_2().a, true, false), !select(true, arg_1.a, true))), arg_1);
    var var_1 = select(var_0.b.a.yz, !(!select(func_3().xy, var_0.a.d.a.xz, !var_0.b.a.x)), !var_0.a.d.a.x);
    var var_2 = vec3<i32>(_wgslsmith_mult_i32(arg_2 >> ((var_0.c.b.x | 4294967295u) % 32u), arg_2), _wgslsmith_div_i32(-25274i, -8052i), -63913i) >> ((firstTrailingBit(vec3<u32>(~0u, arg_1.b.x, ~32944u)) >> ((vec3<u32>(1u, select(u_input.a.x, var_0.c.b.x, false), _wgslsmith_add_u32(0u, u_input.a.x)) >> (vec3<u32>(_wgslsmith_add_u32(1u, 93873u), ~2010u, abs(1814u)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = var_0.a.b;
    var var_4 = arg_1.b.x;
    return Struct_5(var_0.b.a, vec3<u32>(~0u, abs(26241u), 4294967295u), -(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2, var_2.x, var_2.x), vec3<i32>(arg_2, var_0.a.a.x, var_2.x))) ^ ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(arg_2, -2147483647i, 1i)), -vec3<i32>(2147483647i, -1i, var_0.a.a.x)), true);
}

fn func_1() -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1414f, _wgslsmith_f_op_f32(round(277f))) + -652f), func_2(), ~(-8842i));
    var var_1 = vec2<u32>(~0u, 78892u);
    let var_2 = _wgslsmith_mult_vec2_i32(-(~(~var_0.c.zz)), ~vec2<i32>(-var_0.c.x, _wgslsmith_dot_vec2_i32(var_0.c.xz, vec2<i32>(var_0.c.x, 2147483647i))));
    var var_3 = vec3<bool>(34189i != var_0.c.x, _wgslsmith_mod_u32(~(~37390u), _wgslsmith_clamp_u32(81166u, var_0.b.x, ~30606u)) <= (_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_0.b.x, 5705u)), ~vec2<u32>(var_1.x, var_1.x)) << ((func_4(-1677f, Struct_3(var_0.d, var_0.b.xy), 2147483647i).b.x ^ 4294967295u) % 32u)), (_wgslsmith_mod_u32(u_input.a.x, 0u) | 95702u) > u_input.a.x);
    var_3 = vec3<bool>(true, true, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x) <= func_2().b.x);
    return _wgslsmith_mult_u32(29528u, (_wgslsmith_mod_u32(~62985u, ~var_1.x) ^ var_0.b.x) ^ _wgslsmith_div_u32(~(u_input.a.x << (var_1.x % 32u)), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~(-_wgslsmith_mult_i32(~(-18848i), i32(-1i) * -1i)), -30240i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a.x | ~func_1(), 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, _wgslsmith_f_op_f32(step(-786f, _wgslsmith_f_op_f32(1000f * -1040f))))));
}

