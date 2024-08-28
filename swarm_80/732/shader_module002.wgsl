struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(-211f, Struct_1(77360i, 1u, vec3<i32>(2147483647i, 0i, 59492i), vec4<u32>(7491u, 0u, 1u, 3180u), vec4<u32>(42276u, 4294967295u, 20601u, 1u)), Struct_1(1i, 94514u, vec3<i32>(-29823i, 1i, 2147483647i), vec4<u32>(45878u, 4294967295u, 0u, 58568u), vec4<u32>(27448u, 4294967295u, 47676u, 5329u))), Struct_4(705f, Struct_1(i32(-2147483648), 61386u, vec3<i32>(0i, 68224i, -1i), vec4<u32>(4294967295u, 47479u, 4294967295u, 55416u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)), Struct_1(0i, 1u, vec3<i32>(-7744i, 2147483647i, -22887i), vec4<u32>(1u, 0u, 39189u, 1u), vec4<u32>(54057u, 86566u, 1u, 1395u))), Struct_4(1093f, Struct_1(i32(-2147483648), 87851u, vec3<i32>(-6988i, 2147483647i, -2400i), vec4<u32>(29934u, 4294967295u, 0u, 15217u), vec4<u32>(1u, 66173u, 1985u, 56420u)), Struct_1(-5334i, 1u, vec3<i32>(-2374i, 2147483647i, 20902i), vec4<u32>(55737u, 51115u, 1u, 36390u), vec4<u32>(7854u, 0u, 0u, 1u))), Struct_4(-431f, Struct_1(-24618i, 53251u, vec3<i32>(28132i, 1i, -56077i), vec4<u32>(4294967295u, 0u, 52582u, 1u), vec4<u32>(1u, 44872u, 1u, 0u)), Struct_1(24789i, 55407u, vec3<i32>(8794i, 0i, -8685i), vec4<u32>(39712u, 19273u, 0u, 24592u), vec4<u32>(4294967295u, 0u, 4294967295u, 32796u))), Struct_4(1220f, Struct_1(-1i, 63747u, vec3<i32>(0i, 723i, 2147483647i), vec4<u32>(0u, 1u, 6364u, 60657u), vec4<u32>(4140u, 4294967295u, 4294967295u, 0u)), Struct_1(49653i, 1u, vec3<i32>(1i, -1i, 2147483647i), vec4<u32>(4294967295u, 28796u, 40214u, 71463u), vec4<u32>(12677u, 6385u, 4294967295u, 14849u))), Struct_4(167f, Struct_1(-22550i, 71358u, vec3<i32>(1i, 40566i, 0i), vec4<u32>(25345u, 1u, 4294967295u, 4294967295u), vec4<u32>(846u, 4294967295u, 71056u, 9410u)), Struct_1(1i, 12811u, vec3<i32>(0i, -30392i, 504i), vec4<u32>(96746u, 4294967295u, 559u, 61467u), vec4<u32>(6532u, 1u, 9646u, 0u))), Struct_4(834f, Struct_1(46150i, 4294967295u, vec3<i32>(22416i, 22610i, 19632i), vec4<u32>(0u, 4294967295u, 3331u, 70351u), vec4<u32>(0u, 0u, 21088u, 4294967295u)), Struct_1(-18234i, 36589u, vec3<i32>(1i, 0i, -6194i), vec4<u32>(34325u, 63596u, 6566u, 4294967295u), vec4<u32>(0u, 51910u, 17133u, 17955u))), Struct_4(-1392f, Struct_1(2147483647i, 3764u, vec3<i32>(-1i, 34481i, 2147483647i), vec4<u32>(1u, 1u, 70327u, 80264u), vec4<u32>(1u, 60833u, 70615u, 1u)), Struct_1(0i, 1u, vec3<i32>(-35437i, 13419i, i32(-2147483648)), vec4<u32>(0u, 1u, 50381u, 4294967295u), vec4<u32>(75163u, 1200u, 4294967295u, 42028u))), Struct_4(-1613f, Struct_1(16299i, 123371u, vec3<i32>(-1i, 2444i, 2147483647i), vec4<u32>(43671u, 4294967295u, 0u, 46735u), vec4<u32>(4310u, 32555u, 61694u, 1u)), Struct_1(2147483647i, 1u, vec3<i32>(-6243i, 2147483647i, 0i), vec4<u32>(4294967295u, 21128u, 8836u, 1u), vec4<u32>(0u, 0u, 1u, 45657u))), Struct_4(625f, Struct_1(i32(-2147483648), 174543u, vec3<i32>(88756i, 81003i, i32(-2147483648)), vec4<u32>(1u, 5495u, 24522u, 5124u), vec4<u32>(48902u, 109023u, 12164u, 106383u)), Struct_1(49405i, 10085u, vec3<i32>(0i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 0u, 8007u, 58651u), vec4<u32>(0u, 3403u, 1u, 0u))), Struct_4(-758f, Struct_1(0i, 4294967295u, vec3<i32>(4022i, -38280i, -11806i), vec4<u32>(25118u, 21520u, 0u, 2534u), vec4<u32>(1u, 1u, 65537u, 50796u)), Struct_1(47499i, 4294967295u, vec3<i32>(1i, -1i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 876u, 4294967295u, 1u))), Struct_4(297f, Struct_1(-573i, 0u, vec3<i32>(28011i, i32(-2147483648), -1i), vec4<u32>(1u, 27147u, 1u, 4294967295u), vec4<u32>(43584u, 1u, 61485u, 0u)), Struct_1(27874i, 0u, vec3<i32>(35059i, i32(-2147483648), 7742i), vec4<u32>(14048u, 4294967295u, 0u, 1u), vec4<u32>(56711u, 11807u, 1u, 0u))), Struct_4(226f, Struct_1(13828i, 10353u, vec3<i32>(1i, 2147483647i, 18885i), vec4<u32>(117385u, 41298u, 4294967295u, 6393u), vec4<u32>(0u, 43216u, 1u, 1u)), Struct_1(2147483647i, 26641u, vec3<i32>(0i, 1i, -1i), vec4<u32>(1u, 1u, 63593u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 13451u))), Struct_4(-462f, Struct_1(-32082i, 897u, vec3<i32>(-13818i, 2147483647i, 45591i), vec4<u32>(1u, 58085u, 0u, 0u), vec4<u32>(4294967295u, 24128u, 45217u, 44375u)), Struct_1(-1i, 4294967295u, vec3<i32>(0i, 2147483647i, -8352i), vec4<u32>(47783u, 24795u, 0u, 1u), vec4<u32>(1u, 47839u, 6375u, 1u))));

var<private> global1: vec3<i32> = vec3<i32>(-4585i, -1i, 0i);

var<private> global2: array<bool, 28> = array<bool, 28>(true, true, true, true, true, false, true, true, true, true, true, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, true, true);

var<private> global3: array<i32, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    return ~(max(_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(u_input.c, 19561u) | u_input.b.yy), ~u_input.a) ^ 1u);
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(u_input.c, reverseBits(u_input.c >> (0u % 32u))), 18668u, ~firstLeadingBit(u_input.a), _wgslsmith_div_u32(4294967295u, 32759u)) << (u_input.b % vec4<u32>(32u));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~1u), u_input.c), 28u)], Struct_1(~(_wgslsmith_sub_i32(-1i, global3[_wgslsmith_index_u32(70863u, 13u)]) ^ abs(-1i)), 1207u, vec3<i32>(1i, -1i, global1.x), max(~vec4<u32>(98762u, u_input.c, var_0.x, var_0.x) ^ (vec4<u32>(4294967295u, 4294967295u, var_0.x, u_input.c) >> (vec4<u32>(1u, u_input.c, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(u_input.b | u_input.b, ~u_input.d)), ~u_input.b), global2[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(~(global3[_wgslsmith_index_u32(u_input.d.x, 13u)] << (78666u % 32u)) ^ ~global1.x, _wgslsmith_dot_vec4_u32((vec4<u32>(var_0.x, var_0.x, 1u, 28564u) ^ vec4<u32>(59762u, u_input.a, u_input.a, 29611u)) | u_input.b, select(abs(u_input.d), vec4<u32>(1u, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(63497u, 28u)]))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-27655i, 14996i, 0i) >> (vec3<u32>(u_input.a, u_input.c, 4294967295u) % vec3<u32>(32u)), min(vec3<i32>(global1.x, -2147483647i, global3[_wgslsmith_index_u32(38482u, 13u)]), vec3<i32>(global3[_wgslsmith_index_u32(1u, 13u)], 1i, global3[_wgslsmith_index_u32(var_0.x, 13u)]))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, u_input.c, 40029u)), ~vec4<u32>(u_input.d.x, var_0.x, u_input.b.x, 0u), max(u_input.b, u_input.d))), u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -909f, -2052f)), vec3<f32>(-894f, 550f, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2501f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, -2757f))), select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 28u)], global2[_wgslsmith_index_u32(var_0.x, 28u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 28u)], global2[_wgslsmith_index_u32(u_input.c, 28u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(84679u, 28u)], false), vec3<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(29892u, 28u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 28u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1395f, 959f) + vec3<f32>(arg_0, arg_0, -2478f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x - var_1.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-881f + var_1.e.x), _wgslsmith_f_op_f32(-arg_0)), 324f) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), var_1.e.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(-528f))), vec4<f32>(_wgslsmith_div_f32(var_1.e.x, -1028f), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(min(var_1.e.x, arg_0)), 1943f)))));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(-147f, var_1.e.x), var_2.yx);
    global1 = var_1.b.c;
    return select(select(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 28u)], true), vec3<bool>(var_1.a, true, global2[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], true)), !vec3<bool>(true, false, var_1.a), !vec3<bool>(var_1.a, true, var_1.c)), vec3<bool>(any(vec3<bool>(var_1.c, true, var_1.a)), all(vec4<bool>(var_1.a, var_1.a, false, false)), true), vec3<bool>(true, true, true)), !select(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(96235u, 28u)]), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(global2[_wgslsmith_index_u32(5292u, 28u)], global2[_wgslsmith_index_u32(u_input.c, 28u)], var_1.c), vec3<bool>(var_1.c, var_1.a, var_1.a)), !global2[_wgslsmith_index_u32(u_input.c, 28u)]), !(true && any(vec4<bool>(true, var_1.a, true, true)))), vec3<bool>(!global2[_wgslsmith_index_u32(~(1u << (var_1.b.b % 32u)), 28u)], any(vec3<bool>(false, true, false)) && true, global2[_wgslsmith_index_u32(var_0.x, 28u)]), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_1.b.d.x, 28u)] & false, u_input.a <= var_0.x), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(global2[_wgslsmith_index_u32(1u, 28u)] & select(false, true, true), var_1.c, true), vec3<bool>(var_1.a, _wgslsmith_mod_i32(-1551i, global3[_wgslsmith_index_u32(var_0.x, 13u)]) >= -2147483647i, true)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_4, 14>();
    let var_0 = _wgslsmith_f_op_f32(1000f * -307f);
    global0 = array<Struct_4, 14>();
    let var_1 = Struct_5(Struct_3(arg_1.x, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, arg_0) ^ vec3<i32>(arg_0, 46603i, arg_0), vec3<i32>(global1.x, global3[_wgslsmith_index_u32(97891u, 13u)], 6478i) >> (u_input.b.yxx % vec3<u32>(32u))), 11713u, select(~vec3<i32>(global1.x, global3[_wgslsmith_index_u32(u_input.d.x, 13u)], 13295i), -vec3<i32>(-8968i, arg_0, 50967i), vec3<bool>(true, true, true)), ~(~u_input.b), ~vec4<u32>(u_input.c, u_input.d.x, arg_2.x, u_input.a)), true, Struct_1(abs(firstTrailingBit(global3[_wgslsmith_index_u32(1u, 13u)])), ~(arg_2.x << (4294967295u % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -18561i, 468i) << (arg_2 % vec3<u32>(32u)), vec3<i32>(global3[_wgslsmith_index_u32(21080u, 13u)], 22799i, arg_0)), vec4<u32>(reverseBits(41136u), arg_2.x, 9686u, 4561u), u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, var_0, var_0)), vec3<f32>(var_0, 185f, var_0), select(func_3(var_0), select(vec3<bool>(true, arg_1.x, global2[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(arg_1.x, true, true), global2[_wgslsmith_index_u32(0u, 28u)]), arg_1.x)))), 2285f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_f32(1744f * _wgslsmith_f_op_f32(var_0 - 1611f)), false)), _wgslsmith_f_op_f32(-var_0));
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, 39580i, global1.x) ^ -vec4<i32>(-37045i, -2147483647i, 2147483647i, global1.x), firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(arg_2.x, 13u)], var_1.a.b.a, -13111i) ^ vec4<i32>(arg_0, -34196i, global1.x, global3[_wgslsmith_index_u32(4294967295u, 13u)]))), select(vec4<i32>(arg_0, _wgslsmith_mod_i32(-28737i, -20141i), global3[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b.a, global1.x, 1i), var_1.a.d.c)), vec4<i32>(_wgslsmith_div_i32(-2147483647i, -2147483647i), global1.x, global1.x, global1.x), !select(true, global2[_wgslsmith_index_u32(44299u, 28u)], false)), vec4<i32>(0i, -47746i, ~abs(var_1.a.d.a), -30370i)), Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(1i, arg_0), 0i, min(global3[_wgslsmith_index_u32(countOneBits(1u), 13u)], global3[_wgslsmith_index_u32(1u, 13u)])), ~u_input.c, _wgslsmith_sub_vec3_i32(var_1.a.b.c, vec3<i32>(32982i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 70230u), 13u)], -global1.x)), u_input.b, var_1.a.d.d), Struct_1(arg_0, _wgslsmith_add_u32(1u, 62501u << (func_1(-3613i, false, vec4<f32>(var_0, var_0, var_1.c, -1228f)) % 32u)), var_1.a.b.c, vec4<u32>(~var_1.a.d.d.x, ~countOneBits(4899u), arg_2.x, max(41134u, var_1.a.b.b) & arg_2.x), vec4<u32>(~_wgslsmith_mod_u32(arg_2.x, var_1.a.b.b), 1u, ~min(1u, var_1.a.d.e.x), 127932u)), vec3<bool>(all(!select(vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(arg_2.x, 28u)], false, var_1.a.a), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], false, global2[_wgslsmith_index_u32(arg_2.x, 28u)], false), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 28u)], true))), true, true), Struct_1(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.b.x, 13u)], -_wgslsmith_div_i32(global1.x, -1i)), ~26569u, ~var_1.a.d.c, min(vec4<u32>(arg_2.x, _wgslsmith_add_u32(var_1.a.b.e.x, 36809u), u_input.d.x, arg_2.x), ~vec4<u32>(var_1.a.b.d.x, 54546u, 1u, u_input.d.x)), ~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(15889u, 24748u, var_1.a.b.d.x, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, 14527u, u_input.b.x)), ~64195u, 0u)));
    return var_1.a.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    global2 = array<bool, 28>();
    let var_0 = Struct_5(Struct_3(~110168u >= ~(~arg_3.c.e.x), func_2(~(~arg_3.e.c.x), func_3(arg_0.x).yx, arg_1.d.zzz), arg_3.d.x | arg_3.d.x, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 143f, arg_0.x))), vec3<f32>(arg_0.x, -1877f, arg_0.x), arg_2.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -103f, arg_0.x), vec3<f32>(-949f, arg_0.x, 776f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) - -1033f), arg_0.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f - _wgslsmith_f_op_f32(floor(arg_0.x))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = vec4<bool>(all(vec3<bool>(!global2[_wgslsmith_index_u32(var_0, 28u)], !global2[_wgslsmith_index_u32(21813u, 28u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 20274u), u_input.b.wy), 28u)])) & !(~0u != func_1(-1i, true, vec4<f32>(-581f, 1161f, -489f, 1031f))), all(vec3<bool>(global2[_wgslsmith_index_u32(abs(~var_0), 28u)], global2[_wgslsmith_index_u32(max(8735u, func_1(-1i, global2[_wgslsmith_index_u32(4294967295u, 28u)], vec4<f32>(879f, -890f, -117f, 110f))), 28u)], false || all(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 28u)], global2[_wgslsmith_index_u32(104407u, 28u)], true)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1067f, 1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1850f, 680f)))), Struct_1(-(~global3[_wgslsmith_index_u32(1u, 13u)]), ~u_input.b.x, _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global3[_wgslsmith_index_u32(39273u, 13u)], 74273i), vec3<i32>(-2147483647i, -1i, global1.x)) ^ (vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], 25818i, global3[_wgslsmith_index_u32(u_input.d.x, 13u)]) & vec3<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 13u)], global1.x)), u_input.d, ~(~vec4<u32>(var_0, 23980u, 19453u, 74361u))), !(!vec2<bool>(global2[_wgslsmith_index_u32(61914u, 28u)], true)), Struct_2(vec4<i32>(~global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)] << (47673u % 32u), ~global1.x, ~global3[_wgslsmith_index_u32(var_0, 13u)]), func_2(~(-2147483647i), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(global1.x, 63178u << (var_0 % 32u), reverseBits(vec3<i32>(global1.x, 21456i, 31695i)), vec4<u32>(49614u, 4294967295u, var_0, 74832u), select(vec4<u32>(4294967295u, 52655u, u_input.c, u_input.d.x), vec4<u32>(var_0, u_input.d.x, 0u, u_input.c), false)), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false, false), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, 4294967295u), 28u)]), Struct_1(0i << (0u % 32u), 1u, -vec3<i32>(global1.x, -1i, global1.x), ~vec4<u32>(u_input.d.x, 68303u, 0u, 16974u), ~u_input.d))), any(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), global2[_wgslsmith_index_u32(4294967295u, 28u)])));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, 1477f, 711f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-366f, 163f, -1453f), vec3<f32>(670f, 1487f, -1000f), var_1.xzw)), vec3<f32>(1000f, -958f, -1125f), var_1.xzw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(355f, 1126f, 1783f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1347f, 1674f, 176f), vec3<f32>(-194f, 1442f, 1053f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(434f, -513f, 233f) * vec3<f32>(691f, -1716f, 1223f)), vec3<bool>(var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-921f, -2053f, -598f)))));
    global2 = array<bool, 28>();
    var var_3 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -680f)).x;
    global2 = array<bool, 28>();
    var var_4 = ~countOneBits(~(~vec3<u32>(0u, 14762u, var_0))) & ~(~(~_wgslsmith_sub_vec3_u32(u_input.d.wzx, u_input.b.wyx)));
    let var_5 = global1.yy | global1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), vec3<u32>(u_input.d.x << (abs(select(u_input.d.x, 0u, var_1.x)) % 32u), var_0, 118109u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(min(-500f, _wgslsmith_f_op_f32(min(-166f, 1000f)))), var_5.x);
}

