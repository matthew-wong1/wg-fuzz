struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<bool>(!(!any(vec3<bool>(false, true, true))), !(!(~u_input.c > u_input.b)), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)))), !(!any(vec3<bool>(false, false, true))));
    let var_1 = Struct_2(var_0.x, Struct_1(var_0.x), Struct_1(var_0.x));
    var_0 = vec4<bool>(any(!(!select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_1.b.a, var_1.a, var_0.x, var_1.b.a), vec4<bool>(false, true, var_1.c.a, var_1.a)))), select(any(select(select(vec4<bool>(var_1.b.a, var_1.b.a, var_0.x, var_1.c.a), vec4<bool>(true, true, true, var_0.x), var_0.x), vec4<bool>(var_0.x, var_1.b.a, var_1.b.a, true), vec4<bool>(true, false, false, var_1.b.a))), false, !var_1.c.a), !all(var_0.wx), all(vec4<bool>(false, !var_0.x || select(false, var_1.a, false), !var_1.a, select(false, any(vec2<bool>(var_0.x, false)), var_1.a))));
    var_0 = !(!vec4<bool>(!var_1.a, var_0.x, !(1u > u_input.b), var_1.c.a));
    var var_2 = u_input.d.x;
    return var_0.wxx;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(-954f, ~(~vec3<u32>(_wgslsmith_sub_u32(1u, u_input.b), ~u_input.b, ~u_input.c)), vec2<bool>(select(true, true, true), true), Struct_2(all(func_3()), Struct_1(false), Struct_1(true)));
    let var_1 = select(vec3<bool>(var_0.c.x, var_0.c.x && select(false, false, var_0.c.x), any(!vec4<bool>(var_0.c.x, false, false, var_0.d.a)) == (_wgslsmith_clamp_u32(var_0.b.x, 29546u, 1u) >= u_input.c)), !(!select(select(vec3<bool>(var_0.d.b.a, false, var_0.d.c.a), vec3<bool>(var_0.c.x, true, var_0.d.a), vec3<bool>(true, false, true)), select(vec3<bool>(var_0.c.x, var_0.d.a, false), vec3<bool>(var_0.d.b.a, var_0.c.x, false), true), !var_0.d.a)), true);
    return max(~_wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(0i, 19204i, u_input.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) | vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(71406i, u_input.d.x, 2147483647i))), ~(u_input.d.x & ~23020i));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(max(~0i, reverseBits(arg_0) >> (_wgslsmith_clamp_u32(arg_2.b.x, 51090u, u_input.c) % 32u)), countOneBits(-17463i), 0i), ~(-(firstLeadingBit(vec3<i32>(2147483647i, u_input.d.x, arg_0)) >> (arg_2.b % vec3<u32>(32u)))));
    let var_1 = max(47664u | ~arg_2.b.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, u_input.a), arg_2.b.yz), ~arg_2.b.xx | arg_2.b.yx)) != arg_2.b.x;
    var_0 = arg_1;
    var var_2 = arg_3;
    var_2 = Struct_2(true, Struct_1(false), Struct_1(arg_1 <= 1i));
    return select(!select(!vec3<bool>(false, true, var_1), vec3<bool>(true, true, true), func_3()), !(!vec3<bool>(!arg_2.d.c.a, all(vec4<bool>(var_2.c.a, false, false, false)), arg_3.a)), any(select(select(arg_2.c, select(arg_2.c, vec2<bool>(true, arg_3.a), arg_2.c), false), vec2<bool>(arg_3.b.a, arg_2.c.x), vec2<bool>(true, func_3().x))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = !func_4(_wgslsmith_div_i32(func_2(), -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, ~40263i, u_input.d.x), select(arg_3.ywx, arg_3.wyw, vec3<bool>(false, arg_0.c.x, true)) ^ _wgslsmith_div_vec3_i32(arg_3.ywx, vec3<i32>(40898i, arg_3.x, arg_3.x))), arg_0, arg_0.d);
    var var_1 = !func_4(u_input.d.x, arg_3.x, arg_0, Struct_2(arg_0.d.a, Struct_1(true), arg_0.d.b)).zy;
    let var_2 = abs(countOneBits(~arg_0.b));
    var_1 = arg_0.c;
    var var_3 = vec2<f32>(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(trunc(-1232f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -150f));
    return 864f;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_3(-630f, ~firstTrailingBit(~(arg_2.b & vec3<u32>(u_input.a, 13709u, 4460u))), !(!vec2<bool>(any(vec2<bool>(false, true)), select(arg_1.c.a, false, arg_1.b.a))), arg_1);
    var var_1 = ~(-vec3<i32>(~reverseBits(u_input.d.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, arg_3.x, u_input.d.x, -2147483647i), vec4<i32>(-1i, -26493i, arg_3.x, 2147483647i)), max(-5115i, -arg_3.x)));
    let var_2 = false;
    var var_3 = any(!arg_2.c);
    let var_4 = var_0.b;
    return Struct_1(func_3().x);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_2(true, arg_0, arg_0);
    var var_1 = reverseBits(u_input.b);
    let var_2 = !vec3<bool>(all(vec4<bool>(true, true, true, true)) & func_3().x, !arg_0.a, all(!(!vec4<bool>(true, true, var_0.a, var_0.c.a))));
    var var_3 = func_5(_wgslsmith_f_op_f32(max(arg_1.x, 1404f)), var_0, Struct_3(arg_1.x, ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a, 27222u), vec3<u32>(u_input.a, u_input.b, 1u))), vec2<bool>(!var_0.a != func_4(-32358i, -2147483647i, Struct_3(-2814f, vec3<u32>(1u, u_input.b, u_input.a), vec2<bool>(var_2.x, false), Struct_2(arg_0.a, Struct_1(var_0.a), var_0.c)), Struct_2(var_0.b.a, arg_0, Struct_1(var_0.b.a))).x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 76630i, u_input.d.x, 41378i), vec4<i32>(u_input.d.x, 2147483647i, -30663i, u_input.d.x)) == (i32(-1i) * -82579i)), Struct_2(true, Struct_1(false), Struct_1(true))), -(~max(vec2<i32>(u_input.d.x, -2147483647i), u_input.d)) | u_input.d);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-973f)))), Struct_2(true, Struct_1(true), Struct_1(true)), Struct_3(_wgslsmith_f_op_f32(-1267f - _wgslsmith_f_op_f32(func_1(Struct_3(-1032f, vec3<u32>(43780u, u_input.a, 8282u), vec2<bool>(true, false), Struct_2(true, Struct_1(true), Struct_1(true))), 78215u, -20148i, vec4<i32>(u_input.d.x, 2147483647i, -1407i, -8934i)))), select(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.b, 0u, u_input.a), false) << (select(vec3<u32>(21710u, u_input.b, u_input.b), vec3<u32>(0u, 85773u, 24209u), vec3<bool>(false, false, false)) % vec3<u32>(32u)), vec2<bool>(true, true), Struct_2(all(vec2<bool>(false, true)), Struct_1(false), Struct_1(true))), vec2<i32>(countOneBits(u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, -19090i), min(vec4<i32>(2147483647i, -1i, -10405i, u_input.d.x), vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(551f * 467f), _wgslsmith_f_op_f32(-569f * -1564f))))));
    var_0 = false;
    let var_1 = ~_wgslsmith_mod_i32(reverseBits(func_2()), min(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 0i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -2147483647i, -9887i, -1i) >> (vec4<u32>(u_input.c, 0u, 4294967295u, u_input.b) % vec4<u32>(32u))), ~u_input.d.x));
    let var_2 = !(!all(vec3<bool>(all(vec3<bool>(false, false, true)), true, any(vec3<bool>(false, true, false)))));
    var_0 = !any(!vec3<bool>(func_4(var_1, var_1, Struct_3(-1250f, vec3<u32>(u_input.c, 0u, u_input.a), vec2<bool>(true, var_2), Struct_2(false, Struct_1(false), Struct_1(true))), Struct_2(true, Struct_1(var_2), Struct_1(true))).x, var_2, false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(164f, vec3<u32>(40144u, u_input.b, u_input.c), vec2<bool>(true, var_2), Struct_2(var_2, Struct_1(var_2), Struct_1(var_2))), u_input.b, abs(-3041i), min(vec4<i32>(0i, -2147483647i, -15821i, 14616i), vec4<i32>(u_input.d.x, var_1, u_input.d.x, var_1))))))));
    var_0 = all(vec3<bool>(!func_6(Struct_1(var_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + vec2<f32>(-256f, 1870f))), false, true));
    var_0 = !any(!select(select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(true, var_2, var_2, true), vec4<bool>(var_2, false, false, var_2)), !vec4<bool>(false, true, false, var_2), any(vec3<bool>(false, true, var_2))));
    let var_4 = ~(~min(max(-22834i, ~0i), 17637i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~(~0u), 71682u, u_input.a), vec3<u32>(u_input.b, 4294967295u, ~u_input.b)), ~(~(46003u ^ (u_input.b >> (u_input.c % 32u)))), ~select(~(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), vec2<u32>(u_input.a, u_input.a), var_2 & var_2), -u_input.d.x, abs(_wgslsmith_clamp_i32(~(-2147483647i), abs(u_input.d.x), ~(var_1 | 40570i))));
}

