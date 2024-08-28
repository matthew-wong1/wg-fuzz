struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = -u_input.c.xw;
    var var_1 = Struct_3(Struct_2(Struct_1(~(~vec3<u32>(4003u, 1u, u_input.b)), u_input.c, 5878i, 1u), Struct_1(arg_2.a, arg_2.b, ~arg_2.b.x, _wgslsmith_div_u32(abs(0u), ~0u))));
    var_0 = vec2<i32>(1i | var_1.a.b.b.x, var_0.x);
    var var_2 = arg_2;
    var var_3 = Struct_2(Struct_1(vec3<u32>(var_2.d, ~(~u_input.b), select(19808u, var_1.a.b.a.x, any(vec4<bool>(false, true, false, true)))), vec4<i32>(arg_1, var_0.x, ~var_1.a.a.b.x, _wgslsmith_mult_i32(var_0.x, ~18155i)), 0i, 1u & _wgslsmith_mod_u32(arg_0.x, abs(arg_0.x))), var_1.a.a);
    return ~abs(max(~vec4<u32>(148890u, arg_2.a.x, var_3.a.a.x, 45606u), countOneBits(vec4<u32>(1u, u_input.b, 1u, 62112u) & vec4<u32>(31160u, 4294967295u, arg_0.x, arg_2.d))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(~(~(~vec4<u32>(u_input.b, 0u, u_input.b, 26164u)))), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 21158u), ~vec4<u32>(27425u, 47706u, 86421u, 26192u)), ~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(27771u, 4080u, u_input.b, 54302u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)))), func_3(vec2<u32>(u_input.b, ~select(u_input.b, 36118u, arg_2)), -1i, Struct_1(abs(select(vec3<u32>(67134u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 99989u), false)), _wgslsmith_clamp_vec4_i32(-u_input.c, -u_input.c, vec4<i32>(1i, u_input.c.x, -26091i, u_input.a.x)), ~(~1i), _wgslsmith_mult_u32(u_input.b, abs(u_input.b)))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~var_0.x), _wgslsmith_mult_u32(func_3(~vec2<u32>(9735u, u_input.b), abs(u_input.c.x), Struct_1(var_0.yxw, vec4<i32>(1i, -30815i, 12933i, u_input.a.x), 1909i, 1u)).x, var_0.x), 1u, _wgslsmith_mod_u32(u_input.b, abs(var_0.x >> (var_0.x % 32u)))), ~(vec4<u32>(firstLeadingBit(4294967295u), 0u, u_input.b >> (var_0.x % 32u), _wgslsmith_clamp_u32(u_input.b, var_0.x, 0u)) & ~(vec4<u32>(u_input.b, var_0.x, u_input.b, var_0.x) & vec4<u32>(var_0.x, 91542u, 1u, var_0.x))));
    var_0 = var_1;
    let var_2 = Struct_2(Struct_1(~vec3<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), u_input.b, 1u), ~countOneBits(vec4<i32>(arg_1.x, u_input.c.x, u_input.a.x, 2147483647i) >> (vec4<u32>(var_1.x, var_1.x, 0u, var_1.x) % vec4<u32>(32u))), reverseBits(-46862i), 18642u), Struct_1(var_1.yzw, vec4<i32>(0i, ~firstLeadingBit(-22116i), 22937i, _wgslsmith_div_i32(u_input.c.x, u_input.a.x) | u_input.c.x), max(~(-8573i), arg_1.x), ~(u_input.b >> (0u % 32u)) << (~0u % 32u)));
    var var_3 = var_2;
    return Struct_3(var_2);
}

fn func_1() -> Struct_3 {
    return func_2(!(!vec3<bool>(select(true, true, true), true, true)), vec2<i32>(_wgslsmith_sub_i32(2147483647i, 1i), abs(u_input.a.x)), any(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), all(vec4<bool>(false, false, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = any(select(vec4<bool>(true, 28350u >= ~arg_0.a.a.a.x, !any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true)));
    var_0 = any(select(vec3<bool>(true, true, true), !vec3<bool>(any(vec3<bool>(true, false, false)), true, true), all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_sub_vec4_i32(func_2(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), firstTrailingBit(arg_0.a.a.b.zw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 1696f)) < 968f).a.b.b, func_2(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), (func_2(vec3<bool>(true, true, false), vec2<i32>(u_input.a.x, -2147483647i), false).a.b.b.yx ^ vec2<i32>(-62495i, arg_0.a.b.b.x)) >> (func_2(vec3<bool>(true, true, true), -vec2<i32>(-1i, arg_0.a.a.c), arg_0.a.a.c <= 8441i).a.a.a.xz % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-671f * arg_1.x), _wgslsmith_div_f32(arg_1.x, arg_1.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x))).a.b.b);
    var var_2 = func_1().a.a.b.wy & reverseBits(_wgslsmith_mod_vec2_i32(var_1.xx, vec2<i32>(_wgslsmith_mod_i32(var_1.x, 0i), _wgslsmith_clamp_i32(var_1.x, arg_0.a.b.c, -5274i))));
    var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-arg_0.a.b.b.x, 2147483647i >> (reverseBits(arg_0.a.a.d) % 32u)), u_input.c.yw << (~(~arg_0.a.b.a.xy) % vec2<u32>(32u))), u_input.a);
    return func_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)) == true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))))), vec2<i32>(~(-2147483647i) >> ((43778u >> (u_input.b % 32u)) % 32u), 74201i) >> ((vec2<u32>(_wgslsmith_div_u32(20160u, 32571u), u_input.b) | vec2<u32>(~u_input.b, func_3(arg_0.a.a.a.xy, var_1.x, arg_0.a.a).x)) % vec2<u32>(32u)), false).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1586f)) * 257f), _wgslsmith_f_op_f32(step(-753f, -405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(253f + 1000f), -1024f))), _wgslsmith_div_f32(376f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2258f)) + -361f))));
    let var_1 = Struct_3(func_2(vec3<bool>(all(vec2<bool>(true, true)), !(u_input.a.x != var_0.a.c), !any(vec3<bool>(false, true, true))), func_1().a.b.b.zz, true).a);
    var_0 = func_4(func_1(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), -813f, _wgslsmith_f_op_f32(sign(848f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-585f)) - 1567f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1309f)))))));
    let var_2 = Struct_3(Struct_2(var_0.a, var_1.a.b));
    var var_3 = Struct_3(Struct_2(Struct_1(~(~var_1.a.b.a), func_4(func_2(vec3<bool>(false, true, true), u_input.c.xx, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(675f, -566f, -650f) - vec3<f32>(507f, -1405f, -422f)), 921f).a.b, -(~var_0.b.c), ~var_2.a.a.d), var_2.a.b));
    let var_4 = func_1().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(46544i, func_4(var_1, vec3<f32>(103f, 593f, -1000f), -3440f).a.b.x, _wgslsmith_div_i32(2147483647i, u_input.c.x)), -16496i), var_1.a.a.b.x);
}

