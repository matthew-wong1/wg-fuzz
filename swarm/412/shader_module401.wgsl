struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = 1293f;
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b.d, ~u_input.b.x), arg_0.b.d), countOneBits(~29157u)), ~0u, _wgslsmith_sub_u32(min(min(~4294967295u, ~1u), firstTrailingBit(~u_input.a)), u_input.a));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(arg_0.b.c, _wgslsmith_div_i32(-999i, min(arg_0.a.x, arg_0.a.x))), -abs(2147483647i), arg_0.b.b, -(_wgslsmith_mult_i32(arg_0.b.c, arg_0.b.b) & -2147483647i)), (vec4<i32>(~arg_0.b.c, -1i, arg_0.a.x, -arg_0.b.b) >> (vec4<u32>(1u, _wgslsmith_sub_u32(0u, u_input.a), 4294967295u, ~17619u) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(-2147483647i, ~arg_0.a.x, firstTrailingBit(-2147483647i), arg_0.b.c)));
    var var_3 = Struct_4(arg_1.x, Struct_3(vec2<bool>(all(vec3<bool>(arg_1.x, false, arg_1.x)), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a))), select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), true), -18356i > arg_0.a.x), vec4<bool>(countOneBits(20330u) < ~var_1.x, true, arg_1.x, (false || arg_1.x) | !arg_1.x), any(select(!arg_1.xz, select(vec2<bool>(arg_1.x, arg_1.x), arg_1.xy, vec2<bool>(false, false)), vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b.a, 1000f, arg_1.x)), 1214f, _wgslsmith_div_f32(arg_0.b.a, -2371f), _wgslsmith_f_op_f32(arg_0.b.a * -339f)), vec4<f32>(_wgslsmith_div_f32(arg_0.b.a, 335f), _wgslsmith_f_op_f32(sign(arg_0.b.a)), _wgslsmith_div_f32(172f, -676f), 498f), !select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(arg_0.b.a * -758f), _wgslsmith_f_op_f32(exp2(arg_0.b.a)), arg_0.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.a, arg_0.b.a, 438f, -1805f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2167f, arg_0.b.a, -1178f, -495f))), vec4<bool>(true, true, true, true)))), select(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2808i, -54072i) ^ vec3<i32>(arg_0.b.b, 2147483647i, 324i), firstLeadingBit(vec3<i32>(36572i, 41272i, 70243i))), (~vec3<i32>(-31853i, 1i, arg_0.b.c) ^ _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.c, 5790i, arg_0.a.x), vec3<i32>(-35646i, -10995i, arg_0.b.c))) >> (~vec3<u32>(1u, 6637u, arg_0.b.d) % vec3<u32>(32u)), arg_1));
    let var_4 = vec2<i32>(var_3.e.x, _wgslsmith_sub_i32(countOneBits(~(-var_3.e.x)), arg_0.a.x));
    return 1f;
}

fn func_4(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.wx), u_input.b.xw), ~vec2<u32>(31783u, u_input.a)), 6762u, 48140u) ^ ~vec3<u32>(0u, 4294967295u, 15100u);
    let var_1 = select(arg_0.c.xw, !vec2<bool>(true, false && arg_0.b.a.x), arg_0.b.a.x == false);
    var_0 = u_input.b.zzx;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-225f)));
    var var_3 = _wgslsmith_f_op_f32(arg_0.b.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.d.x, var_2, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * -193f) + _wgslsmith_f_op_f32(var_2 + 104f)))));
    return _wgslsmith_sub_vec3_u32(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(1896u, var_0.x, u_input.a), vec3<u32>(var_0.x, u_input.b.x, var_0.x)), ~(~vec3<u32>(u_input.a, 0u, var_0.x) << (vec3<u32>(u_input.b.x, 3330u, 36928u) % vec3<u32>(32u))), true | all(select(arg_0.c, arg_0.c, arg_0.c.x))), countOneBits(firstLeadingBit(countOneBits(u_input.b.xyy << (u_input.b.xww % vec3<u32>(32u))))));
}

fn func_2(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = true;
    return func_4(Struct_4(true, Struct_3(vec2<bool>(true, true), 1241f), !vec4<bool>(var_0, var_0, any(vec2<bool>(var_0, var_0)), var_0), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(235f + -1000f), 770f)), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(-1i, 33853i), Struct_1(-120f, 1i, 2147483647i, 84991u)), vec3<bool>(var_0, var_0, false))), _wgslsmith_div_f32(-387f, 395f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1277f + -200f))), vec3<i32>(-1i, ~(~1i), firstLeadingBit(_wgslsmith_div_i32(-51135i, 2147483647i)))));
}

fn func_1(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = u_input.b.zz;
    var var_1 = _wgslsmith_sub_vec3_u32(u_input.b.wxz << (~func_2(abs(u_input.b.yxy)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(107239u, 1u, 17965u), max(u_input.b.yzw, ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), u_input.b.wyz))));
    let var_2 = Struct_2(firstLeadingBit(arg_0.e.zy) & arg_0.e.yz, Struct_1(_wgslsmith_f_op_f32(855f * 1f), arg_0.e.x, 2147483647i, _wgslsmith_clamp_u32(82595u, _wgslsmith_sub_u32(1992u, 0u), 1u) >> (_wgslsmith_div_u32(max(var_0.x, 3649u), 1u) % 32u)));
    var_1 = ~func_2(~(~u_input.b.xzw)) << (~firstLeadingBit(vec3<u32>(var_1.x, 45761u, 1u)) % vec3<u32>(32u));
    let var_3 = arg_0.c.yzy;
    return select(select(-var_2.a, vec2<i32>(countOneBits(arg_0.e.x), _wgslsmith_dot_vec3_i32(countOneBits(arg_0.e), abs(vec3<i32>(arg_0.e.x, 0i, 0i)))), var_3.x), ~max(arg_0.e.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.b, var_2.a.x), vec2<i32>(-36796i, 32031i)) & arg_0.e.zy), arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(32075i, 4469i)) << (u_input.b.zx % vec2<u32>(32u)), func_1(Struct_4(true, Struct_3(vec2<bool>(true, false), -383f), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<f32>(2121f, -763f, -468f, -813f), -vec3<i32>(-31600i, -2147483647i, 25382i)))), vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(1i, 1i, _wgslsmith_sub_i32(9523i, -55261i))), _wgslsmith_mult_i32(~(-1i), -27889i << (abs(0u) % 32u))));
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(vec2<i32>(-2147483647i, 1i) ^ (vec2<i32>(22537i, var_1.x) ^ (vec2<i32>(0i, 2147483647i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), Struct_1(1f, -1i, -2147483647i, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 15690u, u_input.a, 22068u), u_input.b))), !(!vec3<bool>(true, u_input.a > u_input.a, true))));
    let var_2 = countOneBits(_wgslsmith_add_vec2_u32(u_input.b.zx, u_input.b.zy));
    var var_3 = 972f;
    let var_4 = Struct_3(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), any(vec3<bool>(true, true, true))), -902f);
    var_3 = _wgslsmith_f_op_f32(-var_4.b);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(609f + -844f))) + _wgslsmith_f_op_f32(step(961f, var_4.b))), var_4.b, _wgslsmith_f_op_f32(-1302f * -1503f)));
}

