struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    var var_0 = Struct_4(all(vec4<bool>(true, u_input.a.x > 2147483647i, true, arg_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-933f, -1161f, -492f) * vec3<f32>(1491f, 256f, -198f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-421f, -1000f, -357f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1438f)), _wgslsmith_f_op_f32(282f - -1076f), _wgslsmith_f_op_f32(123f - -2361f))))), Struct_1(abs(firstLeadingBit(firstTrailingBit(vec2<i32>(0i, u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(509f + _wgslsmith_div_f32(1193f, 395f)) + -229f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(666f, 403f, -892f, -1411f), vec4<f32>(829f, 2359f, -1034f, 2527f), arg_2)), vec4<f32>(546f, 302f, 584f, 2693f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(134f, 423f, -1325f)), _wgslsmith_div_vec3_f32(vec3<f32>(1821f, -1195f, -632f), vec3<f32>(1612f, 982f, -1790f))))), -1207f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(285f, 351f, -559f, -1087f), vec4<f32>(-968f, 1000f, -1000f, 1280f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), !arg_2 == false)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1479f, 1214f, -1229f, 1000f), vec4<f32>(-770f, 925f, -563f, 1495f)))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1226f)), -233f, 1102f, _wgslsmith_div_f32(-853f, 370f)))));
    let var_1 = !(!select(select(!vec3<bool>(var_0.a, arg_2, var_0.a), vec3<bool>(arg_2, false, true), any(vec3<bool>(true, true, var_0.a))), vec3<bool>(u_input.a.x >= var_0.c.a.x, true, true), select(!vec3<bool>(false, false, arg_2), select(vec3<bool>(false, arg_2, false), vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, var_0.a)), arg_2)));
    var_0 = Struct_4(true, var_0.d.zyw, Struct_1(vec2<i32>(-2148i, var_0.c.a.x), -279f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2213f, var_0.c.b, var_0.c.e, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, -1935f, 1071f) - vec3<f32>(211f, var_0.b.x, 928f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.e, var_0.b.x, -1645f), var_0.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-498f, -1356f)))), -699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.d.x) * -1058f)), _wgslsmith_f_op_f32(f32(-1f) * -257f)));
    var var_2 = Struct_3(abs(min(select(~vec3<i32>(21535i, u_input.a.x, -47664i), vec3<i32>(arg_1.x, 2147483647i, var_0.c.a.x), vec3<bool>(var_0.a, false, arg_2)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, -75342i)), ~vec3<i32>(-1i, 4622i, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(382f, _wgslsmith_f_op_f32(select(453f, -237f, var_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), var_0.b.x, 1427f), Struct_1(arg_1.yw << (u_input.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), vec4<f32>(-249f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1069f, 858f)), 1437f, -900f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e) * -802f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(422f, var_0.b.x)))), var_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x - var_0.c.e)))))), var_0.c, ~(~vec2<i32>(~u_input.a.x, 62555i)));
    var_2 = Struct_3(vec3<i32>(-u_input.a.x, arg_1.x, arg_1.x | (~var_2.e.x ^ -1497i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), vec4<f32>(612f, var_0.b.x, var_0.b.x, 651f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_2.c.c * var_0.c.c))))), Struct_1((vec2<i32>(43633i, var_2.e.x) | arg_1.wz) & vec2<i32>(var_0.c.a.x, var_0.c.a.x), _wgslsmith_f_op_f32(min(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.e - -1103f), var_0.d.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1100f, _wgslsmith_div_f32(var_0.d.x, var_0.b.x), 132f, var_0.c.d.x), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(var_0.b.x * var_2.d.d.x), _wgslsmith_div_f32(var_0.d.x, 842f), _wgslsmith_f_op_f32(1457f - var_0.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.c.d - var_0.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, var_2.b.x, -358f)), vec3<f32>(-1797f, var_0.c.c.x, 235f))), ~0u > (arg_0 ^ 4294967295u))), var_0.c.d.x), var_2.d, u_input.a);
    return var_2.d.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_3(vec3<i32>(arg_1.a.x, arg_1.a.x, -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(133f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_div_f32(arg_1.b, 146f), 1153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1318f + arg_0.x), _wgslsmith_f_op_f32(round(2207f)))), Struct_1(arg_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - arg_1.d.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, _wgslsmith_f_op_f32(func_3(29992u, vec4<i32>(2147483647i, u_input.a.x, 2147483647i, arg_1.a.x), true)), _wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_1.c.x, arg_1.e, 1113f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_1.c.x, arg_1.e) + vec3<f32>(arg_1.c.x, 1000f, arg_0.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), arg_0.x), Struct_1(arg_1.a, arg_1.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-2036f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -454f), -1219f)), arg_0, arg_0.x), min(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec2_i32(arg_1.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(1i, arg_1.a.x), min(vec2<i32>(arg_1.a.x, u_input.a.x), arg_1.a)))));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = var_0.d;
    let var_3 = arg_0.x;
    var var_4 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.c.wz), u_input.c.zw) | u_input.b, vec2<u32>(~(4294967295u | u_input.b.x), _wgslsmith_div_u32(1u, 0u >> (u_input.c.x % 32u))));
    return var_1.zx;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = any(!(!select(vec4<bool>(true, arg_0.e.x, true, false), !vec4<bool>(arg_0.a.x, arg_0.e.x, arg_0.e.x, false), !arg_0.e.x)));
    var var_1 = Struct_4(all(arg_0.e), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, 868f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.b)))), arg_0.c.c.wwx)), Struct_1(~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(11702i, -30719i), arg_0.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) + -421f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, arg_0.c.c.x, arg_1.c.x, _wgslsmith_f_op_f32(func_3(u_input.c.x, vec4<i32>(arg_0.b, -37716i, 1i, -14639i), arg_0.a.x)))), arg_1.d, -479f), _wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-323f, arg_1.e) + _wgslsmith_div_f32(arg_1.e, arg_0.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-285f, 1788f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(arg_0.d.x, 0u), vec4<i32>(-2147483647i, -50472i, arg_0.c.a.x, -25559i), arg_0.d.x > u_input.c.x)), _wgslsmith_f_op_f32(-arg_1.e)))));
    let var_2 = Struct_3(-vec3<i32>(1i, _wgslsmith_add_i32(countOneBits(0i), arg_0.b), var_1.c.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1061f, arg_0.c.e, _wgslsmith_f_op_f32(-1389f * arg_1.d.x), -513f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -134f, arg_1.c.x, 340f) + vec4<f32>(arg_1.e, arg_1.d.x, 399f, arg_1.d.x)))), vec4<bool>(!(arg_0.a.x || arg_0.a.x), var_1.a, true, true))), var_1.c, Struct_1(var_1.c.a, 700f, _wgslsmith_f_op_vec4_f32(-arg_0.c.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.yww + arg_0.c.d)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.c.c.yxy)))), var_1.d.x), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(arg_0.b, 2725i) & arg_1.a) & vec2<i32>(-5894i, _wgslsmith_clamp_i32(2147483647i, arg_0.b, 0i)), abs(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, arg_0.c.a.x), ~u_input.a.x))));
    var_0 = arg_0.a.x;
    return Struct_1(vec2<i32>(u_input.a.x, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, 0i), arg_0.b | u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2148f * var_1.b.x), _wgslsmith_f_op_f32(-arg_1.d.x)), -147f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-406f)), 1073f, var_2.d.d.x, _wgslsmith_f_op_f32(399f + 948f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.d.x)) - arg_1.e), arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1008f, -946f)) + _wgslsmith_f_op_f32(sign(1000f))), var_2.d.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.d)), -242f);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = func_4(Struct_2(select(func_2(arg_0.c.c.xww, Struct_1(arg_3, arg_2, arg_0.b, arg_0.b.wzx, 944f)), !func_2(vec3<f32>(-892f, 417f, arg_2), arg_0.c), vec2<bool>(true, true)), arg_0.e.x, Struct_1(firstLeadingBit(select(vec2<i32>(arg_0.d.a.x, 0i), vec2<i32>(2147483647i, -1i), vec2<bool>(arg_1, false))), 889f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(max(arg_2, arg_2)), -318f, _wgslsmith_f_op_f32(ceil(1062f))), vec3<f32>(_wgslsmith_f_op_f32(arg_2 * arg_0.c.e), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(2865f, arg_2)), _wgslsmith_f_op_f32(select(arg_0.c.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1233f), false))), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x << (36694u % 32u), ~u_input.b.x), ~4294967295u, u_input.c.x), select(!vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, false, any(vec3<bool>(false, false, true))), arg_1)), arg_0.c);
    let var_1 = arg_0.c;
    var_0 = var_1;
    var_0 = func_4(Struct_2(vec2<bool>(!(u_input.c.x >= 4294967295u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.b, arg_0.d.e)), func_4(Struct_2(vec2<bool>(true, true), 38616i, var_1, u_input.c.zxz, vec3<bool>(arg_1, true, arg_1)), Struct_1(arg_3, 1275f, arg_0.c.c, var_1.c.zzx, var_1.c.x))).x), ~535i, var_1, firstLeadingBit(u_input.c.yyw), vec3<bool>(arg_1, select(arg_1, false, arg_1) || true, arg_1)), arg_0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(589f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 * -2059f))), any(!vec3<bool>(arg_1, true, false))))) + _wgslsmith_f_op_vec2_f32(-func_4(Struct_2(vec2<bool>(arg_1, true), 8060i, Struct_1(arg_3, 115f, arg_0.b, var_0.d, arg_2), ~u_input.c.yxw, !vec3<bool>(false, arg_1, true)), arg_0.c).c.yx));
    return var_1.d;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    var var_0 = abs(arg_2.a.xx);
    let var_1 = -max(~select(u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), arg_2.d.a), any(vec4<bool>(false, false, true, false))), -_wgslsmith_mult_i32(2690i, 1i));
    let var_2 = -41484i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(arg_2, !func_2(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(arg_0.x, 1000f, arg_0.x)), func_4(Struct_2(vec2<bool>(true, false), u_input.a.x, Struct_1(vec2<i32>(var_1, u_input.a.x), 1512f, vec4<f32>(arg_2.d.b, -356f, arg_2.c.d.x, 583f), arg_2.c.c.zzx, -2990f), u_input.c.xww, vec3<bool>(false, true, false)), Struct_1(vec2<i32>(-2147483647i, 13256i), arg_0.x, arg_2.c.c, arg_0, 173f))).x, arg_0.x, select(-_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(arg_2.c.a.x, 1i)), reverseBits(_wgslsmith_sub_vec2_i32(arg_2.d.a, vec2<i32>(-1i, 2147483647i))), vec2<bool>(false, false)))));
    return !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) < 1000f));
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.c.xy, min(vec2<u32>(~(~u_input.c.x), 1u), ~select(vec2<u32>(50627u, 66774u) & u_input.b, vec2<u32>(u_input.c.x, 39165u), false)));
    let var_1 = ~u_input.c.x;
    let var_2 = 17030u;
    let var_3 = Struct_3(~(-(~vec3<i32>(18970i, 0i, 1i) | firstLeadingBit(vec3<i32>(u_input.a.x, arg_3.c.a.x, arg_2.c.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c.c) + arg_2.d), _wgslsmith_f_op_vec4_f32(arg_2.c.c * arg_2.d), vec4<bool>(true | arg_1, true, func_2(vec3<f32>(arg_3.c.b, arg_3.c.c.x, arg_2.b.x), arg_3.c).x, arg_2.a))))), func_4(Struct_2(arg_3.e.zx, _wgslsmith_add_i32(24391i, arg_3.c.a.x >> (4294967295u % 32u)), func_4(arg_3, arg_2.c), arg_3.d, select(!arg_3.e, arg_3.e, !vec3<bool>(arg_2.a, true, arg_3.a.x))), arg_2.c), func_4(Struct_2(arg_3.a, -44040i, Struct_1(vec2<i32>(-22419i, u_input.a.x) | vec2<i32>(arg_3.b, 1i), _wgslsmith_f_op_f32(f32(-1f) * -368f), vec4<f32>(arg_2.d.x, arg_2.d.x, -1161f, 433f), _wgslsmith_f_op_vec3_f32(-arg_2.d.zyw), 207f), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 13308u, 18786u), u_input.c.zxz), 0u, var_2 ^ 254u), arg_3.e), Struct_1(arg_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c.b))), arg_2.c.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(arg_2.c.d)))), _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(arg_2.c.e + arg_2.d.x)))), vec2<i32>(-1i) * -vec2<i32>(~arg_3.c.a.x, reverseBits(u_input.a.x)));
    var_0 = ~vec2<u32>(_wgslsmith_mod_u32(4294967295u | var_1, 3173u) | ~19158u, firstTrailingBit(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.x, 4294967295u, arg_0, u_input.c.x))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-648f, -1287f)), 499f)) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-770f, -1000f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 531f, -296f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(-1781f, var_0.x, var_0.x, var_0.x))))));
    var var_2 = false;
    let var_3 = 2147483647i;
    let var_4 = func_6(u_input.b.x, true, Struct_4(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec3<i32>(u_input.a.x, var_3, u_input.a.x), vec4<f32>(var_0.x, var_0.x, -2785f, 1000f), Struct_1(u_input.a, -292f, vec4<f32>(958f, var_1.x, var_1.x, -765f), vec3<f32>(144f, var_1.x, var_0.x), var_1.x), Struct_1(u_input.a, 1494f, vec4<f32>(1000f, var_1.x, 883f, -998f), var_1.wxw, -680f), vec2<i32>(101i, 12798i)), true, -471f, u_input.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1133f, var_1.x), vec3<f32>(-1310f, var_1.x, var_0.x), false))), vec2<u32>(u_input.b.x, 2081u), Struct_3(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, 1220f), vec4<f32>(1340f, var_0.x, 2347f, -817f))), func_4(Struct_2(vec2<bool>(false, false), var_3, Struct_1(u_input.a, -332f, vec4<f32>(var_1.x, -1122f, var_0.x, 2980f), vec3<f32>(248f, var_1.x, var_1.x), 374f), vec3<u32>(47829u, u_input.c.x, 21524u), vec3<bool>(false, false, true)), Struct_1(vec2<i32>(u_input.a.x, 34466i), -761f, vec4<f32>(-822f, 1081f, -1000f, -112f), var_1.xyz, var_1.x)), func_4(Struct_2(vec2<bool>(true, false), 36719i, Struct_1(u_input.a, 875f, vec4<f32>(915f, var_1.x, var_1.x, var_1.x), var_1.wwx, 183f), u_input.c.zzz, vec3<bool>(false, false, false)), Struct_1(u_input.a, var_0.x, vec4<f32>(var_1.x, var_0.x, 181f, 460f), var_1.xzy, -936f)), u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-695f, 1188f, 703f), vec3<f32>(-538f, -458f, var_1.x), false))) * _wgslsmith_f_op_vec3_f32(var_1.zyx + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(393f, var_0.x, -706f), var_1.zwz)))), Struct_1(u_input.a, var_1.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, -220f, var_1.x) - vec4<f32>(-1725f, var_1.x, var_0.x, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-320f * var_1.x), _wgslsmith_f_op_f32(var_1.x + -593f), _wgslsmith_f_op_f32(var_0.x + -1319f)), 1003f), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(func_3(firstLeadingBit(4294967295u), -vec4<i32>(var_3, u_input.a.x, u_input.a.x, u_input.a.x), true)), -1022f, -871f)), Struct_2(vec2<bool>(any(vec2<bool>(false, false)), false), 1i, Struct_1(vec2<i32>(-1i) * -u_input.a, var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(719f, var_0.x, 839f, 461f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -364f, 362f, var_1.x)))), _wgslsmith_f_op_vec3_f32(var_1.wyz + _wgslsmith_f_op_vec3_f32(var_1.wyx - vec3<f32>(var_0.x, var_0.x, var_1.x))), var_1.x), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.c.x)), ~vec2<u32>(60509u, u_input.c.x)), ~4294967295u, u_input.b.x), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

