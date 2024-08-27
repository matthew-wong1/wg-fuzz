struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<f32>(-871f, -214f, 262f, 336f), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(41621u, 9622u), -1i, vec4<i32>(26281i, 1i, -22313i, 14962i), vec4<bool>(false, true, true, false)), vec3<u32>(22755u, 0u, 1u), -705f), Struct_2(vec4<f32>(-880f, 685f, 106f, -1013f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 165u), -49406i, vec4<i32>(2147483647i, 2147483647i, 0i, -7548i), vec4<bool>(true, false, true, false)), vec3<u32>(0u, 0u, 4294967295u), 1270f), Struct_2(vec4<f32>(-2205f, 332f, 985f, 519f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(37801u, 0u), 1i, vec4<i32>(-19474i, -10001i, 0i, 0i), vec4<bool>(false, false, false, true)), vec3<u32>(31686u, 1u, 0u), -1652f), Struct_2(vec4<f32>(-1000f, -597f, 794f, -1000f), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(58733u, 1u), -1i, vec4<i32>(52599i, 1i, 0i, i32(-2147483648)), vec4<bool>(false, false, false, true)), vec3<u32>(1u, 46053u, 15494u), -572f), Struct_2(vec4<f32>(693f, -1125f, 1253f, -2475f), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(114830u, 4294967295u), 0i, vec4<i32>(1i, 0i, -6193i, 14693i), vec4<bool>(true, false, false, true)), vec3<u32>(1u, 63231u, 11882u), -171f), Struct_2(vec4<f32>(-1000f, 699f, 855f, -1096f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(11093u, 61599u), 2147483647i, vec4<i32>(15767i, 56991i, 2147483647i, 24944i), vec4<bool>(false, true, false, false)), vec3<u32>(4294967295u, 0u, 30592u), 102f), Struct_2(vec4<f32>(-258f, -2232f, -582f, 2738f), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(33992u, 4294967295u), 19418i, vec4<i32>(-88413i, -6451i, 761i, -1i), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 60760u, 1u), -137f), Struct_2(vec4<f32>(1000f, 802f, 850f, -454f), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 0u), -4164i, vec4<i32>(1i, 2147483647i, 0i, -31876i), vec4<bool>(true, true, true, true)), vec3<u32>(93408u, 1u, 1u), -504f), Struct_2(vec4<f32>(1809f, -730f, 943f, 1846f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(43790u, 53533u), 2147483647i, vec4<i32>(1i, -1i, 2147483647i, 2147483647i), vec4<bool>(false, true, true, false)), vec3<u32>(4294967295u, 12727u, 0u), 206f), Struct_2(vec4<f32>(-105f, 829f, 1000f, -783f), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 53310u), -7937i, vec4<i32>(0i, 1i, 0i, -37827i), vec4<bool>(false, false, false, true)), vec3<u32>(0u, 4294967295u, 1352u), 168f), Struct_2(vec4<f32>(-1123f, -949f, -1518f, 156f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(74901u, 49347u), i32(-2147483648), vec4<i32>(2147483647i, -31406i, -7097i, -1i), vec4<bool>(false, true, false, false)), vec3<u32>(46443u, 1u, 31943u), 140f));

var<private> global1: vec3<i32>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, -1i, 2147483647i);

var<private> global3: bool = false;

var<private> global4: vec4<u32> = vec4<u32>(75466u, 62525u, 1u, 0u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 11>();
    var var_0 = vec3<u32>(4294967295u, ~(~(arg_0.c.x & 60205u)) | 4294967295u, global4.x);
    global1 = select(~vec3<i32>(-1i, _wgslsmith_sub_i32(global2.x, _wgslsmith_add_i32(0i, u_input.b.x)), u_input.b.x), vec3<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, 0i, -1i, -1i) << (vec4<u32>(var_0.x, 28844u, 53386u, 16399u) % vec4<u32>(32u))) & ~vec4<i32>(global1.x, 55237i, -1684i, 14996i), _wgslsmith_mult_vec4_i32(arg_0.b.d, u_input.b) & max(u_input.b, vec4<i32>(-53699i, 2147483647i, global1.x, 1i))), global2.x, abs(firstTrailingBit(i32(-1i) * -2012i))), true);
    global1 = -min(~(~u_input.b.wxw), vec3<i32>(~global2.x, -abs(0i), _wgslsmith_mult_i32(arg_0.b.c, u_input.b.x) | 1i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, global1.x, 30220i, arg_0.b.c) ^ vec4<i32>(arg_0.b.d.x, arg_0.b.c, 2147483647i, -26446i)), select(select(u_input.b, vec4<i32>(-1i, -2147483647i, 0i, global1.x), false), -arg_0.b.d, arg_0.b.a)) >= 24044i, Struct_2(vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(556f - 774f), _wgslsmith_f_op_f32(349f - -1637f), arg_0.a.x), arg_0.b, _wgslsmith_sub_vec3_u32(vec3<u32>(global4.x ^ 53982u, var_0.x >> (var_0.x % 32u), ~1u), vec3<u32>(_wgslsmith_mod_u32(21847u, u_input.a.x), reverseBits(24949u), u_input.a.x & 0u)), arg_0.d), global0[_wgslsmith_index_u32(abs(abs(_wgslsmith_mod_u32(arg_0.c.x, 54507u))), 11u)], true);
    return vec4<bool>(!any(vec2<bool>(true, any(var_1.c.b.e.ywz))), select(all(select(!vec2<bool>(true, var_1.e), var_1.d.b.e.xx, var_1.c.b.e.x)), any(vec3<bool>(true, 34602i <= arg_0.b.d.x, true)), true), false, true);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global4 = ~firstTrailingBit(vec4<u32>(global4.x, u_input.a.x, global4.x, 4294967295u));
    var var_0 = abs(~_wgslsmith_div_vec4_u32(vec4<u32>(global4.x << (110729u % 32u), global4.x & global4.x, 23850u ^ global4.x, u_input.a.x), vec4<u32>(81267u >> (global4.x % 32u), min(u_input.a.x, u_input.a.x), global4.x, 12273u)));
    var var_1 = u_input.a.x;
    var_1 = global4.x;
    let var_2 = Struct_1(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)))), ~_wgslsmith_mod_vec2_u32(u_input.a, min(global4.zw | vec2<u32>(u_input.a.x, global4.x), ~global4.zz)), u_input.b.x, ~(-min(vec4<i32>(1i, u_input.b.x, 1i, global2.x), ~u_input.b)), select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), select(func_3(global0[_wgslsmith_index_u32(var_0.x, 11u)]), func_3(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(func_3(global0[_wgslsmith_index_u32(33891u, 11u)]), vec4<bool>(false, false, false, true), false)), vec4<bool>(false, any(vec2<bool>(false, false)), true, _wgslsmith_add_i32(u_input.b.x, arg_0) == -2147483647i)));
    return !func_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1609f, -1000f, 674f, -1200f) * _wgslsmith_div_vec4_f32(vec4<f32>(643f, 542f, 236f, -529f), vec4<f32>(665f, 1717f, -625f, 319f))), var_2, vec3<u32>(var_0.x, 1u, var_2.b.x), 1f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)))));
    global4 = firstTrailingBit(~(~select(~vec4<u32>(5135u, u_input.a.x, 21184u, 68214u), vec4<u32>(1u, 23522u, u_input.a.x, 0u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))));
    var var_1 = func_2(5756i);
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~38801u, _wgslsmith_dot_vec3_u32(vec3<u32>(33837u, 40232u, 4294967295u), global4.yxz)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(52995u, 0u, 17839u, 11681u), vec4<u32>(u_input.a.x, 0u, global4.x, u_input.a.x), var_1.x), ~vec4<u32>(1u, 110099u, u_input.a.x, u_input.a.x))) ^ u_input.a.x, u_input.a.x), 11u)];
    return Struct_3(-139f, func_3(global0[_wgslsmith_index_u32(64877u, 11u)]).x, global0[_wgslsmith_index_u32(global4.x, 11u)], Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(-965f, _wgslsmith_f_op_f32(trunc(var_3.a.x))), _wgslsmith_f_op_f32(1005f + -714f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_3.d) + -847f)), var_3.b, global4.yxx, var_3.d), func_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2.x, countOneBits(u_input.b.x)), var_3.b.d.x)).x);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> StorageBuffer {
    global1 = global2.zxz;
    var var_0 = func_1(arg_2.c.a.xw).d.b.c;
    var var_1 = _wgslsmith_div_u32(~arg_0.d.b.b.x, arg_2.c.b.b.x);
    var var_2 = vec4<f32>(-265f, arg_0.c.d, _wgslsmith_f_op_f32(abs(arg_2.d.d)), 2247f);
    var_2 = arg_0.d.a;
    return StorageBuffer(_wgslsmith_mult_i32(0i, ~arg_2.c.b.c), _wgslsmith_mod_u32(97962u, ~global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.d, arg_0.a)), _wgslsmith_f_op_f32(ceil(1403f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.zww;
    global1 = -u_input.b.yxw;
    let var_0 = vec4<u32>(global4.x, firstTrailingBit(~1u), global4.x, _wgslsmith_mult_u32(1u, firstTrailingBit(global4.x)));
    global0 = array<Struct_2, 11>();
    var var_1 = countOneBits(i32(-1i) * -global2.x);
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1401f, -796f), vec2<f32>(646f, -2221f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(871f, 663f) + vec2<f32>(908f, 966f)))), vec2<f32>(_wgslsmith_f_op_f32(round(-886f)), -290f)))), 2147483647i, Struct_3(811f, true, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2117f, 258f, 393f, -161f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, -1000f, 1000f, 202f))), func_1(vec2<f32>(-1879f, -1000f)).d.b, firstTrailingBit(var_0.zzx), _wgslsmith_f_op_f32(step(-1021f, _wgslsmith_f_op_f32(-1148f - 938f)))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, 1000f)))).d, !select(true, true, all(vec4<bool>(true, true, false, false)))));
}

