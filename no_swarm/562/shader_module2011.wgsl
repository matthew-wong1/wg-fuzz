struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = u_input.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -815f), 122f)), true, vec2<u32>(4294967295u, u_input.b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = false;
    var var_2 = select(true, true, arg_0.b != (any(!vec4<bool>(true, true, arg_1.a.b, true)) | true));
    var_2 = all(vec3<bool>(true, !select(false, true, arg_0.b) & (any(vec4<bool>(false, true, true, false)) && true), 0u > arg_0.c.x));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f + 1755f)))), false | !arg_0.b))));
    return -1092f;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = select(~u_input.a.wz, vec2<i32>(-71516i, u_input.a.x), !(!(!vec2<bool>(arg_0, arg_0))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1506f, -1952f, 1532f, -635f))), select(arg_0, arg_0, false), ~vec2<u32>(u_input.b, 55426u)), func_2(vec3<f32>(-950f, -810f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-141f, 619f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1842f, -1467f) - vec2<f32>(-885f, -664f)) * vec2<f32>(-1481f, 919f)))) * _wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(abs(-810f)))) - _wgslsmith_f_op_f32(func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(454f, -737f, -124f), vec3<f32>(-151f, 1731f, -165f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1704f, -1623f) - vec2<f32>(1273f, -779f)), vec2<f32>(1f, 1f))).a, Struct_2(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1558f, 661f, -256f), vec3<f32>(608f, -1918f, -321f))), func_2(vec3<f32>(125f, -1271f, 274f), vec2<f32>(-259f, -752f)).a.a.xw).a), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1000f, 426f, 855f, -931f), true, vec2<u32>(4294967295u, u_input.b)), Struct_2(Struct_1(vec4<f32>(-615f, 1000f, -1000f, -2655f), false, vec2<u32>(36880u, u_input.b))), vec2<f32>(-799f, -327f))), -187f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(597f, 111f))))));
    var_0 = ~u_input.a.zy >> (vec2<u32>(31341u, u_input.b) % vec2<u32>(32u));
    var var_2 = 0i;
    var var_3 = vec4<i32>(u_input.a.x, abs(0i), var_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(var_0.x, u_input.a.x, 1i, -6952i) | abs(u_input.a)), _wgslsmith_mult_vec4_i32(min(select(vec4<i32>(28475i, u_input.a.x, var_0.x, 2147483647i), u_input.a, arg_0), u_input.a), u_input.a)));
    return func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2046f, var_1, var_1) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, 142f, var_1) - vec3<f32>(var_1, 497f, -613f)), vec3<f32>(-914f, var_1, var_1))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(523f, 1551f) - vec2<f32>(var_1, -717f)))))).a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_u32(max(firstTrailingBit(vec3<u32>(61832u, 1u, u_input.b) & vec3<u32>(arg_1.c.x, u_input.b, 4294967295u)), vec3<u32>(u_input.b, u_input.b, 1u) << (select(vec3<u32>(u_input.b, arg_1.c.x, arg_1.c.x), vec3<u32>(1u, arg_1.c.x, 27329u), arg_1.b) % vec3<u32>(32u))), ~vec3<u32>(1u, 1u, abs(1u))), 41902u);
    var_0 = Struct_3(firstTrailingBit(var_0.a), _wgslsmith_sub_u32(~(~arg_1.c.x), u_input.b ^ u_input.b));
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.c, (arg_1.c | ~vec2<u32>(1u, 4294967295u)) << (select(vec2<u32>(arg_1.c.x, u_input.b), abs(vec2<u32>(1u, u_input.b)), true) % vec2<u32>(32u))), vec2<u32>(~97857u, arg_1.c.x));
    let var_2 = var_0.b;
    var_0 = Struct_3(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(11378u, 4294967295u, 0u)), var_0.a) >> (var_0.a % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(max(_wgslsmith_add_vec2_u32(vec2<u32>(28052u, var_1.x), var_1), var_0.a.yx), _wgslsmith_mult_vec2_u32(select(~vec2<u32>(var_0.b, 4294967295u), min(arg_1.c, var_0.a.yz), vec2<bool>(false, arg_1.b)), abs(abs(vec2<u32>(u_input.b, u_input.b))))));
    return func_2(_wgslsmith_f_op_vec3_f32(abs(arg_1.a.yww)), vec2<f32>(-174f, arg_1.a.x)).a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    var var_0 = func_1(!(!arg_0.b));
    var_0 = arg_0;
    let var_1 = _wgslsmith_sub_u32(firstLeadingBit(~min(select(1u, 25153u, var_0.b), ~4294967295u)), 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_2(vec3<f32>(1682f, -630f, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec2_f32(trunc(arg_0.a.xw)))).a.a.x, _wgslsmith_div_f32(func_4(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), Struct_1(vec4<f32>(arg_1.x, -969f, 1083f, 221f), arg_0.b, vec2<u32>(34030u, u_input.b)), firstTrailingBit(-1i)).a.x, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f * arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), var_0.a.x), var_0.a.x, 1958f, _wgslsmith_div_f32(arg_1.x, -153f)) - arg_1), var_0.b));
    var_0 = Struct_1(vec4<f32>(-199f, arg_1.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * arg_1.x)), false, _wgslsmith_mult_vec2_u32(vec2<u32>(func_4(vec4<i32>(u_input.a.x, -46654i, -1i, u_input.a.x), func_1(var_0.b), reverseBits(28295i)).c.x, 0u), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.c, ~vec2<u32>(u_input.b, u_input.b)), var_0.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false && !((u_input.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.a.ww)) <= (u_input.a.x >> (max(26647u, 1u) % 32u)));
    var_0 = func_5(func_4(vec4<i32>(u_input.a.x, 22995i, 2147483647i, ~u_input.a.x << (_wgslsmith_mod_u32(76302u, 4294967295u) % 32u)), func_1(false), u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2001f, _wgslsmith_f_op_f32(701f + 930f), _wgslsmith_f_op_f32(select(-124f, 956f, true)), _wgslsmith_div_f32(-757f, -964f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1414f, 1054f, 449f, -800f) - vec4<f32>(544f, 1000f, -343f, 178f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(1u, 28135u, 4294967295u, 4294967295u))), vec4<u32>(4093u, 38786u, 0u, 4294967295u) | ~vec4<u32>(0u, 67724u, u_input.b, 10080u)));
}

