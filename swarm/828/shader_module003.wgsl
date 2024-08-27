struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(497f, _wgslsmith_f_op_f32(max(133f, arg_0.x))))) + arg_0), vec3<i32>(countOneBits(arg_3.c) >> (arg_3.b % 32u), _wgslsmith_div_i32(14556i, firstLeadingBit(-arg_3.c)), arg_1.b.x), _wgslsmith_f_op_f32(arg_0.x + 686f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(416f - -494f), _wgslsmith_f_op_f32(507f + _wgslsmith_div_f32(1306f, arg_0.x))), 1f), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1f + arg_0.x), arg_0.x, 1f));
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, -902f))) * _wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1448f, arg_0.x)))), var_0.e.xx), max(arg_2.zxz, vec3<i32>(arg_3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.b.x, 1789i), ~arg_2.wxw), arg_1.b.x)), -1025f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0, var_0.a), arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.x, arg_0.x), vec2<f32>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-968f, -1130f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2155f, var_0.a.x) + var_0.a))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(var_0.c, 421f, 100f, -1464f)) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -743f)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-990f, var_0.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, 201f))))), arg_2.xyw, _wgslsmith_f_op_f32(step(434f, _wgslsmith_div_f32(arg_0.x, -1710f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, arg_0.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a)))), var_0.e.ww)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(exp2(arg_0.x)))), 1071f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-285f * 1680f), _wgslsmith_f_op_f32(arg_0.x - var_0.e.x))), -974f));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1675f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.c) + arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(314f, 748f) - vec2<f32>(2581f, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))))), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-7713i, -arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-33619i, arg_2.x), u_input.b.yz))), vec3<i32>(25595i, arg_2.x, -var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_f_op_vec2_f32(-arg_0), var_0.e);
    var var_1 = var_0.d.x;
    return 1i;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(13880i, ~(~(-193i))), -select(func_3(vec2<f32>(-1474f, 2237f), Struct_4(Struct_3(arg_3.x), vec2<i32>(arg_1.a, u_input.d), Struct_2(111626u, 26739u, 1i), Struct_3(21124i)), vec4<i32>(arg_1.a, 0i, 0i, -41508i), Struct_2(arg_2.x, 88733u, arg_1.a)), _wgslsmith_sub_i32(0i, -20434i), any(vec2<bool>(arg_0, arg_0)))), arg_3.x);
    var var_1 = 0u;
    var var_2 = u_input.d;
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, _wgslsmith_add_u32(arg_2.x, 1u), u_input.a), _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, arg_2.x, u_input.e)), ~vec3<u32>(0u, 30957u, 32215u))), vec3<u32>(_wgslsmith_mult_u32(33254u, 11677u), arg_2.x, ~_wgslsmith_div_u32(arg_2.x, u_input.a)), ~(~vec3<u32>(27531u, arg_2.x, 7338u)) >> (~select(vec3<u32>(arg_2.x, u_input.c, arg_2.x), vec3<u32>(0u, arg_2.x, arg_2.x), false) % vec3<u32>(32u))));
    var_1 = ~arg_2.x | min(~arg_2.x, ~_wgslsmith_sub_u32(~33161u, abs(0u)));
    return reverseBits(1i);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1219f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1693f) - 1029f)));
    var_0 = _wgslsmith_f_op_f32(-1882f + -1000f);
    let var_1 = 4476u | u_input.e;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1775f);
    return Struct_2(4294967295u, var_1, _wgslsmith_clamp_i32(arg_0.a, 50934i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.a, 7934i), arg_0.a) & u_input.d));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1173f, 619f), vec2<f32>(-1396f, -1224f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-148f, 830f), vec2<f32>(2728f, 270f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 678f)))))));
    var_0 = vec2<f32>(1253f, var_0.x);
    let var_1 = func_4(Struct_3(func_2(false, Struct_3(arg_0.x), _wgslsmith_sub_vec2_u32(select(vec2<u32>(46547u, 30077u), vec2<u32>(1u, 0u), vec2<bool>(false, false)), vec2<u32>(u_input.a, 30815u) | vec2<u32>(u_input.a, 4294967295u)), -vec2<i32>(arg_0.x, 44077i))));
    var var_2 = Struct_3(-(~(var_1.c | arg_0.x)));
    var var_3 = vec2<i32>(28020i, -2147483647i);
    return vec2<u32>(max(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a, var_1.a) | vec2<u32>(53560u, 4294967295u)), ~vec2<u32>(u_input.e, 59836u)), 1u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_f32(-381f + -955f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(-356f))), 1338f)));
    var var_1 = vec2<i32>(-1i ^ u_input.d, firstLeadingBit(-1i)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(~16011u, select(u_input.a, u_input.a, true)), func_1(abs(u_input.b.zzz), u_input.b.wy)) % vec2<u32>(32u));
    let var_2 = abs(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.b.x, 11359i, 45319i, var_1.x)), vec4<i32>(10061i, _wgslsmith_dot_vec2_i32(~u_input.b.wy, -vec2<i32>(-2147483647i, u_input.d)), ~(-u_input.b.x), _wgslsmith_div_i32(reverseBits(32818i), u_input.b.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-193f, 575f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -301f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1183f), -1379f)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), 1272f)), -839f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(860f, -1000f)) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1595f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1189f, 2379f) * vec2<f32>(-951f, var_0.x)), vec2<bool>(false, false))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x)));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_add_u32(18353u, ~func_4(Struct_3(-1i)).a), ~0u);
    var_1 = u_input.b.wz;
    var var_4 = 77220u;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -firstTrailingBit(var_2.x));
}

