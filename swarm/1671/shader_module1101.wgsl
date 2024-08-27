struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<f32>) -> bool {
    let var_0 = !(arg_1.b.e != ~max(10329i >> (arg_1.a.a.a.x % 32u), ~2147483647i));
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(min(~arg_1.a.a.a.x, firstLeadingBit(~(arg_1.a.a.a.x | arg_1.a.a.a.x))), 25u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, arg_1.a.b.x) + vec2<f32>(arg_1.d, 967f)), !select(vec2<bool>(false, var_0), vec2<bool>(false, arg_1.c), arg_1.e.xx)))), !any(arg_1.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2)), reverseBits((-u_input.a | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0, 0i, arg_0), vec4<i32>(arg_1.a.e, 0i, arg_1.b.e, u_input.b))) >> (~99184u % 32u)));
    return var_0;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> u32 {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = !vec2<bool>(true, func_3(-select(u_input.b, -1i, arg_0), Struct_4(Struct_2(Struct_1(vec2<u32>(arg_1.a.x, 94781u)), vec2<f32>(-1000f, 955f), false, vec2<f32>(-157f, 287f), -10037i), Struct_2(Struct_1(vec2<u32>(arg_1.a.x, arg_1.a.x)), vec2<f32>(1065f, -1771f), arg_2, vec2<f32>(-1862f, 1000f), 1i), !arg_2, -222f, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1599f, 1000f)))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<u32>(~arg_1.a.x, reverseBits(4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2021f, 904f) + vec2<f32>(191f, 1000f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(300f, 1000f), vec2<f32>(1229f, -289f)))) * vec2<f32>(_wgslsmith_f_op_f32(1616f - -447f), _wgslsmith_f_op_f32(abs(-117f)))), arg_0, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1115f, -602f), vec2<f32>(-342f, 1643f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(select(-288f, 1670f, arg_0)))), arg_3 >> (arg_1.a.x % 32u)), Struct_2(Struct_1(~firstTrailingBit(arg_1.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(540f - -531f), _wgslsmith_f_op_f32(max(328f, 817f))))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(331f, -973f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1019f, -659f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1544f, -1000f))))), (countOneBits(-11584i) ^ _wgslsmith_add_i32(u_input.b, -58953i)) | firstLeadingBit(~0i)), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)) ^ countOneBits(vec3<u32>(arg_1.a.x, 4294967295u, 52096u)), ~vec3<u32>(53833u, 50562u, 0u) | ~vec3<u32>(32980u, arg_1.a.x, arg_1.a.x)), 0u), Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1654f, 595f) - vec2<f32>(817f, _wgslsmith_f_op_f32(-1000f + -204f))), -1243f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(602f, 701f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1374f * 1218f), 1f))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3, arg_3)), arg_3), 28642i)), arg_1.a.x);
    let var_2 = Struct_3(Struct_2(Struct_1(~(~arg_1.a)), var_1.d.d, false, vec2<f32>(_wgslsmith_f_op_f32(round(-303f)), _wgslsmith_f_op_f32(-1f)), var_1.b.e), var_1.b, vec2<u32>(arg_1.a.x, var_1.e), Struct_2(Struct_1(~vec2<u32>(6091u, 0u)), var_1.a.b, _wgslsmith_f_op_f32(-var_1.a.d.x) < -688f, var_1.d.d, abs(~(-30560i))), var_1.e);
    return var_2.a.a.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = func_2(select(arg_2, !all(!vec2<bool>(arg_2, arg_2)), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~arg_0.x)), _wgslsmith_mod_u32(1u, 28570u)), 25u)], any(!select(vec3<bool>(arg_2, false, false), vec3<bool>(true, arg_2, true), vec3<bool>(false, true, arg_2))) || false, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.a, -27571i, 44496i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.b), vec4<i32>(u_input.a, u_input.b, 5239i, u_input.b))));
    let var_1 = Struct_5(false, -(~(~vec4<i32>(1i, -2147483647i, -41146i, -20012i)) >> (_wgslsmith_div_vec4_u32(min(vec4<u32>(1585u, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(var_0, var_0, 1u, var_0)), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, var_0)) % vec4<u32>(32u))));
    global0 = array<Struct_1, 25>();
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(~arg_0.x), 25u)], vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(587f)) * arg_1.x)), _wgslsmith_div_f32(arg_1.x, -203f)), all(select(vec3<bool>(true, false, any(vec4<bool>(var_1.a, true, false, false))), vec3<bool>(var_1.a, false, var_1.a), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), arg_1.x)))), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -2322i), var_1.b.x));
    global0 = array<Struct_1, 25>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(~0u, _wgslsmith_add_u32(0u, 7995u)), ~(~vec2<u32>(1u, 1u))));
    var var_1 = var_0.a << (vec2<u32>(1u, 29062u) % vec2<u32>(32u));
    var var_2 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_3 = Struct_3(func_1(abs(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, var_1.x, 12200u), vec3<u32>(var_1.x, 36747u, var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1580f, 108f, false)))), var_2.x), Struct_2(global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_clamp_u32(77597u, var_1.x, var_0.a.x)), 25u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), 1f)), any(vec2<bool>(true, var_2.x && var_2.x)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(f32(-1f) * -379f))), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.a.x, var_0.a.x), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(var_1.x, 17629u, 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1020f, 774f)), !var_2.x).b.x), 59591i), ~(~_wgslsmith_div_vec2_u32(var_0.a, firstTrailingBit(var_0.a))), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~81297u, ~4294967295u, var_1.x), vec3<u32>(reverseBits(12476u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 83128u, 4195u, 24000u), vec4<u32>(25016u, var_1.x, 10105u, var_0.a.x)), var_1.x), countOneBits(vec3<u32>(68736u, var_0.a.x, var_0.a.x) | vec3<u32>(var_0.a.x, var_0.a.x, 19782u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, -282f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-432f, 1576f)), select(select(vec2<bool>(false, var_2.x), vec2<bool>(false, var_2.x), true), vec2<bool>(true, true), vec2<bool>(var_2.x, var_2.x)))), func_3(-2147483647i, Struct_4(func_1(vec3<u32>(13845u, var_0.a.x, 12122u), vec2<f32>(-1000f, 317f), var_2.x), func_1(vec3<u32>(var_0.a.x, 0u, var_1.x), vec2<f32>(1224f, 324f), var_2.x), any(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), _wgslsmith_f_op_f32(-794f - 147f), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, false, var_2.x), var_2.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1747f, 610f) - vec2<f32>(-1859f, -372f)))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_1.x, var_0.a.x), firstLeadingBit(~select(vec3<u32>(var_1.x, 53399u, var_0.a.x), vec3<u32>(0u, var_0.a.x, var_1.x), vec3<bool>(var_2.x, true, false)))));
    let var_4 = ~(~0u);
    global0 = array<Struct_1, 25>();
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.d.x, -1140f, var_3.b.d.x, -483f) + vec4<f32>(var_3.d.d.x, _wgslsmith_f_op_f32(-940f + var_3.d.d.x), _wgslsmith_f_op_f32(-var_3.a.d.x), _wgslsmith_f_op_f32(-537f - var_3.a.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1317f, 1456f, 431f, var_3.d.b.x), vec4<f32>(var_3.d.b.x, var_3.a.b.x, var_3.d.d.x, 2124f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, var_3.d.d.x, -1162f, 275f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.d.d.x, var_3.b.b.x, 154f, var_3.b.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(685f, var_3.d.b.x, var_3.a.b.x, -640f))))))));
    let var_6 = !vec3<bool>(select(false, true, any(select(vec4<bool>(var_2.x, false, false, var_2.x), vec4<bool>(var_3.a.c, var_3.d.c, var_3.b.c, var_3.d.c), var_3.a.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-367f, 1392f))) <= 1152f, 1i > max(_wgslsmith_sub_i32(35247i, -41395i), firstLeadingBit(var_3.d.e)));
    var var_7 = !any(vec3<bool>(all(select(vec4<bool>(var_2.x, true, var_6.x, true), vec4<bool>(true, true, false, var_2.x), vec4<bool>(true, var_2.x, false, var_2.x))), var_2.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b));
}

