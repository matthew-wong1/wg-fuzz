struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = arg_1;
    return _wgslsmith_sub_u32(4294967295u, 14769u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = false;
    var var_1 = ~arg_2;
    var var_2 = -2023i;
    let var_3 = arg_3.a.d.x;
    let var_4 = ~(~arg_1.ywz);
    return arg_3.b.a.a.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(-1i, 2147483647i);
    let var_1 = -func_3((func_2(arg_0.x, Struct_2(Struct_1(vec2<i32>(arg_3, var_0), vec4<u32>(0u, arg_1, arg_1, 13741u), vec4<f32>(1009f, -174f, 1016f, 1136f), vec3<bool>(true, arg_0.x, arg_0.x), vec4<u32>(u_input.a.x, arg_1, u_input.a.x, 4294967295u)), Struct_1(arg_2.zy, vec4<u32>(u_input.a.x, arg_1, u_input.a.x, 32503u), vec4<f32>(-439f, -189f, -885f, 173f), vec3<bool>(true, true, false), vec4<u32>(arg_1, u_input.a.x, arg_1, 1u)), Struct_1(vec2<i32>(arg_3, arg_3), vec4<u32>(u_input.a.x, 1u, arg_1, u_input.a.x), vec4<f32>(1624f, -343f, -1208f, -345f), arg_0, vec4<u32>(11186u, u_input.a.x, 85986u, u_input.a.x)))) >> (4294967295u % 32u)) << (11374u % 32u), abs(vec4<u32>(43329u, ~37279u, u_input.a.x, countOneBits(0u))), -(~arg_2.x), Struct_3(Struct_1(-arg_2.yx, firstLeadingBit(vec4<u32>(72761u, 17307u, u_input.a.x, 2629u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-516f, 1503f, -322f, -1622f) * vec4<f32>(-1873f, 686f, 1097f, -1669f)), !arg_0, ~vec4<u32>(u_input.a.x, u_input.a.x, 52804u, arg_1)), Struct_2(Struct_1(vec2<i32>(arg_3, arg_2.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1), vec4<f32>(847f, 724f, 371f, -1000f), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec4<u32>(1u, u_input.a.x, 22185u, arg_1)), Struct_1(vec2<i32>(20483i, -65503i), vec4<u32>(70159u, 8878u, 75187u, arg_1), vec4<f32>(-254f, -635f, -1921f, 1668f), arg_0, vec4<u32>(0u, 26647u, 13501u, 14276u)), Struct_1(arg_2.yy, vec4<u32>(u_input.a.x, 52679u, u_input.a.x, 4294967295u), vec4<f32>(165f, -460f, 1514f, -290f), arg_0, vec4<u32>(16278u, arg_1, 88488u, 2642u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1681f, -277f, 530f, 975f)))));
    let var_2 = u_input.a.x;
    let var_3 = ~(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, u_input.a.x, var_2, 4294967295u), vec4<u32>(arg_1, arg_1, var_2, 8113u))));
    let var_4 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(1u, firstTrailingBit(~func_2(false, Struct_2(Struct_1(arg_2.xx, var_3, vec4<f32>(-1000f, 629f, 858f, 161f), arg_0, vec4<u32>(var_2, 56723u, u_input.a.x, var_3.x)), Struct_1(vec2<i32>(-2147483647i, arg_2.x), var_3, vec4<f32>(580f, -315f, 481f, 1000f), vec3<bool>(true, arg_0.x, arg_0.x), var_3), Struct_1(arg_2.yy, var_3, vec4<f32>(668f, 427f, -213f, -1415f), arg_0, vec4<u32>(4294967295u, u_input.a.x, arg_1, 4294967295u)))))));
    return Struct_2(Struct_1(-vec2<i32>(-2147483647i, arg_2.x), abs((vec4<u32>(var_2, var_3.x, 0u, var_4) << (var_3 % vec4<u32>(32u))) & vec4<u32>(var_4, 6975u, 1u, 110631u)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(1245f)), _wgslsmith_f_op_f32(sign(-311f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(408f)))), select(arg_0, select(arg_0, !vec3<bool>(false, arg_0.x, arg_0.x), true), vec3<bool>(all(vec3<bool>(arg_0.x, false, arg_0.x)), arg_0.x, true)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 1u, arg_1, 13478u), var_3, select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, false))), select(var_3, vec4<u32>(var_4, 80277u, 30007u, 4294967295u), arg_0.x) & abs(var_3))), Struct_1(arg_2.yz, vec4<u32>(var_4, _wgslsmith_div_u32(var_3.x, ~var_4), ~countOneBits(14251u), 13456u >> (var_2 % 32u)), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f - 1376f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(119f - -2776f)), -614f), vec3<bool>(!(!arg_0.x), !arg_0.x, !any(vec2<bool>(arg_0.x, true))), firstTrailingBit(var_3)), Struct_1(~(~arg_2.yz), vec4<u32>(var_2, _wgslsmith_mod_u32(firstTrailingBit(84512u), arg_1), arg_1, 1u), vec4<f32>(778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -2044f))), -1035f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(!(!arg_0), vec3<bool>(all(arg_0.yy), arg_0.x, arg_0.x), vec3<bool>(!arg_0.x, true, arg_0.x)), min(~var_3, abs(var_3))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.c.x)))));
    let var_1 = func_1(arg_0.a.d, countOneBits(firstLeadingBit(13225u)), ~reverseBits(~(vec3<i32>(arg_1, arg_1, -24622i) << (vec3<u32>(24997u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), firstLeadingBit(_wgslsmith_mod_i32(arg_1, arg_1)));
    var var_2 = true;
    var var_3 = Struct_3(Struct_1(vec2<i32>(1i, func_3(~1u, max(var_1.a.e, vec4<u32>(34268u, 12471u, arg_0.c.e.x, arg_0.b.e.x)), -31106i, Struct_3(arg_0.c, Struct_2(Struct_1(arg_0.c.a, vec4<u32>(108077u, 24095u, 0u, var_1.a.e.x), vec4<f32>(var_0, -1035f, var_0, -1103f), arg_0.a.d, arg_0.b.e), var_1.c, Struct_1(var_1.a.a, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, var_1.b.e.x), var_1.b.c, vec3<bool>(false, var_1.c.d.x, arg_0.a.d.x), var_1.a.b)), vec4<f32>(var_0, -303f, var_0, 959f)))), vec4<u32>(16658u, ~reverseBits(41731u), 25103u, ~arg_0.b.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c.x, arg_0.a.c.x, 755f, arg_0.a.c.x), vec4<f32>(1600f, -565f, 1741f, -528f)) - vec4<f32>(2111f, _wgslsmith_f_op_f32(var_1.a.c.x * -1513f), _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, all(select(vec4<bool>(false, true, var_1.c.d.x, arg_0.c.d.x), vec4<bool>(true, false, false, arg_0.a.d.x), vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, false, arg_0.a.d.x))), false), ~arg_0.a.e), func_1(var_1.c.d, select(u_input.a.x, func_2(true, Struct_2(Struct_1(var_1.b.a, vec4<u32>(47897u, 5655u, u_input.a.x, 4294967295u), arg_0.b.c, vec3<bool>(arg_0.a.d.x, true, arg_0.b.d.x), var_1.b.e), var_1.c, var_1.b)), all(arg_0.b.d.yx)), countOneBits(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(52389i, 1i, arg_0.c.a.x), vec3<i32>(-1i, -26113i, 0i)), vec3<i32>(arg_1, 0i, 0i) & vec3<i32>(47705i, var_1.c.a.x, arg_1))), 2147483647i), _wgslsmith_f_op_vec4_f32(exp2(func_1(!vec3<bool>(arg_0.a.d.x, true, true), func_2(any(vec4<bool>(arg_0.a.d.x, true, arg_0.c.d.x, arg_0.b.d.x)), func_1(vec3<bool>(arg_0.a.d.x, var_1.b.d.x, arg_0.c.d.x), u_input.a.x, vec3<i32>(-7138i, 1i, 74874i), arg_1)), -(vec3<i32>(-804i, arg_1, 15238i) & vec3<i32>(1i, var_1.b.a.x, var_1.a.a.x)), abs(-47969i << (0u % 32u))).a.c)));
    var_3 = Struct_3(func_1(vec3<bool>(any(vec4<bool>(true, var_1.c.d.x, false, var_3.b.c.d.x)) && any(vec4<bool>(var_1.b.d.x, true, true, var_1.b.d.x)), var_1.b.d.x, 524f < _wgslsmith_div_f32(-2251f, var_1.a.c.x)), var_3.a.e.x, -vec3<i32>(_wgslsmith_sub_i32(arg_1, arg_0.b.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, -763i), vec4<i32>(32381i, -1i, arg_0.c.a.x, 2147483647i)), ~(-11523i)), ~(var_3.a.a.x >> (arg_0.c.e.x % 32u)) | var_3.a.a.x).b, Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(var_1.b.a, var_3.b.c.a >> (vec2<u32>(u_input.a.x, var_3.a.e.x) % vec2<u32>(32u))), ~var_3.a.b >> (var_3.b.c.e % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.b.c), arg_0.b.c, arg_0.b.d.x)), vec3<bool>(true, arg_0.c.d.x, !arg_0.b.d.x), select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.e.x, 23239u, 0u, var_1.c.e.x), vec4<u32>(21324u, 4294967295u, 0u, 29443u)), firstTrailingBit(arg_0.a.e), any(arg_0.c.d.xy))), Struct_1(var_3.a.a << (select(vec2<u32>(16096u, u_input.a.x), vec2<u32>(var_3.b.b.b.x, 75306u), var_3.a.d.zy) % vec2<u32>(32u)), vec4<u32>(var_3.b.a.e.x, ~arg_0.a.b.x, 0u, select(55582u, 46460u, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a.c) + var_3.c), vec3<bool>(true, all(vec4<bool>(true, var_1.b.d.x, true, false)), false), ~(~arg_0.c.b)), Struct_1(-var_1.a.a, vec4<u32>(firstLeadingBit(arg_0.b.b.x), _wgslsmith_add_u32(823u, arg_0.b.e.x), 0u, arg_0.b.e.x), _wgslsmith_f_op_vec4_f32(-arg_0.c.c), vec3<bool>(!arg_0.c.d.x, arg_0.a.a.x < 2147483647i, !var_1.a.d.x), var_1.b.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.b.c.c + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.c.x, var_1.b.c.x, var_3.c.x, arg_0.b.c.x)))))));
    return 18661u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, func_4(func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), ~u_input.a.x, -vec3<i32>(-1i, 0i, -52633i), ~23622i), ~(~0i)) >= u_input.a.x, (_wgslsmith_div_i32(13451i << (u_input.a.x % 32u), -9875i) == -(i32(-1i) * -26279i)) && !any(vec4<bool>(false, false, false, true)));
    var var_1 = func_1(select(vec3<bool>(true, var_0.x, var_0.x && false), select(vec3<bool>(true, var_0.x && true, false), !vec3<bool>(true, var_0.x, var_0.x), !(var_0.x | false)), vec3<bool>(true, var_0.x, false)), ~(~4294967295u), vec3<i32>(~func_1(vec3<bool>(false, false, var_0.x), u_input.a.x, max(vec3<i32>(-60861i, 2147483647i, -1i), vec3<i32>(2147483647i, -1i, -34579i)), i32(-1i) * -18637i).b.a.x, func_1(!vec3<bool>(false, var_0.x, false), ~u_input.a.x, select(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(-1i, 1i, 18559i), !vec3<bool>(false, var_0.x, true)), 22769i).a.a.x, -38727i), 0i);
    let var_2 = all(vec2<bool>(!var_1.a.d.x, false));
    var var_3 = Struct_3(func_1(select(select(var_1.b.d, !var_1.a.d, var_1.a.e.x < u_input.a.x), vec3<bool>(var_1.c.d.x, false, false), var_1.c.d.x), firstTrailingBit(_wgslsmith_div_u32(~4294967295u, 17524u)), vec3<i32>(0i, -2086i, -643i), _wgslsmith_add_i32(var_1.c.a.x & 0i, _wgslsmith_dot_vec2_i32(~var_1.a.a, var_1.b.a))).b, func_1(!var_1.a.d, var_1.a.e.x, vec3<i32>(var_1.c.a.x, var_1.c.a.x, var_1.a.a.x), func_3(~u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.e.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(var_1.c.e & vec4<u32>(4294967295u, u_input.a.x, var_1.a.e.x, 0u), var_1.a.b), -18157i, Struct_3(Struct_1(var_1.b.a, var_1.c.e, var_1.a.c, vec3<bool>(false, true, true), var_1.b.e), Struct_2(Struct_1(vec2<i32>(-32354i, -1i), vec4<u32>(var_1.b.e.x, u_input.a.x, var_1.a.b.x, u_input.a.x), var_1.b.c, vec3<bool>(var_2, var_2, false), var_1.a.e), var_1.c, Struct_1(var_1.b.a, vec4<u32>(var_1.c.b.x, u_input.a.x, 4294967295u, var_1.a.b.x), var_1.a.c, var_1.b.d, var_1.b.e)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.c.x, 860f, var_1.c.c.x, -956f), vec4<f32>(-1000f, var_1.c.c.x, var_1.a.c.x, -431f), true))))), var_1.c.c);
    var var_4 = Struct_3(var_3.a, func_1(var_1.c.d, ~(var_1.c.e.x >> (var_3.a.b.x % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1.c.a.x, -34305i), vec3<i32>(82309i, var_3.b.b.a.x, 8761i)), -vec3<i32>(1i, -2147483647i, -1i)), ~(vec3<i32>(48299i, 5570i, var_3.a.a.x) | vec3<i32>(-25468i, 1i, var_1.b.a.x))), _wgslsmith_sub_i32(~(-var_3.a.a.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-21334i, var_3.a.a.x, var_1.a.a.x), 1i))), vec4<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.c.c.x)), _wgslsmith_f_op_f32(-var_3.b.b.c.x))) * var_3.b.a.c.x), var_3.b.b.c.x, -544f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.x, vec3<i32>(~var_4.a.a.x << (16824u % 32u), i32(-1i) * -(~(-1i)), _wgslsmith_mod_i32(var_3.b.a.a.x, countOneBits(-var_1.a.a.x))), var_3.b.c.e.zx);
}

