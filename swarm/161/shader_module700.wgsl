struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 60846u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, arg_2, -220f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, -583f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1534f, 209f, 997f, arg_2)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2)))))), min(abs(11393u), global0.x & 82981u) < arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1938f + arg_2), _wgslsmith_f_op_f32(trunc(arg_2)), arg_2) - vec4<f32>(_wgslsmith_div_f32(arg_2, -1000f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(311f, 559f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(378f * arg_2))), any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true))), _wgslsmith_sub_u32(~arg_0, max(select(arg_0, 51878u, true), arg_0) & ~arg_0), _wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2 * -1515f)))))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1448f), arg_2, _wgslsmith_f_op_f32(1795f + arg_2)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-876f - -681f), _wgslsmith_f_op_f32(arg_2 * 1000f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 772f) + vec2<f32>(1262f, -1461f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(389f, arg_2)))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)))));
    var var_1 = Struct_2(var_0.e, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, -1325f, -1013f), vec2<f32>(-836f, _wgslsmith_f_op_f32(abs(-1658f))), var_0.a.c), ~(1u & arg_0) ^ firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - 512f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_2, -643f)), var_0.a.b.x)))), var_0.a);
    global0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.c, 4294967295u)), vec2<u32>(~var_1.c, u_input.b.x)), abs(4294967295u)), var_1.c);
    var var_2 = (false | !all(select(vec2<bool>(var_0.e.c, var_1.a.c), vec2<bool>(var_1.a.c, true), vec2<bool>(var_1.b.c, false)))) & false;
    global0 = u_input.b.zz;
    return firstLeadingBit(~var_0.c);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec2<bool> {
    let var_0 = Struct_2(arg_0.a.a.e, Struct_1(arg_0.c, arg_0.c.zw, !select(true, 0u != u_input.b.x, true)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_3(120u, arg_0.b.www, -900f), ~(4294967295u | global0.x)), u_input.a, global0.x), arg_0.a.a.e.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c.x, arg_0.c.x, arg_0.c.x) - _wgslsmith_f_op_vec4_f32(arg_0.a.a.e.a * vec4<f32>(arg_0.a.a.e.b.x, arg_0.a.a.a.a.x, -505f, arg_0.a.a.e.b.x)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-1024f, arg_0.c.x), 1298f), vec2<f32>(arg_0.a.a.d, _wgslsmith_f_op_f32(arg_0.c.x - arg_0.a.a.e.a.x)))), any(!vec3<bool>(false, arg_0.d, arg_0.d))));
    var var_1 = ~countOneBits(max(_wgslsmith_clamp_i32(~u_input.c, -2147483647i, ~1i), 4466i));
    var var_2 = reverseBits(-_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.c, 1i)), firstLeadingBit(arg_0.b.zw))) >> (u_input.b.yy % vec2<u32>(32u));
    let var_3 = vec4<bool>(!arg_0.d, var_0.a.c, true, all(vec2<bool>(!var_0.e.c, any(!vec3<bool>(arg_0.d, true, true)))));
    let var_4 = Struct_3(Struct_2(arg_0.a.a.e, arg_0.a.a.b, 1u, _wgslsmith_div_f32(-248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), var_0.e));
    return vec2<bool>(var_0.a.c, var_4.a.a.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> i32 {
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(select(~(vec2<u32>(111656u, global0.x) << (vec2<u32>(u_input.a, 1637u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b.xz), vec2<u32>(u_input.b.x, 85923u)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(Struct_4(Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, arg_0.x, 636f, 832f), vec2<f32>(-298f, -238f), false), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x), arg_0, false), 4294967295u, arg_0.x, Struct_1(vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x), arg_0, false))), vec4<i32>(-2147483647i, arg_1.x, arg_1.x, 2744i), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1303f), true), 0i))), vec2<u32>(4294967295u, ~(~global0.x))), vec2<u32>(5873u << (~(~global0.x) % 32u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(global0.x, 0u)), u_input.b.x)));
    var var_0 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 876f, arg_0.x, arg_0.x) * vec4<f32>(1015f, arg_0.x, -1000f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1759f, arg_0.x)), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1599f, arg_0.x, arg_0.x)), vec2<f32>(arg_0.x, arg_0.x), any(vec4<bool>(true, true, true, false))), ~(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), Struct_1(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -672f), _wgslsmith_f_op_vec2_f32(-arg_0), true))), vec4<i32>(u_input.c << (countOneBits(global0.x >> (u_input.a % 32u)) % 32u), u_input.c, -(~(-33932i)), -2147483647i), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-195f)) * 1000f)), ((arg_0.x < _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) != true) & true);
    global0 = u_input.b.xz | vec2<u32>(~(countOneBits(var_0.a.a.c) ^ ~1u), select(func_3(firstTrailingBit(0u), -var_0.b.yyw, _wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_div_u32(0u << (u_input.b.x % 32u), global0.x >> (4294967295u % 32u)), true));
    global0 = u_input.b.yx >> (~(~(vec2<u32>(28267u, global0.x) | ~u_input.b.zx)) % vec2<u32>(32u));
    let var_1 = _wgslsmith_clamp_u32(10643u, u_input.a, countOneBits(countOneBits(~18794u))) & abs(u_input.b.x >> (var_0.a.a.c % 32u));
    return ~(i32(-1i) * -arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(-20458i, u_input.c, 8536i, 2147483647i)), func_1(vec2<f32>(811f, 490f), vec2<i32>(u_input.c, u_input.c)), u_input.c, func_1(vec2<f32>(-474f, 633f), vec2<i32>(0i, u_input.c)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(157f, 597f, -186f, 931f), vec4<f32>(430f, 915f, 1322f, -1648f)) - vec4<f32>(-558f, 452f, 154f, -161f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(197f, 1186f, -1649f, 423f))), true)), vec2<f32>(1f, 1f), true), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-306f, -1095f, 425f, 838f) + vec4<f32>(2135f, 325f, 376f, -736f))), vec4<f32>(-756f, _wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(round(-1247f)), _wgslsmith_div_f32(1542f, 1000f)), false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-622f, -979f), vec2<f32>(665f, 399f)) * vec2<f32>(723f, -220f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, -388f) + vec2<f32>(717f, 810f))), vec2<bool>(true, true))), false), global0.x, 1000f, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2040f, 582f, 167f, -231f) + vec4<f32>(337f, -1551f, -1143f, 219f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1778f), vec2<f32>(1337f, 812f), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1156f, 481f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(251f, -549f)))), true));
    let var_2 = abs(vec4<i32>(-3743i, var_0.x, _wgslsmith_mult_i32(u_input.c, firstTrailingBit(-var_0.x)), abs(_wgslsmith_mult_i32(u_input.c, i32(-1i) * -30i))));
    var var_3 = Struct_2(var_1.b, var_1.b, ~u_input.a ^ ~1u, var_1.e.b.x, var_1.e);
    var_1 = Struct_2(var_3.b, var_1.e, 4294967295u, 2482f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.e.a)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.a.x, 2120f, var_3.e.b.x, -748f))))), vec2<f32>(_wgslsmith_f_op_f32(step(var_3.d, _wgslsmith_f_op_f32(-var_3.b.a.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(var_3.e.a.x)))), false));
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.b.x), -1000f));
    var var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.a.x, var_3.e.a.x));
    let var_6 = var_3.a;
    var_3 = Struct_2(var_1.e, var_1.e, var_3.c, var_1.d, Struct_1(var_6.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -156f))), var_1.e.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 4294967295u));
}

