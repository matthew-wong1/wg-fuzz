struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_div_u32(1u, ~arg_0.x), ~arg_0.x, ~(~(~arg_0.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -721f), arg_1 >= -2147483647i, 1i, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.xw, arg_0.wx), vec2<u32>(arg_0.x, 59905u))), Struct_1(1537f, true, -reverseBits(u_input.b), countOneBits(vec2<u32>(arg_0.x, arg_0.x)))), -(~vec4<i32>(-6798i, abs(60662i), arg_1 & -50330i, -1i << (arg_0.x % 32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)), true, -1i, max(abs(vec2<u32>(arg_0.x, 5200u)), select(arg_0.zy, arg_0.yy, true))), Struct_1(1632f, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_sub_i32(select(2147483647i, arg_1, true), -2147483647i), (arg_0.yw | vec2<u32>(1u, arg_0.x)) & _wgslsmith_add_vec2_u32(arg_0.yx, arg_0.wz))));
    var var_1 = var_0.b.b.d.x;
    var_1 = _wgslsmith_div_u32(36780u, _wgslsmith_clamp_u32(~1u, ~(var_0.a.x | arg_0.x) | arg_0.x, ~4294967295u));
    let var_2 = Struct_3(var_0.a, Struct_2(Struct_1(-1163f, false, firstLeadingBit(u_input.a.x) | -58284i, ~(~var_0.d.a.d)), var_0.d.a), vec4<i32>(max(-37200i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, arg_1, 2147483647i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x))), 2147483647i, i32(-1i) * -arg_1, ~arg_1), Struct_2(Struct_1(-1898f, false, abs(var_0.d.b.c) & arg_1, var_0.d.b.d), var_0.b.b));
    var_1 = var_2.b.b.d.x;
    return var_0.d.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec3<bool> {
    let var_0 = Struct_3(~(~(~vec3<u32>(41780u, 0u, 62277u) << (vec3<u32>(arg_0.d.x, arg_0.d.x, arg_1.b.a.d.x) % vec3<u32>(32u)))), arg_1.b, -u_input.a, Struct_2(func_2(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_3, arg_3, 5219u, 4294967295u), vec4<u32>(arg_3, 4294967295u, 0u, arg_1.a.x), vec4<bool>(false, true, arg_0.b, false)), ~vec4<u32>(0u, arg_3, 0u, arg_3), vec4<u32>(arg_1.a.x, 0u, 50365u, 1u) << (vec4<u32>(45537u, 71480u, 6289u, arg_1.d.b.d.x) % vec4<u32>(32u))), arg_0.c), func_2(vec4<u32>(arg_0.d.x, 11846u, 34383u, 4294967295u) >> (select(vec4<u32>(arg_1.d.a.d.x, arg_3, arg_0.d.x, arg_3), vec4<u32>(arg_3, 9998u, arg_3, arg_0.d.x), vec4<bool>(arg_1.b.b.b, arg_0.b, arg_1.b.b.b, arg_0.b)) % vec4<u32>(32u)), -1i)));
    var var_1 = firstLeadingBit(min(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.d.x, 0u, arg_3, arg_0.d.x), vec4<u32>(var_0.a.x, 4294967295u, var_0.b.a.d.x, arg_1.d.b.d.x)), abs(~(~vec4<u32>(66945u, arg_0.d.x, arg_1.b.b.d.x, arg_3)))));
    var var_2 = arg_1.b;
    var var_3 = vec4<bool>(true, var_2.b.b, false, !(!(true != arg_0.b)));
    var var_4 = arg_1.a;
    return var_3.xyy;
}

fn func_1() -> f32 {
    let var_0 = !select(vec3<bool>(firstTrailingBit(u_input.a.x) <= _wgslsmith_mult_i32(-19275i, 1i), false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))), func_3(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(3128u, 46546u, 0u, 17158u), vec4<u32>(1u, 0u, 0u, 1u)), u_input.b << (44565u % 32u)), Struct_3(~vec3<u32>(0u, 4294967295u, 0u), Struct_2(Struct_1(1456f, false, 0i, vec2<u32>(85584u, 18043u)), Struct_1(2121f, true, 6722i, vec2<u32>(43247u, 1856u))), vec4<i32>(u_input.b, 875i, u_input.a.x, -1i), Struct_2(Struct_1(1277f, true, 39567i, vec2<u32>(4294967295u, 50220u)), Struct_1(219f, true, 1i, vec2<u32>(18052u, 0u)))), 2147483647i, 1u), select(func_3(Struct_1(-981f, false, u_input.a.x, vec2<u32>(31629u, 42322u)), Struct_3(vec3<u32>(1u, 41579u, 0u), Struct_2(Struct_1(-1505f, true, u_input.b, vec2<u32>(4294967295u, 0u)), Struct_1(433f, true, u_input.a.x, vec2<u32>(4294967295u, 0u))), u_input.a, Struct_2(Struct_1(-1514f, true, 0i, vec2<u32>(25858u, 0u)), Struct_1(739f, false, 1i, vec2<u32>(0u, 20069u)))), ~22547i, 1u), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, 1i > u_input.a.x, true)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1302f, _wgslsmith_f_op_f32(-2513f + 134f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(362f, _wgslsmith_f_op_f32(-1000f - 863f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, 391f)), vec2<f32>(-432f, -1832f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(615f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(171f))))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = Struct_3(abs(~_wgslsmith_add_vec3_u32(~vec3<u32>(30926u, 12356u, 52680u), select(vec3<u32>(11957u, 19071u, 46948u), vec3<u32>(29844u, 51555u, 1u), true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_2.x) - _wgslsmith_f_op_f32(ceil(852f))), var_0.x, 11561i, vec2<u32>(1u, 1u)), Struct_1(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_0.x, firstLeadingBit(-28763i), min(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 1u)), min(vec2<u32>(14022u, 4294967295u), vec2<u32>(0u, 34047u))))), vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -3488i, _wgslsmith_mod_i32(-2147483647i, u_input.b), 1i), min(u_input.a.xww, u_input.a.zzy)), abs(~(-2147483647i))), Struct_2(Struct_1(var_1.x, func_2(min(vec4<u32>(21962u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 12115u, 32634u)), u_input.b).b, u_input.b, vec2<u32>(~29215u, ~102416u)), Struct_1(var_2.x, false, -1i, vec2<u32>(abs(72759u), firstTrailingBit(26909u)))));
    var var_4 = !(!vec4<bool>(var_0.x, true, true, false));
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1()), -1226f)))) - -365f), any(select(vec3<bool>(all(vec2<bool>(true, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_1(-738f, true, 2147483647i, vec2<u32>(1u, 0u)), Struct_3(vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(623f, true, u_input.b, vec2<u32>(4294967295u, 40434u)), Struct_1(524f, true, u_input.b, vec2<u32>(80890u, 1u))), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), Struct_2(Struct_1(901f, false, -60446i, vec2<u32>(1u, 122773u)), Struct_1(-1653f, false, -2147483647i, vec2<u32>(10099u, 4294967295u)))), u_input.b, 11003u)), select(vec3<bool>(false, false, true), func_3(Struct_1(176f, false, u_input.b, vec2<u32>(1u, 12330u)), Struct_3(vec3<u32>(10401u, 93309u, 4294967295u), Struct_2(Struct_1(-1407f, false, -1i, vec2<u32>(15385u, 28801u)), Struct_1(-1051f, true, u_input.b, vec2<u32>(14414u, 6015u))), u_input.a, Struct_2(Struct_1(-1713f, true, u_input.b, vec2<u32>(19971u, 4294967295u)), Struct_1(-1197f, false, u_input.b, vec2<u32>(27654u, 57536u)))), u_input.b, 1u), all(vec4<bool>(false, false, true, false))))), _wgslsmith_div_i32(2632i, 1i), firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(1u, 4294967295u << (0u % 32u)), ~abs(18375u))));
    let var_1 = var_0.a;
    let var_2 = vec2<bool>(true, all(select(vec4<bool>(var_0.b, var_0.c != -23761i, true, -261f != var_0.a), select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(true, true, var_0.b, var_0.b), all(vec3<bool>(var_0.b, false, var_0.b))), select(select(vec4<bool>(var_0.b, true, true, var_0.b), vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(true, var_0.b, var_0.b, var_0.b)), vec4<bool>(true, false, var_0.b, var_0.b), !vec4<bool>(false, true, var_0.b, var_0.b)))));
    var var_3 = var_0.d << (~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(select(var_0.d, vec2<u32>(18436u, 12446u), false), ~var_0.d), var_0.d) % vec2<u32>(32u));
    var var_4 = (var_0.d.x >> (var_3.x % 32u)) ^ 1u;
    var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(var_0.c, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_0.c) ^ -abs(min(u_input.a.ywy, vec3<i32>(u_input.b, 48398i, 49487i))), var_0.d, u_input.a.yz, ~_wgslsmith_clamp_i32(u_input.b, firstTrailingBit(_wgslsmith_mult_i32(1i, -2147483647i)), u_input.a.x & countOneBits(-2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_1, 389f), vec3<f32>(-220f, var_1, -2279f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1453f, -685f) - vec3<f32>(625f, var_0.a, 1034f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, var_0.a, var_1) + vec3<f32>(var_0.a, var_1, -1137f))))));
}

