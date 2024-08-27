struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1199f) * vec2<f32>(-1111f, 728f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, global0.x))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1087f, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1124f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), global0.x) + vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x - -1575f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(530f, 1315f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2949f, 468f))))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1252f, global0.x), vec2<f32>(2586f, 187f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1015f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) - vec2<f32>(884f, global0.x))) * vec2<f32>(-1465f, _wgslsmith_f_op_f32(step(-100f, global0.x)))), vec2<bool>(_wgslsmith_f_op_f32(floor(global0.x)) < 1000f, global0.x <= _wgslsmith_div_f32(559f, -876f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1268f, global0.x)))))), vec2<f32>(-283f, -799f)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - 1577f), global0.x, _wgslsmith_f_op_f32(-924f * 498f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global0.x + 1078f), _wgslsmith_f_op_f32(sign(-1346f)), -163f), vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -869f)))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x - -1309f), 1360f, -431f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -189f) + vec3<f32>(-106f, 151f, -1180f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<u32>(u_input.e, 15937u, u_input.d), vec2<u32>(u_input.e, u_input.e))))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, 1u), vec3<u32>(u_input.e, u_input.e, u_input.e)), abs(vec2<u32>(91890u, 3311u))))))));
    var var_1 = (countOneBits(u_input.c) & firstTrailingBit(-(~u_input.a.x))) ^ ~_wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.c, u_input.b.x), -1i);
    var var_2 = Struct_1(~min(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(3160u, 242u, 54743u)), vec3<u32>(0u, 1u, ~u_input.d)), min(vec2<u32>(~select(0u, u_input.d, false), 17398u), vec2<u32>(~max(u_input.d, 84237u), ~_wgslsmith_mult_u32(1076u, 38882u))));
    var_2 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.x, 2908u, ~(~1u)), firstLeadingBit(firstLeadingBit(var_2.a))), select(max(~(~vec2<u32>(2617u, 4294967295u)), ~(~vec2<u32>(u_input.d, var_2.b.x))), vec2<u32>(~(~var_2.b.x), abs(var_2.b.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    var_2 = Struct_1(abs(~_wgslsmith_mult_vec3_u32(var_2.a, ~vec3<u32>(17977u, 0u, u_input.d))), vec2<u32>(~reverseBits(firstTrailingBit(8289u)), var_2.b.x & (~4294967295u ^ _wgslsmith_div_u32(u_input.d, u_input.d))));
    return firstTrailingBit(var_2.b.x);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(arg_0.a, arg_0.a.yz);
    var_0 = Struct_1(~select(reverseBits(~arg_0.a), vec3<u32>(arg_0.a.x, 4294967295u, func_2()), !(global0.x < -1763f)), vec2<u32>(53707u, 63974u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1540f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-753f, -411f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1465f, -1394f))))));
    let var_1 = vec2<bool>(false, all(vec3<bool>(true, any(vec2<bool>(true, true)), true)));
    global0 = vec2<f32>(665f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -636f)));
    return vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 137f)))), _wgslsmith_f_op_f32(-global0.x), !any(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, false))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(~min(countOneBits(vec3<u32>(28628u, arg_3.x, arg_3.x) | vec3<u32>(1u, 52772u, u_input.d)), ~vec3<u32>(arg_3.x, 1u, 4294967295u)), select(arg_3, ~(~vec2<u32>(u_input.e, u_input.e)), false));
    let var_1 = Struct_1(var_0.a, vec2<u32>(~_wgslsmith_add_u32(109043u, abs(arg_3.x)), _wgslsmith_mult_u32(1u, 1u)));
    var var_2 = Struct_1(~vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.e, ~93409u), _wgslsmith_mod_u32(~u_input.e, ~arg_3.x)), arg_3);
    let var_3 = false;
    let var_4 = !arg_2;
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, global0.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2745f, global0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1778f, -734f) + vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1110f, 1068f) - vec2<f32>(global0.x, -476f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))));
    let var_0 = arg_1.a.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1143f, -243f))), 1f) * _wgslsmith_f_op_vec2_f32(func_1(func_4(firstLeadingBit(vec2<i32>(u_input.a.x, 24532i)), vec2<f32>(801f, global0.x), true, vec2<u32>(arg_1.b.x, 4294967295u))))));
    var var_1 = Struct_1(vec3<u32>(55635u, ~(~(~0u)), ~110434u), arg_1.a.zx);
    let var_2 = arg_3;
    return func_4(firstLeadingBit(firstTrailingBit(arg_2.xz)) & _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(arg_2.x, -16695i)), arg_2.xw | arg_2.wz, _wgslsmith_clamp_vec2_i32(arg_2.ww, u_input.b.zw, arg_2.xw)), _wgslsmith_mult_vec2_i32(arg_2.xy, firstTrailingBit(vec2<i32>(-2147483647i, arg_2.x)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1128f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(global0.x + global0.x))))), arg_3, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(vec4<bool>(true, true, true, true)), func_4(u_input.b.yw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<u32>(u_input.e, 34107u, 28513u), vec2<u32>(u_input.d, u_input.d))))), 41197u > min(_wgslsmith_mod_u32(u_input.e, 62417u), u_input.d), ~(~(vec2<u32>(u_input.e, 1u) | vec2<u32>(u_input.d, 21418u)))), u_input.b | ~select(vec4<i32>(-41826i, -33451i, 1i, u_input.b.x), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(17667i, 1i, 30853i, 66177i)), true), any(vec3<bool>(true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)))));
    var var_1 = vec4<u32>(4294967295u, 1u, u_input.e | max(firstLeadingBit(var_0.a.x), select(u_input.e & u_input.d, u_input.d, u_input.c <= -43309i)), 4294967295u);
    var var_2 = (true && all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))) || !all(vec3<bool>(true, true, any(vec3<bool>(false, false, true))));
    let var_3 = var_1.x;
    var var_4 = countOneBits(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(-1i, max(max(12160i, u_input.b.x), min(1i, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.x, -2760f)), _wgslsmith_f_op_f32(f32(-1f) * -254f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - global0.x)))), -u_input.a);
}

