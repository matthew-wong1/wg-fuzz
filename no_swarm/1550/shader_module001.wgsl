struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(16530i, -52769i, 8226i, 1i);

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(19734i, 0i, 2147483647i, 71993i), vec4<i32>(-7802i, 0i, 1i, 2147483647i), vec4<i32>(-18777i, 2147483647i, 33812i, 0i));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<f32>(1329f, 245f), vec2<u32>(47291u, 4294967295u), vec2<i32>(1i, -1i)), Struct_2(vec2<f32>(-144f, 1205f), vec2<u32>(4294967295u, 1u), vec2<i32>(26774i, 1i)), Struct_2(vec2<f32>(-2200f, -657f), vec2<u32>(31775u, 1601u), vec2<i32>(2147483647i, -44035i)), Struct_2(vec2<f32>(257f, 2018f), vec2<u32>(0u, 67399u), vec2<i32>(68045i, 15084i)), Struct_2(vec2<f32>(1912f, 1676f), vec2<u32>(73581u, 47629u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<f32>(-2129f, 844f), vec2<u32>(1u, 31279u), vec2<i32>(-1i, 2147483647i)), Struct_2(vec2<f32>(901f, -556f), vec2<u32>(0u, 15434u), vec2<i32>(-3976i, 0i)), Struct_2(vec2<f32>(1941f, -1626f), vec2<u32>(8203u, 4294967295u), vec2<i32>(0i, 87930i)), Struct_2(vec2<f32>(2069f, 289f), vec2<u32>(33305u, 51635u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<f32>(-1311f, -1234f), vec2<u32>(1u, 0u), vec2<i32>(2147483647i, -1i)), Struct_2(vec2<f32>(252f, -238f), vec2<u32>(51887u, 1u), vec2<i32>(1i, 25074i)), Struct_2(vec2<f32>(-735f, 1048f), vec2<u32>(4294967295u, 1u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<f32>(947f, -458f), vec2<u32>(0u, 1u), vec2<i32>(1i, 0i)), Struct_2(vec2<f32>(2494f, 160f), vec2<u32>(4294967295u, 1u), vec2<i32>(3868i, 21425i)), Struct_2(vec2<f32>(1797f, -503f), vec2<u32>(4294967295u, 0u), vec2<i32>(50455i, -3968i)), Struct_2(vec2<f32>(1777f, -315f), vec2<u32>(4660u, 39045u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_2(vec2<f32>(-221f, -132f), vec2<u32>(80793u, 63749u), vec2<i32>(46879i, 17495i)), Struct_2(vec2<f32>(297f, -1092f), vec2<u32>(1u, 34212u), vec2<i32>(-1i, 22457i)), Struct_2(vec2<f32>(-147f, -1104f), vec2<u32>(1u, 13345u), vec2<i32>(-757i, 0i)), Struct_2(vec2<f32>(717f, 1177f), vec2<u32>(66354u, 1u), vec2<i32>(2147483647i, i32(-2147483648))));

var<private> global3: array<f32, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global2 = array<Struct_2, 20>();
    var var_0 = false;
    let var_1 = ~u_input.d.x;
    let var_2 = -858i;
    global2 = array<Struct_2, 20>();
    return vec2<bool>((_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], -2146f)), _wgslsmith_f_op_f32(min(-1375f, global3[_wgslsmith_index_u32(56570u, 18u)]))) == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 18u)], -468f)))) && true, reverseBits(0i) < u_input.e);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = arg_1.a.b.x;
    var var_1 = vec3<bool>(false, arg_1.d, min(arg_1.a.c.x, arg_0.b.c.c.x) <= 1i);
    var var_2 = (_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(82421u, 0u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, arg_0.b.c.b.x, 0u), vec3<u32>(30299u, 78189u, u_input.a.x), vec3<u32>(0u, 1u, u_input.a.x)))) | 19266u) & arg_1.a.b.x;
    var_1 = vec3<bool>(all(vec3<bool>(false, !all(vec4<bool>(false, false, arg_1.d, arg_1.d)), _wgslsmith_f_op_f32(sign(arg_1.a.a.x)) >= _wgslsmith_f_op_f32(-406f - -1000f))), all(select(select(!vec2<bool>(arg_0.a.x, var_1.x), select(arg_0.a, arg_0.a, arg_0.a.x), select(var_1.xx, vec2<bool>(arg_1.d, true), var_1.x)), !func_3(), arg_1.d || arg_1.d)), arg_0.b.c.a.x != _wgslsmith_f_op_f32(963f + 1f));
    global2 = array<Struct_2, 20>();
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = !(!select(false, true, arg_1));
    global2 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -441f, all(select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, true), true), !vec4<bool>(arg_1, var_0, true, false), true)))) >= _wgslsmith_f_op_f32(-arg_0);
    global0 = select(-(~vec4<i32>(-2147483647i, -2147483647i, u_input.e, global0.x)), ~_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(43246u, 3u)] & vec4<i32>(global0.x, 0i, global0.x, u_input.d.x), global1[_wgslsmith_index_u32(func_2(Struct_4(vec2<bool>(false, arg_1), Struct_3(u_input.a, global3[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_1(var_0, true, arg_1), 4229u, Struct_1(var_0, arg_1, true)), Struct_5(Struct_2(vec2<f32>(arg_0, arg_0), u_input.a, vec2<i32>(-1i, -29441i)), arg_0, -793f, false), u_input.b.x), 3u)]), vec4<bool>(func_3().x, arg_1, !arg_1, true)) | firstLeadingBit(~_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, global0.x, -1i, u_input.c.x)), vec4<i32>(u_input.c.x, 6624i, 0i, u_input.c.x) | vec4<i32>(-29093i, -34194i, 0i, -34398i)));
    global3 = array<f32, 18>();
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~func_2(Struct_4(vec2<bool>(var_0, false), Struct_3(vec2<u32>(28787u, 4689u), -686f, Struct_2(vec2<f32>(336f, -249f), vec2<u32>(0u, u_input.a.x), u_input.c.yz)), Struct_1(true, var_0, var_0), u_input.b.x, Struct_1(var_0, arg_1, false)), Struct_5(global2[_wgslsmith_index_u32(50516u, 20u)], -1364f, -2052f, arg_1), u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 51499u), 53123u >> (u_input.a.x % 32u)), u_input.a.x), 3u)], -global1[_wgslsmith_index_u32(reverseBits(3474u), 3u)]), vec4<i32>(global0.x, reverseBits(1i), global0.x, global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global2 = array<Struct_2, 20>();
    global0 = min(global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<u32>(46694u, 58008u, var_0.x)))), 3u)], vec4<i32>(~(-(global0.x ^ global0.x)), ~global0.x, -func_1(-353f, true), -1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(913f, global3[_wgslsmith_index_u32(57795u, 18u)], global3[_wgslsmith_index_u32(var_0.x, 18u)])))) - vec3<f32>(-316f, _wgslsmith_f_op_f32(373f * 353f), global3[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 18u)]))));
    var var_2 = vec4<u32>(1u, _wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), var_0.x, var_0.x ^ _wgslsmith_add_u32(abs(countOneBits(24303u)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(131f, var_1.x, global3[_wgslsmith_index_u32(15693u, 18u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1913f, 512f, 602f)))), vec3<f32>(119f, var_1.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 18u)] * _wgslsmith_div_f32(-336f, -728f)))));
    var_1 = vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, max(firstTrailingBit(~1u), 17090u)), 18u)], var_1.x, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, global3[_wgslsmith_index_u32(var_0.x, 18u)], -2283f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], var_1.x, -1115f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 530f)), (func_2(Struct_4(vec2<bool>(true, true), Struct_3(var_2.ww, 279f, global2[_wgslsmith_index_u32(41631u, 20u)]), Struct_1(false, false, true), 1u, Struct_1(false, false, true)), Struct_5(global2[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(57153u, 18u)], -323f, true), countOneBits(39047u)) & ~(~13626u)) ^ var_2.x, select(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 1u, 47278u, u_input.b.x), vec4<u32>(var_0.x, 1u, u_input.a.x, 1u))), max(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 43278u, u_input.a.x, 70816u), vec4<u32>(var_0.x, var_2.x, 28185u, var_2.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 3769u, u_input.a.x, var_0.x), vec4<u32>(var_2.x, var_2.x, 0u, 4294967295u))), select(vec4<bool>(global0.x < -18804i, true, any(vec3<bool>(false, false, false)), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), true))));
}

