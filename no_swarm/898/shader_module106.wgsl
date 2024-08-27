struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = 4294967295u;
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(31646u, 28426u, var_0)), vec3<u32>(max(0u, var_0), 88044u, var_0)), -12785i, u_input.c.zy), Struct_1(any(vec3<bool>(true, true, true)), vec3<u32>(var_0, _wgslsmith_mult_u32(firstLeadingBit(var_0), _wgslsmith_mod_u32(6792u, var_0)), firstTrailingBit(1u) | var_0), u_input.a, u_input.c.wz), Struct_1(any(vec3<bool>(var_0 >= var_0, all(vec3<bool>(true, false, true)), true)), select(vec3<u32>(~4294967295u, 0u, 0u), max(~vec3<u32>(4294967295u, var_0, 31138u), ~vec3<u32>(4294967295u, var_0, 1u)), true), -1i, u_input.c.zy), Struct_1(any(vec2<bool>(true, true)), ~abs(vec3<u32>(var_0, var_0, 46497u)), u_input.c.x, u_input.c.xw), Struct_1(false, ~(~(vec3<u32>(1u, 4294967295u, var_0) >> (vec3<u32>(var_0, var_0, 0u) % vec3<u32>(32u)))), u_input.b, countOneBits(~u_input.c.zz)));
    var_2 = Struct_2(var_2.a, Struct_1(any(select(select(vec2<bool>(var_2.d.a, true), vec2<bool>(true, var_2.e.a), vec2<bool>(false, var_2.c.a)), select(vec2<bool>(var_2.a.a, var_2.e.a), vec2<bool>(false, true), true), var_2.c.a)), vec3<u32>(~(~var_0), 1u, 1u), countOneBits(0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_2.d.b.x), var_2.e.b.xz) % vec2<u32>(32u)), max(var_2.a.d, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-22652i, -8894i))))), var_2.c, Struct_1(true, _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(9038u), ~0u, 1u), var_2.e.b >> (~vec3<u32>(9035u, 84962u, 215u) % vec3<u32>(32u))), _wgslsmith_sub_i32(u_input.c.x | u_input.b, var_2.a.c), min(var_2.a.d, u_input.c.zx)), Struct_1(var_2.d.a, min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.b.x, 59271u, var_0), _wgslsmith_sub_vec3_u32(var_2.a.b, vec3<u32>(var_2.e.b.x, var_0, 4294967295u))), vec3<u32>(~var_2.a.b.x, min(1u, 25996u), ~3301u)), 0i, vec2<i32>(var_2.a.c, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -1i, -30318i, var_2.a.d.x), u_input.c), ~vec4<i32>(var_2.d.d.x, 1i, -16099i, var_2.b.d.x)))));
    var var_3 = vec4<bool>(var_2.b.a, var_2.b.a, !any(!select(vec4<bool>(false, var_2.c.a, var_2.c.a, var_2.e.a), vec4<bool>(var_2.b.a, false, true, var_2.c.a), vec4<bool>(false, var_2.e.a, var_2.b.a, var_2.d.a))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(arg_0, -2511f))))));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_div_f32(982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1016f + -926f), 1007f)) * _wgslsmith_f_op_f32(-553f - _wgslsmith_f_op_f32(f32(-1f) * -812f))) - 938f));
    var_0 = -3184f;
    var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(384f, -868f)), _wgslsmith_div_f32(-1811f, -1000f)) + _wgslsmith_div_f32(-712f, _wgslsmith_f_op_f32(f32(-1f) * -1268f))), _wgslsmith_f_op_f32(f32(-1f) * -182f), false))));
    var var_1 = Struct_3(vec2<bool>(!(arg_0.x || (u_input.c.x > u_input.b)), any(!(!arg_0))));
    return u_input.c.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = -(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.yxw, vec3<i32>(u_input.b, arg_0.b.d.c, -49433i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, -1i, u_input.a), u_input.c.wxw))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(func_2(vec2<bool>(arg_0.d.a.x, false)), 2147483647i, u_input.c.x), u_input.c.xwy));
    let var_1 = arg_0;
    var var_2 = vec4<bool>(!arg_0.d.a.x, false, var_1.e.d.a, var_1.e.e.a);
    var_2 = !(!(!vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, var_2.x)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1045f)));
    return Struct_3(var_1.d.a);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = u_input.c.xx;
    var_1 = u_input.c.ww;
    var_1 = ~(~u_input.c.yy);
    var_1 = _wgslsmith_mod_vec2_i32(countOneBits(u_input.c.zz), vec2<i32>(47538i, 39578i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1955f, -488f), _wgslsmith_f_op_f32(floor(-761f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1078f, -747f) + _wgslsmith_f_op_f32(423f + 1000f)), all(select(arg_0.a, arg_2, vec2<bool>(var_0.x, arg_2.x)))))));
}

fn func_5(arg_0: f32, arg_1: u32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 310f, _wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_0) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-371f, arg_0, arg_0, 194f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * -312f), ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, 32354u), ~(~9637u)), ~select(arg_1, max(arg_1, _wgslsmith_mod_u32(arg_1, 654u)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-888f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(Struct_4(u_input.b, Struct_2(Struct_1(false, vec3<u32>(54837u, 54905u, 18816u), u_input.b, vec2<i32>(u_input.c.x, 7676i)), Struct_1(false, vec3<u32>(4294967295u, 39389u, 4294967295u), -2147483647i, u_input.c.zy), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 21333u), u_input.b, u_input.c.zy), Struct_1(true, vec3<u32>(114011u, 4294967295u, 1u), u_input.c.x, vec2<i32>(1i, u_input.b)), Struct_1(true, vec3<u32>(30560u, 37351u, 0u), -69139i, u_input.c.xx)), vec3<u32>(1u, 0u, 22158u), Struct_3(vec2<bool>(false, false)), Struct_2(Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 4294967295u), -2147483647i, vec2<i32>(u_input.c.x, -2147483647i)), Struct_1(true, vec3<u32>(52768u, 81812u, 2836u), -71753i, u_input.c.wy), Struct_1(false, vec3<u32>(0u, 0u, 4294967295u), -2147483647i, u_input.c.wy), Struct_1(true, vec3<u32>(79273u, 0u, 17909u), u_input.c.x, u_input.c.wy), Struct_1(true, vec3<u32>(15599u, 1u, 48480u), -41842i, vec2<i32>(u_input.b, u_input.b)))), vec3<f32>(-1719f, -320f, 1280f), true, -868f), 16020u, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))) + -1203f)), abs(~1u));
}

