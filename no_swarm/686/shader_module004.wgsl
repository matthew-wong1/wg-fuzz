struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = (arg_1.c && arg_1.c) || arg_1.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, arg_1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(arg_1.b.a.x))));
    var var_2 = _wgslsmith_mod_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-9052i, 658i, arg_1.b.b.a, 41424i), vec4<i32>(u_input.a.x, 24217i, 0i, -10149i)), min(vec4<i32>(arg_1.b.b.a, arg_1.b.b.a, -58525i, u_input.a.x), vec4<i32>(arg_1.b.b.a, arg_1.b.b.a, 2147483647i, arg_1.d)), vec4<i32>(12712i, -2147483647i, u_input.a.x, u_input.a.x) >> (arg_1.a % vec4<u32>(32u)))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -6769i, -8569i, 30421i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 6806i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 17814i), vec4<i32>(-1319i, arg_1.d, -35110i, arg_1.d)), vec4<i32>(arg_1.d, 2147483647i, u_input.a.x, arg_1.b.b.a) >> (vec4<u32>(arg_1.a.x, 47885u, arg_2, 4759u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_1.d, u_input.a.x, arg_1.d, 1i), vec4<i32>(10727i, u_input.a.x, -43284i, u_input.a.x), true) >> (vec4<u32>(arg_2, 18051u, 63457u, arg_1.a.x) % vec4<u32>(32u)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.b.a, u_input.a.x, 37768i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -74090i, u_input.a.x), vec4<i32>(u_input.a.x, 12431i, u_input.a.x, u_input.a.x)), reverseBits(vec4<i32>(-7412i, arg_1.b.b.a, arg_1.d, u_input.a.x)))));
    var_2 = -(~(max(vec4<i32>(var_2.x, -16241i, arg_1.b.b.a, 16474i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)) & _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, arg_1.d, var_2.x, 4551i), vec4<i32>(var_2.x, -7227i, var_2.x, arg_1.b.b.a))) >> (~u_input.b % vec4<u32>(32u)));
    var var_3 = arg_1.b.b;
    return reverseBits(2147483647i);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = -((vec4<i32>(1i, i32(-1i) * -23527i, 30108i ^ u_input.a.x, func_3(u_input.b.x, Struct_3(u_input.b, Struct_2(vec3<f32>(153f, arg_1.x, arg_1.x), Struct_1(u_input.a.x)), false, u_input.a.x), 7948u)) | (vec4<i32>(-1i) * -vec4<i32>(27877i, u_input.a.x, u_input.a.x, -6807i))) & select(vec4<i32>(u_input.a.x, ~15200i, -867i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 31252i), all(vec2<bool>(true, true))));
    let var_1 = Struct_3(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.b, min(u_input.b, vec4<u32>(5182u, u_input.c, 1u, arg_0.x)), u_input.b), countOneBits(vec4<u32>(2965u, u_input.c, u_input.b.x, arg_0.x) << (u_input.b % vec4<u32>(32u)))), u_input.b), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -442f)) + vec3<f32>(-374f, -511f, -405f))), Struct_1(0i)), 2077i <= (((0i & u_input.a.x) ^ ~36620i) & -u_input.a.x), _wgslsmith_clamp_i32(func_3(_wgslsmith_div_u32(13833u, 4294967295u), Struct_3(u_input.b, Struct_2(vec3<f32>(1183f, 489f, arg_1.x), Struct_1(u_input.a.x)), false, -41738i), reverseBits(13197u)) << (36999u % 32u), -33828i, -14570i));
    let var_2 = var_1.b.b;
    var var_3 = Struct_1(1i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.b.a)))), Struct_1(u_input.a.x));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = false;
    var var_1 = func_2(~firstTrailingBit((u_input.b.wzx >> (vec3<u32>(u_input.b.x, 0u, 4294967295u) % vec3<u32>(32u))) | u_input.b.zwy), vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(713f, -482f, var_0))))));
    let var_2 = vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, firstTrailingBit(var_1.a.x | func_2(vec3<u32>(u_input.c, var_1.a.x, 15867u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.a.x, -1000f), vec2<f32>(var_1.b.a.x, var_1.b.a.x)))).a.x));
    var_1 = Struct_3(var_2, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, -446f, var_1.b.a.x)))), Struct_1(arg_1.a)), !(1i <= arg_0.a), _wgslsmith_mod_i32(_wgslsmith_div_i32(-(arg_0.a | -9484i), arg_0.a), arg_2.a));
    var_1 = Struct_3(vec4<u32>(var_2.x, ~func_2(vec3<u32>(u_input.b.x, u_input.d, u_input.d), _wgslsmith_f_op_vec2_f32(var_1.b.a.zy * vec2<f32>(var_1.b.a.x, var_1.b.a.x))).a.x, u_input.c, ~var_2.x ^ (_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, var_2.x, var_2.x, var_2.x)) & 4294967295u)), func_2(~vec3<u32>(~var_1.a.x, u_input.b.x, ~4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a.yx)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.a.x, 612f), var_1.b.a.xx, vec2<bool>(false, false))), vec2<f32>(var_1.b.a.x, var_1.b.a.x)))).b, var_1.c, -_wgslsmith_mult_i32(arg_2.a, _wgslsmith_clamp_i32(2147483647i, arg_0.a, -53689i >> (var_2.x % 32u))));
    return !vec2<bool>(var_1.c, !var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(false, u_input.b.x == u_input.c), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(false, false | all(vec3<bool>(true, false, true))));
    let var_1 = ~vec2<u32>(countOneBits(abs(u_input.c)), firstLeadingBit(0u));
    let var_2 = vec3<bool>(any(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x)), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), var_0.x)), select(false, any(select(func_1(Struct_1(0i), Struct_1(u_input.a.x), Struct_1(u_input.a.x), u_input.a.xx), vec2<bool>(var_0.x, var_0.x), true)), false), true);
    var_0 = var_2.zz;
    var_0 = vec2<bool>(!var_2.x, var_2.x);
    var_0 = vec2<bool>(true, var_0.x);
    var_0 = func_1(func_2(~u_input.b.wyy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2275f, -896f) * _wgslsmith_div_vec2_f32(vec2<f32>(1246f, 1234f), vec2<f32>(1904f, 495f)))))).b.b, Struct_1(u_input.a.x), Struct_1(_wgslsmith_sub_i32(func_2(_wgslsmith_sub_vec3_u32(u_input.b.xwz, vec3<u32>(4294967295u, 65169u, 27435u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1195f, -159f), vec2<f32>(730f, 1000f), vec2<bool>(true, false)))).d, 1i)), u_input.a.yx);
    var var_3 = u_input.c;
    var var_4 = func_2(vec3<u32>(min(reverseBits(33190u), 4294967295u), u_input.b.x >> (var_1.x % 32u), 0u) << (_wgslsmith_clamp_vec3_u32(u_input.b.wyz, vec3<u32>(_wgslsmith_add_u32(var_1.x, var_1.x), select(u_input.d, var_1.x, false), u_input.b.x << (var_1.x % 32u)), u_input.b.yzx) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(219f, -147f) - vec2<f32>(-1000f, 796f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a.x, i32(-1i) * -2147483647i, var_4.b.a.x, (~min(var_1.x, 4294967295u) >> (34446u % 32u)) & _wgslsmith_mult_u32(_wgslsmith_mod_u32(countOneBits(33840u), ~var_4.a.x), 0u));
}

