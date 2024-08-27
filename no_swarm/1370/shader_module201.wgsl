struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<f32, 29>;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(54035u, true, vec2<i32>(1i, i32(-2147483648)), 0i, Struct_1(2147483647i, vec4<bool>(true, true, false, true))), Struct_2(34091u, false, vec2<i32>(48995i, 15920i), -1i, Struct_1(-27645i, vec4<bool>(true, true, true, false))), Struct_2(39701u, false, vec2<i32>(-1i, 63619i), 53205i, Struct_1(-10008i, vec4<bool>(false, false, true, false))), Struct_2(29975u, true, vec2<i32>(20183i, 35738i), i32(-2147483648), Struct_1(-7857i, vec4<bool>(true, false, true, false))), Struct_2(54133u, false, vec2<i32>(48674i, 0i), 1i, Struct_1(8081i, vec4<bool>(false, true, true, false))), Struct_2(0u, true, vec2<i32>(12633i, 1i), -7720i, Struct_1(2147483647i, vec4<bool>(false, true, false, true))), Struct_2(1u, true, vec2<i32>(2147483647i, -28060i), -41482i, Struct_1(-1i, vec4<bool>(true, true, false, false))), Struct_2(10902u, false, vec2<i32>(4791i, 0i), -30598i, Struct_1(1i, vec4<bool>(true, true, true, true))), Struct_2(40481u, false, vec2<i32>(-14001i, -1i), -68302i, Struct_1(54319i, vec4<bool>(false, true, false, false))), Struct_2(1u, false, vec2<i32>(i32(-2147483648), 2147483647i), i32(-2147483648), Struct_1(-56893i, vec4<bool>(true, false, true, true))), Struct_2(4294967295u, true, vec2<i32>(1i, -2150i), 0i, Struct_1(-20295i, vec4<bool>(false, false, true, true))), Struct_2(40573u, true, vec2<i32>(16596i, 16929i), 1i, Struct_1(-24322i, vec4<bool>(true, false, false, false))), Struct_2(26934u, true, vec2<i32>(-1i, 19075i), 0i, Struct_1(-1i, vec4<bool>(false, true, true, false))), Struct_2(14226u, true, vec2<i32>(-27339i, -28896i), 0i, Struct_1(0i, vec4<bool>(false, false, true, true))), Struct_2(1u, true, vec2<i32>(0i, 46080i), 10925i, Struct_1(2147483647i, vec4<bool>(false, false, false, true))), Struct_2(27665u, true, vec2<i32>(2147483647i, -6176i), 2453i, Struct_1(-12802i, vec4<bool>(true, true, false, false))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 29u)], -351f, -634f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(1u, 29u)], -832f, global2[_wgslsmith_index_u32(44341u, 29u)]), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 29u)], global2[_wgslsmith_index_u32(arg_0, 29u)], 237f))), vec3<f32>(-1182f, 1253f, global2[_wgslsmith_index_u32(u_input.a, 29u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2593f + global2[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), !all(global1[_wgslsmith_index_u32(u_input.d.x, 3u)]))), 2658f, -280f));
    global1 = array<vec4<bool>, 3>();
    var var_1 = global3[_wgslsmith_index_u32(14822u, 16u)];
    var var_2 = abs(~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(u_input.a, u_input.d.x), 4294967295u));
    global1 = array<vec4<bool>, 3>();
    return -70907i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_2, 16>();
    var var_0 = -571f;
    let var_1 = countOneBits(-(max(select(arg_1.c, vec2<i32>(u_input.c, arg_2.a), vec2<bool>(false, arg_2.b.x)), vec2<i32>(25438i, arg_2.a)) | (arg_1.c | reverseBits(vec2<i32>(-2147483647i, 0i)))));
    let var_2 = vec3<i32>(51082i, ~countOneBits(func_3(_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(arg_1.a, u_input.d.x)), select(false, false, arg_1.b), countOneBits(arg_1.c))), u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_0.yxy);
    return arg_2.a;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = arg_0;
    global2 = array<f32, 29>();
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.yy, firstTrailingBit(u_input.b.zz)), reverseBits(vec2<i32>(reverseBits(~0i), abs(func_2(vec4<f32>(707f, -1145f, -1140f, -992f), global3[_wgslsmith_index_u32(26883u, 16u)], Struct_1(2147483647i, vec4<bool>(true, false, false, false)))))));
    var var_2 = Struct_3(any(select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(any(global1[_wgslsmith_index_u32(26128u, 3u)]), true), vec2<bool>(true, true))), Struct_2(1u, _wgslsmith_f_op_f32(-334f - _wgslsmith_f_op_f32(614f * -1344f)) > _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 27773u), 29u)]), _wgslsmith_add_vec2_i32(select(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, -15373i)), ~vec2<i32>(-52390i, u_input.b.x), vec2<bool>(true, true)), u_input.b.xy), min(_wgslsmith_clamp_i32(var_1.x << (u_input.d.x % 32u), 1i, ~2147483647i), ~(-2875i)), Struct_1(43745i, select(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(u_input.a, 3u)], vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 284f, var_0.x, 893f) + arg_0), var_0)))), select(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 23122i, 1i), vec4<i32>(var_1.x, var_1.x, var_1.x, 0i))), abs(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-18229i, 21341i, var_1.x, -1i), vec4<i32>(23442i, 53938i, 15211i, 1i)))), select(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), u_input.d.xz), 3u)], global1[_wgslsmith_index_u32((1u << (u_input.a % 32u)) | ~1u, 3u)], any(vec3<bool>(true, true, true)))), reverseBits(abs(select(vec4<i32>(var_1.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -3393i, var_1.x, 2673i), true) | -vec4<i32>(var_1.x, var_1.x, -21815i, 0i))));
    let var_3 = Struct_3(var_2.b.b, Struct_2(22010u, any(var_2.b.e.b.yxz), vec2<i32>(u_input.b.x, -(var_2.b.c.x >> (var_2.b.a % 32u))), _wgslsmith_mult_i32(-42746i, var_2.e.x), var_2.b.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0)) - _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(var_0.x, 1617f, 652f, 934f), var_2.b.e.b))) - vec4<f32>(-916f, _wgslsmith_div_f32(-796f, 611f), _wgslsmith_f_op_f32(arg_0.x + 170f), var_2.c.x)) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.x, var_0.x), -119f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 29u)] + global2[_wgslsmith_index_u32(0u, 29u)]), false)), 1623f)), vec4<i32>(~37693i, var_2.b.d, 1i | ~select(var_2.b.c.x, 20143i, var_2.a), ~var_1.x), vec4<i32>(max(var_1.x << (18334u % 32u), _wgslsmith_mod_i32(~(-1i), 0i >> (u_input.a % 32u))), i32(-1i) * -1i, min(firstLeadingBit(var_1.x), -var_1.x) << (14029u % 32u), 0i));
    return _wgslsmith_clamp_u32(u_input.d.x, ~(~1u), _wgslsmith_mult_u32(~var_3.b.a, min(1u, u_input.d.x))) & ~abs(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(-max(vec4<i32>(u_input.c, 43335i, 72253i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 1i)) << (vec4<u32>(1036u & u_input.a, ~u_input.a, func_1(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.a, 29u)], 1272f, -723f)), u_input.a ^ u_input.d.x) % vec4<u32>(32u))));
    global1 = array<vec4<bool>, 3>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(26833u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)]) + vec2<f32>(-1249f, -1370f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.d.x, 29u)]) * vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], -502f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2124f, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-786f, global2[_wgslsmith_index_u32(u_input.a, 29u)]) + vec2<f32>(232f, global2[_wgslsmith_index_u32(0u, 29u)])))))));
    global2 = array<f32, 29>();
    let var_2 = Struct_1(firstLeadingBit(min(0i, -func_3(4294967295u, true, var_0.xy))), !select(select(vec4<bool>(true, false, false, false), global1[_wgslsmith_index_u32(~u_input.a, 3u)], true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, false, false), any(vec3<bool>(true, true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    let var_3 = u_input.d;
    var var_4 = vec4<bool>(false, any(!select(var_2.b.yxx, vec3<bool>(false, var_2.b.x, var_2.b.x), any(vec3<bool>(false, false, false)))), any(!(!var_2.b)), all(var_2.b));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(min(var_3.x, ~select(72087u, var_3.x, true)), 29u)] - global2[_wgslsmith_index_u32(~68166u, 29u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~var_3.x, 29u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(18475u, 29u)]))), _wgslsmith_f_op_f32(-860f - -1178f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2923f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 29u)], -453f, false)), _wgslsmith_f_op_f32(round(-270f)), _wgslsmith_f_op_f32(f32(-1f) * -1576f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(17937u, 29u)], var_1.x, -1000f, -343f), vec4<f32>(var_5, -392f, var_1.x, global2[_wgslsmith_index_u32(u_input.a, 29u)]), false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(768f, -1539f, global2[_wgslsmith_index_u32(127993u, 29u)], var_1.x)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, var_5, var_1.x, 478f) - vec4<f32>(-2385f, var_5, var_1.x, 983f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1141f, 528f, var_1.x, 646f) * vec4<f32>(-664f, 962f, global2[_wgslsmith_index_u32(var_3.x, 29u)], 171f)))))));
}

