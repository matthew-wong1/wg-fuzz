struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_3.yx;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 888f)), _wgslsmith_f_op_f32(-arg_2.a.x)), arg_0.x, _wgslsmith_f_op_f32(-var_0.x)), var_0.x, ~firstTrailingBit(~arg_2.c));
    var_1 = arg_2;
    var var_2 = -2147483647i;
    var var_3 = arg_2;
    return ~firstTrailingBit(10878u);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(abs(_wgslsmith_add_u32(min(1u, 92623u), min(38190u >> (1u % 32u), _wgslsmith_mod_u32(4294967295u, 38404u)))), abs(max(1u, ~4294967295u) ^ func_3(vec3<f32>(arg_0.a.x, 612f, -239f), _wgslsmith_add_i32(-88013i, u_input.a.x), Struct_1(arg_0.a, -307f, u_input.a.yz), vec4<f32>(arg_0.a.x, arg_0.a.x, 104f, 1120f))));
    var var_1 = _wgslsmith_f_op_f32(-2092f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(224f + arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-337f)), _wgslsmith_f_op_f32(f32(-1f) * -1127f)))))));
    let var_2 = vec3<bool>(true, true & all(vec4<bool>(true, true, true, true)), any(!vec4<bool>(true, true, all(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, true)))));
    var var_3 = select(_wgslsmith_sub_vec4_i32(~(firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, 1i, 2147483647i)) << (abs(vec4<u32>(var_0.x, 19079u, 1u, var_0.x)) % vec4<u32>(32u))), min(vec4<i32>(firstTrailingBit(-2147483647i), -1i, _wgslsmith_mod_i32(-31186i, arg_0.c.x), -arg_0.c.x), vec4<i32>(-1i, 2147483647i, -2147483647i, u_input.a.x) & vec4<i32>(u_input.a.x, -32264i, -2147483647i, -14699i))), (vec4<i32>(arg_0.c.x, 1i, max(u_input.a.x, -1i), ~u_input.a.x) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(29887u, 1u, var_0.x, var_0.x)), max(vec4<u32>(var_0.x, var_0.x, 62702u, var_0.x), vec4<u32>(19792u, var_0.x, var_0.x, 5508u))) % vec4<u32>(32u))) >> (vec4<u32>(~_wgslsmith_mult_u32(59934u, 43916u), 29266u, var_0.x | ~var_0.x, ~var_0.x) % vec4<u32>(32u)), vec4<bool>(var_0.x != abs(79380u), !(var_2.x & (var_2.x || false)), any(!(!vec2<bool>(var_2.x, var_2.x))), (max(var_0.x, var_0.x) <= var_0.x) || false));
    var_1 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.a.x) * _wgslsmith_f_op_f32(2010f - arg_0.b)), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(800f + 654f)))));
    return Struct_2(arg_0, var_2.x, arg_0.b, -736f);
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = countOneBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, func_3(arg_0.a.a.xww, u_input.a.x, Struct_1(arg_0.a.a, arg_0.c, vec2<i32>(69461i, u_input.a.x)), vec4<f32>(arg_0.a.b, -1167f, -1657f, arg_0.a.b))), func_3(vec3<f32>(arg_0.d, arg_0.a.a.x, -1250f), 24917i, arg_0.a, vec4<f32>(arg_0.d, arg_0.c, arg_0.a.b, arg_0.a.b)) & _wgslsmith_dot_vec4_u32(vec4<u32>(28890u, 1u, 1u, 15103u), vec4<u32>(1u, 8835u, 27812u, 11885u)))) << (1u % 32u);
    let var_1 = Struct_3(_wgslsmith_add_vec4_u32((vec4<u32>(var_0, 7701u, var_0, 70376u) & ~vec4<u32>(4294967295u, 4294967295u, 38591u, 4294967295u)) | vec4<u32>(abs(var_0), ~var_0, var_0, ~var_0), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 28163u, 4294967295u), vec4<u32>(var_0, var_0, var_0, 7811u), vec4<u32>(4294967295u, 39972u, var_0, 0u)))));
    var var_2 = arg_0.a;
    var var_3 = abs(max(-(vec4<i32>(arg_0.a.c.x, 2147483647i, arg_0.a.c.x, u_input.a.x) >> (var_1.a % vec4<u32>(32u))), firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, 14540i, -1i))) ^ -countOneBits(~vec4<i32>(-1i, -1i, var_2.c.x, 6222i)));
    return 11758u;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(select(1379f, 704f, arg_1.b))), arg_1.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)))), arg_1.c, arg_1.d);
    var var_1 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.wyy) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(494f + var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + 1579f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * 1052f))), 680f));
    let var_2 = min(vec2<u32>(1u, 1u), vec2<u32>(~(~0u), func_4(func_2(Struct_1(vec4<f32>(293f, 398f, -607f, var_0.x), arg_1.a.a.x, var_1.c))))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(45322u, min(~13049u, _wgslsmith_add_u32(6735u, 17618u))), select(vec2<u32>(1u, 1u), countOneBits(~vec2<u32>(4294967295u, 1u)), arg_2.yy));
    let var_3 = arg_1;
    return func_2(func_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.x, 321f, var_1.b, 1122f), vec4<f32>(-1606f, 1139f, var_1.a.x, 309f))), _wgslsmith_f_op_vec4_f32(-var_3.a.a)), _wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(f32(-1f) * -720f)), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a.c.x, arg_0), vec2<i32>(1i, arg_1.a.c.x)))).a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3.a;
    let var_1 = vec4<u32>(arg_1.x, 9259u, 13798u, arg_1.x);
    let var_2 = vec3<i32>(-(-1i >> (~var_1.x % 32u)), 0i, _wgslsmith_sub_i32(arg_3.c.x, -19975i));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_0)), arg_2, func_1(-func_2(Struct_1(arg_0.a.a, -113f, arg_3.c)).a.c.x, func_2(func_1(var_2.x, arg_0, !vec3<bool>(arg_0.b, false, false)).a), select(!vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, true, !arg_0.b), !func_1(2147483647i, arg_0, vec3<bool>(false, arg_0.b, arg_0.b)).b)).a.c);
    let var_4 = ~var_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(41001i, ~_wgslsmith_mod_i32(~u_input.a.x << (4294967295u % 32u), u_input.a.x));
    var var_1 = !(!vec3<bool>(func_5(func_1(var_0.x, Struct_2(Struct_1(vec4<f32>(1786f, -2446f, 1000f, 709f), -554f, u_input.a.xx), false, -1406f, 839f), vec3<bool>(false, true, false)), firstLeadingBit(vec4<u32>(1u, 1u, 75908u, 10452u)), _wgslsmith_div_f32(447f, -1000f), Struct_1(vec4<f32>(2132f, 749f, -272f, 324f), -121f, u_input.a.yx)), true, func_1(14218i, Struct_2(Struct_1(vec4<f32>(309f, 201f, 1540f, 385f), 2531f, vec2<i32>(u_input.a.x, 8060i)), false, -1019f, 416f), vec3<bool>(false, true, true)).b | func_5(Struct_2(Struct_1(vec4<f32>(-638f, -410f, -1000f, 566f), 1207f, vec2<i32>(35679i, var_0.x)), true, 1870f, 338f), vec4<u32>(4294967295u, 37192u, 8737u, 0u), 470f, Struct_1(vec4<f32>(416f, -449f, -369f, 378f), 1177f, vec2<i32>(u_input.a.x, u_input.a.x)))));
    let var_2 = u_input.a;
    let var_3 = ~select(var_0.x, var_2.x, var_1.x);
    let var_4 = vec2<u32>(40913u, ~18260u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(func_1(_wgslsmith_mult_i32(min(-1i, var_2.x), -1i), func_1(var_0.x, func_1(var_3, Struct_2(Struct_1(vec4<f32>(132f, 781f, 1338f, -1365f), 536f, u_input.a.xx), false, 311f, -1157f), vec3<bool>(true, false, var_1.x)), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x), var_1.x)), vec3<bool>(true, true, true)).a).d, -46356i);
}

