struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(33346u, 1u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    global0 = _wgslsmith_add_vec2_u32(reverseBits(select(vec2<u32>(global0.x, 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)), select(!vec2<bool>(arg_0.x, arg_0.x), arg_0, select(arg_0, arg_0, arg_0)))), firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(52918u, 40305u), 0u) ^ ~vec2<u32>(u_input.a, u_input.a)));
    var var_0 = -1522f;
    var var_1 = !select(!vec4<bool>(select(false, true, arg_0.x), !arg_0.x, select(false, true, arg_0.x), !arg_0.x), vec4<bool>(arg_0.x, true, false, true), all(!select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2332f + 2052f)))))), -1000f);
    var_1 = select(select(vec4<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x, true, arg_0.x), !vec4<bool>(var_1.x, true, var_1.x, arg_0.x), arg_0.x), !(!(!select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, arg_0.x, var_1.x, true)))), any(select(arg_0, arg_0, vec2<bool>(select(var_1.x, true, var_1.x), true))));
    return ~vec3<i32>(-u_input.b.x, firstTrailingBit(1i), u_input.b.x);
}

fn func_2() -> u32 {
    var var_0 = Struct_2(!(!all(vec3<bool>(true, true, true))), Struct_1(func_3(vec2<bool>(true, true)), vec3<i32>(-1i) * -countOneBits(u_input.b.zwz), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), Struct_1(vec3<i32>(_wgslsmith_div_i32(~(-1i), ~48861i), u_input.b.x, _wgslsmith_sub_i32(0i, u_input.b.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), select(u_input.b.x, 1i, true), min(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(13912i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(1i, 1623i, u_input.b.x, u_input.b.x)))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), true), false)), Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(u_input.b.xww, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<i32>(u_input.b.x, 60509i, u_input.b.x), vec3<i32>(u_input.b.x, -33213i, -1i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), _wgslsmith_div_vec3_i32(u_input.b.wzz, -vec3<i32>(-25587i, -2147483647i, u_input.b.x)), vec2<bool>(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))))));
    let var_1 = Struct_3(_wgslsmith_sub_u32(u_input.a, ~firstLeadingBit(select(global0.x, 33497u, var_0.b.c.x))), !all(vec2<bool>(all(vec4<bool>(var_0.a, var_0.d.c.x, false, var_0.b.c.x)), !var_0.c.c.x)), all(vec4<bool>(any(!vec2<bool>(var_0.d.c.x, var_0.c.c.x)), _wgslsmith_f_op_f32(round(-1771f)) > _wgslsmith_f_op_f32(-1394f - -594f), any(select(vec2<bool>(false, var_0.b.c.x), vec2<bool>(var_0.b.c.x, true), var_0.d.c)), var_0.b.c.x)), 2147483647i, Struct_2(var_0.c.c.x, var_0.d, var_0.d, var_0.c));
    global0 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, global0.x), 10141u)), firstTrailingBit(~(firstLeadingBit(vec2<u32>(var_1.a, 16658u)) & ~vec2<u32>(63236u, u_input.a))));
    var_0 = Struct_2(14506u != global0.x, var_0.d, var_0.b, Struct_1(u_input.b.xzz, var_1.e.d.b, select(var_0.c.c, select(var_0.c.c, var_1.e.d.c, !vec2<bool>(var_1.b, false)), !var_0.d.c.x)));
    var_0 = var_1.e;
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_1 {
    let var_0 = false;
    var var_1 = !any(select(vec3<bool>(all(vec3<bool>(var_0, var_0, var_0)), true, any(vec3<bool>(var_0, var_0, true))), select(!vec3<bool>(true, false, var_0), select(vec3<bool>(true, true, true), vec3<bool>(var_0, false, true), true), vec3<bool>(true, true, true)), !var_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(137f, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))))), -258f));
    let var_3 = 1000f;
    var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(global0.x, func_2()), _wgslsmith_dot_vec3_u32(min(vec3<u32>(22000u, 14880u, u_input.a), ~vec3<u32>(global0.x, 78216u, global0.x)), ~vec3<u32>(1u, u_input.a, 4294967295u) & (vec3<u32>(1u, u_input.a, 20768u) >> (vec3<u32>(u_input.a, 1u, 0u) % vec3<u32>(32u))))) == global0.x;
    return Struct_1(-vec3<i32>(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(-39798i, 0i, -51738i, 2147483647i), u_input.b) | ~0i, u_input.b.x), vec3<i32>(~u_input.b.x, _wgslsmith_dot_vec3_i32(reverseBits(-u_input.b.xwx), ~(u_input.b.wyx | vec3<i32>(22565i, -1i, -1i))), -2147483647i), vec2<bool>(var_2.x >= _wgslsmith_f_op_f32(f32(-1f) * -1247f), all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, true), vec3<bool>(true, false, true))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    global0 = vec2<u32>(26422u, global0.x);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -284f);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.e.x)), _wgslsmith_f_op_f32(-1000f * 738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1003f))))));
    global0 = abs(vec2<u32>(global0.x, u_input.a) & abs(~vec2<u32>(43046u, u_input.a)));
    let var_2 = arg_2;
    return Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~53310u, ~u_input.a, global0.x, select(u_input.a, u_input.a, arg_1.c.x)), ~countOneBits(vec4<u32>(42234u, global0.x, 24827u, global0.x))) < u_input.a, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1880f, 642f), _wgslsmith_f_op_vec2_f32(round(arg_2.e.zw)), var_2.c >= 69867u))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(arg_1.a.x), -19401i), 23070i, _wgslsmith_add_i32(firstLeadingBit(arg_2.b), -2147483647i))), Struct_1(_wgslsmith_mult_vec3_i32(func_3(arg_0.d.c), u_input.b.ywx), vec3<i32>(_wgslsmith_mult_i32(var_2.b, ~2147483647i), -2147483647i, _wgslsmith_div_i32(arg_2.b >> (arg_2.c % 32u), 1i)), vec2<bool>(false, !all(vec4<bool>(true, false, arg_2.a, arg_1.c.x)))), Struct_1(arg_0.b.a, vec3<i32>(0i, -18310i, -(~u_input.b.x)), arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(true, Struct_1(u_input.b.xxz, vec3<i32>(u_input.b.x, -u_input.b.x, u_input.b.x), vec2<bool>(true, true)), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -264f))), vec2<f32>(-2059f, 334f)), _wgslsmith_div_i32(~u_input.b.x, -38698i)), Struct_1(u_input.b.wwz, u_input.b.zxy, vec2<bool>(true, true))), Struct_1(select(select(vec3<i32>(u_input.b.x, -32063i, u_input.b.x), u_input.b.zzx, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), u_input.b.zyx, true), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), u_input.b.x), abs(firstTrailingBit(u_input.b.x)), -u_input.b.x), vec2<bool>(false && (u_input.b.x > -17563i), false)), Struct_4(true, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1558f, -920f), vec2<f32>(-1148f, -440f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(883f, -570f))), ~1i).b.x, _wgslsmith_add_u32(u_input.a, select(~2899u, 1u, false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1646f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1761f)) * 2282f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-795f, -404f))), -308f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(327f + -1166f), -835f)), -448f)));
    var_0 = Struct_2(all(vec3<bool>(true, var_0.b.c.x, true)), var_0.b, Struct_1(vec3<i32>(min(var_0.c.b.x, var_0.c.b.x) >> (global0.x % 32u), -1i, (var_0.d.b.x | -8300i) << (~22690u % 32u)), vec3<i32>(-1i, 41825i, -2147483647i), var_0.d.c), var_0.d);
    let var_1 = abs(~global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.zz, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.a.x, 1i), vec2<i32>(var_0.d.b.x, -64876i)), vec2<i32>(u_input.b.x, -77572i)))), global0.x, abs(var_0.b.b));
}

