struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1684f * -473f), _wgslsmith_f_op_f32(sign(2186f)), _wgslsmith_f_op_f32(sign(2481f)), 635f) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-164f, -121f, -1681f, 307f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 2107f, -171f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1217f, 228f, -114f, -215f) - vec4<f32>(-383f, -1000f, 1000f, -1982f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-624f, -262f, 521f, -715f), vec4<f32>(-449f, -483f, -1986f, 1041f))) + vec4<f32>(_wgslsmith_f_op_f32(337f * 579f), _wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-1895f - -733f), -475f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-403f, 1154f, 351f, 1000f)) - vec4<f32>(2229f, -634f, -719f, -509f))))));
    let var_1 = Struct_4(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))), abs(u_input.c.zw), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(743f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d))))));
    var var_3 = Struct_5(var_2.a);
    let var_4 = _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-u_input.b, -arg_0.x, _wgslsmith_mod_i32(u_input.a.x, arg_0.x), arg_0.x)) <= _wgslsmith_sub_i32(49880i, u_input.a.x);
    return !all(vec2<bool>(var_1.c, any(!var_1.a)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_4(select(arg_0.c.b, vec2<bool>((u_input.c.x ^ 0u) <= _wgslsmith_dot_vec3_u32(u_input.c.wyx, u_input.c.yzw), func_3(vec4<i32>(-2147483647i, 36947i, arg_0.c.d, 42319i)) && !arg_0.c.b.x), select(!select(arg_1, arg_1, false), arg_1, arg_0.c.a.a.xy)), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), u_input.c.yyx), ~u_input.c.yzy)), !arg_0.c.a.a.x, _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(ceil(arg_0.b)), true)));
    var var_1 = firstTrailingBit(_wgslsmith_div_vec4_i32(min(u_input.a, ~u_input.a), u_input.a | vec4<i32>(-2147483647i, arg_0.c.d, 72694i, 26473i))) >> (~u_input.c % vec4<u32>(32u));
    var var_2 = ~(-(vec4<i32>(_wgslsmith_mod_i32(var_1.x, 2147483647i), arg_0.c.d << (var_0.b.x % 32u), ~var_1.x, u_input.a.x | var_1.x) | -countOneBits(u_input.a)));
    var_2 = -vec4<i32>((select(var_2.x, -40129i, var_0.c) ^ -1i) | -2147483647i, var_2.x, max(arg_0.a, -1i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_2.x, -6004i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-34964i, -13216i, var_2.x), vec3<i32>(2147483647i, arg_0.a, var_1.x), vec3<i32>(-1i, var_1.x, arg_0.c.d))), var_1.x));
    return arg_0.b;
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = true;
    let var_1 = 910f;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) * vec2<f32>(855f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1))), _wgslsmith_f_op_f32(func_2(Struct_3(u_input.a.x, 797f, Struct_2(Struct_1(vec3<bool>(true, var_0, false), u_input.b, arg_0, vec2<bool>(true, var_0)), vec2<bool>(var_0, false), vec2<u32>(20794u, u_input.d), u_input.a.x)), !vec2<bool>(var_0, true)))))));
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0, var_2.x)))) * -486f), 1210f);
    return Struct_3(u_input.b, var_1, Struct_2(Struct_1(select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(true, var_0, true), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, true)), var_2.x < arg_0), u_input.a.x << ((4294967295u | u_input.d) % 32u), _wgslsmith_f_op_f32(-arg_0), !select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0)), select(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), false), select(select(vec2<bool>(true, false), vec2<bool>(var_0, false), var_0), vec2<bool>(var_0, true), true), !vec2<bool>(false, var_0)), ~vec2<u32>(u_input.c.x, ~29329u), -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 394f), arg_0.b, arg_0.a == _wgslsmith_div_i32(firstTrailingBit(13372i), 2147483647i >> (arg_0.c.c.x % 32u)))));
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-545f)), _wgslsmith_f_op_f32(893f * 1779f))))).c;
    let var_2 = Struct_2(Struct_1(vec3<bool>(all(!vec4<bool>(var_1.b.x, arg_0.c.a.a.x, var_1.b.x, false)), true, true), func_1(var_0).a, _wgslsmith_f_op_f32(-var_0), !arg_0.c.a.d), var_1.b, ~(~(~vec2<u32>(9865u, u_input.d)) ^ arg_0.c.c), -(~func_1(_wgslsmith_f_op_f32(max(-964f, 680f))).c.a.b));
    let var_3 = vec3<u32>(78535u, u_input.c.x, 1u) ^ vec3<u32>(var_2.c.x, u_input.c.x, u_input.c.x);
    let var_4 = ~(_wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.a.x, u_input.b, var_1.d) >> (u_input.c.ywx % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(12513i, -5513i, 1i))) & _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xyw, u_input.a.zwx), vec3<i32>(~u_input.a.x, _wgslsmith_mult_i32(arg_0.a, -1i), 19260i), u_input.a.wxx));
    return func_1(366f).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c.x, (~28909u << (min(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(40083u, u_input.c.x, u_input.c.x), u_input.c.zwy)) % 32u)) << (~_wgslsmith_sub_u32(~u_input.d, u_input.c.x | 81013u) % 32u), u_input.c.x);
    var var_1 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-977f, -550f)), _wgslsmith_f_op_f32(-2199f * 911f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1081f, 552f, -1090f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(195f, 630f, 1973f), vec3<f32>(-343f, 1122f, -315f)))))));
    var var_2 = Struct_4(vec2<bool>(true || var_1.b.x, var_1.b.x), var_0.xz, ~(~0u >> (func_1(-109f).c.c.x % 32u)) >= select(var_0.x, 1u, _wgslsmith_f_op_f32(605f - var_1.a.c) < -358f), _wgslsmith_f_op_f32(f32(-1f) * -1384f));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(trunc(var_1.a.c))), 499f, -122f);
    var_2 = Struct_4(vec2<bool>(true, !(any(vec4<bool>(false, true, true, false)) & true)), func_4(func_1(1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, var_1.a.c, -1181f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_2.d, -419f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 2084f, 744f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1358f, -942f, var_3.x) - vec3<f32>(-1000f, -331f, 621f))))).c, !var_1.a.d.x && (var_2.c && func_3(firstLeadingBit(vec4<i32>(-35530i, 47888i, -2147483647i, var_1.a.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.d))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.c, var_2.d, var_3.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_2.d, 1376f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1287f, 1439f, var_3.x) * vec3<f32>(1986f, var_1.a.c, -361f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(var_2.d, 553f)), func_1(-310f).c.a.c, -186f)) + vec3<f32>(_wgslsmith_f_op_f32(-1024f + var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_2.d), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(2068f - var_1.a.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zw, -1i | u_input.a.x, select(u_input.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(var_1.d, 9420i)) >> (~48456u % 32u), var_1.a.b), var_2.c));
}

