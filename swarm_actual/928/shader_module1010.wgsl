struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<i32> {
    var var_0 = true;
    let var_1 = Struct_3(Struct_1(u_input.c, !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~13397u, ~1u, u_input.a), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.b.x, 12301u, u_input.a), 14934u, abs(u_input.b.x))), reverseBits(vec2<i32>(904i, 2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(426f)), _wgslsmith_f_op_f32(-201f - -1788f), _wgslsmith_f_op_f32(round(1145f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(-315f)), -1114f)))), 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-309f, -416f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(533f, 478f)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-993f, -1944f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, 1648f)))), !all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))))), Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), 671f)))));
    var_0 = var_1.a.b.x;
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, u_input.a), u_input.b.yz), ~var_1.a.c), u_input.a) < 10733u;
    var var_3 = var_1.a.b.xx;
    return -_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(2147483647i, var_1.a.d.x, var_1.a.d.x, u_input.c)), ~vec4<i32>(-15056i, _wgslsmith_div_i32(0i, var_1.a.a), abs(var_1.a.a), 1i));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = ~(-min(func_3(), vec4<i32>(-u_input.c, _wgslsmith_clamp_i32(u_input.c, u_input.c, 2147483647i), firstTrailingBit(-32339i), max(-1i, 0i))));
    var var_1 = select(vec4<bool>(all(vec3<bool>(arg_0.x, true, arg_0.x)) & true, true, arg_0.x, any(!vec2<bool>(arg_0.x, false)) && all(vec2<bool>(arg_0.x, arg_0.x))), !vec4<bool>((i32(-1i) * -36291i) > u_input.c, !(arg_0.x | arg_0.x), true, any(select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x))), select(select(vec4<bool>(!arg_0.x, false, any(vec4<bool>(arg_0.x, true, true, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, arg_0.x), true), select(false | arg_0.x, u_input.c == var_0.x, true)), select(select(!vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true), vec4<bool>(true, any(arg_0.yz), false, true), u_input.b.x <= min(u_input.a, 0u)), select(select(!vec4<bool>(false, arg_0.x, false, arg_0.x), vec4<bool>(false, false, false, false), !vec4<bool>(arg_0.x, false, false, arg_0.x)), !(!vec4<bool>(arg_0.x, true, true, arg_0.x)), select(vec4<bool>(false, arg_0.x, true, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, false, false, true), false), arg_0.x))));
    let var_2 = select(select(var_1.yw, !(!(!vec2<bool>(false, var_1.x))), select(select(!arg_0.zx, var_1.wz, false), vec2<bool>(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !arg_0.x), select(select(arg_0.zy, var_1.yy, false), var_1.zw, select(var_1.zw, var_1.xw, arg_0.yz)))), !select(!select(vec2<bool>(false, var_1.x), var_1.xy, var_1.zx), vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(false, any(select(!vec3<bool>(var_1.x, arg_0.x, false), !vec3<bool>(true, true, var_1.x), false))));
    var_1 = vec4<bool>(true | !(!(arg_0.x || false)), !any(!select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, var_2.x))), var_2.x, true);
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1228f, 1132f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(600f, 747f), vec2<f32>(681f, -410f)))))));
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.c, ~_wgslsmith_mult_i32(u_input.c, 0i), -_wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(arg_1.a, ~2147483647i), arg_1.d.x), 22390i);
    var var_1 = vec2<bool>(any(select(!(!vec4<bool>(false, true, arg_1.b.x, true)), !vec4<bool>(arg_1.b.x, true, arg_1.b.x, true), !select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, false), vec4<bool>(true, arg_1.b.x, true, arg_1.b.x), vec4<bool>(true, arg_1.b.x, arg_1.b.x, false)))), !(arg_1.b.x | !(!arg_1.b.x)));
    var var_2 = select(!vec4<bool>(arg_1.b.x, arg_1.b.x | true, false, true), vec4<bool>(false, arg_1.b.x, func_2(!select(arg_1.b, arg_1.b, false)), all(vec3<bool>(false, 2147483647i == u_input.c, true))), vec4<bool>(arg_1.b.x, any(vec2<bool>(var_1.x, true)), var_1.x, var_1.x));
    var_1 = vec2<bool>(true, true);
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_mod_i32(-(~abs(2559i)), var_0.x), !select(!select(arg_1.b, arg_1.b, true), arg_1.b, true), arg_1.c, ~(-_wgslsmith_add_vec2_i32(vec2<i32>(-40441i, arg_1.d.x), vec2<i32>(u_input.c, -30681i))) ^ vec2<i32>(-var_0.x, 2147483647i << (~u_input.a % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = ~abs(abs(min(vec4<u32>(arg_0.c, u_input.a, u_input.a, arg_0.c) << (vec4<u32>(arg_0.a.c, arg_0.c, u_input.b.x, 53501u) % vec4<u32>(32u)), ~vec4<u32>(9225u, 4294967295u, arg_0.c, 4294967295u))));
    var var_1 = !select(vec2<bool>(arg_1 | select(arg_1, arg_1, arg_0.a.b.x), arg_1), !vec2<bool>(select(arg_1, true, arg_1), 1u >= u_input.a), select(select(func_1(Struct_2(arg_0.e.a), arg_0.a, -960f).b.yx, arg_0.a.b.yy, u_input.c == u_input.c), vec2<bool>(arg_1, true), !arg_0.a.b.yx));
    var var_2 = Struct_3(func_1(arg_0.e, func_1(arg_0.e, Struct_1(~arg_0.a.d.x, !vec3<bool>(arg_0.a.b.x, arg_1, arg_1), 1u ^ var_0.x, firstTrailingBit(arg_0.a.d)), 1082f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 1231f, arg_0.e.a.x) * arg_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1415f, arg_0.d.x, arg_0.d.x) - arg_0.b))))), 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.d, arg_0.e.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.xz) + _wgslsmith_f_op_vec2_f32(-arg_0.d)))), Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.e.a * arg_0.b.yz)))));
    var var_3 = ~_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(var_0.x, arg_0.c, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.c, var_0.x, arg_0.c, u_input.b.x) & vec4<u32>(1u, u_input.b.x, u_input.a, u_input.a), ~vec4<u32>(1u, var_0.x, arg_0.c, u_input.b.x), vec4<u32>(31758u, 72706u, arg_0.a.c, var_0.x) >> (vec4<u32>(0u, 1u, 54334u, arg_0.a.c) % vec4<u32>(32u)))) << (vec4<u32>(var_2.c, ~_wgslsmith_dot_vec3_u32(var_0.yxy & vec3<u32>(var_0.x, arg_0.c, 8523u), vec3<u32>(1u, 7658u, 56335u) & u_input.b), 4294967295u, 1u) % vec4<u32>(32u));
    let var_4 = 51183u;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(func_1(Struct_2(vec2<f32>(198f, 432f)), Struct_1(u_input.c, vec3<bool>(true, true, true), 0u, vec2<i32>(-40611i, u_input.c)), -2312f), _wgslsmith_div_vec3_f32(vec3<f32>(-1249f, 612f, 671f), vec3<f32>(1522f, 1572f, 742f)), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, 536f)), Struct_2(vec2<f32>(-149f, 164f))), true, _wgslsmith_f_op_f32(-798f + -339f))), 560f));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.a))));
    let var_1 = var_0.a.x;
    var var_2 = Struct_3(Struct_1(~firstLeadingBit(u_input.c), select(vec3<bool>(func_2(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, false))), func_1(Struct_2(var_0.a), func_1(Struct_2(var_0.a), Struct_1(1i, vec3<bool>(false, false, false), u_input.a, vec2<i32>(1i, u_input.c)), var_0.a.x), 218f).b, true), 1u, vec2<i32>(func_3().x, -(u_input.c | 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1489f, var_0.a.x))))), ~_wgslsmith_sub_u32(~u_input.b.x, abs(u_input.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(firstTrailingBit(vec2<i32>(-3881i, 96i))) ^ vec2<i32>(1i | var_2.a.a, _wgslsmith_clamp_i32(-32939i, u_input.c, var_2.a.d.x))));
}

