struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32>;

var<private> global1: array<Struct_2, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = ~_wgslsmith_mod_vec2_u32(~vec2<u32>(24575u, 20891u), min(vec2<u32>(firstLeadingBit(0u), 19657u), vec2<u32>(1u, countOneBits(50561u))));
    global0 = array<Struct_4, 32>();
    let var_1 = _wgslsmith_sub_u32(40212u, var_0.x) == _wgslsmith_sub_u32(min(var_0.x, var_0.x), firstLeadingBit(var_0.x));
    var var_2 = arg_0;
    global0 = array<Struct_4, 32>();
    return select(select(select(!select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(false, var_1, false, var_1), vec4<bool>(var_1, var_1, var_1, false)), select(!vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, false), any(vec3<bool>(var_1, true, true))), reverseBits(u_input.a.x) < _wgslsmith_mult_i32(2147483647i, u_input.a.x)), vec4<bool>(var_1, all(vec3<bool>(var_1, var_1, true)), any(vec4<bool>(var_1, var_1, var_1, var_1)), var_1), !(!(arg_0 > 480f))), select(vec4<bool>(all(!vec3<bool>(true, false, var_1)), true, any(vec3<bool>(false, var_1, var_1)), true), vec4<bool>(true, !var_1, all(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(true, false))), all(select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, false, false, true), var_1))), select(select(!vec4<bool>(var_1, true, false, true), vec4<bool>(var_1, var_1, false, var_1), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, true, var_1, false), true)), !(!vec4<bool>(var_1, var_1, false, var_1)), vec4<bool>(false, false, true, true))), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32, arg_3: bool) -> i32 {
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    var var_0 = Struct_5(abs(~1470u));
    var var_1 = _wgslsmith_add_vec2_i32(~arg_0.e, u_input.b);
    var_1 = vec2<i32>(_wgslsmith_div_i32(arg_0.b.c, _wgslsmith_add_i32(-2147483647i | min(arg_0.d.c, var_1.x), firstLeadingBit(var_1.x))), -27132i);
    return arg_1.d;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    let var_0 = ~(-(~firstLeadingBit(vec3<i32>(-2147483647i, u_input.a.x, 1i))));
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    global0 = array<Struct_4, 32>();
    return func_4(Struct_2(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(!func_3(139f), -731f, firstLeadingBit(-20008i), vec3<bool>(arg_3.x, arg_3.x, true), !(!arg_3.x)), Struct_1(select(arg_3, vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), arg_1 != 0u), _wgslsmith_f_op_f32(408f - _wgslsmith_f_op_f32(1322f * 1350f)), ~(i32(-1i) * -38896i), !select(arg_3.yww, arg_3.wxx, false), !all(arg_3)), Struct_1(select(vec4<bool>(true, true, arg_3.x, arg_3.x), arg_3, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f - 665f)), arg_2, arg_3.xzy, true), select(vec2<i32>(firstTrailingBit(5225i), abs(arg_2)), vec2<i32>(min(1i, 0i), ~arg_0), false)), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1074f, -1850f, 1598f, 1236f), vec4<f32>(-447f, 1000f, -1079f, 843f)))))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(809f, -1230f, 1479f, 1158f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1553f, 1802f, 160f, 1287f), vec4<f32>(1143f, -732f, -788f, -164f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(965f, -1075f, -378f, -777f) + vec4<f32>(671f, 2275f, 325f, -1862f)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(1i), u_input.b.x), var_0.x, arg_0)), _wgslsmith_f_op_f32(2025f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-914f + 454f))))), arg_3.x);
}

fn func_1() -> bool {
    let var_0 = vec3<i32>(-1i, func_2(-19760i, ~abs(1u), firstTrailingBit(u_input.a.x) << (44693u % 32u), vec4<bool>(true, true, true, true)), u_input.b.x);
    global0 = array<Struct_4, 32>();
    let var_1 = Struct_4(vec4<f32>(1f, -182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f + 284f) + _wgslsmith_f_op_f32(min(-1000f, -542f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -352f))))), true, vec4<f32>(764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1443f, -583f)), _wgslsmith_f_op_f32(f32(-1f) * -395f), all(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_f32(-1829f * 405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(843f - _wgslsmith_div_f32(840f, 521f)) * _wgslsmith_div_f32(-792f, _wgslsmith_f_op_f32(-675f - 390f)))), countOneBits(u_input.a.x));
    let var_2 = true;
    var var_3 = vec3<i32>(1i, 1i, -_wgslsmith_sub_i32(1i, abs(-var_1.d)));
    return any(!vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(var_2, var_1.b, true), true)), any(vec2<bool>(true, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 32>();
    var var_0 = vec3<bool>(true && func_1(), false, true);
    var var_1 = Struct_3(countOneBits(u_input.a.x >> (37140u % 32u)), Struct_1(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 726f, max(u_input.a.x, u_input.b.x), vec3<bool>(!any(var_0.xz), (1i <= u_input.b.x) && var_0.x, !(!var_0.x)), any(select(func_3(-256f).wy, var_0.yz, var_0.x))));
    let var_2 = var_1.b.e && var_0.x;
    let var_3 = Struct_1(!select(select(select(vec4<bool>(true, false, var_2, true), var_1.b.a, var_2), !vec4<bool>(false, true, var_2, false), 0i < var_1.b.c), var_1.b.a, select(!var_1.b.a, func_3(-466f), vec4<bool>(var_1.b.a.x, true, var_0.x, false))), var_1.b.b, -26643i, vec3<bool>(!(!var_1.b.a.x) & true, true, _wgslsmith_add_i32(var_1.a, var_1.a) < ~(~var_1.a)), false || ((-503f >= _wgslsmith_f_op_f32(trunc(var_1.b.b))) | func_1()));
    var_0 = select(!vec3<bool>(func_1(), true, true), var_3.d, var_1.b.d.x | false);
    let var_4 = var_3.b;
    global0 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(~(u_input.a ^ vec2<i32>(u_input.a.x, var_3.c)), _wgslsmith_div_vec2_i32(reverseBits(u_input.b), firstTrailingBit(vec2<i32>(var_3.c, var_3.c)))) | select(vec2<i32>(1i, 1i), vec2<i32>(countOneBits(var_3.c), 2147483647i >> (1u % 32u)), select(func_3(-1696f).zx, vec2<bool>(var_2, false), vec2<bool>(var_2, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(462f, var_3.b, -1402f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4, -636f, var_3.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4, -1000f, -1774f), vec3<f32>(-914f, var_3.b, 1292f), false)), vec3<f32>(-1388f, var_3.b, var_1.b.b))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.b.b)), _wgslsmith_f_op_f32(var_4 * 1000f), true)), 2118f)));
}

