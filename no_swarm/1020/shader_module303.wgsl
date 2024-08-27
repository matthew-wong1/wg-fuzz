struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-874f, 868f, -924f), vec3<u32>(34080u, 1u, 34780u), vec4<bool>(false, false, true, true), 1000f), Struct_1(vec3<f32>(1192f, -724f, -1141f), vec3<u32>(73922u, 11368u, 8366u), vec4<bool>(true, true, false, false), -636f), Struct_1(vec3<f32>(192f, -757f, 1158f), vec3<u32>(1u, 23816u, 65987u), vec4<bool>(false, true, true, false), 839f), Struct_1(vec3<f32>(1000f, 1000f, -144f), vec3<u32>(0u, 17658u, 12092u), vec4<bool>(false, true, true, true), -1001f), Struct_1(vec3<f32>(133f, -665f, -2337f), vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(true, false, false, false), -1555f), Struct_1(vec3<f32>(1212f, 107f, 245f), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(false, false, false, true), -650f), Struct_1(vec3<f32>(1235f, 518f, -1207f), vec3<u32>(3067u, 18567u, 17000u), vec4<bool>(false, false, true, false), 129f), Struct_1(vec3<f32>(-864f, -718f, -1904f), vec3<u32>(37759u, 50094u, 9668u), vec4<bool>(true, false, true, true), 1000f), Struct_1(vec3<f32>(1342f, 482f, -885f), vec3<u32>(1u, 13445u, 14839u), vec4<bool>(true, true, true, true), -454f), Struct_1(vec3<f32>(446f, -349f, 402f), vec3<u32>(1u, 13920u, 4294967295u), vec4<bool>(true, false, true, true), 395f), Struct_1(vec3<f32>(112f, 870f, 142f), vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(false, false, false, true), 739f), Struct_1(vec3<f32>(-1196f, -218f, -1597f), vec3<u32>(29092u, 0u, 1u), vec4<bool>(false, false, false, false), 190f), Struct_1(vec3<f32>(-1384f, 1837f, 509f), vec3<u32>(32288u, 88042u, 1u), vec4<bool>(false, false, true, true), 170f), Struct_1(vec3<f32>(463f, 1071f, 1000f), vec3<u32>(6665u, 1u, 73763u), vec4<bool>(true, true, true, false), -684f), Struct_1(vec3<f32>(-283f, -543f, -1750f), vec3<u32>(20263u, 0u, 4294967295u), vec4<bool>(false, false, true, false), 231f), Struct_1(vec3<f32>(1553f, -894f, -1041f), vec3<u32>(4294967295u, 1353u, 2963u), vec4<bool>(false, true, false, true), -1130f), Struct_1(vec3<f32>(301f, -514f, 1397f), vec3<u32>(546u, 1u, 15477u), vec4<bool>(false, false, false, false), -1034f), Struct_1(vec3<f32>(768f, 191f, -838f), vec3<u32>(4294967295u, 63318u, 0u), vec4<bool>(true, false, true, true), -1087f), Struct_1(vec3<f32>(168f, 309f, 1000f), vec3<u32>(1u, 52155u, 0u), vec4<bool>(true, true, true, true), 875f), Struct_1(vec3<f32>(600f, 353f, 370f), vec3<u32>(1u, 10052u, 1u), vec4<bool>(true, true, false, true), -477f), Struct_1(vec3<f32>(103f, -1000f, -817f), vec3<u32>(166u, 4294967295u, 1u), vec4<bool>(true, true, true, false), 1000f), Struct_1(vec3<f32>(2186f, 144f, -976f), vec3<u32>(4294967295u, 0u, 1u), vec4<bool>(false, true, false, true), 619f), Struct_1(vec3<f32>(456f, 709f, -1044f), vec3<u32>(82483u, 0u, 119888u), vec4<bool>(true, false, true, false), 1000f), Struct_1(vec3<f32>(787f, 664f, -604f), vec3<u32>(71765u, 18323u, 1u), vec4<bool>(false, true, false, true), 154f), Struct_1(vec3<f32>(102f, -2758f, -141f), vec3<u32>(0u, 4294967295u, 9173u), vec4<bool>(true, false, true, true), -643f), Struct_1(vec3<f32>(1611f, 348f, 706f), vec3<u32>(13157u, 3561u, 0u), vec4<bool>(false, false, true, true), -559f));

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-36524i, -28139i, 32731i), vec3<i32>(-58960i, 1i, 93723i), vec3<i32>(1i, 39340i, 50879i), vec3<i32>(59916i, 0i, 0i));

var<private> global2: array<i32, 20> = array<i32, 20>(-78377i, i32(-2147483648), 95i, 0i, 18011i, -2984i, 1i, -1i, 22809i, i32(-2147483648), 4896i, 2147483647i, -1i, 2147483647i, 0i, i32(-2147483648), -48952i, -56632i, 49945i, 1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> bool {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    let var_0 = Struct_3(29441u, arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(415f, -488f, arg_0.a.d, 568f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.d, 622f, 259f, arg_0.b.x))))));
    return arg_3;
}

fn func_1(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = !(!((1u > u_input.d) | (-294f < arg_0.a))) | true;
    var var_1 = ~(~vec4<u32>(1u, ~49109u, reverseBits(min(u_input.b.x, u_input.b.x)), countOneBits(u_input.b.x)));
    let var_2 = Struct_3(~(~var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(891f, arg_0.a, arg_0.a) * vec3<f32>(1506f, arg_0.a, arg_0.a)) - vec3<f32>(arg_0.a, arg_0.a, arg_0.a)))), _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(120561u), 10053u, _wgslsmith_mod_u32(0u, var_1.x)), vec3<u32>(~0u, 4294967295u, ~0u)), !vec4<bool>(var_0, func_2(Struct_2(Struct_1(vec3<f32>(-616f, arg_0.a, arg_0.a), vec3<u32>(u_input.b.x, var_1.x, u_input.d), vec4<bool>(true, true, var_0, false), -1471f), vec2<f32>(-2018f, 1128f), 29017u, global0[_wgslsmith_index_u32(var_1.x, 26u)]), vec4<u32>(var_1.x, var_1.x, 1u, u_input.b.x), var_0, var_0), any(vec3<bool>(var_0, var_0, false)), var_0 & var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) * 455f), _wgslsmith_f_op_f32(f32(-1f) * -984f)))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f + arg_0.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_f32(-arg_0.a), 1736f));
    global2 = array<i32, 20>();
    let var_3 = 1i;
    return vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(15641u, 4u)], global1[_wgslsmith_index_u32(u_input.d, 4u)])), firstTrailingBit(vec3<i32>(-1i, 2637i, global2[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(~4294967295u, 4u)], ~_wgslsmith_mult_vec3_i32(vec3<i32>(11960i, global2[_wgslsmith_index_u32(40724u, 20u)], var_3), global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), -global2[_wgslsmith_index_u32(~1u, 20u)] >> (_wgslsmith_div_u32(firstLeadingBit(var_2.b.b.x), ~var_1.x) % 32u));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec2<i32> {
    let var_0 = select(vec3<bool>(arg_1, true, any(!(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), !select(select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, arg_1, true), !arg_1), !vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1 && false, any(vec3<bool>(true, arg_1, false)), arg_1)), all(vec3<bool>(arg_1, all(!vec4<bool>(true, true, arg_1, true)), arg_1)));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    global2 = array<i32, 20>();
    let var_1 = 637f;
    return abs(vec2<i32>(-33097i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(36075u, u_input.d), 20u)], abs(arg_0)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.ww, vec2<i32>(-34875i, arg_0)), u_input.a.xy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -289f;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-147f)) + -1877f));
    let var_2 = ~_wgslsmith_mult_vec2_i32(-func_1(var_1) & (_wgslsmith_mod_vec2_i32(vec2<i32>(29437i, -2147483647i), u_input.a.zw) | firstLeadingBit(vec2<i32>(1i, -17569i))), func_3(36639i, ~22148i < u_input.c));
    global2 = array<i32, 20>();
    var_0 = _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_div_f32(1000f, var_1.a))), _wgslsmith_f_op_f32(ceil(-689f))))));
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_f32(-var_1.a);
    var var_5 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-814f, 1880f))), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(select(1282f, 1580f, !(u_input.b.x <= 0u))), _wgslsmith_f_op_f32(var_4 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a))), _wgslsmith_f_op_f32(var_1.a + 800f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_4)))), var_3.a, -703f))));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(select(vec2<u32>(0u, 4294967295u), select(u_input.b.xw, u_input.b.xw, vec2<bool>(true, false)), vec2<bool>(true, true))), ~u_input.b.zx, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))), (select(~u_input.b.x, 13632u, true) ^ reverseBits(4294967295u)) | _wgslsmith_add_u32(~max(u_input.d, u_input.b.x), u_input.b.x), ~4294967295u, abs(35513u), -41160i);
}

