struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_mult_i32(reverseBits(-u_input.d), _wgslsmith_mod_i32(min(u_input.b.x, 44489i) & -43070i, _wgslsmith_mult_i32(25976i, -u_input.b.x))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1909f), select(false, max(u_input.b.x >> (35643u % 32u), ~(-4109i)) == 9296i, !arg_0.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) * _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c, 291f))))))))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), u_input.a.zx), u_input.a.yw));
    var var_2 = var_0;
    let var_3 = var_0.b.a.wx;
    let var_4 = var_1.b;
    return select(select(var_2.b.a.xw, var_0.b.a.yx, select(select(!var_2.b.a.yy, !vec2<bool>(true, var_3.x), !arg_0.a.wy), select(vec2<bool>(true, false), var_0.b.a.zx, vec2<bool>(true, true)), arg_0.a.x)), select(select(select(vec2<bool>(var_0.d, var_3.x), !var_2.b.a.wz, select(vec2<bool>(true, false), arg_0.a.xx, false)), !vec2<bool>(true, arg_0.a.x), false), var_3, select(var_2.d, arg_0.a.x, false)), var_2.b.a.wy);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(vec4<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)), true == ((1u ^ u_input.a.x) <= (u_input.c >> (u_input.a.x % 32u))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + arg_0.x)));
    var_0 = Struct_2(var_0.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_0.x), _wgslsmith_div_f32(-108f, _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -800f)));
    let var_2 = Struct_2(var_0.a);
    let var_3 = u_input.a;
    return Struct_1(countOneBits(firstLeadingBit(var_3.yz)), select(var_2.a.yy, select(vec2<bool>(var_0.a.x, true), select(vec2<bool>(true, true), var_0.a.xw, var_0.a.x), var_3.x != 2366u), func_3(Struct_2(!var_2.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(324f)) * _wgslsmith_f_op_f32(519f + 699f)), _wgslsmith_f_op_f32(ceil(-1191f))), vec2<f32>(_wgslsmith_f_op_f32(abs(780f)), 1f)), vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.x, 0u, 1u), u_input.a.wyw)), _wgslsmith_add_u32(0u, 1u)));
    var var_1 = select(select(select(select(select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, true), vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.x, true), vec4<bool>(false, false, arg_1.b.x, arg_1.b.x)), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, arg_1.b.x, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false)), !vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.x, arg_0.x), arg_1.b.x), !select(select(vec4<bool>(true, true, false, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_0.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, arg_0.x, true, true), arg_0.x), true), arg_1.b.x), select(!select(!vec4<bool>(true, arg_1.b.x, arg_0.x, false), select(vec4<bool>(false, arg_0.x, arg_1.b.x, arg_1.b.x), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(true, false, arg_0.x, arg_0.x)), all(vec3<bool>(false, false, true))), vec4<bool>(!(var_0.b.x == var_0.b.x), false, false, false), select(vec4<bool>(!arg_0.x, var_0.b.x >= arg_1.a.x, false, !arg_1.b.x), select(vec4<bool>(true, arg_1.b.x, true, false), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, false, true, arg_1.b.x), true), any(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x))), !(!vec4<bool>(false, arg_1.b.x, false, arg_0.x)))), 1i < u_input.d);
    var_1 = !select(select(vec4<bool>(func_3(Struct_2(vec4<bool>(false, arg_0.x, var_1.x, var_1.x))).x, false, false, true), vec4<bool>(arg_0.x, false, true, true), true), !select(!vec4<bool>(true, false, arg_0.x, false), select(vec4<bool>(true, var_1.x, false, arg_1.b.x), vec4<bool>(false, arg_0.x, arg_1.b.x, false), false), arg_1.b.x), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(round(var_0.a.x)))) == var_0.a.x);
    var var_2 = Struct_4(-33763i, Struct_2(!vec4<bool>(true, any(vec4<bool>(arg_1.b.x, false, false, false)), true, false)), 1799f, arg_1.b.x);
    let var_3 = Struct_3(var_0.a, ~reverseBits(~vec2<u32>(886u, var_0.b.x)));
    return func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-601f)), 684f), _wgslsmith_f_op_f32(trunc(-1121f))), 858f);
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    var var_0 = select(vec4<bool>(arg_0.b.x, arg_0.b.x, !arg_0.b.x, arg_0.b.x), !(!vec4<bool>(arg_0.b.x == arg_0.b.x, select(true, false, arg_0.b.x), arg_0.b.x & arg_0.b.x, arg_0.b.x & arg_0.b.x)), vec4<bool>(!(_wgslsmith_sub_i32(u_input.b.x, 39982i) >= u_input.b.x), !arg_0.b.x == func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, 425f) + vec2<f32>(-256f, 130f)), -1000f).b.x, true, arg_0.b.x));
    var_0 = select(vec4<bool>(false, true, func_4(!(!var_0.zzy), func_4(!vec3<bool>(false, var_0.x, arg_0.b.x), func_4(var_0.zwy, arg_0))).b.x, all(!arg_0.b)), select(select(vec4<bool>(true, !arg_0.b.x, var_0.x, !var_0.x), vec4<bool>(true, !var_0.x, true, arg_0.b.x != var_0.x), false), vec4<bool>(true, 1i < -u_input.d, true, !any(vec4<bool>(true, arg_0.b.x, var_0.x, true))), select(!(!vec4<bool>(true, true, true, arg_0.b.x)), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, var_0.x, true, !(!all(vec2<bool>(false, arg_0.b.x)))));
    var_0 = select(!(!(!vec4<bool>(false, var_0.x, false, arg_0.b.x))), select(select(vec4<bool>(u_input.c != u_input.c, -17867i < u_input.d, !arg_0.b.x, true), select(!vec4<bool>(false, var_0.x, arg_0.b.x, arg_0.b.x), vec4<bool>(false, false, var_0.x, true), var_0.x), select(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, arg_0.b.x, true, true), false), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, arg_0.b.x, false, true), arg_0.b.x), true)), !select(select(vec4<bool>(true, var_0.x, arg_0.b.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), select(vec4<bool>(true, arg_0.b.x, arg_0.b.x, false), vec4<bool>(var_0.x, true, true, true), true), all(var_0.yx)), !select(!vec4<bool>(true, true, arg_0.b.x, arg_0.b.x), !vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, false, true, var_0.x))), select(vec4<bool>(true & arg_0.b.x, (true || arg_0.b.x) && false, any(arg_0.b), !(!var_0.x)), !vec4<bool>(false, !var_0.x, var_0.x, any(arg_0.b)), var_0.x));
    let var_1 = Struct_4(0i, Struct_2(vec4<bool>(any(select(var_0.zyw, var_0.yyy, arg_0.b.x)), true || all(arg_0.b), true, any(vec2<bool>(false, false)) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.b.x & false);
    let var_2 = var_1.b;
    return var_1;
}

fn func_1() -> f32 {
    var var_0 = func_5(func_4(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), all(vec4<bool>(true, true, true, true)), true), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1106f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1107f, -430f) + vec2<f32>(-1159f, 192f)), vec2<bool>(false, false))), -1000f)));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))), u_input.a.xw);
    var_0 = Struct_4((_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a, 1700i, -6486i), u_input.b.yzy) & -(~(-45454i))) >> (4521u % 32u), func_5(Struct_1(_wgslsmith_mod_vec2_u32(var_1.b, var_1.b), vec2<bool>(!var_0.d, 26257i != var_0.a))).b, var_0.c, !var_0.b.a.x);
    var_0 = func_5(Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 43533u), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, 89423u), firstTrailingBit(102458u)), u_input.a.yx), select(vec2<bool>(select(var_0.b.a.x, var_0.b.a.x, false), !var_0.b.a.x), func_3(func_5(Struct_1(vec2<u32>(4294967295u, var_1.b.x), vec2<bool>(true, var_0.d))).b), vec2<bool>(false || var_0.b.a.x, false | var_0.b.a.x))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_1.a.x) + vec2<f32>(773f, var_1.a.x)) * _wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(481f, -875f)))))), ~var_1.b);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-645f - _wgslsmith_f_op_f32(828f + _wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(func_1()))));
    var var_1 = func_4(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), Struct_1(~(~(~vec2<u32>(0u, u_input.c))), !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 778f) + vec2<f32>(var_0, var_0)), _wgslsmith_f_op_f32(var_0 + var_0)).b)).b.x;
    var var_2 = _wgslsmith_f_op_f32(func_1());
    var_1 = true;
    var_2 = var_0;
    var var_3 = _wgslsmith_mult_vec4_i32(-u_input.b | u_input.b, vec4<i32>(max(~u_input.b.x, -25539i), 2147483647i, 1i, firstLeadingBit(-1i) >> (u_input.a.x % 32u)));
    let var_4 = func_4(!(!vec3<bool>(var_0 != 300f, any(vec2<bool>(false, true)), true)), Struct_1(_wgslsmith_mult_vec2_u32(u_input.a.zz & func_4(vec3<bool>(true, false, true), Struct_1(u_input.a.yx, vec2<bool>(true, true))).a, vec2<u32>(~u_input.a.x, u_input.c)), !vec2<bool>(func_3(Struct_2(vec4<bool>(true, true, false, false))).x, 1i >= u_input.b.x)));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1552f)))))), reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.wxw, vec3<i32>(var_3.x, var_3.x, 1i)) >> (vec3<u32>(4294967295u, 312u, 65806u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.d, u_input.b.x, -2147483647i)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(473f, var_0, var_5) + vec3<f32>(127f, 378f, 324f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, var_0, var_0)))))), -21690i);
}

