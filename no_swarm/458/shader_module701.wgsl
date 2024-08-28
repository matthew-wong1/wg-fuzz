struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(11290u, 4294967295u, 4294967295u, 30245u), vec4<u32>(58546u, 4294967295u, 0u, 1u), vec4<u32>(0u, 0u, 4129u, 4294967295u), vec4<u32>(60173u, 25969u, 6360u, 0u), vec4<u32>(25835u, 19274u, 4415u, 0u), vec4<u32>(4294967295u, 40196u, 0u, 86013u), vec4<u32>(42500u, 1u, 4294967295u, 14078u), vec4<u32>(0u, 1552u, 0u, 1u), vec4<u32>(1u, 25185u, 4294967295u, 0u), vec4<u32>(4294967295u, 7453u, 35694u, 0u), vec4<u32>(1u, 1u, 15461u, 0u), vec4<u32>(28821u, 4294967295u, 0u, 64084u), vec4<u32>(11668u, 0u, 1459u, 0u), vec4<u32>(30096u, 1u, 4294967295u, 45244u), vec4<u32>(5675u, 24224u, 25464u, 0u), vec4<u32>(0u, 8158u, 11713u, 4294967295u), vec4<u32>(15407u, 0u, 4294967295u, 1u), vec4<u32>(0u, 29359u, 1u, 66793u), vec4<u32>(1u, 4294967295u, 17728u, 1u), vec4<u32>(5699u, 17134u, 4294967295u, 4294967295u), vec4<u32>(36934u, 24626u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 50719u, 4294967295u), vec4<u32>(36506u, 1u, 1u, 4294967295u), vec4<u32>(0u, 26317u, 1u, 52380u), vec4<u32>(0u, 4294967295u, 9122u, 37229u));

var<private> global1: vec2<i32> = vec2<i32>(1i, 17241i);

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(false, true), vec4<i32>(-25123i, -4452i, i32(-2147483648), 0i), vec2<u32>(4838u, 0u)), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -25290i, -24097i, -18638i), vec2<u32>(28342u, 11237u)), Struct_1(vec2<bool>(true, true), vec4<i32>(20381i, -29429i, 43041i, 11499i), vec2<u32>(57229u, 0u)));

var<private> global3: array<u32, 32> = array<u32, 32>(4294967295u, 37295u, 0u, 24210u, 0u, 0u, 1u, 1u, 4294967295u, 45134u, 1u, 1u, 17821u, 11778u, 1u, 6575u, 19472u, 1u, 4294967295u, 1u, 4294967295u, 17833u, 38300u, 90417u, 1u, 17601u, 4294967295u, 31933u, 1u, 1u, 4668u, 25540u);

var<private> global4: array<f32, 25> = array<f32, 25>(680f, -1008f, -1575f, -129f, 1119f, 1577f, -713f, 1435f, -438f, -114f, -1202f, -3134f, 536f, 217f, 1674f, -313f, -1151f, 1039f, -525f, -1181f, -404f, -292f, 313f, 1328f, -180f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = max(abs(-(abs(global1.x) | u_input.a)), 1i);
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, ~global3[_wgslsmith_index_u32(47195u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(86764u, 32u)], 32u)] % 32u), 32u)]), reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 32u)]), vec2<u32>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)])))), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(13690u, 32u)], 49176u), 32u)], 32u)], 32u)], countOneBits(_wgslsmith_mod_u32(min(40590u, global3[_wgslsmith_index_u32(0u, 32u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(49738u, 32u)], 32u)], 32u)]))), vec2<u32>(select(4294967295u, 9395u, true), reverseBits(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(49746u, 32u)], select(global3[_wgslsmith_index_u32(4058u, 32u)], 1u, false), ~1u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = arg_1.c.x;
    var var_1 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_1.c.x, 4294967295u), 1u), ~_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 9196u, arg_0.x), vec4<u32>(arg_0.x, 25033u, arg_0.x, 1u)))) << (arg_1.c.x % 32u), 3u)];
    var var_2 = 1u;
    global4 = array<f32, 25>();
    return select(var_1.b.xyw, vec3<i32>(1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(16605i, var_1.b.x, -1i) | arg_1.b.yxy), -var_1.b.zzy), countOneBits(min(select(39809i, var_1.b.x, var_1.a.x), -var_1.b.x))), vec3<bool>(!(global4[_wgslsmith_index_u32(3658u >> (var_1.c.x % 32u), 25u)] >= _wgslsmith_f_op_f32(step(548f, -1000f))), ~firstLeadingBit(arg_0.x) > 1u, arg_1.a.x));
}

fn func_2(arg_0: u32) -> u32 {
    global4 = array<f32, 25>();
    let var_0 = -_wgslsmith_sub_vec3_i32(func_4(countOneBits(vec2<u32>(76347u, global3[_wgslsmith_index_u32(7155u, 32u)])), Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), -vec4<i32>(u_input.a, -13307i, -1i, -2147483647i), func_3(global1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, global4[_wgslsmith_index_u32(arg_0, 25u)], -1387f, -1749f) + vec4<f32>(1138f, 1018f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40608u, 32u)], 25u)], global4[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, 1000f, 145f, global4[_wgslsmith_index_u32(10435u, 25u)]))))), max(max(countOneBits(vec3<i32>(u_input.a, global1.x, -9169i)), -vec3<i32>(u_input.a, global1.x, -2147483647i)), -vec3<i32>(u_input.a, global1.x, 6150i)));
    let var_1 = global2[_wgslsmith_index_u32(~37320u, 3u)];
    global3 = array<u32, 32>();
    global3 = array<u32, 32>();
    return var_1.c.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>((func_2(global3[_wgslsmith_index_u32(83776u, 32u)]) ^ ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(13962u, 32u)], 107800u)) & ~abs(1u), ~(~arg_0.c.x), arg_0.c.x, 24663u);
    global3 = array<u32, 32>();
    var var_1 = Struct_1(vec2<bool>(arg_0.a.x && arg_0.a.x, arg_0.a.x && (_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(4294967295u, 25u)])) >= _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(1u, 25u)])))), _wgslsmith_add_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(-1i, -1i, 1i, u_input.a))), _wgslsmith_sub_vec4_i32(-arg_0.b, arg_0.b)), vec2<u32>(firstLeadingBit(12069u), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, var_0.x), var_0.x, arg_0.c.x >> (arg_0.c.x % 32u))));
    global2 = array<Struct_1, 3>();
    global0 = array<vec4<u32>, 25>();
    return Struct_1(arg_0.a, ~firstTrailingBit(select(vec4<i32>(-10298i, u_input.a, -1i, 51406i), -var_1.b, vec4<bool>(var_1.a.x, true, true, false))), vec2<u32>(133u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(1196u, 3u)]);
    global3 = array<u32, 32>();
    var var_1 = var_0;
    global0 = array<vec4<u32>, 25>();
    global1 = max(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global1.x), var_1.b.zw)), _wgslsmith_clamp_vec2_i32(~var_0.b.ww, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, -14426i), vec2<i32>(global1.x, var_0.b.x)), ~var_1.b.yy) >> (vec2<u32>(var_0.c.x, global3[_wgslsmith_index_u32(4294967295u, 32u)]) % vec2<u32>(32u))) | var_1.b.zx;
    let var_2 = func_1(Struct_1(var_1.a, ~(abs(vec4<i32>(var_1.b.x, 18701i, -1i, global1.x)) << (global0[_wgslsmith_index_u32(var_1.c.x, 25u)] % vec4<u32>(32u))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c.x, 32u)], 32u)], 4294967295u), var_0.c), ~var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(var_0.b.zw, _wgslsmith_sub_vec2_i32(~select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, var_2.b.x), vec2<bool>(true, var_0.a.x)), max(-var_0.b.yx, var_1.b.zx))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_2.c.x, 22769u), vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(38212u), 32u)], 32u)], var_1.c.x, var_2.c.x), abs(vec3<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(13467u, 32u)]), var_1.c.x | 37135u, abs(var_0.c.x)))), _wgslsmith_mult_u32(1u | _wgslsmith_mod_u32(~60477u, _wgslsmith_sub_u32(var_2.c.x, var_1.c.x)), 4294967295u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-870f, global4[_wgslsmith_index_u32(var_1.c.x, 25u)])), global4[_wgslsmith_index_u32(84240u, 25u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4[_wgslsmith_index_u32(var_2.c.x, 25u)], -1694f))) + vec2<f32>(-660f, 656f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4074u, 32u)], 25u)]))))))));
}

