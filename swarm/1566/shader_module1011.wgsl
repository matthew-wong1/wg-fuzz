struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = arg_1.a.xx;
    let var_1 = ~vec4<i32>(u_input.b, -u_input.b, -2147483647i, ~(arg_3.x ^ (arg_3.x << (1u % 32u))));
    return arg_1.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(arg_2 + arg_2) == _wgslsmith_f_op_f32(ceil(-489f)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), all(vec3<bool>(true, true, true)), vec3<i32>(u_input.b, arg_1, arg_0.x) << ((u_input.c.xyw ^ vec3<u32>(0u, u_input.a, 0u)) % vec3<u32>(32u)))), (i32(-1i) * -24141i) == (_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.e, u_input.e, -61802i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51666i, arg_1, arg_0.x, -744i), vec4<i32>(arg_1, arg_0.x, 2147483647i, u_input.b))) | 0i), true, Struct_1(vec3<bool>(!any(vec2<bool>(true, false)), true, true)));
    var_0 = Struct_2(var_0.d, true, func_3(var_0.d.a.x, var_0.d, true, reverseBits(vec3<i32>(abs(73420i), arg_1, arg_0.x))).x, var_0.a);
    var var_1 = _wgslsmith_dot_vec4_u32(~u_input.c, abs(_wgslsmith_sub_vec4_u32(min(u_input.c, vec4<u32>(u_input.a, u_input.d, u_input.a, 16842u)) >> (select(u_input.c, vec4<u32>(22128u, u_input.d, 4294967295u, 55515u), vec4<bool>(var_0.c, var_0.c, var_0.c, true)) % vec4<u32>(32u)), abs(reverseBits(vec4<u32>(u_input.c.x, u_input.a, u_input.d, 4294967295u))))));
    var var_2 = false;
    var_2 = true;
    return ~u_input.c.wyy;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = arg_0.a.x;
    let var_1 = !arg_2.a.x;
    let var_2 = arg_2.a.xy;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(336f, -109f, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(min(-619f, 227f)), _wgslsmith_f_op_f32(max(-794f, 1252f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2610f, 735f, -913f, -1394f), vec4<f32>(1000f, -862f, -420f, -1986f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), 382f, -366f, _wgslsmith_f_op_f32(floor(-639f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, -166f, 860f, 869f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(854f, -450f, -194f, 1779f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-827f, -848f, 1047f, -1260f), _wgslsmith_f_op_vec4_f32(vec4<f32>(374f, 477f, -715f, 124f) - vec4<f32>(2677f, -906f, -1800f, -254f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -946f, -487f, 1000f)))))))));
    var var_4 = _wgslsmith_f_op_f32(-var_3.x);
    return func_2(-vec2<i32>(reverseBits(29487i), 2147483647i), select(-5820i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b), -vec2<i32>(-9420i, -34774i)), 2147483647i, var_1), var_1), var_3.x);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, true, false));
    let var_1 = Struct_2(Struct_1(var_0.a), any(!var_0.a.zz), var_0.a.x, Struct_1(var_0.a));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~reverseBits(~u_input.a), u_input.d), 1u);
    var var_3 = Struct_2(var_0, var_1.b, !var_1.a.a.x, var_1.a);
    var_3 = Struct_2(Struct_1(var_3.a.a), any(var_0.a.zy), any(select(vec2<bool>(true, var_1.a.a.x), var_0.a.xx, vec2<bool>(false, true))) | true, Struct_1(var_3.d.a));
    return var_1.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = min(firstLeadingBit(vec2<i32>(-1405i, 0i)), _wgslsmith_sub_vec2_i32(~max(vec2<i32>(u_input.b, 0i) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<i32>(24326i, u_input.e) & vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(-12250i, ~(-u_input.b))));
    let var_1 = Struct_2(func_4(vec3<u32>(reverseBits(1u), countOneBits(u_input.d), u_input.c.x) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(24819u, u_input.a, 7634u), u_input.c.yyw) % vec3<u32>(32u))), all(!(!select(vec4<bool>(arg_1.d.a.x, arg_3.d.a.x, true, arg_3.a.a.x), vec4<bool>(false, arg_3.d.a.x, true, false), vec4<bool>(arg_1.d.a.x, true, true, arg_3.a.a.x)))), func_4(min(func_1(arg_3.d, 1i, Struct_1(arg_3.d.a)), vec3<u32>(firstLeadingBit(u_input.d), ~64085u, _wgslsmith_dot_vec3_u32(u_input.c.xzw, u_input.c.zyy)))).a.x, func_4(_wgslsmith_mult_vec3_u32(~u_input.c.wwx, u_input.c.yyw)));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(~0u, u_input.c.x, max(u_input.a, 19085u))), func_2(reverseBits(vec2<i32>(u_input.e, _wgslsmith_sub_i32(-1566i, var_2))), select(u_input.b, i32(-1i) * -var_0.x, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1516f, _wgslsmith_f_op_f32(-arg_2.x)))))));
    var var_4 = func_3(false, arg_1.d, true, ~(-(vec3<i32>(var_2, u_input.b, var_2) & vec3<i32>(54944i, 15569i, var_2))) >> (select(_wgslsmith_clamp_vec3_u32(u_input.c.yzx, _wgslsmith_div_vec3_u32(u_input.c.yxz, u_input.c.yzz), ~vec3<u32>(3048u, 0u, 5645u)), min(abs(u_input.c.wwz), vec3<u32>(var_3, 4294967295u, 0u) << (vec3<u32>(var_3, var_3, 55482u) % vec3<u32>(32u))), select(arg_3.a.a, arg_1.d.a, vec3<bool>(var_1.d.a.x, var_1.c, true))) % vec3<u32>(32u))).yz;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2187f + -528f), _wgslsmith_div_f32(-1747f, 835f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, 335f) + vec2<f32>(946f, 112f)), vec2<f32>(525f, 369f), false))))), Struct_2(func_4(func_1(Struct_1(vec3<bool>(false, false, true)), u_input.b, Struct_1(vec3<bool>(true, true, true)))), func_4(vec3<u32>(~4752u, ~u_input.c.x, 1u)).a.x, select(!(0u == u_input.a), func_4(vec3<u32>(u_input.c.x, 63705u, 31637u)).a.x, false), func_4(reverseBits(~u_input.c.yyy))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1358f, 2821f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(388f, -230f, -1447f)), vec3<bool>(true, true, true)))))), Struct_2(Struct_1(vec3<bool>(true, true, true)), false | any(vec2<bool>(false, false)), !all(vec3<bool>(true, true, false)), func_4(min(func_1(Struct_1(vec3<bool>(false, true, true)), u_input.b, Struct_1(vec3<bool>(false, true, true))), ~u_input.c.zwx))));
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, 418f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, -637f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -777f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1519f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, 137f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-269f, 1543f) + vec2<f32>(-318f, -1540f)))))), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-345f, -597f)))))), Struct_2(var_0.a, true, func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1575f, -498f), vec2<f32>(-630f, 1221f))), Struct_2(var_0.a, var_0.a.a.x, false, var_0.a), vec3<f32>(-899f, -1000f, 168f), Struct_2(var_0.a, false, false, var_0.d)).d.a.x, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, 1191f)), func_5(vec2<f32>(532f, 174f), Struct_2(Struct_1(vec3<bool>(var_0.d.a.x, var_0.a.a.x, true)), true, var_0.d.a.x, Struct_1(var_0.a.a)), vec3<f32>(-471f, 1303f, 704f), Struct_2(var_0.d, var_0.a.a.x, var_0.c, var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(250f, -1245f, -1000f)), func_5(vec2<f32>(290f, -877f), Struct_2(Struct_1(vec3<bool>(var_0.b, var_0.d.a.x, var_0.d.a.x)), false, var_0.c, Struct_1(var_0.d.a)), vec3<f32>(-1073f, 902f, 260f), Struct_2(Struct_1(vec3<bool>(false, true, true)), var_0.c, false, Struct_1(var_0.d.a)))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2220f, 507f, 2166f))), vec3<f32>(586f, 902f, 703f)))), Struct_2(Struct_1(var_0.a.a), ~28248u > u_input.a, true, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - -219f)), -832f, _wgslsmith_f_op_f32(937f * -1959f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-838f, -437f, 464f), vec3<f32>(2264f, 279f, -1307f))))))), func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f + 2496f) - _wgslsmith_f_op_f32(max(620f, -720f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f + 500f))), Struct_2(var_0.a, !var_0.c, true, Struct_1(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f * 2411f)), _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(500f + 771f)), _wgslsmith_f_op_f32(step(-2543f, _wgslsmith_f_op_f32(step(-848f, 1000f))))), func_5(vec2<f32>(_wgslsmith_f_op_f32(-101f + 172f), _wgslsmith_f_op_f32(step(1132f, -1033f))), func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-363f, -1015f) * vec2<f32>(-1622f, 222f)), Struct_2(var_0.a, var_0.b, false, var_0.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1367f, -201f, 1939f), vec3<f32>(-1000f, -1246f, -462f), false)), func_5(vec2<f32>(-547f, -612f), Struct_2(Struct_1(var_0.a.a), false, var_0.a.a.x, var_0.a), vec3<f32>(-231f, -811f, 119f), Struct_2(Struct_1(var_0.a.a), false, false, Struct_1(vec3<bool>(var_0.b, var_0.b, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(790f, -1000f, -995f), vec3<f32>(-170f, 1186f, 642f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(392f, 161f, -201f)))), Struct_2(Struct_1(vec3<bool>(var_0.a.a.x, var_0.b, var_0.c)), true, all(var_0.a.a.zx), func_5(vec2<f32>(1784f, -562f), Struct_2(Struct_1(var_0.a.a), true, false, var_0.d), vec3<f32>(2013f, -381f, 648f), Struct_2(Struct_1(var_0.d.a), false, var_0.a.a.x, Struct_1(vec3<bool>(true, var_0.b, var_0.d.a.x)))).d))));
    let var_1 = reverseBits(min(firstTrailingBit(u_input.c), u_input.c));
    let var_2 = ~select(4294967295u, 36574u, false);
    var_0 = Struct_2(Struct_1(select(vec3<bool>(func_4(vec3<u32>(var_2, var_2, 4472u)).a.x, var_0.c, !var_0.a.a.x), vec3<bool>(true, false, all(var_0.d.a)), func_3(var_0.c || var_0.d.a.x, Struct_1(vec3<bool>(var_0.a.a.x, var_0.d.a.x, var_0.a.a.x)), false, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -4326i), vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.e, u_input.e, -1i))))), ~firstLeadingBit(~u_input.c.x) > var_2, true || (_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -5641i), vec2<i32>(u_input.e, u_input.e)), -vec2<i32>(-1i, u_input.e)) < _wgslsmith_div_i32(abs(-6331i), u_input.b)), Struct_1(var_0.d.a));
    let var_3 = _wgslsmith_clamp_vec4_i32(reverseBits(select(abs(vec4<i32>(u_input.b, 0i, u_input.e, 2147483647i)), firstLeadingBit(-vec4<i32>(u_input.e, 0i, 24881i, u_input.e)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_0.d.a.x, true, false), !vec4<bool>(var_0.d.a.x, var_0.d.a.x, var_0.c, true)))), _wgslsmith_sub_vec4_i32(vec4<i32>(27938i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 9823i), vec2<i32>(0i, u_input.b)), abs(u_input.e), _wgslsmith_sub_i32(countOneBits(0i), 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, 25889i, u_input.b, u_input.b), ~vec4<i32>(-4292i, -2147483647i, -17743i, u_input.b)) >> (vec4<u32>(93547u, var_1.x << (4294967295u % 32u), 1u, 47392u >> (var_1.x % 32u)) % vec4<u32>(32u))), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, -9813i, 0i), vec4<i32>(1i, u_input.b, 2147483647i, 42330i) | vec4<i32>(u_input.b, u_input.e, u_input.e, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, u_input.b), vec4<i32>(2147483647i, 27996i, -2147483647i, u_input.b))), ~(-vec4<i32>(u_input.e, -4292i, u_input.e, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, u_input.e, 1i, var_3.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1172i, u_input.e, u_input.e, -1i), var_3, var_3), var_0.a.a.x), -vec4<i32>(u_input.b, var_3.x, u_input.e, 1i)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f), 1336f), -278f, !var_0.d.a.x))), min(vec4<i32>(2147483647i, countOneBits(u_input.b), 1i, var_3.x), abs(vec4<i32>(u_input.e, u_input.e, var_3.x, var_3.x) | vec4<i32>(var_3.x, u_input.b, -9756i, var_3.x))));
}

