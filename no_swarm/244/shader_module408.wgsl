struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = -vec2<i32>(select(var_0.d, ~_wgslsmith_sub_i32(61641i, -1i), any(select(vec2<bool>(true, var_0.a.x), var_0.a.xy, true))), var_0.d);
    var_1 = ~vec2<i32>(countOneBits(u_input.b.x), countOneBits(arg_1.d));
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(arg_1.b.x | arg_1.b.x, 2147483647i, reverseBits(2147483647i), _wgslsmith_mod_i32(arg_3.x, -14246i))), ~(~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.d), arg_1.b.x, _wgslsmith_div_i32(-41660i, u_input.c.x), arg_3.x << (u_input.a.x % 32u))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(831f, -753f, 982f, 332f) + vec4<f32>(374f, 915f, 429f, -794f)) - vec4<f32>(1202f, _wgslsmith_f_op_f32(-1412f + 1998f), 403f, -235f)) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-852f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)), _wgslsmith_f_op_f32(f32(-1f) * -1273f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, 627f, 1000f, 734f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -1000f, var_1.x, -586f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1338f, 467f, var_1.x, 1007f), vec4<f32>(454f, var_1.x, -554f, -729f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1877f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 772f, -253f, -1460f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1027f)))), _wgslsmith_f_op_f32(trunc(-1220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1942f)))));
    let var_2 = arg_1;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) * _wgslsmith_f_op_f32(var_1.x * -597f)), _wgslsmith_f_op_f32(floor(-311f)), -507f) - vec4<f32>(var_1.x, -1354f, _wgslsmith_f_op_f32(-103f + var_1.x), var_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + -198f))) - -529f), 280f));
    return vec4<bool>(false, _wgslsmith_div_f32(var_1.x, var_1.x) < _wgslsmith_f_op_f32(abs(var_1.x)), var_2.c, arg_1.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = select(select(!(!select(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.c, true, arg_0.c, var_0.c), arg_0.a.x)), vec4<bool>(var_0.c, true, false, all(vec3<bool>(arg_0.a.x, var_0.a.x, var_0.a.x))), select(!(!vec4<bool>(arg_0.c, arg_0.c, true, arg_0.a.x)), vec4<bool>(true, var_0.a.x, false, arg_0.a.x), vec4<bool>(any(vec2<bool>(true, arg_0.c)), !var_0.c, arg_0.c | true, true))), func_4(Struct_1(vec3<bool>(var_0.a.x, all(var_0.a), true), vec4<i32>(_wgslsmith_div_i32(2147483647i, arg_0.d), -31355i, -999i & var_0.d, func_3(false, Struct_1(vec3<bool>(true, arg_0.a.x, arg_0.a.x), vec4<i32>(-18368i, u_input.b.x, var_0.b.x, 1453i), false, arg_0.d))), select(arg_0.a.x, arg_1 <= arg_1, true), _wgslsmith_mod_i32(-26604i, arg_0.b.x)), Struct_1(vec3<bool>(true, false, true), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d, u_input.c.x, 2147483647i, 1i)), u_input.b), var_0.a.x, -(i32(-1i) * -2362i)), Struct_1(select(var_0.a, vec3<bool>(true, arg_0.c, false), arg_0.a), countOneBits(arg_0.b), arg_0.c, countOneBits(~42242i)), -arg_0.b.wz), any(var_0.a));
    let var_3 = var_0;
    let var_4 = var_0;
    return 0i;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(func_2(Struct_1(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), false), select(u_input.b, -u_input.c, select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true)), true, 1i), firstTrailingBit(u_input.a.x)), -2147483647i);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, select(~select(-2147483647i, -24592i, true), firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, -1i, var_0.x)), true), u_input.d, -2147483647i), u_input.b);
    return Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, select(true, all(vec3<bool>(true, false, false)), true)), false | all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true))), u_input.c, true, -_wgslsmith_clamp_i32(abs(1i), ~var_1, -u_input.d) & 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1217f, -1445f))))), vec2<f32>(_wgslsmith_f_op_f32(max(-290f, 1197f)), _wgslsmith_f_op_f32(-830f + 486f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1113f, -520f) - vec2<f32>(-1907f, -125f)) + vec2<f32>(-198f, -118f))), var_0.a.x)) + vec2<f32>(1f, _wgslsmith_f_op_f32(select(-922f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1596f + 149f), -170f), false))));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1044f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -775f)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f - -1499f)), var_1.x), 808f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, var_1.x, 1151f, -582f) + vec4<f32>(var_1.x, -361f, -1528f, -257f)) * vec4<f32>(var_1.x, -905f, var_1.x, 1485f)) - vec4<f32>(-1378f, _wgslsmith_f_op_f32(-553f * var_1.x), var_1.x, 1384f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1735f)) * 400f), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -226f), -151f))));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 57321u, 10298u & u_input.a.x, 9034u), countOneBits(~((vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -683f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(abs(var_2.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -507f, var_1.x, -1657f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_2.x, 331f))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1068f + var_2.x), _wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, _wgslsmith_f_op_f32(max(var_2.x, var_2.x))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(var_1.x * 314f), _wgslsmith_f_op_f32(exp2(var_1.x))))), select(!vec4<bool>(true, var_0.a.x, var_0.c, var_0.c), vec4<bool>(true, true, true, !var_0.a.x), !var_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), var_2.x, -1019f, var_1.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, 408f, 312f, var_2.x))))), vec4<bool>(false, !var_0.c, !var_0.c, true))) + vec4<f32>(-564f, -173f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -576f))), 1464f)));
    var var_4 = var_0;
    var var_5 = func_1();
    var var_6 = func_1();
    var var_7 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(var_4.b.x, var_6.d), 5356i)), var_1.x, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x), u_input.a), select(var_3.yz, abs(u_input.a), var_5.a.xy), firstTrailingBit(u_input.a << (var_3.yz % vec2<u32>(32u)))), var_3.xz ^ ~u_input.a), ~select(var_6.b.zyw, vec3<i32>(67854i, 23427i, 1i), var_0.a), min((var_6.b.xxz & ~vec3<i32>(var_5.d, var_4.b.x, -9154i)) & _wgslsmith_mod_vec3_i32(u_input.b.zww | u_input.b.zyy, vec3<i32>(var_4.d, var_6.b.x, var_4.d) ^ vec3<i32>(var_4.d, 6017i, u_input.c.x)), vec3<i32>(24377i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.b.x, var_5.b.x), -var_0.d), 1i)));
}

