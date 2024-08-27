struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(810f)) + 744f), all(vec3<bool>(false, true, all(vec3<bool>(false, false, false)))), Struct_2(firstTrailingBit(~vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-850f, -336f, -1176f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, -1000f, 559f)))), Struct_1(min(51263u, 14599u))), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1269f, 773f, -1257f), vec3<f32>(1411f, -936f, 423f))))), Struct_1(_wgslsmith_mod_u32(16213u, 47046u))), vec4<u32>(~_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_mod_u32(91696u, 45283u), ~(~36600u), 1u)), Struct_1(4294967295u));
    let var_1 = Struct_1(reverseBits(_wgslsmith_mult_u32(firstTrailingBit(var_0.a.e.x ^ var_0.a.e.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(42032u, 1u, 1u), vec3<u32>(39056u, var_0.a.d.c.a, var_0.b.a)), ~15725u, var_0.a.c.a.x))));
    var var_2 = Struct_4(Struct_3(var_0.a.c.b.x, any(vec3<bool>(true, var_0.a.b, true)), Struct_2(var_0.a.c.a, vec3<f32>(801f, -635f, var_0.a.d.b.x), var_0.b), Struct_2(vec2<u32>(~var_0.b.a, 2536u), _wgslsmith_f_op_vec3_f32(-var_0.a.d.b), var_0.a.c.c), ~abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a.e.x, var_1.a, 15547u), vec4<u32>(var_1.a, var_0.a.e.x, var_0.b.a, var_0.a.c.c.a)))), Struct_1(~(~(~58907u))));
    let var_3 = var_2.a.d.c;
    var var_4 = -select(vec4<i32>(u_input.a, 17692i, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1927i, 38673i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, 11536i, 0i)), vec4<i32>(1i, 35864i, 1i, -13203i))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -5335i, -44684i), vec4<i32>(u_input.a, 2147483647i, -10148i, 2147483647i)), u_input.a ^ u_input.a, ~0i, -1i), !select(vec4<bool>(var_0.a.b, true, false, true), vec4<bool>(var_0.a.b, var_2.a.b, var_0.a.b, false), var_0.a.b != var_2.a.b));
    return abs(max(vec2<i32>(-41676i, -abs(u_input.a)), ~firstLeadingBit(var_4.yz)));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = abs(1u);
    var var_1 = vec2<i32>(2147483647i, firstTrailingBit(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-6866i, 31722i))));
    var_1 = arg_0 | func_3();
    let var_2 = Struct_2(vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1027f, -1330f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(875f, 2057f, 338f) + vec3<f32>(2487f, 1173f, 2973f)), true)))), Struct_1(~min(29693u, 0u)));
    var var_3 = any(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(true, any(vec4<bool>(true, false, true, true)), var_2.b.x > var_2.b.x)));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_1(24694u);
    let var_1 = Struct_2(vec2<u32>(reverseBits(1u), _wgslsmith_add_u32(abs(var_0.a ^ var_0.a), 149u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1272f, -1481f, 553f))) + _wgslsmith_div_vec3_f32(vec3<f32>(408f, -1000f, 170f), vec3<f32>(1026f, 1582f, -1000f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1669f, 869f, 1098f))), vec3<f32>(723f, 821f, -1305f), vec3<bool>(arg_0, true, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2728f, 2966f, 197f) - vec3<f32>(2912f, 209f, 1744f))), true))), Struct_1(~(~(~0u))));
    var var_2 = vec3<i32>(reverseBits(~u_input.a), ~13442i, i32(-1i) * -21526i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-604f)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-2638f, var_1.b.x, var_1.b.x, var_1.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1525f, var_1.b.x, var_1.b.x, var_1.b.x), vec4<f32>(var_1.b.x, -222f, -1000f, -806f), vec4<bool>(arg_1.x, arg_1.x, false, true))))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f - var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(ceil(-143f))), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-989f + var_1.b.x))))));
    return func_2(var_2.xx);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = !func_4(true, vec2<bool>(true, func_2(max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, -10461i)))));
    return arg_0.c;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec3<bool>(true, true, false))), vec2<bool>(true, true), vec2<bool>(false, true)));
    var var_1 = _wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, arg_0.b.x, -998f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_1.x))))), _wgslsmith_f_op_f32(select(var_1.x, -916f, true | var_0.x))));
    var var_2 = countOneBits(vec3<i32>(~u_input.a, 2147483647i, _wgslsmith_div_i32(u_input.a, 2060i)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(f32(-1f) * -2173f))), var_0.x, Struct_2((_wgslsmith_div_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, 0u)) ^ reverseBits(vec2<u32>(66912u, 4294967295u))) & select(_wgslsmith_mod_vec2_u32(arg_0.a, arg_0.a), ~vec2<u32>(8597u, 22691u), var_0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -2003f, 541f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(var_1.x, -307f, 1023f), vec3<bool>(true, var_0.x, false)))), true)), Struct_1(0u)), arg_0, ~vec4<u32>(~_wgslsmith_mult_u32(arg_0.a.x, arg_0.c.a), arg_0.c.a, 14469u, arg_0.a.x));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a.d.b.xx;
    let var_1 = arg_3.e.zy;
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>((1u | arg_0.a.e.x) & (~7083u >> (arg_1.a.x % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.xyy, vec3<u32>(arg_3.c.a.x, arg_3.c.a.x, arg_1.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.c.a.x, 58226u, 42811u), vec3<u32>(arg_0.b.a, arg_2.x, 47870u))), ~abs(vec3<u32>(14078u, 4294967295u, 33470u)))), ~(~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), arg_1.a, vec2<u32>(126458u, 4294967295u)))));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_4(func_5(Struct_2(vec2<u32>(1u, 1u), vec3<f32>(-1452f, 1616f, 1989f), func_1(Struct_2(vec2<u32>(0u, 4294967295u), vec3<f32>(940f, -664f, 617f), Struct_1(0u))))), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(36602u, 11672u)), vec2<u32>(67149u, 0u)))), Struct_2(countOneBits(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4183u), vec2<u32>(21399u, 1u)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -289f), 435f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -605f)), Struct_1(53307u)), _wgslsmith_div_vec4_u32(func_5(func_5(Struct_2(vec2<u32>(0u, 4294967295u), vec3<f32>(-1318f, -1783f, 734f), Struct_1(5702u))).d).e, ~vec4<u32>(0u, ~1u, func_1(Struct_2(vec2<u32>(9424u, 0u), vec3<f32>(-2129f, 567f, 840f), Struct_1(71106u))).a, 89084u)), func_5(Struct_2(~vec2<u32>(13787u, 22526u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, 492f, 988f) + vec3<f32>(1596f, -320f, 631f)))), Struct_1(~0u))));
    let var_1 = vec4<bool>(func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a))), func_3().x)), func_5(Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b - var_0.b), var_0.c)).d.c.a > ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a.x, 0u, 1u, 38638u), vec4<u32>(var_0.a.x, var_0.c.a, 13030u, 3298u), vec4<bool>(true, true, true, false)), abs(vec4<u32>(1u, 4294967295u, var_0.c.a, var_0.a.x))), !(!(var_0.b.x == func_5(Struct_2(var_0.a, vec3<f32>(var_0.b.x, 750f, 1767f), Struct_1(var_0.c.a))).c.b.x)), !select(true, ~0u <= (var_0.c.a << (var_0.a.x % 32u)), false));
    var var_2 = func_6(Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 1375f)), var_1.x & (var_1.x | var_1.x), func_6(Struct_4(Struct_3(var_0.b.x, true, Struct_2(var_0.a, vec3<f32>(var_0.b.x, 520f, var_0.b.x), var_0.c), Struct_2(var_0.a, vec3<f32>(var_0.b.x, -845f, -716f), var_0.c), vec4<u32>(var_0.a.x, 1u, var_0.a.x, var_0.c.a)), var_0.c), Struct_2(vec2<u32>(var_0.c.a, 0u), var_0.b, Struct_1(var_0.a.x)), ~vec4<u32>(var_0.c.a, 50568u, 0u, 0u), Struct_3(var_0.b.x, var_1.x, Struct_2(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.c), Struct_2(var_0.a, var_0.b, Struct_1(10230u)), vec4<u32>(var_0.c.a, var_0.c.a, var_0.c.a, var_0.c.a))), func_6(Struct_4(Struct_3(-732f, var_1.x, Struct_2(var_0.a, vec3<f32>(839f, var_0.b.x, -1249f), var_0.c), Struct_2(vec2<u32>(var_0.a.x, 4294967295u), vec3<f32>(-323f, -392f, var_0.b.x), Struct_1(var_0.a.x)), vec4<u32>(31525u, var_0.c.a, var_0.c.a, 4294967295u)), Struct_1(7710u)), func_5(Struct_2(vec2<u32>(4294967295u, 12456u), vec3<f32>(1291f, -493f, -1250f), var_0.c)).c, ~vec4<u32>(var_0.c.a, 4294967295u, var_0.c.a, var_0.c.a), Struct_3(1000f, false, Struct_2(var_0.a, var_0.b, var_0.c), Struct_2(vec2<u32>(4294967295u, 4294967295u), var_0.b, Struct_1(0u)), vec4<u32>(22070u, var_0.c.a, var_0.c.a, 0u))), ~vec4<u32>(var_0.a.x, 72918u, var_0.a.x, 49420u) & vec4<u32>(4294967295u, var_0.c.a, var_0.c.a, 0u)), func_1(Struct_2(~vec2<u32>(var_0.a.x, 0u), vec3<f32>(var_0.b.x, var_0.b.x, -1000f), Struct_1(0u)))), Struct_2(min(func_6(Struct_4(Struct_3(765f, var_1.x, Struct_2(var_0.a, vec3<f32>(var_0.b.x, -110f, -646f), var_0.c), Struct_2(vec2<u32>(var_0.c.a, var_0.a.x), var_0.b, Struct_1(var_0.a.x)), vec4<u32>(3016u, 1u, var_0.c.a, var_0.c.a)), Struct_1(var_0.a.x)), func_6(Struct_4(Struct_3(var_0.b.x, true, Struct_2(vec2<u32>(var_0.c.a, var_0.c.a), vec3<f32>(-905f, -1265f, var_0.b.x), Struct_1(9337u)), Struct_2(var_0.a, vec3<f32>(-1352f, var_0.b.x, var_0.b.x), Struct_1(0u)), vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, var_0.a.x)), Struct_1(var_0.c.a)), Struct_2(var_0.a, vec3<f32>(-1943f, -865f, var_0.b.x), var_0.c), vec4<u32>(40958u, var_0.c.a, 1u, 72581u), Struct_3(var_0.b.x, false, Struct_2(vec2<u32>(53178u, 19821u), var_0.b, var_0.c), Struct_2(vec2<u32>(23883u, var_0.c.a), var_0.b, Struct_1(0u)), vec4<u32>(var_0.c.a, 0u, 59299u, 4294967295u))), select(vec4<u32>(1u, 31137u, 1u, 1u), vec4<u32>(var_0.a.x, var_0.c.a, 86619u, 4294967295u), false), func_5(Struct_2(var_0.a, var_0.b, var_0.c))).a, func_6(Struct_4(Struct_3(766f, var_1.x, Struct_2(vec2<u32>(var_0.a.x, var_0.a.x), vec3<f32>(350f, -733f, 1198f), var_0.c), Struct_2(var_0.a, vec3<f32>(-1000f, 212f, var_0.b.x), Struct_1(var_0.c.a)), vec4<u32>(var_0.a.x, var_0.c.a, 1u, 9028u)), Struct_1(var_0.a.x)), func_5(Struct_2(var_0.a, vec3<f32>(var_0.b.x, 323f, var_0.b.x), var_0.c)).c, vec4<u32>(1u, 4294967295u, 0u, 84070u) | vec4<u32>(50605u, var_0.a.x, 0u, var_0.c.a), func_5(Struct_2(var_0.a, vec3<f32>(var_0.b.x, 1000f, var_0.b.x), var_0.c))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(-var_0.b))), Struct_1(var_0.a.x & var_0.a.x)), _wgslsmith_mod_vec4_u32(~func_5(Struct_2(vec2<u32>(var_0.a.x, 1u), vec3<f32>(var_0.b.x, 1436f, -971f), Struct_1(13953u))).e, vec4<u32>(abs(~var_0.c.a), 13467u, ~4294967295u, _wgslsmith_mod_u32(48562u, 4294967295u))), Struct_3(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * -290f) - _wgslsmith_f_op_f32(-528f - 1112f))), true, Struct_2(var_0.a, var_0.b, var_0.c), Struct_2(~var_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1808f, 564f, 569f) + var_0.b))), func_1(func_6(Struct_4(Struct_3(var_0.b.x, false, Struct_2(vec2<u32>(var_0.a.x, 63201u), vec3<f32>(var_0.b.x, var_0.b.x, -3060f), var_0.c), Struct_2(vec2<u32>(var_0.a.x, 1u), var_0.b, var_0.c), vec4<u32>(1u, 47356u, 28176u, 10298u)), Struct_1(var_0.a.x)), Struct_2(vec2<u32>(var_0.a.x, var_0.a.x), var_0.b, var_0.c), vec4<u32>(1u, var_0.a.x, 39058u, var_0.a.x), Struct_3(1000f, true, Struct_2(vec2<u32>(4294967295u, var_0.a.x), vec3<f32>(1531f, -1741f, var_0.b.x), Struct_1(4294967295u)), Struct_2(vec2<u32>(var_0.a.x, var_0.c.a), vec3<f32>(-1000f, -435f, var_0.b.x), var_0.c), vec4<u32>(var_0.c.a, var_0.c.a, 4294967295u, 39136u))))), vec4<u32>(var_0.c.a, min(func_5(Struct_2(var_0.a, var_0.b, var_0.c)).c.a.x, var_0.a.x), var_0.c.a, ~var_0.a.x))).c;
    var_2 = func_6(Struct_4(func_5(Struct_2(~vec2<u32>(4294967295u, 0u), vec3<f32>(-1000f, 702f, var_0.b.x), Struct_1(4294967295u))), Struct_1(func_1(func_5(Struct_2(vec2<u32>(0u, var_2.a), vec3<f32>(-1015f, var_0.b.x, var_0.b.x), Struct_1(4294967295u))).c).a)), func_5(Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1209f, -313f) + var_0.b))), var_0.c)).c, vec4<u32>(~min(4294967295u, 1u), var_0.c.a, 1u, max(~_wgslsmith_mult_u32(var_2.a, var_0.c.a), _wgslsmith_clamp_u32(func_5(Struct_2(vec2<u32>(var_2.a, 10085u), var_0.b, Struct_1(var_0.a.x))).c.a.x, var_2.a, reverseBits(var_2.a)))), func_5(Struct_2(~var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, 1000f, -191f))), var_0.b), func_1(Struct_2(vec2<u32>(0u, 4294967295u), var_0.b, Struct_1(var_0.c.a)))))).c;
    var_0 = func_5(Struct_2(vec2<u32>(~_wgslsmith_mod_u32(var_0.c.a, var_2.a), 4294967295u), var_0.b, func_1(Struct_2(~var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -965f) + vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.c)))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1421f) + vec4<f32>(-1623f, 2235f, var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, var_0.b.x, 184f, 566f)))))), ~(~(~var_0.a)) >> (_wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(31957u, 4294967295u) | (var_0.a ^ var_0.a)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(Struct_4(Struct_3(1999f, true, Struct_2(var_0.a, vec3<f32>(274f, var_0.b.x, var_0.b.x), Struct_1(var_2.a)), Struct_2(var_0.a, vec3<f32>(var_0.b.x, 857f, var_0.b.x), var_0.c), vec4<u32>(var_2.a, 1u, 52554u, 1u)), var_0.c), Struct_2(var_0.a, vec3<f32>(-156f, -590f, -245f), var_0.c), vec4<u32>(0u, 0u, var_2.a, 851u), func_5(Struct_2(vec2<u32>(4294967295u, var_0.c.a), var_0.b, Struct_1(var_2.a)))).b.x)));
}

