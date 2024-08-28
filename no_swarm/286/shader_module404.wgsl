struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1679f))) + 589f), vec4<f32>(-342f, -727f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(940f)), _wgslsmith_f_op_f32(min(-795f, 440f)), !var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(821f, 1581f)) + 396f)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(var_0, false), vec2<bool>(false, var_0))), (var_0 || var_0) & all(vec2<bool>(true, var_0)), !all(vec4<bool>(var_0, var_0, false, var_0)), var_0), 607f, u_input.b), max(~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 33603u), abs(u_input.a.x), 1u, max(u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x & 1u, _wgslsmith_mult_u32(44068u, u_input.a.x)), 0u | u_input.a.x, 4294967295u >> (u_input.a.x % 32u))), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xx, ~(_wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.xz) << (abs(u_input.a.xz) % vec2<u32>(32u)))));
    let var_2 = false;
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.b) - var_1.a.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a.b), var_1.a.b, select(var_1.a.c, var_1.a.c, var_2)))), select(var_1.a.c, var_1.a.c, !any(var_1.a.c.yx)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_i32(countOneBits(~9291i), ~2147483647i)), ~vec4<u32>(var_1.b.x, 1u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), vec3<u32>(var_1.b.x, 1500u, 1u))), ~var_1.b.x, u_input.a.x);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.b + vec4<f32>(var_1.a.b.x, 1048f, var_1.a.a, var_1.a.d))), !vec4<bool>(all(vec3<bool>(true, var_2, false)), var_2 || var_0, true, var_1.d == 4294967295u), _wgslsmith_f_op_f32(-283f + 521f), -2147483647i), firstLeadingBit(~select(var_1.b, var_1.b, vec4<bool>(var_0, true, var_2, false)) << (vec4<u32>(firstLeadingBit(35886u), _wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), var_1.b.wx), _wgslsmith_div_u32(7719u, var_1.c)) % vec4<u32>(32u))), var_1.c & abs(4294967295u), 0u);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(302f, var_1.a.a, var_1.a.c.x)))), -289f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> vec4<f32> {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_0.x, -599f))) > _wgslsmith_f_op_f32(f32(-1f) * -1122f));
    var_0 = true;
    var_0 = true;
    let var_1 = arg_1;
    var var_2 = false;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(630f + 357f), 1f), vec4<f32>(_wgslsmith_f_op_f32(floor(2072f)), _wgslsmith_f_op_f32(ceil(arg_0.x)), 1000f, -241f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-187f, -184f, arg_1, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(567f, 542f, 1090f, 560f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.c.x;
    var_0 = 1i;
    var var_1 = select(!select(vec4<bool>(arg_0.x, !arg_0.x, false, true), vec4<bool>(all(vec2<bool>(arg_1.x, arg_0.x)), true, arg_0.x, arg_0.x), arg_1.x), !select(select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_1.x, false, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, false, arg_1.x), select(arg_1.x, arg_0.x, false)), vec4<bool>(any(arg_0), true, true, arg_1.x));
    let var_2 = !arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1412f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-947f, 719f, -349f, 1301f)))), _wgslsmith_f_op_f32(func_3()))))), select(select(select(select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_1.x, var_2.x, true, true), vec4<bool>(var_1.x, false, true, true)), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(false, var_2.x, false, var_2.x), true), vec4<bool>(arg_1.x, var_1.x, false, arg_1.x)), vec4<bool>(all(var_1.xyx), var_1.x, true, var_2.x), arg_0.x), select(!(!vec4<bool>(false, false, arg_1.x, arg_1.x)), select(!vec4<bool>(false, var_1.x, false, true), select(vec4<bool>(false, arg_0.x, false, arg_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_2.x, true, arg_1.x, false)), !vec4<bool>(arg_1.x, arg_1.x, var_2.x, arg_1.x)), !vec4<bool>(arg_1.x, var_2.x, true, true)), !select(vec4<bool>(arg_0.x, arg_0.x, var_1.x, var_2.x), !vec4<bool>(var_1.x, var_1.x, var_2.x, arg_1.x), false)), _wgslsmith_f_op_f32(-182f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-574f - 619f)))), -(u_input.b >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x), u_input.a.x) % 32u)));
    return var_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = ~(~u_input.a.yx >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), arg_0.b.wx) << (vec2<u32>(~4294967295u, ~12030u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_0 = vec2<u32>(~(4294967295u & ~_wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b)), arg_0.c);
    var var_1 = _wgslsmith_add_vec3_u32(abs(u_input.a), ~(~_wgslsmith_div_vec3_u32(select(u_input.a, vec3<u32>(var_0.x, var_0.x, 4294967295u), arg_0.a.c.zwy), u_input.a)));
    let var_2 = select(~(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.e, -12805i, arg_1.a.e), u_input.c), -40231i, u_input.c.x & -12059i) & u_input.c), _wgslsmith_mod_vec3_i32(reverseBits(abs(vec3<i32>(arg_1.a.e, 1i, u_input.c.x))), vec3<i32>(-4227i, -39357i, 15130i)) >> (arg_0.b.xwz % vec3<u32>(32u)), select(true, arg_0.a.c.x, select(!arg_1.a.c.x, true || arg_0.a.c.x, u_input.a.x != u_input.a.x) & true));
    var var_3 = (vec3<i32>(max(u_input.c.x << (var_1.x % 32u), 1i), -1i, arg_1.a.e) ^ -firstTrailingBit(firstLeadingBit(vec3<i32>(arg_0.a.e, arg_0.a.e, arg_1.a.e)))) >> (vec3<u32>(~1u, firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.b, arg_0.b, arg_0.b), vec4<u32>(var_1.x, 23228u, var_1.x, 105510u)), vec4<u32>(103582u, 38429u, 0u, _wgslsmith_dot_vec3_u32(arg_0.b.zzx, u_input.a)))) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-915f - arg_1.a.d), _wgslsmith_f_op_f32(arg_1.a.a + arg_0.a.d)))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_2(Struct_1(-251f, vec4<f32>(915f, -197f, 214f, -1254f), vec4<bool>(true, true, true, false), -1285f, -2147483647i), vec4<u32>(arg_1.x, 45803u, 34283u, arg_1.x) << (vec4<u32>(u_input.a.x, u_input.a.x, arg_1.x, 0u) % vec4<u32>(32u)), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, arg_1.x, u_input.a.x))), Struct_3(func_2(vec2<bool>(false, true), vec2<bool>(true, true)))))));
    var var_1 = -(~vec4<i32>(~(-53648i), u_input.b, u_input.b, select(-41021i, arg_0, true))) & countOneBits(select(~(vec4<i32>(arg_0, -1718i, arg_0, 1i) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_1.x) % vec4<u32>(32u))), -countOneBits(vec4<i32>(u_input.c.x, 16531i, u_input.c.x, arg_0)), vec4<bool>(-1025f == var_0.x, true, u_input.a.x < u_input.a.x, true)));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(5383i, arg_0)), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_0, -6740i, 0i, var_1.x), -vec4<i32>(u_input.b, arg_0, var_1.x, -2147483647i)), vec4<i32>(var_1.x | -13722i, -2147483647i, 26188i, min(arg_0, arg_0)))), _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(25734i << (u_input.a.x % 32u), u_input.b, firstTrailingBit(firstLeadingBit(70098i)))), -(~arg_0));
    let var_2 = Struct_2(func_2(vec2<bool>(_wgslsmith_mod_u32(arg_1.x, u_input.a.x) > arg_1.x, true), vec2<bool>(true, ~u_input.c.x >= arg_0)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x | arg_1.x, max(arg_1.x, arg_1.x), _wgslsmith_mult_u32(arg_1.x, arg_1.x)), vec4<u32>(23479u, 1u << (u_input.a.x % 32u), 67706u, _wgslsmith_sub_u32(1u, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, arg_1.x, 1u)), 5491u, ~1u, 4294967295u)), firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1.x, ~53214u), 42999u)), 0u);
    var_1 = vec4<i32>(18693i, _wgslsmith_mod_i32(1i, 24773i), _wgslsmith_clamp_i32(-5195i, arg_0, -2147483647i), u_input.b) >> (abs(_wgslsmith_clamp_vec4_u32(~select(var_2.b, var_2.b, var_2.a.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(47650u, u_input.a.x, u_input.a.x, var_2.b.x), ~vec4<u32>(44793u, arg_1.x, 75986u, 93022u)), var_2.b)) % vec4<u32>(32u));
    return vec4<bool>(true, all(select(select(var_2.a.c.yyw, vec3<bool>(false, true, var_2.a.c.x), var_2.a.c.yyy), select(!var_2.a.c.zyz, vec3<bool>(true, true, false), !var_2.a.c.x), func_2(vec2<bool>(true, var_2.a.c.x), vec2<bool>(true, true)).c.xww)), !(!(!(u_input.b < 66661i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1196f)) - _wgslsmith_f_op_f32(sign(var_2.a.a))))) >= 113f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 33899u;
    let var_1 = (any(select(func_1(u_input.c.x, vec2<u32>(u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) & any(vec3<bool>(false, select(false, false, true), false))) && any(vec2<bool>(true, true));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-304f - -155f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, -1284f, 631f, -259f)), vec4<f32>(1000f, -822f, 1415f, 902f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-357f, -1000f, -201f, -382f), vec4<f32>(-2674f, 799f, -1231f, -1000f))))), vec4<bool>(false, var_1, (var_1 || false) & var_1, true), 1f, min(_wgslsmith_mod_i32(0i << (var_0 % 32u), ~u_input.b), -1i)));
    var_2 = Struct_3(var_2.a);
    let var_3 = vec3<bool>(var_1, true, -4601i <= (func_2(!vec2<bool>(true, var_1), !var_2.a.c.zx).e ^ firstTrailingBit(~u_input.c.x)));
    let var_4 = vec2<f32>(2151f, _wgslsmith_f_op_f32(select(1020f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.a.b.x)))), !any(!vec4<bool>(var_2.a.c.x, true, var_2.a.c.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.a), vec2<f32>(2462f, _wgslsmith_f_op_f32(var_2.a.b.x + _wgslsmith_f_op_f32(var_2.a.d + var_4.x))), ~min(vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(0u, var_0), var_0), vec4<u32>(_wgslsmith_mult_u32(7131u, 8828u), var_0, ~32455u, ~61126u)), vec4<i32>(6434i, -2836i, abs(-38417i) ^ (_wgslsmith_add_i32(78132i, var_2.a.e) >> (~33996u % 32u)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-28260i, 0i, 1i, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, 5205i, -2147483647i)), ~(~var_2.a.e))));
}

