struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    var var_0 = -4805i;
    var_0 = -35034i;
    return !(!(!(firstTrailingBit(0i) <= -u_input.d)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    var var_0 = Struct_3(arg_3, firstLeadingBit(u_input.c.x));
    var_0 = Struct_3(vec3<f32>(-1007f, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -1360f)), arg_0.x);
    var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), 302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(176f, 429f)) + var_0.a.x))), ~(-12242i));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, -476f, 721f)))))), max(abs(-2147483647i << (u_input.a.x % 32u)), var_0.b) & arg_0.x);
    let var_1 = true;
    return any(!(!vec2<bool>(true, !arg_2.c)));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_2(Struct_1(vec4<i32>(u_input.d, u_input.c.x, -min(u_input.d, 1i), max(~u_input.d, u_input.b)), true, any(vec4<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)), func_2())), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 1u), vec2<u32>(~95636u, u_input.a.x)), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 4208u)), Struct_1(~vec4<i32>(u_input.c.x, countOneBits(0i), u_input.d, ~(-68576i)), func_3(u_input.c, vec3<bool>(true, true, select(true, false, true)), Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i) << (u_input.a % vec4<u32>(32u)), true, all(vec4<bool>(false, false, true, false)), vec3<bool>(true, true, true)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-314f * arg_0), arg_0)), !(any(vec4<bool>(false, false, true, false)) && false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)))), Struct_1(-(vec4<i32>(u_input.b, u_input.d, -25654i, u_input.b) ^ vec4<i32>(-1i, 2147483647i, u_input.c.x, 1i)), !any(vec4<bool>(false, false, false, true)), any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false), true), vec3<bool>(all(vec4<bool>(false, false, false, false)), select(false, false, false), false), false)), Struct_1(min((vec4<i32>(-1i, u_input.c.x, -1i, 1i) >> (vec4<u32>(1u, 114194u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ -vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d), -(vec4<i32>(u_input.d, u_input.c.x, u_input.d, u_input.c.x) << (vec4<u32>(65740u, 4294967295u, u_input.a.x, 60606u) % vec4<u32>(32u)))), select(true, (u_input.b < u_input.b) || true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - 652f) <= _wgslsmith_f_op_f32(f32(-1f) * -1702f), vec3<bool>(false, true, true)));
    var var_1 = func_2();
    let var_2 = any(vec4<bool>(true, true, all(!(!var_0.c.d.xx)), all(vec3<bool>(var_0.e.c && var_0.a.b, var_0.e.d.x, true))));
    var var_3 = -12353i;
    var_1 = var_2;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.d << (select(~_wgslsmith_add_u32(u_input.a.x, 1140u), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_add_u32(0u, 4294967295u)), all(vec4<bool>(false, true, true, false)) == true) % 32u)) << (min(u_input.a.x, ~(~(~17526u))) % 32u);
    let var_1 = vec4<f32>(-136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1434f - -175f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1581f - -407f)))))));
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - -1368f);
    var var_4 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_mod_i32(u_input.d, -_wgslsmith_add_i32(var_0, var_0)), var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 714f)));
    let var_5 = vec2<bool>(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    let var_6 = Struct_4(any(!(!var_5)), vec2<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1049f)), _wgslsmith_f_op_f32(-var_4.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f))), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(14605u, u_input.a.x) ^ abs(vec2<u32>(u_input.a.x, var_4.c))), select(vec2<u32>(var_2, max(var_4.c, var_4.c)), countOneBits(u_input.a.zz) | countOneBits(vec2<u32>(var_4.c, 63069u)), var_5)));
    let var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(var_6.c, _wgslsmith_f_op_f32(exp2(var_4.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6.c, 381f)) - var_4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(397f)) + _wgslsmith_f_op_f32(var_6.b.x + var_6.c)), var_4.d))));
}

