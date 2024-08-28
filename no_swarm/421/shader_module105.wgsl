struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_3;
    var var_1 = ~min(~max(vec2<i32>(2147483647i, 2147483647i), u_input.d.xy), u_input.d.wy) >> (~_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(arg_2, arg_2)), _wgslsmith_mult_vec2_u32(~arg_2, abs(vec2<u32>(74532u, arg_1.a)))) % vec2<u32>(32u));
    var var_2 = arg_0.d;
    var var_3 = var_1.x;
    var_1 = _wgslsmith_mod_vec2_i32(u_input.d.yy, _wgslsmith_mult_vec2_i32(u_input.d.wz, u_input.d.yw));
    return !arg_1.d.b.yz;
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_3(abs(1u), !any(func_3(Struct_2(false, vec4<f32>(-649f, -479f, -363f, 967f), false, vec4<f32>(-653f, 900f, -1089f, 976f)), Struct_3(arg_0.x, false, -811f, Struct_1(true, vec3<bool>(false, true, true), -285f, true, vec4<bool>(true, true, true, true))), arg_0, Struct_1(false, vec3<bool>(false, true, true), 773f, true, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-619f, 1455f, false)), _wgslsmith_div_f32(256f, 1048f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(441f)), _wgslsmith_f_op_f32(trunc(456f)))))), Struct_1(true, !vec3<bool>(true, true, all(vec2<bool>(false, true))), -1037f, -max(-63828i, -111i) < abs(~u_input.b), select(vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), func_3(Struct_2(false, vec4<f32>(252f, -1211f, 722f, -679f), true, vec4<f32>(101f, -566f, 277f, -706f)), Struct_3(u_input.a.x, true, -129f, Struct_1(true, vec3<bool>(false, true, false), 1000f, true, vec4<bool>(true, false, false, false))), vec2<u32>(arg_0.x, arg_0.x) >> (u_input.a.zx % vec2<u32>(32u)), Struct_1(true, vec3<bool>(false, false, false), -1306f, true, vec4<bool>(true, true, true, false))).x)));
    let var_1 = Struct_1(var_0.d.b.x, vec3<bool>(false, select(false, all(vec2<bool>(false, true)), true), true), _wgslsmith_f_op_f32(min(var_0.c, var_0.d.c)), var_0.b | (firstTrailingBit(firstTrailingBit(var_0.a)) >= var_0.a), !var_0.d.e);
    var_0 = Struct_3(24564u, var_0.d.b.x, _wgslsmith_f_op_f32(ceil(-1008f)), Struct_1(all(select(select(var_1.e.xyz, var_0.d.b, false), var_1.e.yzz, select(var_1.b, var_0.d.e.yzx, false))), var_1.e.yzz, var_0.d.c, var_0.d.d, !(!vec4<bool>(var_0.b, false, true, false))));
    var var_2 = -select(firstTrailingBit(_wgslsmith_div_i32(-68586i, u_input.d.x)), -65899i, any(vec3<bool>(var_0.b, var_0.d.d != var_1.b.x, all(var_1.e))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(-1464f)), var_0.c, _wgslsmith_f_op_f32(var_1.c * var_1.c), var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(150f, var_1.c, 345f, -1159f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_0.d.c, var_0.d.c, var_0.d.c), vec4<f32>(892f, 1426f, -1894f, 1118f), var_1.e.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1583f, var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(278f - 1674f) - var_1.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(682f)), _wgslsmith_div_f32(var_0.c, -1000f))), 665f))));
    return _wgslsmith_f_op_vec4_f32(-var_3);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, -1427f, -1000f, 970f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, 1329f, 387f, 696f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.a.wy)))), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), false & func_3(Struct_2(true, vec4<f32>(-1000f, 1744f, 172f, 689f), true, vec4<f32>(-374f, 270f, -385f, 962f)), Struct_3(58892u, false, -1148f, Struct_1(false, vec3<bool>(true, true, false), 1098f, true, vec4<bool>(true, true, false, true))), u_input.a.yw, Struct_1(false, vec3<bool>(true, false, false), 1483f, false, vec4<bool>(true, true, false, false))).x, true, func_3(Struct_2(true, vec4<f32>(1196f, -299f, 315f, -1000f), false, vec4<f32>(-489f, 1996f, 266f, -521f)), Struct_3(2062u, true, -549f, Struct_1(false, vec3<bool>(false, true, false), -2267f, true, vec4<bool>(true, false, true, true))), arg_0.yx, Struct_1(false, vec3<bool>(false, false, false), 629f, true, vec4<bool>(true, false, true, false))).x))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x - 326f);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1082f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + 812f) * _wgslsmith_f_op_f32(min(var_0.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -404f)) * _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(func_2(u_input.a.zy)).x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, 258f, var_0.x, var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_f32(floor(-1684f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(728f + 989f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, 869f, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, -331f, var_0.x, var_0.x)), vec4<bool>(false, true, false, true))))));
    return -720f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(620f)), _wgslsmith_f_op_f32(-734f * -507f), _wgslsmith_f_op_f32(func_1(u_input.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1310f, 1278f, -815f), vec3<f32>(1015f, -1378f, 1518f)))))) + vec3<f32>(1f, 1f, 1f));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(17307u, ~(~0u)))).x));
    let var_2 = -vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, 0i)), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(32803i, u_input.d.x, u_input.b, 0i), vec4<i32>(70322i, u_input.d.x, 4341i, u_input.d.x))), ~reverseBits(u_input.c), 14399i), reverseBits(firstLeadingBit(~u_input.b)), u_input.c, ~(i32(-1i) * -2147483647i));
    let var_3 = Struct_1(_wgslsmith_mult_i32(var_2.x, -11999i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(~var_2.x, 20034i, _wgslsmith_clamp_i32(39163i, var_2.x, 24538i), abs(-43535i)), ~var_2), vec3<bool>(false, (all(vec2<bool>(true, true)) | false) | true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1728f))) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, select(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)), vec4<bool>(true, true, true, true), true), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(~(vec2<u32>(0u, 0u) | u_input.a.yy))).xz));
}

