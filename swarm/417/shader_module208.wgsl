struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1109f, -1152f));
    var var_1 = 2147483647i;
    var var_2 = ~_wgslsmith_mult_vec3_i32(arg_0.d.a.xzw, u_input.a.zww);
    let var_3 = Struct_2(u_input.e.x, -3553i, max(82425u, 1u), arg_0.d);
    let var_4 = Struct_4(all(vec3<bool>(!arg_0.d.b | true, var_3.d.b, !var_3.d.b)), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(-223f, -1694f), var_3.d.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))), vec4<i32>(abs(var_3.b >> (arg_0.a % 32u)), reverseBits(1i), _wgslsmith_div_i32(8808i, -u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(var_2.xx, -arg_0.d.a.zz))));
    return _wgslsmith_f_op_f32(var_4.b + -1300f);
}

fn func_2() -> vec3<i32> {
    let var_0 = ~firstLeadingBit(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.e.ww, u_input.e.ww)));
    let var_1 = Struct_4(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1735f - 1052f) + -1514f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-417f)) + _wgslsmith_f_op_f32(498f - -1380f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) * 1235f)), _wgslsmith_f_op_f32(round(-278f))), u_input.a);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(1u, 0i, u_input.e.x, Struct_1(u_input.a, var_1.a)))), var_1.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-315f, -2063f)), var_1.b)));
    let var_3 = ~_wgslsmith_div_vec2_u32(u_input.e.ww, _wgslsmith_clamp_vec2_u32(~u_input.e.zw, vec2<u32>(27828u, 48464u), reverseBits(u_input.e.wx))) & abs(var_0);
    var var_4 = Struct_3(Struct_2(~(select(var_3.x, 44096u, false) >> (reverseBits(var_0.x) % 32u)), _wgslsmith_dot_vec4_i32(select(var_1.d, u_input.a, true), ~u_input.b) ^ u_input.d, var_0.x, Struct_1(min(vec4<i32>(u_input.b.x, u_input.b.x, var_1.d.x, -2271i) | vec4<i32>(var_1.d.x, u_input.c, u_input.a.x, var_1.d.x), vec4<i32>(0i, 1647i, -3467i, -2147483647i)), ~u_input.e.x < var_3.x)));
    return vec3<i32>(var_1.d.x, var_4.a.d.a.x, -4652i);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(60971u, ~(-1451i | _wgslsmith_sub_i32(arg_0.x, arg_0.x)), ~_wgslsmith_clamp_u32(abs(34465u), select(1u, u_input.e.x, arg_1), u_input.e.x >> (u_input.e.x % 32u)), Struct_1(vec4<i32>(~arg_0.x, _wgslsmith_sub_i32(14384i, 39452i), u_input.c, abs(arg_0.x)), true)));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_3(var_0.a);
    var_0 = var_1;
    return firstTrailingBit(~(~_wgslsmith_mod_vec2_i32(var_0.a.d.a.xy, vec2<i32>(2147483647i, -1i))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(select(u_input.b.x, 1i, arg_1), -10392i)) ^ func_4(vec3<i32>(0i, u_input.c, 1i) ^ func_2(), false), u_input.b.xz);
    let var_1 = vec4<bool>(true, !select(arg_1, true, any(!vec4<bool>(arg_1, false, arg_1, arg_1))), arg_1, arg_1);
    var var_2 = all(vec4<bool>(all(!(!var_1.zww)), any(var_1), var_1.x || any(!var_1.yy), false));
    let var_3 = ~(~_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(u_input.e.x, 0u, 1u, 4294967295u)), firstLeadingBit(~vec4<u32>(1722u, 5308u, u_input.e.x, 16294u))));
    return Struct_2(13634u | ~(~max(u_input.e.x, 1u)), ~(abs(_wgslsmith_mod_i32(-1i, -7094i)) >> (abs(_wgslsmith_mult_u32(30259u, u_input.e.x)) % 32u)), ~4294967295u, Struct_1(~select(abs(u_input.b), vec4<i32>(-43379i, arg_0, u_input.b.x, arg_0) | vec4<i32>(-2147483647i, arg_0, arg_0, 2147483647i), false), var_1.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1696f, _wgslsmith_f_op_f32(-415f - -1009f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(363f + -411f), _wgslsmith_div_f32(379f, 207f))))), -939f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-685f, -2568f)), _wgslsmith_f_op_f32(select(1375f, -484f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1670f + 882f)), _wgslsmith_f_op_f32(select(-245f, _wgslsmith_f_op_f32(abs(-2736f)), all(vec4<bool>(arg_0.a.d.b, arg_0.a.d.b, arg_0.a.d.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1541f, 193f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(513f, 618f, 1351f, 1570f) + vec4<f32>(-1214f, -609f, 667f, -707f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-484f, -1347f, 1000f, -1068f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1162f, 1426f, 1209f, -238f), vec4<f32>(772f, -1690f, -1253f, 386f), vec4<bool>(arg_1.d.b, arg_1.d.b, false, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1232f, 1527f, -261f, 1269f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, 315f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 885f, -668f, -497f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2462f, var_0.x, var_0.x, -1113f) - vec4<f32>(-1416f, var_0.x, -1817f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1516f, var_0.x, -1637f, -217f)) - vec4<f32>(-799f, 1095f, -1000f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1113f, var_0.x, var_0.x, var_0.x))))), arg_0.a.d.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1171f * var_0.x), var_0.x, _wgslsmith_div_f32(1832f, 1991f), _wgslsmith_f_op_f32(-226f * var_0.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1023f) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 171f) * -916f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1649f, -1073f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -108f, var_0.x)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x))) + var_1);
    var var_2 = var_1.x != _wgslsmith_f_op_f32(-var_0.x);
    return Struct_2(22019u << (1u % 32u), 74902i, arg_0.a.c & firstTrailingBit(select(1u, ~23967u, false)), func_1(-1i, -315f == var_1.x).d);
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_3;
    var var_1 = select(select(!select(!vec3<bool>(var_0.a, arg_2.a.d.b, arg_0.d.b), vec3<bool>(arg_2.a.d.b, arg_0.d.b, var_0.a), select(vec3<bool>(arg_3.a, var_0.a, var_0.a), vec3<bool>(var_0.a, arg_0.d.b, arg_2.a.d.b), vec3<bool>(var_0.a, true, arg_3.a))), vec3<bool>(false, any(vec4<bool>(true, false, false, arg_0.d.b)) && var_0.a, var_0.a), vec3<bool>(var_0.a, true, -52395i != arg_0.d.a.x)), select(!select(!vec3<bool>(true, var_0.a, false), select(vec3<bool>(arg_0.d.b, var_0.a, true), vec3<bool>(var_0.a, arg_0.d.b, arg_0.d.b), vec3<bool>(arg_0.d.b, arg_3.a, false)), !vec3<bool>(arg_2.a.d.b, arg_3.a, arg_0.d.b)), select(vec3<bool>(true, arg_0.d.b, true), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2.a.d.b, true, var_0.a), vec3<bool>(var_0.a, true, true)), vec3<bool>(true, false, false), false), true), true), arg_3.a);
    var var_2 = 0i;
    var_2 = -5357i;
    let var_3 = func_5(arg_2, Struct_2(u_input.e.x, -9962i, arg_2.a.c, func_5(arg_2, arg_0, ~arg_0.a).d), _wgslsmith_sub_u32(~42976u, ~arg_0.a));
    return var_3;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    var var_0 = ~(-arg_0.b);
    var var_1 = Struct_2(1u, _wgslsmith_add_i32(arg_0.d.a.x, i32(-1i) * -(2147483647i ^ arg_1.d.x)), countOneBits(u_input.e.x) ^ 1u, arg_0.d);
    let var_2 = abs(abs(firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(-1i, 1i), ~arg_0.d.a.x, -52814i))));
    var_1 = Struct_2(~var_1.c, abs(min(arg_0.d.a.x, reverseBits(-28070i))), _wgslsmith_add_u32(arg_0.a, abs(abs(_wgslsmith_clamp_u32(37371u, 4294967295u, u_input.e.x)))), arg_0.d);
    let var_3 = arg_1.d.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(Struct_3(func_1(u_input.a.x, true)), Struct_2(_wgslsmith_mult_u32(0u, u_input.e.x), min(-1i, 1i), _wgslsmith_dot_vec2_u32(u_input.e.yw, vec2<u32>(u_input.e.x, 116810u)), func_1(u_input.c, true).d), ~u_input.e.x), vec4<i32>(-2147483647i, u_input.c, 1i, countOneBits(_wgslsmith_mod_i32(17048i, 1i))), Struct_3(func_1(u_input.d & -1i, all(vec4<bool>(false, false, false, false)))), Struct_4(_wgslsmith_f_op_f32(trunc(1010f)) < -538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f - -2331f) + -617f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -935f))), ~(vec4<i32>(-11154i, u_input.a.x, u_input.d, u_input.b.x) & vec4<i32>(0i, -10692i, u_input.a.x, 0i)))), Struct_4(false, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1392f, 1101f) + _wgslsmith_div_f32(212f, 1123f)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-761f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1217f, 897f) + vec2<f32>(-314f, 1787f)))), firstTrailingBit(func_6(func_5(Struct_3(Struct_2(u_input.e.x, 1i, u_input.e.x, Struct_1(u_input.a, false))), Struct_2(u_input.e.x, u_input.b.x, u_input.e.x, Struct_1(vec4<i32>(2147483647i, u_input.a.x, -1i, 2147483647i), false)), 50783u), _wgslsmith_div_vec4_i32(vec4<i32>(33219i, 37741i, 2147483647i, u_input.c), u_input.b), Struct_3(Struct_2(u_input.e.x, u_input.a.x, 1u, Struct_1(vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, 1i), true))), Struct_4(false, -1581f, vec2<f32>(-796f, -125f), u_input.a)).d.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -977f, _wgslsmith_f_op_f32(600f * -445f), var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, var_0.c.x, var_0.b)))), true)));
    var var_2 = var_0.d.zx;
    let var_3 = vec2<f32>(1000f, _wgslsmith_f_op_f32(var_1.x + 1602f));
    var_2 = vec2<i32>(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~46155i, -56564i | var_0.d.x), 1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, u_input.d), func_2().x)), vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_mult_i32(47184i, 31595i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -2147483647i, 27688i), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, -1i, u_input.b.x), u_input.b.zwx))));
    var_2 = -(var_0.d.zy & var_0.d.xz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.e), firstTrailingBit(u_input.e)), vec4<u32>(u_input.e.x, u_input.e.x, ~1u, ~_wgslsmith_add_u32(u_input.e.x, ~u_input.e.x)), reverseBits(select(vec4<u32>(u_input.e.x, reverseBits(u_input.e.x), ~u_input.e.x, u_input.e.x), select(u_input.e, ~vec4<u32>(u_input.e.x, 26334u, u_input.e.x, u_input.e.x), vec4<bool>(true, var_0.a, var_0.a, true)), any(!vec3<bool>(var_0.a, var_0.a, var_0.a)))), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 28563i, -1i, func_1(~var_0.d.x, any(vec2<bool>(var_0.a, var_0.a))).b), vec4<i32>(u_input.c, 2147483647i, func_5(Struct_3(Struct_2(u_input.e.x, 28476i, u_input.e.x, Struct_1(u_input.a, var_0.a))), func_1(-15819i, var_0.a), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)).d.a.x, 20612i)));
}

