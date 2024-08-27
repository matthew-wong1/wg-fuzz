struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-412f, 407f), vec2<f32>(-1000f, 299f), vec2<f32>(220f, 548f), vec2<f32>(-832f, 1000f), vec2<f32>(-787f, 1000f), vec2<f32>(431f, -1676f), vec2<f32>(-2731f, -463f), vec2<f32>(-2077f, 714f), vec2<f32>(185f, -139f), vec2<f32>(-250f, -590f), vec2<f32>(280f, -376f), vec2<f32>(-309f, 1000f), vec2<f32>(935f, -1155f), vec2<f32>(455f, -1001f), vec2<f32>(-499f, 894f), vec2<f32>(605f, 395f), vec2<f32>(-253f, -1152f), vec2<f32>(-1416f, -1971f), vec2<f32>(-1000f, -126f), vec2<f32>(565f, -1776f), vec2<f32>(-309f, 363f), vec2<f32>(-450f, 154f), vec2<f32>(734f, -383f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -665f), _wgslsmith_f_op_f32(-161f + 459f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1351f) * -1136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f + 711f))))));
    global0 = array<vec2<f32>, 23>();
    let var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(-select(vec4<i32>(u_input.a, 0i, u_input.b.x, -2147483647i), vec4<i32>(u_input.a, u_input.a, 9459i, u_input.a), vec4<bool>(true, true, false, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -13156i, 22124i, 29355i), vec4<i32>(-32242i, 2147483647i, -12973i, u_input.b.x)) << (vec4<u32>(8452u, 3690u, 1u, 1u) % vec4<u32>(32u)), ~select(vec4<i32>(-2147483647i, u_input.b.x, -23137i, 1i), vec4<i32>(24169i, u_input.b.x, u_input.b.x, 0i), false))) << (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    var var_2 = true;
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(65750u, 51u), vec2<u32>(16045u, 35289u), vec2<u32>(0u, 0u)), ~vec2<u32>(41016u, 1u)), ~28725u), 67715u, ~select(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(15782u, 0u), select(false, true, false)) | countOneBits(1u), 0u);
    return true;
}

fn func_2() -> u32 {
    var var_0 = all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(u_input.a > u_input.b.x, true, false)), !vec3<bool>(all(vec4<bool>(false, true, true, true)), func_3(), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec4<bool>(false, true, true, false)))));
    var var_1 = vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(79159u, 60926u), 1u, _wgslsmith_sub_u32(48174u, 0u)), max(16599u, 5070u), 0u, _wgslsmith_clamp_u32(1u, 1u, ~6341u)), vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = select(vec2<u32>(~3159u, ~_wgslsmith_mult_u32(var_1.x, 19836u)), firstLeadingBit(~(vec2<u32>(var_1.x, var_1.x) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 22086u)) % vec2<u32>(32u)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(_wgslsmith_sub_u32(var_1.x, var_1.x) >= _wgslsmith_mult_u32(4294967295u, var_1.x), u_input.b.x > u_input.a)));
    var var_3 = u_input.b.x;
    var_3 = firstLeadingBit(-16512i >> (min(5129u, var_1.x) % 32u));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = u_input.b.x;
    global0 = array<vec2<f32>, 23>();
    let var_1 = ~(vec3<u32>(reverseBits(38150u), func_2(), 1u) | firstTrailingBit(vec3<u32>(1262u, ~2001u, ~809u)));
    let var_2 = ~(vec4<u32>(min(var_1.x, firstTrailingBit(19537u)), firstTrailingBit(4294967295u), var_1.x, 1u) ^ max(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, var_1.x, 6191u, var_1.x), vec4<u32>(25766u, var_1.x, var_1.x, 25390u), vec4<u32>(65642u, var_1.x, var_1.x, var_1.x)), vec4<u32>(4294967295u, var_1.x, 20384u, 23500u) << (vec4<u32>(37774u, 4294967295u, var_1.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(0u << (1u % 32u), 29409u, ~42676u, 28604u)));
    let var_3 = 0i >> ((~(~45930u << (var_1.x % 32u)) >> (52846u % 32u)) % 32u);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 23>();
    global0 = array<vec2<f32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f + 1977f));
    var var_1 = select(vec2<bool>(firstTrailingBit(43108u) > 1u, !(!func_1(false, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec2<bool>(true, true));
    global0 = array<vec2<f32>, 23>();
    let var_2 = Struct_3(_wgslsmith_div_u32(1u, 96184u));
    var_1 = select(!(!select(select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x)), !vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, true))), !(!select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, 8042u < var_2.a), !(!vec2<bool>(var_1.x, var_1.x)))));
    var var_3 = Struct_3(~var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(vec2<u32>(var_3.a, var_3.a) << (firstLeadingBit(vec2<u32>(0u, var_2.a)) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32((~vec2<u32>(90006u, 30508u) | (vec2<u32>(4294967295u, 27855u) | vec2<u32>(var_2.a, 19414u))) & (~vec2<u32>(1715u, var_2.a) >> ((vec2<u32>(3454u, var_3.a) | vec2<u32>(var_2.a, var_3.a)) % vec2<u32>(32u))), ~max(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(var_3.a, var_3.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(23521u, 1u)))), _wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(15706u, var_3.a))) | _wgslsmith_mult_vec2_u32(select(vec2<u32>(var_3.a, 8327u), vec2<u32>(var_3.a, 58747u), var_1.x), countOneBits(vec2<u32>(var_2.a, var_2.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~var_2.a), select(~vec2<u32>(4294967295u, var_2.a), vec2<u32>(4294967295u, var_2.a), true))));
}

