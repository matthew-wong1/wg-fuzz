struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: array<i32, 11> = array<i32, 11>(2147483647i, 0i, -4567i, 1i, 54758i, -1i, 14770i, 0i, 7857i, -6370i, -1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = any(select(vec2<bool>(!any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), true), !select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, true), vec2<bool>(true, false), arg_1), all(vec2<bool>(arg_1, arg_1))), true));
    var var_1 = vec3<i32>(u_input.a.x, u_input.a.x << (0u % 32u), _wgslsmith_sub_i32(0i, u_input.a.x));
    global0 = array<i32, 11>();
    var_1 = min(u_input.a.wxx | select(min(vec3<i32>(15008i, u_input.a.x, var_1.x) & vec3<i32>(11199i, -15049i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(u_input.c, 11u)], 0i), vec3<i32>(var_1.x, global0[_wgslsmith_index_u32(arg_0, 11u)], var_1.x))), u_input.a.wzx, true), u_input.a.xyx);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1042f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -831f) * _wgslsmith_f_op_f32(sign(226f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1228f, -758f)) + _wgslsmith_f_op_f32(round(1598f)))), select(select(!vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1), true & arg_1), select(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1)), select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, true, true, true)), select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1))), vec4<bool>(false, false, arg_1, true)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(1536f * 864f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1115f))), _wgslsmith_f_op_f32(1169f + _wgslsmith_div_f32(1123f, 1000f)), -289f), vec2<f32>(-2537f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(847f - 1000f))))), Struct_1(376f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1328f) - _wgslsmith_f_op_f32(f32(-1f) * -253f)), _wgslsmith_f_op_f32(-866f - 729f))), !vec4<bool>(false, any(vec2<bool>(arg_1, arg_1)), !arg_1, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2194f, -1570f, -703f, -1507f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 2144f), vec2<f32>(-1886f, 1000f))), vec2<f32>(-2256f, 960f), all(vec3<bool>(false, arg_1, false)))))));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: bool) -> Struct_3 {
    global0 = array<i32, 11>();
    var var_0 = ~vec2<u32>(select(abs(~23518u), max(_wgslsmith_clamp_u32(15720u, 4294967295u, u_input.c), 1u), (u_input.d >= u_input.b) && (arg_2 == false)), u_input.b);
    var var_1 = Struct_2(Struct_1(548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f - 450f))), select(vec4<bool>(arg_0.x || arg_0.x, true, u_input.d <= 4294967295u, select(arg_0.x, false, false)), vec4<bool>(all(vec4<bool>(arg_1, false, arg_0.x, arg_2)), false, true, all(vec4<bool>(false, arg_1, arg_1, arg_1))), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-172f + -421f), _wgslsmith_f_op_f32(-999f + 550f), _wgslsmith_f_op_f32(f32(-1f) * -1223f), _wgslsmith_f_op_f32(f32(-1f) * -2262f)) + vec4<f32>(1f, 1f, 1f, 1f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1604f))))), Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f - -2044f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(519f, 594f)) + _wgslsmith_f_op_f32(f32(-1f) * -805f))), select(!(!vec4<bool>(arg_2, true, arg_1, arg_1)), !(!vec4<bool>(false, false, false, arg_2)), vec4<bool>(true, arg_0.x, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 807f, -1000f, 458f) * vec4<f32>(-412f, 582f, -805f, 181f))))), vec2<f32>(_wgslsmith_f_op_f32(-1000f + -3174f), -1548f)));
    global0 = array<i32, 11>();
    var var_2 = select(!vec3<bool>(true, arg_2, true), vec3<bool>(func_3(_wgslsmith_add_u32(var_0.x, u_input.b) << (~37679u % 32u), arg_0.x, ~var_0.x), var_1.b.c.x, u_input.a.x != ~(~(-44388i))), vec3<bool>(arg_1, true, false));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d.x + var_1.a.d.x) - var_1.b.a))), var_1.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_1.a.d))), var_1.b.d.xw), min(52101u, ~_wgslsmith_clamp_u32(var_0.x, 97366u, abs(4294967295u))), var_1.a, select(arg_1, arg_2, func_3(1u, all(vec2<bool>(var_2.x, arg_0.x)), firstLeadingBit(u_input.b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(!(!select(select(vec3<bool>(false, false, arg_1.b.c.x), arg_0.xyx, vec3<bool>(true, arg_0.x, arg_1.a.c.x)), arg_0.xxx, true)), arg_0.x & arg_1.a.c.x, !arg_1.b.c.x);
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, ~var_0.b), ~(~(~(vec2<u32>(var_0.b, 4294967295u) | vec2<u32>(2286u, 4294967295u)))));
    var_1 = vec2<u32>(4294967295u, ~(~(~(~4294967295u))));
    let var_2 = vec4<bool>(false, true, arg_1.b.c.x, !((_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 11u)]) ^ max(1064i, u_input.a.x)) > _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.a.wx), countOneBits(0i))));
    let var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.d, firstTrailingBit(5734u), select(41700u, 0u, false) | (var_1.x & var_0.b), _wgslsmith_add_u32(var_0.b, _wgslsmith_mod_u32(var_1.x, var_1.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_1.x, u_input.c, 0u), vec4<u32>(var_1.x, var_0.b, 40230u, var_0.b)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(59892u, u_input.c, 4294967295u, 27182u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18851u, 4294967295u, 1u), vec4<u32>(12695u, u_input.c, var_1.x, 16758u))) % vec4<u32>(32u))), vec4<u32>(1u, countOneBits(~var_0.b >> (_wgslsmith_mult_u32(var_0.b, 0u) % 32u)), ~_wgslsmith_mult_u32(var_1.x << (var_0.b % 32u), 74030u | var_1.x), var_0.b), select(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, 52792u, 37047u, 3312u), ~vec4<u32>(u_input.b, var_1.x, 0u, var_1.x), select(vec4<u32>(37232u, var_1.x, var_1.x, var_0.b), vec4<u32>(4294967295u, var_1.x, var_0.b, 17952u), var_0.c.c)), vec4<u32>(_wgslsmith_clamp_u32(28420u, 4294967295u, 1u), 0u & var_1.x, u_input.c, 28822u)), max(vec4<u32>(firstTrailingBit(4294967295u), 4294967295u, ~var_0.b, var_0.b >> (65998u % 32u)), countOneBits(countOneBits(vec4<u32>(0u, var_0.b, var_1.x, u_input.d)))), all(var_2.zwy)));
    return var_0.a;
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    global0 = array<i32, 11>();
    var var_0 = arg_0.b.e.x;
    let var_1 = true;
    let var_2 = func_2(vec3<bool>(var_1, false, true), var_1, all(!(!(!arg_0.a.c))));
    var_0 = _wgslsmith_f_op_f32(var_2.a.e.x - arg_0.b.a);
    return _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(~1u, _wgslsmith_mult_u32(2075u, var_2.b), 1u, ~1u)), ~(~vec4<u32>(u_input.d, var_2.b, u_input.d, 4294967295u)) ^ max(~vec4<u32>(16553u, var_2.b, 15000u, 68698u) | vec4<u32>(1u, u_input.b, 47023u, var_2.b), ~vec4<u32>(u_input.c, var_2.b, var_2.b, u_input.c)));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> Struct_3 {
    var var_0 = -u_input.a.yxz;
    var var_1 = abs(-20688i);
    var var_2 = func_2(!vec3<bool>(!any(vec2<bool>(false, false)), !(arg_2 >= 1u), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), true, true).c;
    var var_3 = _wgslsmith_sub_i32(-47312i, ~var_0.x) > -min(firstTrailingBit(u_input.a.x), var_0.x);
    var var_4 = select(vec3<bool>(false, _wgslsmith_dot_vec2_u32(arg_0.zy, ~vec2<u32>(63069u, u_input.b)) > 1u, all(vec2<bool>(select(var_2.c.x, true, var_2.c.x), true))), vec3<bool>(_wgslsmith_f_op_f32(var_2.e.x - -535f) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), 411f)), false, !any(var_2.c.wxy)), !all(!select(vec3<bool>(false, false, false), vec3<bool>(true, var_2.c.x, var_2.c.x), var_2.c.x)));
    return func_2(!var_2.c.xxw, arg_0.x <= 12114u, false & (!(!var_2.c.x) & var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zw;
    var var_1 = 1i < global0[_wgslsmith_index_u32(~max(~u_input.d, u_input.b) | u_input.c, 11u)];
    let var_2 = func_5(~func_4(Struct_2(func_1(vec4<bool>(false, false, true, false), Struct_2(Struct_1(-832f, -1000f, vec4<bool>(true, true, false, true), vec4<f32>(-1433f, 310f, 409f, 2226f), vec2<f32>(-312f, 1191f)), Struct_1(-870f, -1000f, vec4<bool>(false, false, false, true), vec4<f32>(136f, 685f, -484f, 665f), vec2<f32>(432f, 117f)))), Struct_1(541f, -296f, vec4<bool>(false, true, false, false), vec4<f32>(515f, 1924f, -685f, -1468f), vec2<f32>(-150f, 1815f)))), _wgslsmith_f_op_f32(min(-164f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1058f * 1276f))), _wgslsmith_div_f32(-515f, _wgslsmith_f_op_f32(f32(-1f) * -584f))))), u_input.d);
    var var_3 = var_2.b;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(select(var_2.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a * 1202f)))), all(vec3<bool>(68378u <= u_input.c, all(var_2.c.c.wwy), !var_2.c.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b * -379f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a))))));
    let var_5 = var_2;
    let var_6 = i32(-1i) * -_wgslsmith_dot_vec2_i32(~(-vec2<i32>(0i, 12749i)), select(u_input.a.zz, u_input.a.wz & vec2<i32>(1i, 1i), !vec2<bool>(var_5.c.c.x, var_5.d)));
    var var_7 = vec3<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-global0[_wgslsmith_index_u32(35103u, 11u)], ~(-25587i), -global0[_wgslsmith_index_u32(var_5.b, 11u)], ~global0[_wgslsmith_index_u32(29626u, 11u)])), vec4<i32>(2147483647i, ~(-36892i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1718i, 44186i, 2147483647i), u_input.a.xwz), -1i)), global0[_wgslsmith_index_u32(var_5.b, 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.x - 695f), _wgslsmith_add_i32(firstTrailingBit(-2147483647i << (~u_input.c % 32u)), var_7.x));
}

