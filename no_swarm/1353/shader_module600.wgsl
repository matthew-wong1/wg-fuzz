struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = ~(~arg_2.d.a.c.x);
    global0 = firstTrailingBit(((_wgslsmith_mult_u32(var_0, arg_3) << (~42920u % 32u)) ^ 20728u) >> (arg_3 % 32u));
    global0 = ~(~(~min(var_0, 29764u)));
    var var_1 = min(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(arg_1, u_input.a.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(103698u, var_0), arg_2.d.b.c.zw) % vec2<u32>(32u))), u_input.a.yz, max(u_input.a.xz, min(_wgslsmith_mult_vec2_i32(vec2<i32>(26286i, 2147483647i), vec2<i32>(0i, u_input.a.x)), -vec2<i32>(u_input.a.x, 4703i)))), u_input.a.zy);
    let var_2 = Struct_1(true, select(arg_2.e.a.b, arg_2.d.a.b, false), vec4<u32>(arg_2.d.a.c.x, ~(~(~1u)), 0u, ~abs(_wgslsmith_clamp_u32(30041u, 0u, arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1242f - -728f) - _wgslsmith_f_op_f32(-arg_2.d.b.d)), vec3<bool>(true, select(arg_2.e.b.a, arg_2.e.b.b.x, true), any(vec4<bool>(all(arg_2.e.a.e.zy), -868f < arg_2.e.b.d, arg_2.b, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(129f, -1468f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = true & (false != (284f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(2005f, arg_1.d))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(407f * 353f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d, 129f)))));
    let var_2 = 42715u;
    var var_3 = Struct_3(arg_1.b.x, arg_1.e.x, !(countOneBits(-10538i) < _wgslsmith_div_i32(-62231i, u_input.a.x)), Struct_2(arg_1, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(237f, 1472f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(754f)) + _wgslsmith_f_op_f32(2269f * -782f))))), Struct_2(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * arg_1.d))));
    var_3 = Struct_3(!(2147483647i > -u_input.a.x), !(!(!(arg_1.a & arg_0.e.x))), !arg_1.a, var_3.d, Struct_2(Struct_1(any(select(vec4<bool>(var_3.d.b.b.x, arg_0.b.x, var_3.a, arg_0.a), vec4<bool>(true, false, false, true), vec4<bool>(true, true, arg_0.e.x, true))), !select(vec3<bool>(true, false, arg_1.b.x), arg_1.b, vec3<bool>(false, arg_0.a, false)), var_3.d.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), !var_3.e.b.e), Struct_1(true, var_3.e.a.b, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_1.d, -1532f), -2147483647i, Struct_3(false, arg_1.a, var_3.c, Struct_2(arg_1, Struct_1(var_3.d.a.a, arg_0.e, arg_1.c, -1490f, vec3<bool>(true, true, arg_0.e.x)), -441f), var_3.d), 16512u))), !vec3<bool>(arg_0.b.x, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -488f)));
    return var_3.d.c;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> vec2<u32> {
    global0 = 25541u;
    var var_0 = vec2<f32>(_wgslsmith_div_f32(1323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(true, vec3<bool>(true, arg_0, false), vec4<u32>(1u, 4294967295u, 1u, 71692u), 1108f, vec3<bool>(arg_0, arg_0, arg_0)), Struct_1(arg_0, vec3<bool>(false, arg_0, arg_0), vec4<u32>(3213u, 1u, 72212u, 11479u), 140f, vec3<bool>(arg_0, arg_0, arg_0)), vec4<u32>(13066u, 12393u, 117650u, 0u), 13007u)), _wgslsmith_f_op_f32(func_3(vec2<f32>(-889f, -196f), 0i, Struct_3(arg_0, false, true, Struct_2(Struct_1(arg_0, vec3<bool>(false, false, false), vec4<u32>(33494u, 63898u, 99428u, 9543u), 830f, vec3<bool>(arg_0, true, arg_0)), Struct_1(false, vec3<bool>(arg_0, false, false), vec4<u32>(17191u, 73325u, 4294967295u, 1u), 980f, vec3<bool>(arg_0, false, arg_0)), -1000f), Struct_2(Struct_1(false, vec3<bool>(false, true, arg_0), vec4<u32>(5809u, 0u, 4220u, 4294967295u), -963f, vec3<bool>(arg_0, true, arg_0)), Struct_1(arg_0, vec3<bool>(arg_0, arg_0, true), vec4<u32>(1u, 0u, 20714u, 1u), 565f, vec3<bool>(false, false, arg_0)), -2768f)), 1u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) + _wgslsmith_f_op_f32(f32(-1f) * -771f))) - 1f));
    var var_1 = Struct_1(any(!select(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0)), -990f == var_0.x)), select(!vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0, false), vec3<bool>(!arg_0 && (arg_1.x < 1i), select(arg_0, true, !arg_0), !arg_0 && all(vec4<bool>(false, false, arg_0, arg_0))), vec3<bool>(select(0u, 55478u, false) > 41798u, !(1i < u_input.a.x), arg_1.x <= -2147483647i)), vec4<u32>(~(~firstTrailingBit(1u)), 1u, 1u, 1u), _wgslsmith_f_op_f32(func_2(Struct_1(true, select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, arg_0)), vec3<bool>(true, true, true), true), ~vec4<u32>(4294967295u, 63539u, 4294967295u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -657f, arg_0))), vec3<bool>(false, !arg_0, false)), Struct_1(arg_0, vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 1u, 1u), -1000f, select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_0, arg_0), arg_0)), firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(9749u))), select(select(select(!vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, false, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0)), select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, arg_0), arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, false), arg_0), select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, true), true)), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_0, true, true), arg_0)), true, arg_0), select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, arg_0)), !(!vec3<bool>(true, false, arg_0)), all(!vec4<bool>(arg_0, arg_0, false, true)))));
    var_1 = Struct_1(!(false & arg_0), vec3<bool>(all(select(!vec2<bool>(var_1.e.x, var_1.a), select(var_1.e.xx, vec2<bool>(false, true), var_1.b.zx), var_1.d < var_1.d)), true, !var_1.b.x), _wgslsmith_sub_vec4_u32(~(var_1.c ^ _wgslsmith_mod_vec4_u32(var_1.c, var_1.c)), vec4<u32>(var_1.c.x, ~var_1.c.x, ~8273u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.x, 1u, 29879u, 1u), ~var_1.c))), _wgslsmith_f_op_f32(-var_1.d), var_1.e);
    let var_2 = ~_wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a.x, 4737i) << (~vec2<u32>(45757u, var_1.c.x) % vec2<u32>(32u)), arg_1.zz), vec2<i32>(firstTrailingBit(-5083i), u_input.a.x));
    return var_1.c.wx;
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    global0 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_0.x, ~13964u, ~arg_0.x, ~0u), vec4<u32>(~arg_0.x, arg_0.x, arg_0.x | 1u, 481u)), vec4<u32>(~_wgslsmith_mod_u32(20547u, 1u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(47020u, 0u) | arg_0, vec2<u32>(arg_0.x, 0u)), arg_0.x), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false)))), ~vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), arg_0.x, _wgslsmith_mult_u32(arg_0.x, 0u), 40595u) ^ abs(~(~vec4<u32>(24799u, arg_0.x, arg_0.x, arg_0.x))));
    global0 = 1u;
    let var_0 = -(countOneBits(~vec2<i32>(28104i, u_input.a.x)) << (arg_0 % vec2<u32>(32u)));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_sub_u32(~arg_0.x, 1u), _wgslsmith_sub_u32(arg_0.x, arg_0.x), arg_0.x) << (~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(1u, arg_0.x, arg_0.x, 4294967295u))) % vec4<u32>(32u)), ~(~reverseBits(abs(vec4<u32>(0u, 1u, 54334u, arg_0.x)))));
    global0 = _wgslsmith_mod_u32(arg_0.x, 4294967295u);
    return firstTrailingBit(abs(_wgslsmith_mult_i32(var_0.x, -23344i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(26915u);
    global0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), firstTrailingBit(~abs(~vec2<u32>(3999u, 43372u))));
    global0 = ~(~22642u);
    var var_0 = vec3<bool>(reverseBits(u_input.a.x) == func_4(vec2<u32>(1u, 18063u) | func_1(false, u_input.a.wwx)), false, true);
    var_0 = vec3<bool>(u_input.a.x == firstTrailingBit(1832i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-994f)) + -466f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(627f, _wgslsmith_f_op_f32(-538f + -1152f))))), var_0.x & false);
    let var_1 = func_4(func_1(all(var_0.xx), firstLeadingBit(vec3<i32>(countOneBits(u_input.a.x), u_input.a.x, u_input.a.x << (4329u % 32u)))));
    let var_2 = Struct_2(Struct_1(true, select(select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), true), !vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, true)), vec3<bool>(all(var_0.zz), var_0.x | false, true), true), abs(vec4<u32>(~1u, _wgslsmith_add_u32(62319u, 1u), ~88228u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 46475u), vec2<u32>(44067u, 103319u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-623f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(sign(-787f))), !(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true)))), Struct_1(!var_0.x, select(vec3<bool>(var_0.x, any(vec2<bool>(true, false)), !var_0.x), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(~19461u, 1u, firstTrailingBit(814u), 4294967295u), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 89946u, 1u, 22274u), vec4<u32>(23578u, 4294967295u, 19378u, 4294967295u), vec4<u32>(68745u, 0u, 3315u, 53824u)))), _wgslsmith_f_op_f32(func_2(Struct_1(var_0.x, vec3<bool>(var_0.x, var_0.x, true), ~vec4<u32>(41822u, 15887u, 78975u, 1u), 660f, select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false))), Struct_1(true, !vec3<bool>(var_0.x, true, var_0.x), select(vec4<u32>(0u, 0u, 4294967295u, 8752u), vec4<u32>(1u, 4294967295u, 22123u, 1u), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, true), false)), ~abs(vec4<u32>(76623u, 1u, 4294967295u, 8422u)), ~1u ^ select(1u, 1u, false))), select(vec3<bool>(true, true, all(vec3<bool>(var_0.x, true, var_0.x))), !vec3<bool>(var_0.x, var_0.x, var_0.x), !(!vec3<bool>(var_0.x, true, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-576f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(160f * -2144f), _wgslsmith_div_f32(216f, var_2.b.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.d, 1000f, -1137f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b.d, -1338f, -436f))))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, 404f, 1178f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.d, 2429f, -229f) - vec3<f32>(1381f, var_2.b.d, -1388f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - var_2.a.d)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1116f - var_2.a.d) + _wgslsmith_div_f32(-1164f, _wgslsmith_f_op_f32(ceil(var_2.a.d)))), _wgslsmith_f_op_f32(trunc(var_2.a.d))));
}

