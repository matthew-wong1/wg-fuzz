struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 5994u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    var var_0 = firstLeadingBit(min(select(vec2<i32>(~arg_1, arg_1), ~global0.c.a.a, vec2<bool>(true, all(vec4<bool>(true, true, false, true)))), max(abs(abs(global0.c.a.a)), ~vec2<i32>(30412i, arg_1))));
    let var_1 = Struct_4(Struct_2(Struct_1(u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.a.b)), vec2<u32>(1u, global0.c.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.a.d)) - _wgslsmith_f_op_f32(floor(-2430f))), 1i), u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1322f, -474f))))), Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d, u_input.e.x), vec2<i32>(u_input.a, arg_1)), global0.c.a.b, vec2<u32>(0u, ~u_input.c.x), -1281f, ~(-8396i)), ~abs(global0.a.a.c.x)));
    var var_2 = global0.a.a;
    var_0 = abs(var_2.a);
    let var_3 = global0.a;
    return var_2.e;
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~u_input.a, ~global0.a.a.a.x), -1i, i32(-1i) * -2147483647i, -41496i), vec4<i32>(global0.a.a.a.x, func_3(~u_input.c, -u_input.a), ~(-40329i), -_wgslsmith_sub_i32(2768i, global0.c.a.a.x))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 349f) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.a.a.b.x)))), true), -1i, max(_wgslsmith_clamp_vec3_i32(~vec3<i32>(29552i, u_input.d, global0.c.a.a.x), firstTrailingBit(vec3<i32>(-5458i, global0.c.a.a.x, -68474i)), vec3<i32>(-6113i, 2147483647i, -38541i)) << (vec3<u32>(abs(u_input.b), global0.a.b | 61445u, global0.a.a.c.x) % vec3<u32>(32u)), ~(~countOneBits(vec3<i32>(-22665i, global0.c.a.e, 10807i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c.a.d * 135f))), global0.a.a.b.x, 1000f, 302f))), global0.a.a.b));
    var_0 = Struct_5(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, 1i, 41991i, firstTrailingBit(var_0.c)), vec4<i32>(8571i >> (global0.a.a.c.x % 32u), -25570i, _wgslsmith_mult_i32(u_input.d, -41935i), func_3(vec3<u32>(global1.x, 27102u, 0u), -26601i))) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(27540u, u_input.b, 8535u, 0u), ~vec4<u32>(30398u, global1.x, global1.x, 1u)) % vec4<u32>(32u)), var_0.b, abs(~abs(-var_0.d.x)), ~(-countOneBits(~var_0.d)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a.d), _wgslsmith_f_op_f32(var_2 + global0.c.a.d))), 426f), -1025f, var_2);
    return Struct_5(~vec4<i32>(global0.a.a.e, ~(u_input.a >> (30469u % 32u)), global0.c.a.a.x, global0.a.a.e), select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b, var_0.b), global0.a.a.e, ~_wgslsmith_clamp_vec3_i32((vec3<i32>(-1i, u_input.a, u_input.a) ^ vec3<i32>(-2147483647i, var_0.d.x, 0i)) & vec3<i32>(1i, -2147483647i, 4534i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2660i, -14459i, u_input.e.x) << (u_input.c % vec3<u32>(32u)), var_0.d, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.d.x, global0.c.a.a.x, var_0.a.x), var_0.a.zzy)), _wgslsmith_add_vec3_i32(var_0.a.wxz, var_0.d) << (min(u_input.c, vec3<u32>(global1.x, 0u, global1.x)) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = global0.c;
    global0 = Struct_4(Struct_2(var_1.a, 0u), _wgslsmith_f_op_f32(global0.c.a.b.x - arg_0.b.x), Struct_2(Struct_1(global0.c.a.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.a.b))), ~(vec2<u32>(var_1.a.c.x, arg_0.c.x) >> (vec2<u32>(global0.a.b, 1u) % vec2<u32>(32u))), var_1.a.b.x, select(-1i, i32(-1i) * -15206i, false)), ~select(_wgslsmith_mult_u32(34005u, 0u), ~53061u, any(vec2<bool>(false, false)))));
    global1 = ~firstLeadingBit(vec2<u32>(3281u, 1u));
    global0 = Struct_4(global0.a, global0.c.a.d, global0.a);
    return Struct_3(arg_2, global0.c, global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.c.a, ~(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-36276i, u_input.a, u_input.a, -38466i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, global0.a.a.e, u_input.e.x, -27149i), vec4<i32>(u_input.d, 0i, u_input.e.x, u_input.e.x)), vec4<i32>(-54573i, -8718i, -6825i, u_input.d))), all(vec4<bool>(true, true, true, true)));
    let var_1 = firstTrailingBit(select(~(~1u), ~1u, true));
    var_0 = func_1(func_1(Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(min(-292f, global0.b)), _wgslsmith_f_op_f32(ceil(var_0.b.a.d)), _wgslsmith_f_op_f32(ceil(var_0.b.a.b.x)), 807f), select(~u_input.c.yz, global0.a.a.c, true), 2115f, _wgslsmith_sub_i32(838i, -22028i << (0u % 32u))), -(~(~vec4<i32>(15441i, global0.a.a.a.x, 51565i, -1i))), true).c, abs(vec4<i32>(2147483647i, min(max(global0.c.a.a.x, -15071i), ~(-1i)), 1380i, 37553i)), var_0.a);
    let var_2 = func_1(Struct_1(vec2<i32>(1i, global0.a.a.a.x ^ _wgslsmith_add_i32(21230i, -31990i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-755f, 471f), var_0.c.d, -585f, 830f)), vec2<u32>(43173u >> (u_input.b % 32u), ~var_0.c.c.x), 1000f, 43210i), vec4<i32>(u_input.d, -(var_0.c.e ^ ~global0.c.a.e), global0.c.a.e, -49785i), false | select(false, false, func_1(var_0.b.a, vec4<i32>(var_0.c.e, u_input.e.x, -2147483647i, var_0.c.a.x) >> (vec4<u32>(30571u, global1.x, global1.x, 71663u) % vec4<u32>(32u)), !var_0.a).a)).c;
    var var_3 = var_0.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(min(~1u >> (func_1(func_1(Struct_1(u_input.e, var_0.b.a.b, vec2<u32>(u_input.b, 4294967295u), -1000f, -61551i), vec4<i32>(-33386i, -26254i, -1i, var_0.b.a.e), false).b.a, vec4<i32>(u_input.d, u_input.d, u_input.d, 1i), !var_0.a).b.a.c.x % 32u), ~_wgslsmith_add_u32(countOneBits(var_1), var_1)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a.a.e, i32(-1i) * -34487i, 2147483647i, _wgslsmith_clamp_i32(-var_2.a.x, 6754i, var_0.c.e)), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_2.e, 2147483647i, global0.a.a.e, var_2.e)), firstLeadingBit(vec4<i32>(var_0.b.a.a.x, -908i, 9702i, 1i))) | ~vec4<i32>(u_input.e.x, 1i, 1i, 1i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.a.x ^ var_2.e, 1i, 2147483647i, _wgslsmith_sub_i32(var_2.a.x, u_input.e.x)), _wgslsmith_add_vec4_i32(-(~vec4<i32>(var_0.c.e, -17209i, 0i, 2147483647i)), max(vec4<i32>(-101712i, -22221i, var_0.b.a.e, 2147483647i), vec4<i32>(u_input.d, 37935i, -1i, 1i)))), var_0.b.a.c.x, vec3<i32>(~global0.a.a.a.x, -_wgslsmith_div_i32(global0.a.a.e, 45247i), ~1791i));
}

