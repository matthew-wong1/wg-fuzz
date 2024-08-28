struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(127f, 2141f, 2028f), vec3<f32>(1334f, 513f, 1276f), vec3<f32>(604f, -1468f, 492f), vec3<f32>(-352f, -742f, -1000f), vec3<f32>(915f, -771f, 273f), vec3<f32>(-1075f, -817f, 1122f), vec3<f32>(2554f, 470f, -1579f), vec3<f32>(1939f, 1399f, -1114f), vec3<f32>(-225f, -566f, 1390f), vec3<f32>(233f, 1594f, 1047f), vec3<f32>(-594f, 143f, 108f), vec3<f32>(-2633f, 559f, 263f), vec3<f32>(-1067f, -2047f, -1000f), vec3<f32>(504f, -1000f, -1000f), vec3<f32>(1123f, 840f, -1731f), vec3<f32>(186f, -1256f, -1627f), vec3<f32>(1418f, -1080f, 2891f), vec3<f32>(-183f, -470f, -1032f), vec3<f32>(947f, -1291f, -986f), vec3<f32>(-388f, -1383f, 113f), vec3<f32>(-1510f, -586f, -1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-990f + 131f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1139f) + -1012f))));
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, ~_wgslsmith_mod_i32(u_input.d, 0i));
    var var_2 = Struct_2(~1u, var_0, abs(u_input.e.x), Struct_1(_wgslsmith_f_op_f32(-462f * var_0.a)), vec2<u32>(~(~(4294967295u >> (arg_0.x % 32u))), arg_0.x));
    var var_3 = 55656u;
    global0 = array<vec3<f32>, 21>();
    return abs(firstLeadingBit(vec2<u32>(~var_2.e.x, var_2.e.x)) | ((vec2<u32>(var_2.a, var_2.e.x) | _wgslsmith_sub_vec2_u32(vec2<u32>(115268u, 27424u), arg_0)) | vec2<u32>(_wgslsmith_div_u32(var_2.e.x, arg_0.x), var_2.a | 50716u)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(817f, -1152f)) * _wgslsmith_f_op_f32(ceil(1450f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f), -766f)));
    var var_1 = Struct_1(var_0.a);
    var var_2 = Struct_1(var_0.a);
    var var_3 = true;
    var var_4 = Struct_2(_wgslsmith_mod_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(1167u, 1u), ~70318u), 1u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a)))), max(u_input.a, -1i), Struct_1(var_0.a), firstTrailingBit(func_3(vec2<u32>(~55064u, 1u))));
    return var_4.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = Struct_2(~arg_0.e.x, func_2(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), arg_0.c, func_2(!vec3<bool>(all(vec3<bool>(true, false, false)), true, true)), _wgslsmith_mult_vec2_u32(arg_1.e, vec2<u32>(arg_0.e.x, 0u)));
    var var_1 = vec2<i32>(firstLeadingBit(1i), ~arg_0.c);
    global0 = array<vec3<f32>, 21>();
    var_1 = ~(~(-u_input.b) & u_input.c.xx);
    return 4294967295u;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = 1u;
    let var_1 = !arg_0;
    let var_2 = select(vec3<i32>(abs(0i), -6798i, abs(-(arg_1.x | arg_1.x))), vec3<i32>(firstLeadingBit(i32(-1i) * -10639i), _wgslsmith_sub_i32(arg_1.x | arg_1.x, ~arg_1.x) << (var_0 % 32u), ~arg_1.x << (23271u % 32u)), 0u >= max(func_3(vec2<u32>(var_0, var_0) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u))).x, abs(0u & var_0)));
    let var_3 = -154f;
    return Struct_2(var_0, Struct_1(var_3), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(arg_1.x, var_2.x), -(var_2.x | arg_1.x)), func_2(select(var_1.wyw, arg_0.yww, any(vec4<bool>(true, arg_0.x, arg_0.x, false)))), abs(~abs(min(vec2<u32>(16150u, 33470u), vec2<u32>(var_0, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<bool>(true, true && ((55056u << (1u % 32u)) >= func_1(Struct_2(41290u, Struct_1(847f), u_input.c.x, Struct_1(-1940f), vec2<u32>(4294967295u, 1u)), Struct_2(0u, Struct_1(1016f), 4982i, Struct_1(471f), vec2<u32>(22766u, 4294967295u)))), true, true), vec4<i32>(u_input.d, u_input.d, ~((u_input.b.x | u_input.a) | _wgslsmith_add_i32(-56347i, -3484i)), ~(-51444i)));
    global0 = array<vec3<f32>, 21>();
    var_0 = func_4(!(!vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.c, 18753i, var_0.c) | vec4<i32>(var_0.c, var_0.c, var_0.c, 1i), -vec4<i32>(16300i, 71223i, var_0.c, 0i)) << ((~vec4<u32>(22658u, var_0.a, var_0.e.x, 58295u) ^ vec4<u32>(25962u, var_0.e.x, 4294967295u, 7193u)) % vec4<u32>(32u)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(103i, -15065i, 18922i, u_input.c.x), vec4<i32>(var_0.c, var_0.c, var_0.c, -57964i)))));
    var var_1 = !(!(!vec4<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, false)))));
    global0 = array<vec3<f32>, 21>();
    let var_2 = ~((~74559u << (_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a, 1u), 52840u) % 32u)) >> (1u % 32u));
    let var_3 = Struct_2(~4294967295u, func_4(!select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x)), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, var_1.x, false, var_1.x)), select(true, var_1.x, true)), -select(~vec4<i32>(-6239i, var_0.c, 2147483647i, var_0.c), ~vec4<i32>(var_0.c, u_input.e.x, u_input.e.x, u_input.d), !var_1.x)).d, _wgslsmith_div_i32(~_wgslsmith_mod_i32(var_0.c | var_0.c, u_input.d), -2147483647i), Struct_1(497f), func_4(!vec4<bool>(true, any(var_1.xxz), false, all(vec2<bool>(var_1.x, var_1.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_0.c, var_0.c, u_input.d), vec4<i32>(var_0.c, u_input.d, u_input.c.x, u_input.e.x)) | -min(vec4<i32>(u_input.c.x, -49646i, u_input.a, u_input.a), vec4<i32>(10366i, u_input.a, var_0.c, var_0.c))).e);
    var_1 = vec4<bool>(any(var_1.yw), var_0.e.x <= ~(~var_3.a), !(!(!all(var_1.xw))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_mult_u32(select(38957u, 27612u, false), select(var_0.e.x, 40433u, false)), 0u, 4294967295u, var_3.e.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, var_2, 4294967295u, var_0.a), vec4<u32>(71177u, 1u, var_3.e.x, var_0.a) | vec4<u32>(var_0.a, var_3.a, var_3.a, 45474u)), !(!select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, false, var_1.x, true), var_1.x))), ~33524i, u_input.e.x, vec3<i32>(u_input.b.x ^ _wgslsmith_sub_i32(var_3.c << (var_0.e.x % 32u), -2147483647i), -2147483647i, func_4(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), firstTrailingBit(vec4<i32>(0i, var_0.c, -16852i, 44697i))).c >> (abs(~37739u) % 32u)));
}

