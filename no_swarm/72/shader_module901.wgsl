struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-712f, _wgslsmith_f_op_f32(max(-323f, -1051f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(292f + 722f), _wgslsmith_f_op_f32(abs(-584f))))), -250f, _wgslsmith_div_f32(-240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1942f)))))));
    let var_1 = true;
    let var_2 = ~(~_wgslsmith_sub_u32(countOneBits(_wgslsmith_sub_u32(u_input.c.x, 1u)), _wgslsmith_dot_vec2_u32(~u_input.d.zy, vec2<u32>(u_input.a, 1u) | vec2<u32>(56002u, u_input.d.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1106f), !(!vec2<bool>(true, any(vec2<bool>(var_1, var_1)))), vec3<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x) | _wgslsmith_sub_i32(u_input.b.x, 26554i)), u_input.e, u_input.b.x), 9556u, var_1);
    var var_4 = var_3.c.yy;
    return true;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = vec4<u32>(u_input.a, 0u, ~(~firstTrailingBit(_wgslsmith_clamp_u32(u_input.d.x, 4294967295u, 4294967295u))), ~(~(~u_input.c.x)));
    var var_1 = Struct_3(select(!select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, false, true), vec3<bool>(true, arg_0.b.x, arg_0.b.x)), select(vec3<bool>(arg_0.e, arg_0.e, true), vec3<bool>(true, arg_0.b.x, arg_0.e), vec3<bool>(arg_0.e, true, false)), vec3<bool>(arg_0.e, true, false)), vec3<bool>(_wgslsmith_div_f32(arg_0.a, 996f) >= 1280f, true, arg_0.b.x), arg_0.b.x));
    var_1 = Struct_3(select(vec3<bool>(true, !var_1.a.x, true), select(select(!vec3<bool>(false, arg_0.e, var_1.a.x), !var_1.a, !vec3<bool>(false, arg_0.b.x, arg_0.b.x)), !vec3<bool>(false, false, var_1.a.x), vec3<bool>(true, all(vec3<bool>(true, false, arg_0.e)), true)), var_1.a.x));
    var_1 = Struct_3(select(var_1.a, vec3<bool>(var_1.a.x, all(!vec2<bool>(true, arg_0.e)), var_1.a.x), true));
    let var_2 = Struct_4(_wgslsmith_div_f32(-309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(658f, arg_0.a)) + _wgslsmith_f_op_f32(max(arg_0.a, 848f))), _wgslsmith_f_op_f32(ceil(500f)))), Struct_3(select(vec3<bool>(arg_0.b.x, all(vec3<bool>(arg_0.e, true, true)), arg_0.c.x == u_input.e), select(!vec3<bool>(true, arg_0.e, false), var_1.a, func_1()), false | any(var_1.a.yy))), -203f, Struct_2(var_1.a.x | arg_0.b.x, arg_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) * _wgslsmith_f_op_f32(arg_0.a * -1900f)), arg_0.b, ~arg_0.c, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_0.x, arg_0.d, 1u, var_0.x)), true), vec2<f32>(991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) * _wgslsmith_f_op_f32(-893f + arg_0.a)))));
    return var_2.b.a;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-397f - 468f)))))), Struct_3(!func_3(Struct_1(-293f, vec2<bool>(false, false), vec3<i32>(1i, -3578i, 2147483647i), 4294967295u, false))), -668f, Struct_2(false, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -592f), vec2<bool>(any(vec3<bool>(false, true, false)), arg_0 < 4294967295u), vec3<i32>(u_input.e, ~20504i, _wgslsmith_add_i32(-13377i, 1i)), 0u, false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f + 1475f)), vec2<bool>(true, false), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, 29729i, 0i), vec3<i32>(2147483647i, u_input.b.x, 7607i)), ~vec3<i32>(20394i, 58403i, 13140i)), ~_wgslsmith_add_u32(55131u, u_input.a), true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -1254f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-111f, 1205f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(567f, 321f))))));
    var var_1 = 1f;
    var var_2 = Struct_2(true, var_0.d.b, var_0.d.c, vec2<f32>(1644f, _wgslsmith_div_f32(var_0.d.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-628f)) + _wgslsmith_f_op_f32(1000f + var_0.c)))));
    var var_3 = var_0.d.c;
    let var_4 = ~(~var_0.d.b.c.x);
    return -(vec3<i32>(-1i) * -(~(~var_0.d.c.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(select(false, true, true), func_1(), -41323i >= u_input.b.x), false), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(-1000f, 425f)), !var_0.a.yx, max(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, u_input.b.x, 0i), ~vec3<i32>(1i, u_input.e, u_input.e)), vec3<i32>(_wgslsmith_mod_i32(u_input.e, u_input.e), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(15556i, u_input.b.x)), u_input.b.x)), abs(func_2(1u, ~13316u))), 1u, u_input.d.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.c.x), ~u_input.d.x, u_input.a | 31461u, 0u), firstTrailingBit(~vec4<u32>(16134u, u_input.a, u_input.a, 38433u))));
    var_0 = Struct_3(select(var_0.a, select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(!var_0.a.x, !var_0.a.x, 69228u < u_input.c.x), var_1.e), all(func_3(Struct_1(-733f, vec2<bool>(false, var_0.a.x), var_1.c, var_1.d, var_0.a.x)).zx) | var_1.e));
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, false)), var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 1519f))))), select(!(!(!var_1.b)), vec2<bool>(!var_1.b.x, var_0.a.x), select(vec2<bool>(true, true), !(!vec2<bool>(var_0.a.x, var_0.a.x)), true)), vec3<i32>(_wgslsmith_mod_i32(-(~1i), ~(-var_1.c.x)), min(-39252i, var_1.c.x), _wgslsmith_clamp_i32(-(u_input.b.x ^ -1i), ~(i32(-1i) * -5542i), _wgslsmith_sub_i32(31699i, var_1.c.x))), var_1.d, var_0.a.x & var_1.b.x);
    let var_2 = var_1.d;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a * -240f))), !select(!var_0.a.xy, select(var_0.a.zy, var_1.b, var_0.a.x), vec2<bool>(true, true)), var_1.c, 0u, !var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-404f, -1505f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a, -587f)))), firstTrailingBit(_wgslsmith_clamp_u32(1u, var_3.d | ~64058u, min(~0u, var_1.d << (4294967295u % 32u)))), vec2<i32>(_wgslsmith_clamp_i32(~(-1i), var_1.c.x, func_2(50304u, var_1.d).x) >> (min(~19656u, firstTrailingBit(u_input.d.x)) % 32u), _wgslsmith_div_i32(~0i, i32(-1i) * -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.a, var_1.a, 983f), vec3<f32>(var_1.a, 203f, var_1.a)))))));
}

