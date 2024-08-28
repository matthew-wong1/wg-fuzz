struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32) -> f32 {
    var var_0 = arg_2;
    let var_1 = u_input.c;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, arg_2, false)) + _wgslsmith_f_op_f32(-arg_2))) - arg_2)));
    var var_2 = _wgslsmith_clamp_i32(u_input.e, u_input.e, firstTrailingBit(arg_1.b.e.x));
    let var_3 = Struct_3(arg_1.b, arg_1.b);
    return -956f;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = min(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(32778u, u_input.b.x << (u_input.d.x % 32u), _wgslsmith_mod_u32(93602u, 1u)), u_input.b.x), 73742u), ~u_input.b.yx);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(1i != u_input.e, true), Struct_4(var_0.x, Struct_1(u_input.c, vec3<bool>(true, false, false), 1u, vec3<bool>(true, false, false), vec3<i32>(arg_1.x, 0i, u_input.a.x))), arg_0)), _wgslsmith_f_op_f32(-arg_0)), 1000f, 401f);
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_u32(min(var_0.x, 65783u >> (u_input.d.x % 32u)), ~7830u), vec3<bool>(!all(vec3<bool>(true, false, false)), true & all(vec4<bool>(false, true, false, true)), true), 82877u, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true), -vec3<i32>(14626i, u_input.e, ~0i)), Struct_1(4449u, vec3<bool>(any(vec4<bool>(false, true, true, false)), !all(vec3<bool>(false, false, true)), true), var_0.x, vec3<bool>(select(true, false, false), false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false))), max(-vec3<i32>(arg_1.x, u_input.a.x, arg_1.x), vec3<i32>(u_input.e, 0i, arg_1.x)) | (vec3<i32>(arg_1.x, arg_1.x, 11288i) ^ ~arg_1)));
    let var_3 = Struct_5(Struct_2(var_2.a), u_input.b, Struct_3(Struct_1(firstLeadingBit(0u), !(!var_2.b.b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, var_0.x), 0u ^ var_2.b.a, u_input.d.x), select(!var_2.b.d, select(vec3<bool>(var_2.b.d.x, var_2.a.b.x, var_2.b.d.x), vec3<bool>(var_2.a.b.x, false, true), var_2.b.d.x), !var_2.b.d.x), vec3<i32>(1i, _wgslsmith_add_i32(var_2.a.e.x, u_input.a.x), 2147483647i)), var_2.b));
    let var_4 = var_3.c;
    return var_4;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> Struct_3 {
    let var_0 = -42636i;
    var var_1 = arg_2;
    let var_2 = var_1.c.b.c | var_1.c.b.c;
    var_1 = Struct_5(var_1.a, _wgslsmith_div_vec3_u32(~(firstLeadingBit(arg_2.b) & var_1.b), var_1.b), var_1.c);
    let var_3 = Struct_4(min(0u, ~u_input.c), func_2(-412f, vec3<i32>(~(-1097i), u_input.e | 42998i, -63220i) << (vec3<u32>(0u, func_2(arg_1, u_input.a).b.c, 42209u) % vec3<u32>(32u))).b);
    return Struct_3(Struct_1(4294967295u, select(arg_2.c.b.b, vec3<bool>(var_1.a.a.b.x, var_1.a.a.b.x, true), vec3<bool>(-13419i >= var_0, true, true)), select(abs(arg_2.c.b.a), ~1u, true), arg_2.a.a.d, -vec3<i32>(u_input.a.x, abs(1i), -1i)), var_3.b);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(~u_input.d.x, vec3<bool>(true, true, any(vec4<bool>(false, false, true, false)) && true), ~(~1u), vec3<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), -vec3<i32>(-u_input.e, _wgslsmith_mod_i32(29130i, u_input.a.x), _wgslsmith_add_i32(u_input.e, -2147483647i))));
    let var_1 = func_4(true, _wgslsmith_f_op_f32(trunc(-1018f)), Struct_5(Struct_2(var_0.a), arg_0, func_2(_wgslsmith_f_op_f32(f32(-1f) * -848f), vec3<i32>(var_0.a.e.x, var_0.a.e.x, _wgslsmith_add_i32(39795i, u_input.a.x)))));
    var_0 = Struct_2(var_1.a);
    var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2186f - 148f))), ~(-(u_input.a | vec3<i32>(var_1.a.e.x, var_1.a.e.x, 0i)))).a);
    let var_2 = ~var_0.a.c;
    return 118f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(min(_wgslsmith_div_vec3_u32(u_input.b & vec3<u32>(0u, 37708u, 1u), abs(vec3<u32>(13144u, u_input.b.x, 9585u))), vec3<u32>(~u_input.d.x, _wgslsmith_mod_u32(u_input.b.x, 60138u), ~u_input.b.x))))));
    var_0 = 1438f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1544f, 1023f, -1143f, 1363f) * vec4<f32>(374f, -1029f, 415f, 400f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(-2032f + -242f), -610f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(266f, 874f, -2315f, 275f), vec4<f32>(-921f, -732f, 1519f, -1412f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))), reverseBits(abs(vec3<i32>(u_input.e, _wgslsmith_sub_i32(u_input.a.x, u_input.e), 38946i))));
}

