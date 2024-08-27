struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-1i, 0i, -1i), vec3<i32>(-1i, 1198i, -32918i), vec3<i32>(2147483647i, 2635i, -1712i), vec3<i32>(-22345i, -662i, 9689i), vec3<i32>(-10225i, -4977i, 1i), vec3<i32>(-5722i, 29071i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(16400i, 22242i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(2147483647i, -13065i, 1i), vec3<i32>(i32(-2147483648), -1i, -27039i), vec3<i32>(14154i, 0i, -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<i32> {
    global0 = array<vec2<bool>, 25>();
    let var_0 = !vec2<bool>(u_input.b.x != 17462u, all(!(!global0[_wgslsmith_index_u32(u_input.a, 25u)])));
    let var_1 = vec4<bool>(false, select(!all(vec2<bool>(true, false)), var_0.x | var_0.x, all(!(!vec4<bool>(true, false, var_0.x, var_0.x)))), true, all(!(!vec4<bool>(var_0.x, true, true, var_0.x))));
    var var_2 = Struct_3(abs(select(~select(vec4<i32>(u_input.d, u_input.d, 1i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i), var_0.x), vec4<i32>(-77550i, ~(-280i), u_input.d, u_input.d), var_1)), countOneBits(0i << (countOneBits(19163u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1299f, -186f)), 226f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f * -1548f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-699f))))));
    global0 = array<vec2<bool>, 25>();
    return vec3<i32>(i32(-1i) * -1i, -var_2.b, _wgslsmith_mod_i32(~(-9431i), var_2.b));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<bool>, 25>();
    let var_0 = abs(func_3());
    var var_1 = Struct_1(true);
    global1 = array<vec3<i32>, 12>();
    let var_2 = abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_mod_u32(0u, u_input.c.x), u_input.c.x, u_input.b.x)), ~(~firstTrailingBit(vec3<u32>(u_input.e, 4294967295u, 4294967295u)))));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global1 = array<vec3<i32>, 12>();
    let var_0 = Struct_2(u_input.c.xw, vec2<i32>(u_input.d << ((u_input.c.x & 76192u) % 32u), _wgslsmith_mod_i32(~(1i >> (u_input.a % 32u)), u_input.d)));
    let var_1 = -4519i;
    global0 = array<vec2<bool>, 25>();
    global1 = array<vec3<i32>, 12>();
    return Struct_3(vec4<i32>(-29459i << (~_wgslsmith_sub_u32(var_0.a.x, var_0.a.x) % 32u), ~1i, ~(var_0.b.x & _wgslsmith_clamp_i32(-41095i, -13666i, var_1)), _wgslsmith_sub_i32(0i, var_0.b.x)), -(~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-134f)), _wgslsmith_f_op_f32(min(181f, 1687f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1183f))), var_1 <= (u_input.d | 37894i))) + -719f));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_4 {
    let var_0 = u_input.d;
    let var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.e, 0u), u_input.e);
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    var var_2 = u_input.b;
    return Struct_4(Struct_3(vec4<i32>(0i, var_0 | -29714i, _wgslsmith_add_i32(~var_0, var_0), -2147483647i), 14869i, -244f), Struct_3(select(arg_0.a, abs(arg_0.a) ^ _wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a), select(!arg_1, vec4<bool>(arg_1.x, false, true, arg_1.x), true)), ~countOneBits(u_input.d), -2977f), arg_1, reverseBits(abs(1u)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1464f) * _wgslsmith_f_op_f32(arg_0.a.c - _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1509f)))));
    global0 = array<vec2<bool>, 25>();
    let var_1 = Struct_2(u_input.b & u_input.c.xz, arg_1.a.yx);
    global1 = array<vec3<i32>, 12>();
    let var_2 = Struct_2(~select(~vec2<u32>(38400u, 29682u), vec2<u32>(u_input.c.x, arg_0.d), !vec2<bool>(false, arg_0.c.x)) >> (_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(u_input.c.x, u_input.e)), countOneBits(abs(vec2<u32>(u_input.e, arg_0.d)))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(max(var_1.b.x & -15813i, arg_0.b.b ^ arg_1.b), i32(-1i) * -var_1.b.x), var_1.b.x));
    return Struct_3(vec4<i32>(abs(~(-648i)), func_4(func_2(vec2<i32>(0i, arg_0.b.b))).b, 7173i, -select(arg_2.x, 1i, arg_0.c.x)) | arg_0.a.a, arg_2.x, _wgslsmith_f_op_f32(911f - -518f));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global0 = array<vec2<bool>, 25>();
    var var_0 = arg_2;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, 22273u), vec2<u32>(18251u, arg_0.x)), ~(~vec2<u32>(62308u, 26447u))), arg_0), vec2<i32>(func_5(Struct_3(vec4<i32>(1i, arg_2.b, arg_3, 0i), 0i, -751f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).a.a.x, -(~u_input.d)));
    let var_2 = Struct_2(~(firstTrailingBit(vec2<u32>(arg_0.x, u_input.b.x) << (vec2<u32>(0u, 46315u) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_sub_u32(var_1.a.x, 28856u), 1542u)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.a.x, u_input.d), vec2<i32>(0i, 0i), var_0.a.yw) | select(vec2<i32>(-2147483647i, var_0.b), vec2<i32>(0i, -1i), true), ~vec2<i32>(1i, var_1.b.x)) | abs(~vec2<i32>(arg_1.a.x, -2147483647i)));
    global0 = array<vec2<bool>, 25>();
    return Struct_3(_wgslsmith_mult_vec4_i32(arg_1.a, vec4<i32>(arg_3, -2147483647i, 2147483647i, _wgslsmith_add_i32(-1i, select(-20226i, 1i, true)))), _wgslsmith_mult_i32(1i, -7737i), -1068f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(-1000f));
    var var_1 = abs(_wgslsmith_sub_u32(u_input.c.x, ~u_input.b.x | 120073u));
    let var_2 = func_7(u_input.c.yw, Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, -10281i, -1i), vec4<i32>(u_input.d, 1i, u_input.d, 0i), vec4<i32>(-17846i, -70191i, 3457i, -6708i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-81581i, 1i, -32504i, 2147483647i), vec4<i32>(u_input.d, u_input.d, u_input.d, -41271i))) | -vec4<i32>(u_input.d, 47687i, u_input.d, u_input.d), 1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(752f - _wgslsmith_f_op_f32(max(1076f, 554f)))))), func_6(func_5(func_4(func_2(vec2<i32>(-46959i, u_input.d))), vec4<bool>(true, true, true, true)), func_5(Struct_3(~vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), i32(-1i) * -3584i, _wgslsmith_div_f32(-322f, 1025f)), vec4<bool>(true, true, true, true)).b, -global1[_wgslsmith_index_u32(u_input.e, 12u)]), 1i & countOneBits(~(~u_input.d)));
    global1 = array<vec3<i32>, 12>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_2.c, 400f), vec3<f32>(var_2.c, var_2.c, var_2.c)))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, var_0.c, -419f))) + vec3<f32>(var_0.c, -254f, var_0.c)))));
    let var_2 = Struct_1(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)))));
    var var_3 = Struct_2(u_input.c.ww, -vec2<i32>(-28850i, -20923i));
    let var_4 = Struct_2(~vec2<u32>(4294967295u, u_input.c.x), var_0.a.zz);
    var var_5 = func_1();
    var var_6 = 1u > _wgslsmith_mod_u32(2988u, ~(0u << (firstTrailingBit(5802u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(-821f)), -1017f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1398f)), _wgslsmith_f_op_f32(f32(-1f) * -404f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_0.c)))), select(vec4<u32>(48298u, var_4.a.x, 4294967295u, 50422u) >> (~vec4<u32>(var_3.a.x, u_input.c.x, var_3.a.x, 22559u) % vec4<u32>(32u)), u_input.c, !vec4<bool>(var_2.a, true, false, false)) & _wgslsmith_clamp_vec4_u32(u_input.c >> (~u_input.c % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(var_3.a.x, var_4.a.x), 37687u, 1u, var_4.a.x | var_3.a.x), abs(u_input.c)), 2147483647i, _wgslsmith_f_op_vec2_f32(var_1.yx + _wgslsmith_f_op_vec2_f32(trunc(var_1.xx))));
}

