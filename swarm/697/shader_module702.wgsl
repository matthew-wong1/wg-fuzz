struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(1320f, 109f, 1030f, -211f), vec4<f32>(-765f, -1839f, -361f, 2331f), vec4<f32>(-260f, 330f, -473f, 253f), vec4<f32>(201f, 1118f, 1184f, 1128f), vec4<f32>(1505f, 115f, 788f, 942f), vec4<f32>(1000f, -1085f, -1270f, 1292f), vec4<f32>(-1812f, -902f, 497f, -1650f), vec4<f32>(-247f, -959f, 1479f, -588f), vec4<f32>(1000f, 232f, 1886f, -1000f), vec4<f32>(-1128f, 207f, -533f, -602f), vec4<f32>(-334f, -483f, -1082f, 2573f), vec4<f32>(1000f, -230f, 577f, 2015f), vec4<f32>(-257f, 334f, -264f, -1840f), vec4<f32>(2133f, -1000f, 1000f, 1000f), vec4<f32>(-571f, 130f, 150f, 1811f), vec4<f32>(2406f, 622f, -314f, -617f), vec4<f32>(789f, -183f, -1519f, 471f), vec4<f32>(-379f, -496f, -1404f, -1114f), vec4<f32>(-423f, -582f, -330f, 1010f), vec4<f32>(228f, 109f, 494f, 1645f), vec4<f32>(674f, -1362f, -548f, 480f));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 74230u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<f32>, 21>();
    let var_0 = true;
    var var_1 = any(!vec2<bool>(true | var_0, true));
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(max(30766i, 0i) >> (0u % 32u), -1i), select(select(vec2<i32>(30401i, 2147483647i), vec2<i32>(0i, -2147483647i), var_0), vec2<i32>(-43548i, -80526i), vec2<bool>(false, var_0)) & abs(countOneBits(vec2<i32>(14207i, 1i)))), firstTrailingBit(vec2<i32>(~min(-2147483647i, -41719i), abs(min(1i, -40882i)))));
    return Struct_2(~(~global1.x));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false), all(vec2<bool>(true, false))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))), false), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    let var_1 = 747f;
    let var_2 = func_2();
    global0 = array<vec4<f32>, 21>();
    let var_3 = _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(floor(var_1))) > 1785f;
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = firstTrailingBit(vec2<i32>(arg_2, min(55843i, 0i ^ _wgslsmith_sub_i32(2637i, arg_2))));
    let var_1 = ~0i;
    let var_2 = select(vec3<bool>(any(arg_1.yxz), arg_1.x, false), select(select(arg_1.wyx, vec3<bool>(any(arg_1), false, true), vec3<bool>(all(vec3<bool>(false, arg_1.x, true)), false && arg_1.x, arg_1.x)), arg_1.xyx, select(vec3<bool>(false, all(arg_1), all(arg_1)), select(!arg_1.wyw, arg_1.zww, arg_1.x), select(arg_1.x, !arg_1.x, false))), arg_1.x);
    var var_3 = Struct_1(abs(u_input.a) | 90494u, arg_2, select(vec2<bool>(arg_1.x, all(arg_1.wzx)), var_2.yx, all(!(!arg_1.xxx))));
    var_3 = Struct_1(4294967295u, var_1, arg_1.wy);
    return _wgslsmith_mod_u32(func_2().a, firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 1u), countOneBits(vec2<u32>(u_input.a, 16249u)));
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, func_3(250f, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), ~_wgslsmith_div_i32(-18679i, 2147483647i), func_1(Struct_2(u_input.a)))), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, ~firstLeadingBit(global1.x)), ~(~(~vec2<u32>(1u, 0u)))), vec2<u32>(~firstLeadingBit(22962u >> (u_input.a % 32u)), func_2().a));
    var var_0 = min(~((vec2<u32>(62801u, 1u) & vec2<u32>(global1.x, 27990u)) | _wgslsmith_mult_vec2_u32(abs(vec2<u32>(global1.x, u_input.a)), vec2<u32>(1u, 1u))), ~vec2<u32>(u_input.a, u_input.a));
    let var_1 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true)), vec2<bool>(true, true), (_wgslsmith_f_op_f32(step(1401f, 1760f)) >= -162f) || any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, 1013f, -424f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(309f, 735f, -1274f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-103f, 807f, -2058f), vec3<f32>(471f, -165f, 885f))), var_1.x))));
    var var_3 = all(select(!select(var_1, var_1, var_1), vec2<bool>(var_1.x, !var_1.x), select(var_1, vec2<bool>(true, all(vec2<bool>(true, true))), any(vec3<bool>(var_1.x, false, var_1.x)))));
    let var_4 = Struct_1(_wgslsmith_sub_u32(u_input.a, ~u_input.a), -(~(abs(-35901i) << (global1.x % 32u))), vec2<bool>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(151f * 301f)) > _wgslsmith_f_op_f32(-var_2.x), var_1.x));
    var var_5 = Struct_2(reverseBits(_wgslsmith_div_u32(reverseBits(28029u), func_1(Struct_2(global1.x)).a) & 17693u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -673f) + _wgslsmith_f_op_f32(f32(-1f) * -133f))), var_2.x, -1385f), -(select(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -17551i), vec2<i32>(var_4.b, var_4.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.b, var_4.b), vec2<i32>(var_4.b, var_4.b)), var_4.c) ^ reverseBits(select(vec2<i32>(var_4.b, -1i), vec2<i32>(var_4.b, var_4.b), false))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 1u) << (vec2<u32>(15082u, 685u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 70552u), vec2<u32>(var_0.x, var_0.x)) >> (~vec2<u32>(u_input.a, 52110u) % vec2<u32>(32u))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(15870u, 0u), ~vec2<u32>(u_input.a, global1.x)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.a, var_0.x), vec2<u32>(global1.x, var_5.a), vec2<u32>(1u, 10497u))), !select(vec2<bool>(true, var_1.x), var_4.c, vec2<bool>(var_4.c.x, var_1.x)))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(~var_4.b, var_4.b), ~select(22169i, -2147483647i, false)), countOneBits(_wgslsmith_clamp_i32(select(2147483647i, var_4.b, true), ~var_4.b, _wgslsmith_div_i32(var_4.b, 0i))), countOneBits(9354i) << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, global1.x), vec2<u32>(var_4.a, global1.x)), ~vec2<u32>(var_4.a, global1.x)) % 32u)));
}

