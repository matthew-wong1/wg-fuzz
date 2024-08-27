struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(17081u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(min(1273f, -148f));
    let var_1 = min(~(~(-15502i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, arg_1.a)), vec2<i32>(arg_1.a, -2147483647i)), 1i << (~arg_2.a.x % 32u))) != arg_1.d;
    return arg_0;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global0.a.x, arg_1.x)), vec2<u32>(43711u, 131523u)), arg_1.zw) | vec2<u32>(min(16880u ^ arg_1.x, global0.a.x), arg_1.x));
    global0 = Struct_3(vec2<u32>(u_input.a, _wgslsmith_add_u32(~39647u, _wgslsmith_add_u32(9001u, ~u_input.a))));
    var var_1 = vec2<i32>(~(~(-2147483647i)), firstLeadingBit(-1i));
    var_1 = -firstLeadingBit(vec2<i32>(-3539i, var_1.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 2147483647i), -vec2<i32>(20473i, var_1.x), ~vec2<i32>(var_1.x, var_1.x)));
    let var_2 = Struct_3(vec2<u32>(~_wgslsmith_dot_vec2_u32(~arg_1.ww, vec2<u32>(0u, 1u) ^ var_0.a), reverseBits(abs(_wgslsmith_mult_u32(767u, 48610u)))));
    return select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), true), select(vec4<bool>(false, true, true, any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), all(vec2<bool>(true, select(false, true, false)))), select(vec4<bool>(true, true, false, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, select(true, false, false), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.x >= _wgslsmith_f_op_f32(-arg_0.x))), vec4<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), all(vec4<bool>(select(true, false, false), any(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, true)))), select(~var_1.x > var_1.x, true, any(vec3<bool>(true, true, true))), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = select(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), !any(vec4<bool>(true, true, false, true))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), !(u_input.a != u_input.a), !any(vec3<bool>(true, false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)))), select(func_3(_wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(319f, 200f), Struct_1(26132i, 191f, vec3<bool>(false, false, false), arg_3.x), arg_2, vec3<u32>(34936u, arg_2.a.x, 0u))), vec4<u32>(u_input.a, arg_0.x, 37695u, u_input.a) ^ vec4<u32>(49176u, 4294967295u, arg_2.a.x, 1u)), vec4<bool>(true, true, true, true), true)), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(false, false)), true, false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -2253f, 643f), vec3<f32>(2108f, -110f, -714f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2412f, -2227f, -198f), vec3<f32>(-1261f, -107f, 851f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1861f, -821f, -1675f) * vec3<f32>(-1000f, -1594f, -1056f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, -1002f, -468f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, 1000f, 502f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(631f, -1000f, 597f), vec3<f32>(820f, -354f, -426f), var_0.xzy))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-124f, -271f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1000f)), -1060f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1129f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f)) - _wgslsmith_f_op_f32(-772f - 1005f))));
    global0 = arg_2;
    let var_2 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-505f + var_1.x)) >= _wgslsmith_f_op_f32(-493f * var_1.x)));
    global0 = Struct_3(select(~reverseBits(~arg_0), ~arg_2.a | (~vec2<u32>(6744u, u_input.a) << (arg_2.a % vec2<u32>(32u))), vec2<bool>(all(!var_0.wwx), select(!var_2, any(vec3<bool>(var_2, false, var_2)), false && var_0.x))));
    return Struct_1(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -1000f), _wgslsmith_f_op_f32(-2309f - -571f))))), vec3<bool>(select(!(!var_2), true, true), select(any(vec4<bool>(false, false, true, true)), (var_2 || var_2) || false, true), var_0.x), 12480i);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.a ^ _wgslsmith_mod_u32(~(~arg_0.e.x) | 0u, ~(~4294967295u));
    let var_1 = _wgslsmith_mod_i32(func_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 33260u), global0.a), ~_wgslsmith_mod_i32(-2147483647i, arg_0.d.a), Struct_3(vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-31155i, arg_0.b.d, arg_0.d.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0.d.a, 13460i), vec3<i32>(arg_0.d.a, arg_0.b.a, 1i), vec3<i32>(-1i, arg_0.d.a, 2147483647i)))).d & _wgslsmith_mod_i32(firstLeadingBit(arg_0.d.a), firstTrailingBit(arg_0.d.a)), ~(min(_wgslsmith_add_i32(arg_0.b.a, -29644i), _wgslsmith_mult_i32(1i, arg_0.d.a)) << (var_0 % 32u)));
    global0 = Struct_3(vec2<u32>(162u, 6632u) ^ ~((vec2<u32>(arg_0.e.x, 35496u) >> (vec2<u32>(global0.a.x, 38690u) % vec2<u32>(32u))) ^ reverseBits(global0.a)));
    var var_2 = arg_0;
    var_2 = arg_0;
    return Struct_2(arg_0.e.x, arg_0.d, arg_3.xzw, Struct_1(var_1 & -var_2.d.d, _wgslsmith_f_op_f32(select(-613f, var_2.b.b, false)), !(!(!arg_0.b.c)), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(var_1, var_2.b.d)), vec2<i32>(-1i) * -vec2<i32>(var_2.b.d, 13892i))), _wgslsmith_div_vec4_u32(~var_2.e, arg_0.e));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> bool {
    let var_0 = func_4(arg_1, _wgslsmith_f_op_f32(-func_4(arg_1, -1349f, false, vec4<bool>(arg_1.c.x, arg_0.x < 7767u, any(arg_1.d.c.yz), arg_1.b.c.x)).b.b), 593f >= arg_1.b.b, func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.b, arg_1.b.b)))), ~func_4(Struct_2(u_input.a, arg_1.b, vec3<bool>(arg_1.b.c.x, false, true), Struct_1(-18644i, arg_1.d.b, vec3<bool>(arg_1.b.c.x, arg_1.d.c.x, arg_1.d.c.x), arg_2.x), vec4<u32>(33374u, 0u, 9338u, 0u)), arg_1.d.b, arg_1.b.c.x, vec4<bool>(arg_1.b.c.x, true, arg_1.c.x, arg_1.d.c.x)).e << (vec4<u32>(min(global0.a.x, 0u), _wgslsmith_mult_u32(arg_3, arg_0.x), global0.a.x, arg_3) % vec4<u32>(32u)))).d;
    global0 = Struct_3(firstTrailingBit(~func_4(func_4(Struct_2(arg_0.x, Struct_1(var_0.a, var_0.b, arg_1.d.c, 6850i), var_0.c, Struct_1(-41712i, 1013f, var_0.c, var_0.a), arg_1.e), var_0.b, arg_1.d.c.x, vec4<bool>(var_0.c.x, false, arg_1.d.c.x, false)), _wgslsmith_f_op_f32(floor(arg_1.d.b)), true, !vec4<bool>(false, var_0.c.x, var_0.c.x, true)).e.xz));
    global0 = Struct_3(vec2<u32>(_wgslsmith_mult_u32(arg_1.e.x, global0.a.x), arg_3 << (0u % 32u)));
    var var_1 = !(!vec4<bool>(false, arg_1.d.c.x, _wgslsmith_f_op_f32(min(153f, var_0.b)) >= -230f, var_0.c.x));
    let var_2 = !(!select(all(vec4<bool>(var_0.c.x, false, true, true)) && func_3(vec2<f32>(arg_1.b.b, -286f), vec4<u32>(0u, 57275u, arg_1.e.x, 34599u)).x, _wgslsmith_f_op_f32(sign(-119f)) > -1000f, (-79i | var_0.d) == min(21882i, var_0.a)));
    return !(!(!any(!vec4<bool>(true, var_1.x, false, var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_add_vec2_u32(abs(~_wgslsmith_add_vec2_u32(global0.a, global0.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), vec2<u32>(5900u, 47819u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), global0.a) % vec2<u32>(32u))));
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), func_5(vec2<u32>(0u, 26212u), func_4(Struct_2(_wgslsmith_add_u32(global0.a.x, 22263u), func_1(vec2<u32>(u_input.a, 0u), -24469i, Struct_3(global0.a), vec3<i32>(2147483647i, 46009i, 0i)), vec3<bool>(true, true, true), Struct_1(-20174i, 824f, vec3<bool>(true, false, false), 1i), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 65575u), vec4<u32>(global0.a.x, 47440u, 22911u, 4294967295u))), 117f, false, vec4<bool>(true, false, select(true, true, true), true)), abs(vec3<i32>(8624i, 61004i, ~23626i)), u_input.a));
    var var_1 = Struct_3(~(~global0.a >> (vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.a.x, u_input.a), vec3<u32>(4294967295u, 0u, u_input.a))) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -377f), _wgslsmith_f_op_f32(f32(-1f) * -2318f)), func_1(_wgslsmith_mult_vec2_u32(~var_1.a, _wgslsmith_add_vec2_u32(vec2<u32>(33651u, u_input.a), global0.a)), 11341i, Struct_3(vec2<u32>(global0.a.x, 16788u)), ~vec3<i32>(1i, 1i, 1i)).b));
    let var_3 = var_0.x;
    global0 = Struct_3(vec2<u32>(30898u, firstTrailingBit(3531u)));
    var var_4 = !var_0.x;
    var_4 = var_0.x | select(var_3, all(vec4<bool>(false & var_0.x, true, func_4(Struct_2(u_input.a, Struct_1(2147483647i, var_2, vec3<bool>(var_0.x, var_0.x, true), 16827i), vec3<bool>(true, var_3, true), Struct_1(0i, var_2, vec3<bool>(true, var_3, var_0.x), 2147483647i), vec4<u32>(u_input.a, var_1.a.x, 4294967295u, 4294967295u)), var_2, false, vec4<bool>(true, var_0.x, false, true)).c.x, true)), !((u_input.a ^ u_input.a) > 24487u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(7403i ^ _wgslsmith_add_i32(i32(-1i) * -2147483647i, -1744i >> (var_1.a.x % 32u)), _wgslsmith_sub_i32(min(-2147483647i, firstLeadingBit(2147483647i)), _wgslsmith_sub_i32(func_4(Struct_2(global0.a.x, Struct_1(-2147483647i, var_2, vec3<bool>(var_0.x, var_3, true), -14321i), vec3<bool>(var_0.x, false, var_3), Struct_1(-41031i, -268f, vec3<bool>(false, var_3, var_0.x), 1i), vec4<u32>(26077u, 76141u, 10151u, 28137u)), var_2, false, vec4<bool>(var_3, false, true, false)).b.a, -26037i)), 64496i, ~(-2147483647i)), _wgslsmith_mod_u32(reverseBits(~(35504u & var_1.a.x)), select(firstTrailingBit(13357u), var_1.a.x, var_0.x == all(vec2<bool>(var_3, false)))), 26028i);
}

