struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(28934u, 4294967295u, 0u, 73369u);

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-34856i, -49905i, -43159i), vec3<i32>(10935i, 2147483647i, -51795i), vec3<i32>(33802i, 2147483647i, i32(-2147483648)), vec3<i32>(9154i, 2147483647i, 2147483647i), vec3<i32>(94494i, -44831i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 1i, -16983i), vec3<i32>(7890i, -2796i, i32(-2147483648)), vec3<i32>(-21729i, 1i, 1i), vec3<i32>(i32(-2147483648), -12113i, -27538i), vec3<i32>(1i, 1i, 1i), vec3<i32>(11202i, i32(-2147483648), 2147483647i), vec3<i32>(3112i, i32(-2147483648), -26420i), vec3<i32>(0i, -25070i, -5572i), vec3<i32>(-9578i, 2147483647i, -17623i), vec3<i32>(1i, -1i, -20865i), vec3<i32>(45069i, 2147483647i, -1i));

var<private> global3: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    return ~countOneBits(global1.x) & u_input.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(1069f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - _wgslsmith_f_op_f32(select(arg_2, 817f, !(false | (arg_0.b.x | true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)) + _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(f32(-1f) * -1046f))), 670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1228f) + arg_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1495f, arg_1.x, 707f, 1519f)))));
    let var_2 = -countOneBits(vec4<i32>(0i, u_input.a.x, 2147483647i, -74387i));
    let var_3 = !vec4<bool>(select(true, any(arg_0.d.wzz), arg_0.d.x), any(!arg_0.b), arg_0.b.x, var_2.x <= ((u_input.a.x >> (4294967295u % 32u)) >> (u_input.b.x % 32u)));
    return 4294967295u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_4(-5352i ^ _wgslsmith_mult_i32(u_input.a.x, 2147483647i));
    var_0 = Struct_4(var_0.a);
    global1 = vec4<u32>(35626u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43780u, 1u, u_input.b.x), vec4<u32>(1u, 44908u, arg_1.c.x, global1.x) >> (vec4<u32>(4294967295u, arg_3.c.e, 4294967295u, arg_3.c.a.x) % vec4<u32>(32u))), arg_3.a.e), _wgslsmith_clamp_u32(13735u, ~arg_1.e, (_wgslsmith_mod_u32(4294967295u, 38337u) ^ _wgslsmith_add_u32(0u, arg_1.e)) & 1u), global1.x);
    let var_1 = select(select(vec3<bool>(true & any(vec3<bool>(true, arg_1.d.x, true)), _wgslsmith_f_op_f32(round(arg_3.d)) != _wgslsmith_f_op_f32(-arg_3.d), true), select(select(arg_3.c.d.xxy, !arg_3.c.b, vec3<bool>(false, arg_3.c.d.x, true)), !arg_1.b, select(select(arg_1.d.yxy, vec3<bool>(arg_2, arg_2, false), arg_2), !vec3<bool>(arg_1.d.x, false, arg_1.d.x), arg_1.d.xyy)), !(!(!vec3<bool>(arg_1.b.x, true, arg_1.b.x)))), select(!select(!arg_3.c.d.zzz, vec3<bool>(true, true, false), vec3<bool>(arg_3.b, arg_1.b.x, arg_2)), select(arg_3.c.d.zwz, arg_1.d.xxy, (arg_0.x != 1i) & any(arg_3.a.d.www)), vec3<bool>(arg_1.b.x, true | arg_2, any(arg_1.b.xz))), !all(vec3<bool>(arg_1.b.x, arg_3.b, arg_3.c.b.x)) || (arg_3.a.b.x & (arg_3.c.c.x < arg_3.c.c.x)));
    var_0 = Struct_4(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(31144i), 2147483647i), abs(~var_0.a))));
    return select(vec2<bool>(!arg_3.b, false), !(!(!vec2<bool>(arg_3.c.d.x, false))), select(false, !var_1.x, true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> f32 {
    global0 = -1686f;
    global1 = vec4<u32>(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_sub_u32(33957u, 19861u)), arg_1.x, min(~(~(1u ^ u_input.b.x)), ~(~_wgslsmith_add_u32(arg_1.x, 4294967295u))), ~1u);
    var var_0 = select(func_4(firstLeadingBit(u_input.a.yy), Struct_1(vec2<u32>(arg_0.x >> (0u % 32u), arg_0.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false), vec3<u32>(func_2(true, Struct_3(Struct_1(global1.yw, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 0u, u_input.b.x), vec4<bool>(false, true, false, false), 11094u), false, Struct_1(arg_0, vec3<bool>(true, true, true), arg_1, vec4<bool>(true, false, true, true), arg_1.x), -850f), Struct_4(0i)), func_3(Struct_1(vec2<u32>(1u, 19309u), vec3<bool>(false, true, false), arg_1, vec4<bool>(true, false, true, false), u_input.b.x), vec4<f32>(-145f, 1000f, 1134f, -113f), -931f), global1.x), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), true), ~33577u), any(vec4<bool>(true, true, true, true)), Struct_3(Struct_1(max(vec2<u32>(u_input.b.x, 1u), vec2<u32>(global1.x, arg_0.x)), vec3<bool>(true, true, true), global1.xxz, vec4<bool>(true, true, true, true), arg_0.x), true, Struct_1(select(arg_0, u_input.b.xz, vec2<bool>(true, true)), vec3<bool>(true, true, true), vec3<u32>(u_input.b.x, arg_0.x, global1.x), vec4<bool>(false, true, false, false), firstLeadingBit(47253u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1626f) + 957f))), func_4(-u_input.a.zy ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(_wgslsmith_mult_vec2_u32(min(arg_1.xz, u_input.b.yx), arg_0), vec3<bool>(true, true, true), reverseBits(~global1.wwz), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 1u, 1u), _wgslsmith_div_vec3_u32(u_input.b, arg_1))), ~_wgslsmith_div_i32(-41522i, u_input.a.x) <= ~firstLeadingBit(u_input.a.x), Struct_3(Struct_1(~arg_0, vec3<bool>(true, true, true), firstLeadingBit(vec3<u32>(arg_0.x, global1.x, global1.x)), vec4<bool>(false, false, true, true), 0u), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), Struct_1(vec2<u32>(arg_0.x, arg_0.x), vec3<bool>(true, false, true), u_input.b, vec4<bool>(true, true, true, true), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) * _wgslsmith_f_op_f32(-295f - 1041f)))), false);
    let var_1 = select(!var_0.x, !(_wgslsmith_f_op_f32(1710f * _wgslsmith_f_op_f32(sign(337f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-867f, 1875f), -725f, select(false, var_0.x, false)))), !(!any(vec2<bool>(true, false))));
    var var_2 = Struct_4(-51147i);
    return 1091f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(24713u) < ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.b.x, global1.x ^ 4294967295u, _wgslsmith_div_u32(7558u, 35982u)), vec4<u32>(global1.x, global1.x, global1.x, u_input.b.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 62079u, 46159u, 61407u), vec4<u32>(global1.x, global1.x, u_input.b.x, 0u)) % vec4<u32>(32u)));
    var var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f + _wgslsmith_div_f32(238f, -1106f)) - -717f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(479f, -718f, var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -583f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - -882f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.zx, global1.wxy)) * _wgslsmith_f_op_f32(1716f * -2110f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, -639f) * -625f))) - 442f));
    let var_2 = 0u;
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(~global1.zz, vec2<u32>(var_2, ~4294967295u)) | vec2<u32>(_wgslsmith_mult_u32(~0u, 1u), countOneBits(1u) ^ firstLeadingBit(global1.x)), !(!(!select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0)))), _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(986u, global1.x, 3437u))), ~_wgslsmith_add_vec3_u32(~global1.yyw, ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec4<bool>(!(!var_0), all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, var_0), var_0))), any(vec4<bool>(-71342i <= u_input.a.x, true, var_2 < var_2, var_0)), var_0), ~abs(global1.x));
    let var_4 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(reverseBits(firstLeadingBit(u_input.a.x)), u_input.a.x, ~u_input.a.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i))), -u_input.a.x, ~firstTrailingBit(-18214i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 2785f)), _wgslsmith_div_f32(-1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))))), var_1.x, ~(select(_wgslsmith_clamp_vec3_u32(var_3.c, global1.xyz, global1.xww), vec3<u32>(var_2, u_input.b.x, 4294967295u), var_3.d.x) | vec3<u32>(27230u, 12645u, _wgslsmith_mod_u32(u_input.b.x, 46357u))), u_input.a.x);
}

