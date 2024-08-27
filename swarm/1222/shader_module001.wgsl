struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(976f, -2296f, -144f, 380f, -1019f, -930f, -502f, -479f, -477f, 471f, -130f, 783f, 845f, 1109f, 261f, 213f, -162f, 903f, 725f, -546f, -561f, 834f, 679f, -606f, 1589f, -558f, 1470f, -1433f, 148f, -1359f, -174f, -242f);

var<private> global1: array<i32, 29> = array<i32, 29>(1i, -35606i, 1i, 2147483647i, 22280i, -2942i, 2147483647i, -1i, 7746i, -35007i, 1i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), -1i, 42492i, 0i, 18888i, i32(-2147483648), -1i, 1i, 0i, -10889i, -16740i, 2147483647i, 2147483647i, 1i, 55480i);

var<private> global2: i32;

var<private> global3: f32 = 1106f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(180f + 540f), global0[_wgslsmith_index_u32(~arg_2.a, 32u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + global0[_wgslsmith_index_u32(1u, 32u)])))), all(!vec4<bool>(62260i <= u_input.b, true, global1[_wgslsmith_index_u32(arg_2.a, 29u)] <= -50808i, true))));
    let var_1 = arg_1.b;
    global0 = array<f32, 32>();
    let var_2 = _wgslsmith_clamp_vec3_u32((firstTrailingBit(vec3<u32>(22308u, 0u, 33151u)) << (~vec3<u32>(20312u, arg_2.a, arg_2.a) % vec3<u32>(32u))) & ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, arg_2.a), vec3<u32>(arg_2.a, 4294967295u, 0u), vec3<u32>(arg_2.a, 0u, arg_2.a)), vec3<u32>(~65110u, 4294967295u, 0u) << (vec3<u32>(63024u, 0u, select(19150u, arg_2.a, var_1.x)) % vec3<u32>(32u)), vec3<u32>(~arg_2.a, arg_2.a & arg_2.a, 1u) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, 0u, 210u), vec4<u32>(4294967295u, arg_2.a, 34043u, arg_2.a)), _wgslsmith_mod_u32(arg_2.a, arg_2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 7212u), vec2<u32>(4294967295u, arg_2.a))) % vec3<u32>(32u))) >> (~(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_2.a, 6817u), vec3<u32>(arg_2.a, arg_2.a, 0u)), firstTrailingBit(vec3<u32>(arg_2.a, arg_2.a, 12797u)), vec3<bool>(false, var_1.x, true))) % vec3<u32>(32u));
    var var_3 = var_2.xz;
    return vec3<bool>(false || (arg_1.b.x && arg_0.x), true == arg_0.x, arg_1.b.x);
}

fn func_4(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_2(~_wgslsmith_clamp_u32(max(1u, 0u), abs(abs(0u)), 71376u));
    let var_1 = Struct_3(all(select(select(vec4<bool>(true, true, true, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, false, true, arg_0.x), arg_0.x), false), vec4<bool>(all(arg_0), false, true, arg_0.x || false), arg_0.x)), func_3(select(select(select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(true, arg_0.x, false, false)), true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), ~1i < abs(global1[_wgslsmith_index_u32(1u, 29u)])), Struct_3(true, arg_0), Struct_2(~4294967295u)));
    global1 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1626f - global0[_wgslsmith_index_u32(88013u, 32u)]));
    let var_3 = vec4<u32>(0u, ~(~max(0u, var_0.a) >> (1u % 32u)), ~var_0.a, _wgslsmith_sub_u32(abs(var_0.a), ~var_0.a));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> bool {
    var var_0 = vec3<u32>(countOneBits(~arg_1.b.x & reverseBits(countOneBits(27905u))), arg_1.c, _wgslsmith_clamp_u32(arg_1.b.x, 1u << (~arg_1.c % 32u), _wgslsmith_div_u32(~arg_1.b.x, arg_1.b.x)) | 4294967295u);
    var var_1 = vec2<bool>(func_4(select(func_3(vec4<bool>(false, true, true, false), Struct_3(false, vec3<bool>(false, false, true)), Struct_2(0u)), vec3<bool>(true, false, any(vec2<bool>(true, false))), vec3<bool>(true, true, select(true, true, false)))), !any(vec2<bool>(true, true)) != false);
    var_0 = vec3<u32>(var_0.x, ~select(max(max(arg_1.c, 4294967295u), var_0.x), abs(4294967295u), !(var_1.x || true)), (arg_1.c & arg_1.b.x) & 15894u);
    var var_2 = arg_1.b.x;
    let var_3 = Struct_3(select((-55663i >= arg_1.a.x) & true, var_1.x, true | any(vec2<bool>(true, true))), vec3<bool>(false, true, func_3(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, false), var_1.x), Struct_3(var_1.x, select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x)), Struct_2(53472u)).x));
    return var_1.x & func_4(var_3.b);
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<u32> {
    global1 = array<i32, 29>();
    let var_0 = vec2<u32>(min(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 7169u, 50343u), vec4<u32>(30610u, 1u, 1u, 5741u)), ~0u)) | ~_wgslsmith_clamp_u32(1u, 1u, max(0u, 33486u)), ~select(108u, 1u, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_dot_vec4_u32(~min(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.x, 1u), vec4<u32>(4294967295u, var_0.x, 0u, 15457u)), vec4<u32>(10042u, 41170u, var_0.x, var_0.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 21547u, var_0.x), vec3<u32>(var_0.x, var_0.x, 0u)), 1u, reverseBits(1u), _wgslsmith_mult_u32(108292u, 0u)) | ~select(vec4<u32>(var_0.x, var_0.x, var_0.x, 29600u), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), false)) == var_0.x;
    let var_2 = min(-6559i, -abs(_wgslsmith_sub_i32(1i, u_input.b)));
    let var_3 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 1970f, 1000f, arg_0)), Struct_1(u_input.a.xz, vec4<u32>(var_0.x, 4294967295u, 98827u, 0u), 1u))), vec2<bool>(true, !(global1[_wgslsmith_index_u32(var_0.x, 29u)] >= u_input.b)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(func_3(vec4<bool>(true, true, false, false), Struct_3(true, vec3<bool>(false, true, false)), Struct_2(var_0.x)).xx)), false);
    return reverseBits(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(26576u, var_0.x), abs(firstTrailingBit(vec2<u32>(var_0.x, var_0.x))), firstLeadingBit(var_0 & vec2<u32>(var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(countOneBits(u_input.a), u_input.a));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(7837u, 1u)), 32u)])) + _wgslsmith_f_op_f32(224f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(12613u, 32u)], 795f))))))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(select(~0u, max(68722u, 14666u), -39121i >= u_input.a.x) & 0u, _wgslsmith_dot_vec2_u32(func_1(-224f, u_input.a.x), countOneBits(vec2<u32>(0u, 101579u)))));
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(1u > var_1.a, 31841u > var_1.a), vec2<bool>(false, true)), func_3(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(vec4<f32>(-1000f, 305f, var_0, 1000f), Struct_1(vec2<i32>(2147483647i, u_input.a.x), vec4<u32>(var_1.a, 41659u, 9165u, var_1.a), 15601u))), false), Struct_3(40312u < var_1.a, vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), Struct_2(var_1.a)).xz, true);
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, var_1.a), 29u)], -(global1[_wgslsmith_index_u32(var_1.a, 29u)] >> (86479u % 32u))), u_input.a.x), -52799i, i32(-1i) * -27679i);
    var var_4 = 1i;
    global2 = -44772i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.a, var_1.a, 4294967295u) >> (vec4<u32>(82845u, var_1.a, var_1.a, 61351u) % vec4<u32>(32u)), select(vec4<u32>(var_1.a, var_1.a, 7327u, var_1.a), vec4<u32>(var_1.a, 0u, 1u, var_1.a), true)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 4294967295u, var_1.a, 4294967295u)) | vec4<u32>(1u, var_1.a, 1u, 19108u), ~select(vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u), vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_2.x, var_2.x, var_2.x, true)))), ~(~abs(_wgslsmith_mod_u32(var_1.a, var_1.a))));
}

