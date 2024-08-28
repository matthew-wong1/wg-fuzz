struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(751f)))), 1707f), vec3<u32>(_wgslsmith_mult_u32(0u, 1u), firstTrailingBit(~u_input.b.x | ~u_input.b.x), max(countOneBits(abs(1u)), 61050u)));
    let var_1 = Struct_2(-584f < _wgslsmith_f_op_f32(step(var_0.a.x, 1160f)), vec4<bool>(all(vec2<bool>(all(arg_1.b), !arg_1.b.x)), arg_1.d.b.x, arg_1.d.b.x && (firstTrailingBit(arg_0.x) < ~u_input.c.x), any(select(!arg_1.b, arg_1.b, arg_1.b))), arg_1.c, Struct_1(4294967295u, arg_1.d.b, 0i));
    var var_2 = var_1;
    var_2 = Struct_2(!((var_1.d.b.x | all(vec3<bool>(var_1.a, arg_1.d.b.x, true))) != (any(var_1.d.b) && select(var_2.b.x, true, arg_1.a))), select(vec4<bool>(false, true, any(!vec3<bool>(arg_1.b.x, arg_1.a, var_1.b.x)), ~u_input.d.x < arg_1.d.a), !(!vec4<bool>(var_1.a, true, var_1.d.b.x, var_2.a)), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2039f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x))) * _wgslsmith_f_op_f32(var_2.c.x * arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f - 561f) - var_2.c.x)), Struct_1(1u, vec2<bool>(true, var_2.a), -1i));
    let var_3 = var_1.c.x;
    return var_0.b;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    let var_0 = Struct_2(true, select(select(vec4<bool>(true, false, true, any(vec3<bool>(false, true, false))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), true), !vec4<bool>(true, true, true, all(vec2<bool>(false, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(123f, -1000f, arg_1.x)), vec3<f32>(arg_2.a.x, 1000f, _wgslsmith_f_op_f32(-arg_0.a.x)), true | (arg_0.b.x >= 0u))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, -763f, 1812f))))), Struct_1(max(firstLeadingBit(47859u), 63076u >> (u_input.b.x % 32u)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~(~(-57058i))));
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = vec2<bool>(true, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1527f)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, arg_2.a, arg_1.b.x), vec3<u32>(arg_1.b.x, 1714u, 5538u))), _wgslsmith_f_op_vec2_f32(exp2(arg_0.yy)), Struct_3(arg_1.a, countOneBits(func_2(vec2<i32>(arg_2.c, 11334i), Struct_2(true, vec4<bool>(arg_2.b.x, arg_2.b.x, false, true), vec3<f32>(665f, arg_1.a.x, arg_1.a.x), arg_2), u_input.c)))));
    var_0 = !select(vec2<bool>(~arg_3.x >= 1i, select(true, true || arg_2.b.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_2.b.x)))), arg_2.b, true);
    var var_1 = vec2<i32>(reverseBits(reverseBits(u_input.c.x)), arg_2.c);
    var_1 = _wgslsmith_mult_vec2_i32(u_input.e.zz, select(abs(firstTrailingBit(u_input.e.zy)), vec2<i32>(-2147483647i, 0i), vec2<bool>(func_3(Struct_3(vec2<f32>(arg_0.x, 1000f), vec3<u32>(arg_1.b.x, 59642u, 24449u)), vec2<f32>(-507f, arg_1.a.x), arg_1), any(vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x))))) >> ((max(u_input.b.xy, arg_1.b.zx) >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = arg_1;
    return vec3<bool>(var_0.x, func_3(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.xz * vec2<f32>(var_2.a.x, -840f)))) + vec2<f32>(1f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), Struct_3(vec2<f32>(arg_1.a.x, 1657f), u_input.b)), _wgslsmith_f_op_f32(max(arg_1.a.x, var_2.a.x)) <= -2226f);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = vec4<u32>(firstTrailingBit(44348u), u_input.b.x, u_input.d.x, countOneBits(~(~(~0u))));
    var var_1 = _wgslsmith_f_op_f32(trunc(1378f));
    let var_2 = true;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(-1380f + 1229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f)) + _wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(f32(-1f) * -868f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(745f, -378f), _wgslsmith_f_op_f32(abs(1000f)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x));
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(trunc(-979f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - vec2<f32>(var_3.x, -956f))))), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, var_0.xy), ~(~61888u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(any(!func_1(vec3<f32>(-231f, 230f, -483f), Struct_3(vec2<f32>(1328f, 1000f), vec3<u32>(u_input.d.x, u_input.b.x, u_input.b.x)), Struct_1(1379u, vec2<bool>(false, false), u_input.e.x), vec2<i32>(3314i, -5672i))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -682f, 619f))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, 545f)), u_input.b), Struct_1(86269u, vec2<bool>(true, true), 1i), ~abs(vec2<i32>(u_input.e.x, 6602i))).x, func_1(vec3<f32>(1f, 1f, 1f), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-793f, 298f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.d.x), u_input.b, vec3<u32>(77495u, 30354u, u_input.b.x))), Struct_1(u_input.b.x, vec2<bool>(true, false), _wgslsmith_add_i32(u_input.c.x, -2147483647i)), min(u_input.e.yy, ~u_input.c.xx)).x), -u_input.c.x, min(~select(-vec4<i32>(-1i, -54673i, u_input.e.x, -2147483647i), vec4<i32>(u_input.a.x, 1i, u_input.c.x, u_input.e.x), vec4<bool>(true, true, true, true)), select(firstLeadingBit(vec4<i32>(2147483647i, -15340i, 0i, -39359i) & vec4<i32>(u_input.a.x, u_input.c.x, -48438i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, u_input.e.x, 2147483647i), -vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.c.x)), true)));
    var var_1 = vec4<f32>(-169f, _wgslsmith_f_op_f32(round(194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f), 1621f)) - _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(-var_0.a.x))))), var_0.a.x);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -964f, _wgslsmith_f_op_f32(f32(-1f) * -309f), -104f))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(round(var_0.a.x))))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), var_1.x)));
    let var_2 = abs(~(~((u_input.e.x >> (0u % 32u)) | ~u_input.e.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -1000f, var_0.a.x)))))))));
    var_1 = vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1839f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(-var_0.a), vec3<i32>(-_wgslsmith_clamp_i32(max(2147483647i, 2147483647i), -68103i, _wgslsmith_add_i32(2147483647i, -1i)), -42949i & u_input.e.x, 58532i), _wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(-var_1.x)), countOneBits(u_input.c.x >> (u_input.b.x % 32u)));
}

