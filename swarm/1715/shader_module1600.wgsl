struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_3) -> u32 {
    return arg_2.x;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> u32 {
    let var_0 = arg_0.e.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2656f, var_0, -582f), arg_0.e))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1164f, -145f, var_0))))) + vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(select(-721f, arg_0.e.x, true)))), -536f, _wgslsmith_f_op_f32(-var_0))), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.e), arg_0.a, vec4<u32>(arg_1.x, abs(arg_1.x | 1u), ~min(49373u, 1u), ~_wgslsmith_sub_u32(arg_1.x, arg_1.x))), arg_0.d.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(1017f - var_1.a.x), var_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a + _wgslsmith_div_vec3_f32(vec3<f32>(-1020f, -1557f, var_1.a.x), vec3<f32>(109f, -1967f, 610f))))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_0.e)), _wgslsmith_div_f32(arg_0.a, -438f), vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_1.b.c.x), 4294967295u, ~14437u, ~var_1.b.c.x) << ((countOneBits(var_1.b.c) ^ (vec4<u32>(0u, 35788u, 55211u, arg_1.x) ^ var_1.b.c)) % vec4<u32>(32u))), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -2769f, var_1.b.b, var_2.b.b) * vec4<f32>(910f, var_1.a.x, -381f, 964f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1240f, 428f, -1574f, arg_0.e.x)))))));
    var var_4 = -503f;
    return (var_1.b.c.x >> (firstLeadingBit(60553u) % 32u)) << ((arg_1.x >> ((~var_2.b.c.x >> (1u % 32u)) % 32u)) % 32u);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = false;
    let var_1 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_mult_u32(10709u, 1u), func_2(Struct_3(-203f, false, vec3<i32>(2147483647i, 8309i, 0i), vec2<bool>(true, false), vec3<f32>(1516f, -277f, -1537f)), vec2<f32>(-973f, 1030f), vec3<u32>(1u, 39090u, 59599u), Struct_3(2051f, false, vec3<i32>(u_input.a, -18375i, 1i), vec2<bool>(true, false), vec3<f32>(523f, -1000f, 429f))))), vec3<u32>(~func_3(Struct_3(1884f, false, vec3<i32>(52384i, -23993i, u_input.b.x), vec2<bool>(false, false), vec3<f32>(-1872f, 703f, 1432f)), vec3<u32>(1u, 75389u, 4294967295u)), ~4294967295u, 62572u) ^ max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, select(32860u, 1u, false), select(0u, 1u, true))));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~u_input.a, ~abs(arg_0.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, arg_0.x), vec3<i32>(13318i, -11804i, u_input.a)) | (-1i ^ u_input.a), ~abs(2147483647i)), abs(1i), min(~(~(-27433i)), 11798i)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.x), 0i, -1i, i32(-1i) * -35119i));
    let var_3 = func_2(Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(270f))))), true, -(abs(vec3<i32>(0i, 1670i, u_input.a)) | vec3<i32>(15079i, arg_0.x, -1i)), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(-950f - _wgslsmith_f_op_f32(min(-837f, 683f))), 430f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-843f - 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, 2474f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1388f, 1000f))))) * vec2<f32>(_wgslsmith_f_op_f32(floor(1102f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-751f + 1574f), _wgslsmith_f_op_f32(f32(-1f) * -316f))))), var_1, Struct_3(-389f, true, max(var_2.ywy, vec3<i32>(-2147483647i, arg_0.x | var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, var_2.x, 0i), vec4<i32>(-2147483647i, u_input.b.x, var_2.x, arg_0.x)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, 837f, -793f) - vec3<f32>(1344f, 836f, -619f))))));
    var var_4 = vec3<bool>(!all(vec2<bool>(true, true)), any(select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)))), all(!vec2<bool>(any(vec2<bool>(true, false)), true)));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1275f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 113f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(588f)) - _wgslsmith_div_f32(1257f, -340f)), true)), -1713f), Struct_1(vec3<f32>(-1701f, _wgslsmith_f_op_f32(max(1093f, _wgslsmith_f_op_f32(f32(-1f) * -1262f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1617f))))), -1462f, reverseBits(~abs(vec4<u32>(0u, 0u, 15990u, 25363u)))), true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(~arg_1.c.x) > ~countOneBits(~4294967295u), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 20158i ^ u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.a, 2147483647i)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.b.x, 2147483647i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(0i, -17218i, -6466i) << (vec3<u32>(arg_2, 4294967295u, 33116u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(14420i, 0i, -2147483647i)), vec3<i32>(u_input.b.x, -70630i, -8278i)))), select(select(vec2<bool>(arg_0.c, 1590f >= arg_1.a.x), vec2<bool>(true, true), any(select(vec3<bool>(false, false, arg_0.c), vec3<bool>(arg_0.c, true, arg_0.c), arg_0.c))), select(vec2<bool>(true, !arg_0.c), vec2<bool>(arg_0.c | arg_0.c, any(vec2<bool>(true, arg_0.c))), select(vec2<bool>(true, arg_0.c), !vec2<bool>(arg_0.c, arg_0.c), func_1(vec2<i32>(-21208i, u_input.a)).c)), true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-461f, _wgslsmith_f_op_f32(568f - 104f), _wgslsmith_f_op_f32(ceil(-516f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.a.x)) * _wgslsmith_div_f32(arg_1.b, arg_1.a.x)), -843f, arg_0.a.x))));
    let var_1 = func_1(select(var_0.c.yy, vec2<i32>(-39740i, _wgslsmith_div_i32(var_0.c.x, u_input.b.x ^ var_0.c.x)), !select(var_0.d.x, var_0.b, true))).b;
    var var_2 = ~vec2<u32>(~(~0u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(5581u, arg_1.c.x, var_1.c.x), arg_1.c.xyw), arg_1.c.zwz << (arg_1.c.wxx % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(var_1.c.ywx, vec3<u32>(arg_2, 1u, 27820u))));
    var var_3 = select(!select(vec3<bool>(true, false, true), vec3<bool>(true, func_1(vec2<i32>(1i, u_input.b.x)).c, var_0.d.x), var_0.d.x), vec3<bool>(false && (_wgslsmith_f_op_f32(floor(-967f)) != _wgslsmith_f_op_f32(arg_0.a.x - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, arg_0.a.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, 819f))), arg_0.c), _wgslsmith_add_u32(arg_2, 2837u) <= min(~(~57469u), countOneBits(~0u)));
    var var_4 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-847f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1163f - 877f) + _wgslsmith_f_op_f32(min(380f, 1326f))))), func_4(func_1(-vec2<i32>(u_input.a, 0i) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1101f, 1000f, 108f)))), _wgslsmith_f_op_f32(trunc(-1000f)), firstLeadingBit(max(vec4<u32>(17798u, 4294967295u, 14197u, 1u), vec4<u32>(4294967295u, 28159u, 0u, 1u)))), func_3(Struct_3(_wgslsmith_f_op_f32(517f + 348f), true, -vec3<i32>(u_input.a, 22656i, -7848i), vec2<bool>(true, true), vec3<f32>(-334f, 325f, 119f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(48979u, 32772u, 43281u), vec3<u32>(9073u, 0u, 0u), vec3<u32>(40290u, 36636u, 54758u)) >> (~vec3<u32>(7074u, 3664u, 31079u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(sign(1f)) <= _wgslsmith_f_op_f32(-544f + _wgslsmith_div_f32(-1217f, func_4(Struct_2(vec3<f32>(718f, 387f, 376f), Struct_1(vec3<f32>(-763f, -1240f, 319f), 331f, vec4<u32>(0u, 109748u, 23853u, 4294967295u)), false), Struct_1(vec3<f32>(139f, 593f, 1512f), -905f, vec4<u32>(1806u, 35881u, 1u, 4294967295u)), 1u).a.x)));
    let var_1 = vec2<u32>(firstTrailingBit(min(0u, 76586u & var_0.b.c.x)), var_0.b.c.x);
    let var_2 = 18847u;
    let var_3 = Struct_3(-1169f, any(select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), true), !select(vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.c)), vec2<bool>(true, true))), firstTrailingBit(vec3<i32>(-u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 1i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, -2147483647i)))), !select(select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true)), vec2<bool>(var_0.c, false), select(false, var_0.c, true)), !(!vec2<bool>(var_0.c, false)), !all(vec2<bool>(false, var_0.c))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.b.a.x, var_0.a.x) + _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, -156f, var_0.b.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1554f, 492f, -684f) - vec3<f32>(-177f, 1000f, -503f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.a * vec3<f32>(var_0.b.b, var_0.b.b, -581f)))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.a)), _wgslsmith_f_op_f32(sign(1080f)), -1431f) - vec3<f32>(_wgslsmith_f_op_f32(-429f - var_3.a), -835f, _wgslsmith_f_op_f32(ceil(var_0.a.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.b.a.x)), -233f, var_0.c)), func_4(var_0, var_0.b, 1u).c);
    let var_5 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.a.x)))) + _wgslsmith_f_op_f32(max(func_4(func_1(var_3.c.zx), var_4, ~4294967295u).a.x, _wgslsmith_f_op_f32(min(var_4.b, var_0.b.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -367f) < var_3.a, firstTrailingBit(~(-var_3.c)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, var_0.c), var_3.d.x), select(select(any(vec3<bool>(false, true, var_3.d.x)), var_0.c, var_3.d.x), all(vec2<bool>(false, true)), true || select(var_0.c, false, var_3.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(func_4(func_1(vec2<i32>(u_input.b.x, -1i)), func_4(var_0, var_4, 0u), var_4.c.x | 0u).a.x, _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-328f, -248f)))), func_1(-u_input.b >> (vec2<u32>(530u, 31016u) % vec2<u32>(32u))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(var_1, ~var_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_3.a, var_0.b.b))))), -867f)));
}

