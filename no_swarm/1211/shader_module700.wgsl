struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(~(-select(u_input.d.xz, vec2<i32>(1i, 1i), var_0.x)), arg_1.e, firstLeadingBit(arg_1.e.b.wz), Struct_1(vec3<bool>(!arg_1.d, true, true), u_input.b, vec3<i32>(arg_1.e.b.x, u_input.b.x, ~(-66794i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.e.d.x))), 1183f)));
    var_0 = arg_0;
    let var_2 = arg_1.e.a;
    var_0 = arg_0;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c.x, 108618u, 24885u), u_input.c, var_2), vec3<u32>(0u, u_input.c.x, arg_1.b)), arg_1.b), arg_1.b, arg_1.b, 1u), firstTrailingBit(abs(max(vec4<u32>(arg_1.b, u_input.c.x, 45166u, 0u) | vec4<u32>(arg_1.b, arg_1.b, u_input.c.x, arg_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, arg_1.b, u_input.c.x), vec4<u32>(0u, arg_1.b, 30799u, u_input.c.x))))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_1(var_0.yyz, ~vec4<i32>(countOneBits(u_input.d.x), 2147483647i, 0i, -u_input.b.x) >> (vec4<u32>(~_wgslsmith_mod_u32(u_input.c.x, 1u), 27538u, 1u, 59027u) % vec4<u32>(32u)), _wgslsmith_mult_vec3_i32(-(~countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, -57602i))), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -165f)));
    let var_2 = !var_0;
    let var_3 = vec4<bool>(var_1.a.x, var_0.x, (var_1.c.x & countOneBits(firstLeadingBit(var_1.b.x))) > -432i, var_1.a.x | any(var_1.a.yx));
    let var_4 = u_input.c.x;
    return Struct_3(var_1.d.x, u_input.c.x, _wgslsmith_f_op_f32(max(var_1.d.x, 489f)), !any(vec2<bool>(true && var_1.a.x, true || var_0.x)), Struct_1(var_3.zxy, var_1.b, vec3<i32>(-1i << (func_3(var_3, Struct_3(-776f, u_input.c.x, var_1.d.x, var_1.a.x, Struct_1(vec3<bool>(true, false, var_0.x), u_input.d, u_input.b.xxz, var_1.d))) % 32u), min(~1i, -18619i), firstLeadingBit(-26946i)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.d.x, -613f)))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~(~(1u << (arg_0.b % 32u))), 0u);
    return Struct_1(arg_0.e.a, vec4<i32>(i32(-1i) * -75674i, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(-66026i, arg_0.e.c.x)), u_input.b.xz), firstLeadingBit(u_input.b.x), -1i), ~vec3<i32>(arg_0.e.b.x, -1i, u_input.b.x), arg_0.e.d);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, -528f))), 85537u, arg_1.x, abs(0u) > ~abs(arg_2.x), func_4(func_2()));
    let var_1 = var_0.e.c.x >> ((13137u >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, var_0.b, arg_2.x), ~vec4<u32>(44834u, 23068u, 12337u, 2940u)) % 32u)) % 32u);
    let var_2 = arg_3;
    let var_3 = arg_2.yz;
    var var_4 = func_2().e.a;
    return !vec3<bool>(!var_4.x, var_4.x, var_0.e.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = !(!(!vec4<bool>(arg_0.e.a.x, false & arg_0.d, true, true)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_4(Struct_3(-168f, u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.d.x + arg_0.e.d.x) * -757f), all(!vec4<bool>(arg_0.e.a.x, true, false, true)), arg_0.e)), Struct_4(vec2<i32>(arg_0.e.c.x, _wgslsmith_clamp_i32(-1i, -u_input.b.x, _wgslsmith_add_i32(-27065i, u_input.a.x))), arg_0.e, abs(firstLeadingBit(firstLeadingBit(u_input.a.xx))), Struct_1(func_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.e.d.x, arg_0.a, arg_0.c)), countOneBits(arg_1.xyz), Struct_2(arg_0.a)), abs(u_input.b) >> (~arg_1 % vec4<u32>(32u)), vec3<i32>(12308i, arg_0.e.c.x, ~arg_0.e.c.x), _wgslsmith_f_op_vec2_f32(min(arg_0.e.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)))))), !(!func_2().e.a));
    let var_2 = countOneBits(1u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, arg_0.e.d.x, 433f), vec4<f32>(-1368f, arg_0.e.d.x, arg_0.a, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-535f, 1152f, 1897f, 655f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.c)), _wgslsmith_f_op_f32(sign(-843f)), _wgslsmith_f_op_f32(var_1.b.d.x * -1000f), func_2().e.d.x), vec4<f32>(var_1.c.b.d.x, arg_0.a, -387f, 1451f))), select(select(vec4<bool>(false, true, false, true), !vec4<bool>(arg_0.e.a.x, var_1.b.a.x, var_1.d.x, true), 1000f <= var_1.a.x), select(var_0, select(vec4<bool>(var_0.x, arg_0.e.a.x, true, true), vec4<bool>(var_0.x, var_0.x, false, true), var_0), false), var_1.b.a.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(626f - _wgslsmith_f_op_f32(-arg_0.a)), -1000f, _wgslsmith_f_op_f32(-var_1.c.b.d.x), -1000f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -549f) - 163f), var_1.c.b.d.x, 286f, -2028f)));
    let var_4 = var_1.c.b.d;
    return Struct_2(var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(116f);
    var_0 = func_5(Struct_3(var_0.a, 31445u, var_0.a, true, Struct_1(func_1(1i, _wgslsmith_div_vec4_f32(vec4<f32>(-1333f, var_0.a, var_0.a, 441f), vec4<f32>(var_0.a, -1268f, var_0.a, -1000f)), vec3<u32>(20120u, u_input.c.x, 0u), Struct_2(var_0.a)), u_input.b, reverseBits(vec3<i32>(0i, u_input.b.x, 26881i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(707f, 151f) - vec2<f32>(1424f, -659f))))), ~abs(countOneBits(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + var_0.a);
    var_1 = var_0.a;
    var var_2 = func_2().e;
    var_1 = var_0.a;
    var_0 = Struct_2(-813f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(939f, _wgslsmith_div_f32(2152f, _wgslsmith_div_f32(-310f, var_2.d.x))), ~u_input.c.zy);
}

