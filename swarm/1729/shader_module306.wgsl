struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(383f + 277f), _wgslsmith_f_op_f32(ceil(-569f)))) + _wgslsmith_f_op_f32(round(-1000f))), -1443f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-294f, -1465f) - _wgslsmith_f_op_f32(-1229f * -1616f))))))));
    var var_1 = true;
    var_1 = false;
    let var_2 = 8508u;
    let var_3 = Struct_3(Struct_1(select(~u_input.b, u_input.b, u_input.d <= u_input.e) & u_input.b));
    return vec3<bool>(all(vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)))), false && ((~(-2147483647i) == u_input.e) != (all(vec4<bool>(false, true, false, true)) & any(vec4<bool>(true, true, true, false)))), (true && !(-453f > var_0)) & all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_1, arg_0.b.x), ~arg_0.b.x, ~19710u, arg_1) >> (~max(arg_0.b, arg_0.b) % vec4<u32>(32u)), arg_0.b) >> (_wgslsmith_add_vec4_u32(arg_0.b, ~firstLeadingBit(arg_0.b)) % vec4<u32>(32u));
    let var_1 = Struct_1(select(~(~vec2<u32>(1u, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.b.xx, select(arg_0.b.ww, vec2<u32>(59139u, arg_0.b.x), vec2<bool>(false, arg_0.a.x))), arg_0.b.wz), false));
    var var_2 = arg_0;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -703f, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(341f)), 950f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(193f)) + 108f))));
    let var_4 = Struct_2(vec2<bool>(true & ((u_input.b.x & 46397u) <= u_input.b.x), arg_0.a.x), vec4<u32>(1u, 0u, firstTrailingBit(_wgslsmith_add_u32(var_1.a.x, 9858u)) | arg_0.b.x, ~firstLeadingBit(_wgslsmith_div_u32(21521u, var_1.a.x))), u_input.d, var_2.d, var_2.e);
    return var_4.d.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = -1000f;
    var var_1 = (firstTrailingBit(~1u) ^ _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(vec3<u32>(u_input.b.x, 88836u, 4294967295u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(arg_0, 12588u, arg_2), vec3<u32>(56003u, 4560u, u_input.b.x)) & select(vec3<u32>(1u, arg_0, 1u), vec3<u32>(u_input.b.x, arg_2, arg_2), vec3<bool>(false, true, true)))) > u_input.b.x;
    var_1 = any(vec3<bool>(false, false & !(arg_0 >= 4294967295u), func_4(Struct_2(vec2<bool>(true, false), vec4<u32>(arg_0, arg_0, u_input.b.x, 4294967295u) & vec4<u32>(4294967295u, arg_2, arg_2, arg_0), ~1i, func_3(), ~vec2<i32>(arg_1, arg_1)), arg_2)));
    var var_2 = select(vec2<bool>(false, true), vec2<bool>(true, !any(vec4<bool>(false, true, false, true))), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, func_4(Struct_2(vec2<bool>(true, false), vec4<u32>(0u, arg_0, 0u, 6652u), -23986i, vec3<bool>(true, true, true), vec2<i32>(u_input.a, u_input.e)), 0u), all(vec3<bool>(false, false, true))), func_3())));
    let var_3 = Struct_2(select(select(select(vec2<bool>(true, var_2.x), select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x)), vec2<bool>(true, true)), !vec2<bool>(var_2.x, var_2.x), func_3().yz), select(!vec2<bool>(var_2.x, false), func_3().yx, any(vec2<bool>(true, var_2.x)) & var_2.x), vec2<bool>(any(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x)), func_4(Struct_2(vec2<bool>(var_2.x, false), vec4<u32>(arg_2, 0u, 0u, arg_2), u_input.c.x, vec3<bool>(var_2.x, var_2.x, var_2.x), vec2<i32>(34541i, 3507i)), arg_0))), vec4<u32>(arg_2, ~max(u_input.b.x, u_input.b.x), u_input.b.x, 1u) << (vec4<u32>(arg_0, _wgslsmith_div_u32(21335u, arg_0), 1u, 0u) % vec4<u32>(32u)), arg_1 | u_input.a, !select(vec3<bool>(var_2.x, true, select(false, true, true)), func_3(), var_2.x), vec2<i32>(u_input.c.x, ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.e, u_input.a, 12633i, u_input.d)), vec4<i32>(-1i, -1i, -1i, u_input.a))));
    return _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(-904f * var_0)))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(~(31151u << (_wgslsmith_mult_u32(u_input.b.x, 29691u) % 32u)), arg_2.a.x));
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(~arg_2.a.x, 22685u), ~firstTrailingBit(4294967295u) >> (11661u % 32u), _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x)));
    var_1 = ~max(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(46167u, var_1.x, var_0.a.x) ^ vec3<u32>(1686u, var_0.a.x, 1u)), vec3<u32>(~u_input.b.x, var_0.a.x, ~u_input.b.x), select(~vec3<u32>(40170u, 62333u, var_1.x), vec3<u32>(22292u, var_0.a.x, 3600u) | vec3<u32>(var_0.a.x, 0u, 0u), vec3<bool>(true, true, true))), min(abs(vec3<u32>(var_0.a.x, 7295u, u_input.b.x)), vec3<u32>(_wgslsmith_mult_u32(0u, 7651u), 22525u, abs(var_1.x))));
    var_1 = max(vec3<u32>(_wgslsmith_mod_u32(~(u_input.b.x & 52257u), arg_2.a.x), arg_2.a.x, 26317u), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(35121u, var_1.x, u_input.b.x), firstTrailingBit(vec3<u32>(var_1.x, 5724u, arg_2.a.x))) & vec3<u32>(abs(u_input.b.x), ~4294967295u, arg_2.a.x | 4294967295u), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(~1u, abs(u_input.b.x)), ~(~arg_2.a.x))));
    var var_2 = _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, 2147483647i), vec3<i32>(u_input.d, 7309i, -2147483647i)), select(30857i, 1i, false), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 2147483647i, u_input.e), vec3<i32>(0i, 4302i, u_input.a)))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.e, 2147483647i)), -2147483647i, firstTrailingBit(u_input.e), 1i) >> (_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(arg_2.a.x, 50073u, var_0.a.x, arg_2.a.x)), abs(abs(vec4<u32>(u_input.b.x, var_1.x, 28704u, var_0.a.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, 0u, 28728u, u_input.b.x), abs(vec4<u32>(var_1.x, var_1.x, var_0.a.x, 4294967295u)))) % vec4<u32>(32u)));
    return Struct_1(vec2<u32>(var_1.x, ~(~4294967295u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_2(~26738u, ~(-arg_1.c << (1u % 32u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, arg_1.b.x, arg_1.b.x) >> (arg_1.b % vec4<u32>(32u))), vec4<u32>(u_input.b.x, u_input.b.x << (9892u % 32u), u_input.b.x, 0u)))), 1166f, Struct_1(vec2<u32>(~(~42u), u_input.b.x)), vec3<f32>(1f, 1f, 1f));
    let var_1 = arg_1;
    let var_2 = Struct_3(var_0);
    var var_3 = Struct_1(~(vec2<u32>(0u, 36572u) | ~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, 1u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1035f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1144f, -225f)) * -1062f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, !all(vec4<bool>(true, false, false, true)), false)), !select(vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(func_1(true, Struct_2(vec2<bool>(false, true), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.e, vec3<bool>(false, false, false), u_input.c), vec2<bool>(true, true)), true, any(vec3<bool>(false, true, false))), true), vec3<bool>(true, false, true));
    let var_1 = var_0.zx;
    var var_2 = func_5(-114f, -1000f, Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(75143u, u_input.b.x), u_input.b) << (u_input.b % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.b, min(vec2<u32>(0u, 15170u), vec2<u32>(1u, u_input.b.x))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
    var_2 = func_5(357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 311f) + _wgslsmith_f_op_f32(-667f + 984f)))), Struct_1(vec2<u32>(var_2.a.x, 1u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1231f, -1061f, 2701f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2194f, 322f, 164f) * vec3<f32>(1258f, -1820f, -874f))))))));
    var_2 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1505f), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-912f, 584f, true)))) * 1f))), func_5(1000f, -1043f, Struct_1(vec2<u32>(u_input.b.x, 8291u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), -605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(327f, 747f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1356f, 2526f, -483f)) * vec3<f32>(-434f, 2194f, -193f)))))));
    var var_3 = ~abs(min(vec4<i32>(0i | u_input.a, 1i ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d, 2147483647i, u_input.e), vec4<i32>(u_input.d, u_input.e, -16972i, u_input.a)), 1i), vec4<i32>(~35539i, u_input.e, firstTrailingBit(u_input.e), u_input.d)));
    let var_4 = var_0;
    let var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-60087i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_5)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - 576f))))), ~var_3.xww, 11313i, -vec2<i32>(_wgslsmith_dot_vec3_i32(var_3.zzx ^ vec3<i32>(u_input.e, var_3.x, -2147483647i), ~vec3<i32>(u_input.a, 1i, 3362i)), 2147483647i));
}

