struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: array<vec2<u32>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-615f, _wgslsmith_f_op_f32(f32(-1f) * -823f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(430f - 1464f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-681f, -1000f))), arg_2.a.a.x)), _wgslsmith_f_op_f32(129f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(844f, -954f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-630f)) * _wgslsmith_f_op_f32(abs(1975f)))), _wgslsmith_f_op_f32(sign(613f))));
    global0 = array<vec2<u32>, 12>();
    var var_1 = any(!vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, 997f != var_0.x, arg_2.a.a.x)) | arg_2.a.a.x;
    var var_2 = vec2<bool>(false, true);
    var var_3 = ~(~vec3<u32>(1u, ~(~25891u), _wgslsmith_sub_u32(arg_0, _wgslsmith_sub_u32(arg_0, 0u))));
    return vec4<bool>(true, _wgslsmith_mod_i32(-2147483647i, -1i) != _wgslsmith_mod_i32(arg_1, -1i), !(arg_1 != _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, 1i, arg_1, 839i), vec4<i32>(arg_1, 1i, 2147483647i, arg_1)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 40268i, arg_1, arg_1), vec4<i32>(arg_1, 1i, -2147483647i, arg_1)))), !(!any(arg_2.a.a) != all(select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, arg_2.a.a.x, var_2.x, false), vec4<bool>(arg_2.a.a.x, true, true, var_2.x)))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = func_3(u_input.a, -(arg_1.x ^ arg_1.x), Struct_2(Struct_1(vec2<bool>(20692u <= u_input.a, !arg_2.d.x))));
    let var_1 = _wgslsmith_f_op_f32(round(1162f));
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 3>();
    return vec2<bool>(true, _wgslsmith_mult_u32(110281u, u_input.a) <= abs(~1u));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<u32>, 3>();
    let var_0 = select(select(func_4(~2147483647i, _wgslsmith_div_vec2_i32(vec2<i32>(-8159i, 13071i), -vec2<i32>(-1i, 2147483647i)), Struct_3(func_3(u_input.a, 1i, Struct_2(Struct_1(vec2<bool>(true, false)))), vec2<bool>(true, true), vec2<bool>(true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), -13957i << (1u % 32u)), (vec2<i32>(1i, 39355i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ vec2<i32>(2147483647i, -1i)), vec2<bool>(true, true), true), func_3(~14501u, min(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(29674i, -1i)), -vec2<i32>(0i, -31179i)), 1i), Struct_2(Struct_1(vec2<bool>(true, true)))).ww, true);
    global0 = array<vec2<u32>, 12>();
    let var_1 = -min(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 22838i) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<i32>(1i, 1i)) << ((max(global1[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 12u)]) | vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-54308i, 1i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(7632i, 11130i), vec2<i32>(-2618i, -2147483647i))));
    global0 = array<vec2<u32>, 12>();
    return Struct_1(!(!(!(!var_0))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_2();
    global0 = array<vec2<u32>, 12>();
    var var_1 = Struct_3(vec4<bool>(func_2().a.x, var_0.a.x, func_4((arg_0 ^ arg_0) << (max(u_input.a, 4294967295u) % 32u), abs(vec2<i32>(arg_0, -1i) >> (global0[_wgslsmith_index_u32(19338u, 12u)] % vec2<u32>(32u))), Struct_3(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), vec3<bool>(true, false, var_0.a.x), 1i), select(vec2<i32>(arg_0, arg_0), ~vec2<i32>(arg_0, 2147483647i), func_4(-6208i, vec2<i32>(-4790i, arg_0), Struct_3(vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec2<bool>(var_0.a.x, false), var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, false), arg_0), vec2<i32>(arg_0, -2147483647i)))).x, !any(!vec3<bool>(false, true, var_0.a.x))), var_0.a, vec2<bool>(false, false), select(vec3<bool>(any(select(vec2<bool>(true, var_0.a.x), vec2<bool>(var_0.a.x, false), false)), false, true), select(func_3(48624u, ~arg_0, Struct_2(Struct_1(var_0.a))).yyw, vec3<bool>(all(var_0.a), -1i > arg_0, true), var_0.a.x), !(!(!vec3<bool>(var_0.a.x, var_0.a.x, false)))), _wgslsmith_div_i32(arg_0, min(_wgslsmith_sub_i32(_wgslsmith_div_i32(57512i, arg_0), arg_0), ~arg_0 ^ (arg_0 & -50181i))));
    var var_2 = Struct_3(!(!var_1.a), var_1.a.yw, !var_0.a, func_3(u_input.a, -select(26559i, arg_0, true) ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, -10780i, 0i), _wgslsmith_clamp_i32(-28793i, 0i, arg_0)), Struct_2(var_0)).ywx, -6423i);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1386f, 429f, var_2.b.x)) * _wgslsmith_f_op_f32(floor(-1166f))))), ~(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 3u)]) >> (~(~u_input.a) % 32u)), Struct_2(var_0), Struct_2(var_0), Struct_3(select(vec4<bool>(false, var_1.a.x, 73226u != u_input.a, false || var_2.b.x), func_3(u_input.a, -33852i, Struct_2(var_0)), any(vec4<bool>(var_2.b.x, var_2.d.x, false, true))), select(vec2<bool>(!var_2.d.x, var_1.e != 1i), !(!var_1.c), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.a.x && var_1.b.x)), var_2.a.yy, !var_2.a.xzw, arg_0));
    return var_3.e;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_4) -> vec2<bool> {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 3>();
    let var_0 = Struct_1(func_2().a);
    return arg_3.c.a.a;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_0 = vec2<i32>(~arg_3.e, _wgslsmith_mod_i32(abs(arg_1.x), select(-arg_1.x | _wgslsmith_add_i32(7988i, arg_3.e), 13615i & min(arg_3.e, arg_3.e), true)));
    let var_1 = select(arg_3.a.wxz, vec3<bool>(arg_3.b.x, true, !func_1(select(arg_1.x, 1i, arg_0.x)).c.x), arg_3.d);
    global1 = array<vec2<u32>, 3>();
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1723f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1668f - -1023f)))))), ~(arg_2 | u_input.a), Struct_2(func_2()), Struct_2(Struct_1(vec2<bool>(true, true))), arg_3);
}

fn func_7(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> vec3<i32> {
    var var_0 = func_6(vec2<bool>(true, (max(arg_0.e.e, 2147483647i) >= ~arg_0.e.e) & func_4(-44266i, ~vec2<i32>(1i, 0i), Struct_3(vec4<bool>(arg_2.a.a.x, arg_0.d.a.a.x, arg_0.d.a.a.x, false), vec2<bool>(true, false), vec2<bool>(false, arg_0.d.a.a.x), arg_0.e.a.zzw, -33172i), vec2<i32>(1i, 1i)).x), max(vec4<i32>(35917i, arg_0.e.e, 11734i, func_6(!vec2<bool>(arg_0.e.b.x, false), firstLeadingBit(vec4<i32>(-2147483647i, arg_0.e.e, -1i, arg_0.e.e)), 4294967295u, arg_0.e).e.e), ~select(vec4<i32>(arg_0.e.e, 0i, 1i, arg_0.e.e), vec4<i32>(44382i, 34582i, arg_0.e.e, 464i), arg_0.e.a) & (vec4<i32>(arg_0.e.e, -1i, -40569i, arg_0.e.e) | vec4<i32>(arg_0.e.e, 35327i, 1i, 14766i))), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.b, 45803u) | global1[_wgslsmith_index_u32(76016u, 3u)]), vec2<u32>(u_input.a, ~u_input.a))), func_6(vec2<bool>(all(vec2<bool>(false, false)) | !arg_2.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 45417i, arg_0.e.e, 32026i), vec4<i32>(arg_0.e.e, arg_0.e.e, -1i, 1i)) == -15848i), vec4<i32>(arg_0.e.e, 14744i & arg_0.e.e, -2147483647i, 1i) ^ vec4<i32>(952i, abs(-3547i), _wgslsmith_mult_i32(arg_0.e.e, 0i), countOneBits(2147483647i)), 4392u, Struct_3(!vec4<bool>(arg_0.e.a.x, arg_2.a.a.x, true, true), arg_2.a.a, arg_2.a.a, vec3<bool>(!arg_0.d.a.a.x, true, !arg_0.d.a.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.e, arg_0.e.e, -18023i, arg_0.e.e) >> (vec4<u32>(4294967295u, arg_0.b, 20472u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(-11534i, 32340i, arg_0.e.e, -9874i)))).e);
    let var_1 = func_6(var_0.e.c, vec4<i32>(var_0.e.e, 1i ^ var_0.e.e, firstTrailingBit(~firstTrailingBit(arg_0.e.e)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.e, 1i, arg_0.e.e, arg_0.e.e), min(vec4<i32>(arg_0.e.e, var_0.e.e, 18291i, -45229i), vec4<i32>(var_0.e.e, arg_0.e.e, 0i, -82067i))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.e, var_0.e.e), reverseBits(vec2<i32>(29897i, -84385i))))), ~(~1u), func_1(var_0.e.e)).c;
    var var_2 = var_0.c;
    var_2 = arg_2;
    var var_3 = !var_1.a.a.x;
    return ~vec3<i32>(i32(-1i) * -var_0.e.e, 1i, -9016i) << (select(vec3<u32>(~(arg_0.b ^ var_0.b), var_0.b, ~arg_0.b << (1u % 32u)), ~((vec3<u32>(arg_0.b, var_0.b, u_input.a) << (vec3<u32>(u_input.a, u_input.a, arg_0.b) % vec3<u32>(32u))) << (abs(vec3<u32>(var_0.b, 4294967295u, 4294967295u)) % vec3<u32>(32u))), var_0.e.a.wzz) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(select(func_5(u_input.a, func_1(-19987i), any(vec4<bool>(true, true, false, true)), Struct_4(-1264f, u_input.a, Struct_2(Struct_1(vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false))), Struct_3(vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec3<bool>(true, true, true), 0i))), vec2<bool>(true, false), func_5(~u_input.a, func_1(-1i), false, Struct_4(-1559f, 6313u, Struct_2(Struct_1(vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true))), Struct_3(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec3<bool>(true, true, false), 14170i))).x), ~vec4<i32>(1i, 1i, 1i, 1i), 4294967295u, Struct_3(vec4<bool>(false, true, true, select(true, true, false)), vec2<bool>(true, true), vec2<bool>(true, true), vec3<bool>(true, true, true), abs(-31091i))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_div_f32(-1212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2348f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1521f, 261f))))), Struct_2(Struct_1(func_1(~(-7863i)).b)), _wgslsmith_div_f32(906f, _wgslsmith_f_op_f32(1599f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(820f))))));
    global1 = array<vec2<u32>, 3>();
    let var_1 = func_6(!func_5(19225u, Struct_3(vec4<bool>(false, true, true, true), func_1(0i).c, func_1(15524i).c, vec3<bool>(false, true, true), -2147483647i), func_2().a.x & false, func_6(vec2<bool>(true, true), ~vec4<i32>(-2147483647i, -22264i, -52969i, 26935i), ~u_input.a, Struct_3(vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec3<bool>(true, true, true), var_0.x))), max(abs(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)) | (select(vec4<i32>(-23384i, -2147483647i, var_0.x, -7522i), vec4<i32>(2147483647i, var_0.x, -30170i, -2147483647i), vec4<bool>(false, false, false, true)) & select(vec4<i32>(-2147483647i, 2147483647i, 1i, var_0.x), vec4<i32>(var_0.x, var_0.x, -34041i, -43641i), vec4<bool>(true, false, true, true))), vec4<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, 20156i), vec4<i32>(var_0.x, var_0.x, 22623i, var_0.x)), _wgslsmith_sub_i32(var_0.x, -23919i), true), ~(i32(-1i) * -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.xy), ~var_0.x)), ~0u, Struct_3(vec4<bool>(any(vec3<bool>(true, false, false)), func_6(vec2<bool>(true, true), vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), ~u_input.a, func_1(-1i)).e.a.x, (-22827i <= var_0.x) || true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), func_5(reverseBits(u_input.a), Struct_3(vec4<bool>(true, true, true, true), func_2().a, vec2<bool>(false, false), vec3<bool>(true, true, true), var_0.x), true, func_6(vec2<bool>(true, true), ~vec4<i32>(var_0.x, var_0.x, 64335i, 0i), 0u, func_1(var_0.x))), select(func_6(vec2<bool>(true, true), vec4<i32>(var_0.x, -2935i, -1i, var_0.x), u_input.a, func_1(var_0.x)).e.d, vec3<bool>(true, true, true), false), 44183i));
    global1 = array<vec2<u32>, 3>();
    global1 = array<vec2<u32>, 3>();
    let var_2 = !(!select(var_1.e.a, vec4<bool>(true, false, var_1.c.a.a.x, func_5(4294967295u, Struct_3(vec4<bool>(false, false, true, var_1.d.a.a.x), vec2<bool>(var_1.d.a.a.x, false), vec2<bool>(var_1.d.a.a.x, false), vec3<bool>(true, var_1.d.a.a.x, var_1.d.a.a.x), var_1.e.e), var_1.d.a.a.x, var_1).x), !vec4<bool>(var_1.d.a.a.x, var_1.c.a.a.x, var_1.c.a.a.x, var_1.d.a.a.x)));
    var var_3 = vec2<bool>(!all(!(!vec4<bool>(true, var_2.x, var_2.x, false))), var_1.b >= ~var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -1553f, select(vec3<u32>(var_1.b, ~u_input.a, ~u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~41864u, var_1.b), ~(vec3<u32>(u_input.a, 36412u, 1u) | vec3<u32>(73361u, var_1.b, 0u))), select(vec3<bool>(false, any(vec2<bool>(var_1.c.a.a.x, var_3.x)), var_3.x), var_1.e.d, vec3<bool>(u_input.a < var_1.b, all(vec4<bool>(false, var_2.x, true, var_2.x)), var_1.c.a.a.x))), vec2<i32>(-10161i, -34616i), max(~((u_input.a ^ u_input.a) << (_wgslsmith_add_u32(var_1.b, u_input.a) % 32u)), u_input.a));
}

