struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(0u, vec3<u32>(0u, 31558u, 29071u), 1u, vec2<f32>(-912f, 359f)), Struct_2(63566u, vec3<u32>(38532u, 17033u, 5579u), 121772u, vec2<f32>(-684f, 1449f)), Struct_2(27284u, vec3<u32>(36888u, 1u, 4294967295u), 57867u, vec2<f32>(1405f, 727f)), Struct_2(4294967295u, vec3<u32>(7212u, 3658u, 62411u), 66812u, vec2<f32>(-549f, -904f)), Struct_2(4294967295u, vec3<u32>(12894u, 6867u, 0u), 0u, vec2<f32>(-1121f, 351f)), Struct_2(27331u, vec3<u32>(1u, 15562u, 3694u), 4294967295u, vec2<f32>(-986f, 1588f)), Struct_2(3340u, vec3<u32>(4294967295u, 19586u, 4294967295u), 54491u, vec2<f32>(271f, 619f)));

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_0.b.x, 16u)];
    global2 = array<vec2<u32>, 5>();
    let var_1 = Struct_4(arg_0, -2147483647i, Struct_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4641u, arg_1.x, arg_1.x)), ~(~arg_0.b)), _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(33838u, arg_1.x, arg_1.x), arg_0.b)), abs(countOneBits(vec3<u32>(85383u, arg_0.c, global0[_wgslsmith_index_u32(50676u, 16u)])))), 122082u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - -859f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -377f))))), vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(330f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1189f, 1728f))))), Struct_1(~reverseBits(4294967295u ^ global0[_wgslsmith_index_u32(1u, 16u)]), ~firstLeadingBit(arg_0.b), 21947u));
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    return 24975u;
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = 0i;
    var var_1 = u_input.a.x;
    let var_2 = ~(~(~vec2<u32>(12258u ^ arg_0.c, reverseBits(global0[_wgslsmith_index_u32(arg_0.c, 16u)]))));
    let var_3 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)) ^ ~_wgslsmith_sub_vec2_i32(u_input.a.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(1i, 9021i))), u_input.a.yz);
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(2197f)), _wgslsmith_f_op_f32(-1421f - 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-837f, -930f), vec2<f32>(778f, -694f))))))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -223f);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + _wgslsmith_f_op_f32(797f + -647f))), -835f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(427f)))));
    let var_3 = any(vec2<bool>(false, !(!var_0)));
    let var_4 = Struct_1(max(reverseBits(arg_0.x), firstTrailingBit(global0[_wgslsmith_index_u32(~4294967295u, 16u)])), _wgslsmith_add_vec3_u32(~(~vec3<u32>(2514u, global0[_wgslsmith_index_u32(11360u, 16u)], 52339u)) | reverseBits(vec3<u32>(arg_0.x, arg_0.x, 0u)), ~_wgslsmith_div_vec3_u32(max(arg_0, vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19989u, 16u)], 16u)])), arg_0)), ~4294967295u);
    return ~(~(select(abs(-2147483647i), _wgslsmith_sub_i32(u_input.a.x, 0i), var_3) & ~u_input.a.x));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    global0 = array<u32, 16>();
    var var_0 = !(!(!(!vec4<bool>(arg_1, arg_0.d.x, arg_0.d.x, arg_1))));
    var var_1 = false;
    let var_2 = 1u;
    return ~func_4(vec3<u32>(_wgslsmith_mult_u32(min(var_2, arg_0.c.a), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 16u)])), func_2(arg_0.e, ~vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 16u)])), arg_0.a.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(i32(-1i) * -1i, 32662i, _wgslsmith_mult_i32(select(75961i, func_1(Struct_4(Struct_1(0u, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 3199u, 4294967295u), 1u), u_input.a.x, Struct_2(global0[_wgslsmith_index_u32(13141u, 16u)], vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(57200u, 16u)], 8067u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94236u, 16u)], 16u)], vec2<f32>(-1292f, -411f)), vec2<bool>(true, true), Struct_1(global0[_wgslsmith_index_u32(14654u, 16u)], vec3<u32>(35560u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43413u, 16u)], 16u)], global0[_wgslsmith_index_u32(25787u, 16u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)])), true, ~vec2<i32>(2147483647i, -1i)), true), func_1(Struct_4(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1982u, 16u)], 16u)], vec3<u32>(148874u, global0[_wgslsmith_index_u32(10248u, 16u)], 4294967295u), 4294967295u), countOneBits(u_input.a.x), global1[_wgslsmith_index_u32(~4294967295u, 7u)], vec2<bool>(true, false), Struct_1(11675u, vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 102937u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)]), 0u)), all(vec3<bool>(false, false, false)) != true, firstLeadingBit(u_input.a.zz))), func_1(Struct_4(Struct_1(global0[_wgslsmith_index_u32(~50903u, 16u)], vec3<u32>(global0[_wgslsmith_index_u32(51191u, 16u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28058u, 16u)], 16u)], 16u)]) | vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34931u, 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)]), u_input.a.x, Struct_2(global0[_wgslsmith_index_u32(0u, 16u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15041u, 16u)], 16u)], 16u)], 16u)], 16u)], vec3<u32>(75556u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20231u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4378u, 16u)], 16u)], 16u)]), func_2(Struct_1(4294967295u, vec3<u32>(60665u, 4294967295u, 15788u), 9690u), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 5u)]), _wgslsmith_div_vec2_f32(vec2<f32>(119f, -371f), vec2<f32>(-936f, 912f))), vec2<bool>(true, true), Struct_1(global0[_wgslsmith_index_u32(25957u, 16u)], ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 1u, global0[_wgslsmith_index_u32(39649u, 16u)]), global0[_wgslsmith_index_u32(4294967295u, 16u)])), true, vec2<i32>(-4868i, u_input.a.x)));
    let var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, -951f, _wgslsmith_f_op_f32(972f + -1327f), 1531f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -653f, 285f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1355f, var_1.x, 822f, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1813f, var_1.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, -510f, -552f, var_1.x))))));
    global2 = array<vec2<u32>, 5>();
    var_0 = vec4<i32>(_wgslsmith_div_i32(-15378i, u_input.a.x), -21573i << (max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(21524u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(54972u, 0u, 91605u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 16u)]))), firstLeadingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42312u, 16u)], 16u)], 16u)]))) % 32u), u_input.a.x, func_4(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29742u, 16u)], 16u)], 16u)]), vec3<u32>(7684u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36026u, 16u)], 16u)], 16u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13260u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83133u, 16u)], 16u)], 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])) & (vec3<u32>(global0[_wgslsmith_index_u32(44270u, 16u)], 43758u, 1u) >> (vec3<u32>(global0[_wgslsmith_index_u32(7492u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], 1u) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1305f, -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = vec4<bool>(true, any(vec4<bool>(true, true, 1322f < var_1.x, true)) || !any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    let var_4 = Struct_3(Struct_2(~global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(45848u, global0[_wgslsmith_index_u32(21105u, 16u)]), 16u)], _wgslsmith_sub_vec3_u32(vec3<u32>(select(0u, 49568u, true), 1u, 21624u), ~max(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(146362u, 16u)], 16u)], 22816u), vec3<u32>(global0[_wgslsmith_index_u32(14891u, 16u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], 16u)]))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(func_2(Struct_1(4294967295u, vec3<u32>(0u, global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12949u, 16u)], 16u)]), global0[_wgslsmith_index_u32(28798u, 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 1u)), 16u)], 1152u >> (global0[_wgslsmith_index_u32(1u, 16u)] % 32u)), 16u)], _wgslsmith_add_u32(1u, 14016u) << (1u % 32u)), vec2<f32>(var_1.x, -173f)), vec3<u32>(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)] ^ max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(116379u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21395u, 16u)], 16u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~4294967295u), 16u)], 16u)] >> (~global0[_wgslsmith_index_u32(5184u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23082u, 16u)], 16u)] % 32u), 16u)] % 32u), 0u), abs(firstLeadingBit(vec3<i32>(var_0.x, 1i, u_input.a.x) & u_input.a.zxw)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(global0[_wgslsmith_index_u32(0u, 16u)]), ~14648u), 7u)], var_3.xxx);
    var_3 = select(vec4<bool>(true, any(select(!var_3.wy, !var_3.zz, vec2<bool>(false, false))), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_4.e.x, false, var_4.e.x), false), vec4<bool>(var_3.x, var_4.e.x, true, var_4.e.x), !var_3.x)), select(!(var_2.x == 493f), ~(-2147483647i) > _wgslsmith_mod_i32(var_0.x, u_input.a.x), !all(vec4<bool>(false, var_4.e.x, true, var_4.e.x)))), select(!vec4<bool>(var_4.e.x, var_4.e.x, true, select(true, false, var_4.e.x)), !select(select(vec4<bool>(var_3.x, true, var_4.e.x, var_4.e.x), vec4<bool>(false, false, var_3.x, var_3.x), false), select(vec4<bool>(true, var_3.x, false, var_3.x), vec4<bool>(false, var_3.x, true, var_4.e.x), vec4<bool>(var_3.x, false, var_4.e.x, var_3.x)), true), select(vec4<bool>(var_4.e.x, true, var_3.x, true), !select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(false, var_3.x, var_4.e.x, false), var_4.e.x), select(vec4<bool>(true, false, var_3.x, false), vec4<bool>(var_3.x, true, false, var_4.e.x), !var_3.x))), !vec4<bool>(any(!vec2<bool>(var_3.x, var_3.x)), all(vec3<bool>(var_3.x, var_4.e.x, var_4.e.x)), true, any(vec4<bool>(false, var_3.x, true, var_4.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, var_4.a.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~56446u << (global0[_wgslsmith_index_u32(1u, 16u)] % 32u), 16u)], 16u)], var_4.a.c);
}

