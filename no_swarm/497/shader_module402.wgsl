struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_4, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_4 {
    global1 = array<Struct_4, 13>();
    let var_0 = true;
    let var_1 = -29941i;
    let var_2 = ~(~(~_wgslsmith_clamp_u32(1u, 1u, arg_2)));
    var var_3 = _wgslsmith_f_op_f32(-arg_3.x);
    return global1[_wgslsmith_index_u32(arg_2, 13u)];
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global1 = array<Struct_4, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-func_2(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.a, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(-43837i, u_input.a, 16117i, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], 1i, 41700i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), firstLeadingBit(52814u), vec2<f32>(arg_0, 101f)).a.d.x)) - vec2<f32>(-1908f, arg_0));
    let var_1 = countOneBits(vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(67679u, 3u)] << (4294967295u % 32u)), 1867i)) >> ((~(~(~vec2<u32>(11927u, 31126u))) >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 12631u), vec2<u32>(179u, 5547u), vec2<u32>(4294967295u, 4167u))) ^ vec2<u32>(~33021u, 34693u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<i32, 3>();
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(274f, arg_0)))))), vec2<f32>(1693f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -539f)))))));
    return _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(var_1.x, 2147483647i, -999i, 49864i)), vec4<i32>(u_input.a, -global0[_wgslsmith_index_u32(4294967295u, 3u)], firstLeadingBit(global0[_wgslsmith_index_u32(0u, 3u)]), ~(-7058i))), max(vec4<i32>(-22234i, (var_1.x >> (59350u % 32u)) | min(-48506i, -22377i), -88897i, ~_wgslsmith_clamp_i32(2147483647i, -13721i, global0[_wgslsmith_index_u32(35464u, 3u)])), ~(~select(vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(5382u, 3u)], 929i), vec4<i32>(var_1.x, var_1.x, 12349i, -2147483647i), false))));
}

fn func_1(arg_0: Struct_5, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = u_input.a;
    var var_1 = func_2(reverseBits(vec4<i32>(-1i) * -vec4<i32>(arg_0.b.c, 1i, -3827i, global0[_wgslsmith_index_u32(arg_2.a.a, 3u)])), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b & arg_0.b.c, 1i, -36238i, arg_0.b.c ^ 2554i), firstTrailingBit(~vec4<i32>(var_0, arg_0.b.c, 2412i, var_0))), -min(vec4<i32>(-2147483647i, var_0, 16414i, -15073i), ~vec4<i32>(-2147483647i, 1i, -1i, -2147483647i)), vec4<i32>(~(2147483647i & arg_0.b.c), firstTrailingBit(_wgslsmith_sub_i32(27558i, 1i)), -24256i, firstLeadingBit(_wgslsmith_add_i32(0i, global0[_wgslsmith_index_u32(arg_0.a.a.a, 3u)])))), ~_wgslsmith_mult_u32(arg_0.a.a.a, ~727u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(602f + _wgslsmith_f_op_f32(-548f * arg_0.a.d.x)), 807f)));
    let var_2 = false;
    global1 = array<Struct_4, 13>();
    var_1 = Struct_4(func_2(func_3(arg_0.a.d.x), vec4<i32>(arg_0.b.c, arg_0.b.c, ~(-2147483647i), countOneBits(i32(-1i) * -1i)), ~var_1.a.a.a, var_1.a.d.wx).a, vec2<u32>(125752u, _wgslsmith_mult_u32(var_1.a.a.a, 4294967295u)));
    return vec3<bool>(true, arg_2.b.x, all(!select(vec3<bool>(false, arg_2.c.x, var_2), vec3<bool>(false, var_2, false), vec3<bool>(arg_0.a.b.x, var_1.a.b.x, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(0u, 3u)], -37927i), global0[_wgslsmith_index_u32(arg_3.b.x, 3u)], _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, -27085i)), ~vec2<i32>(-1i, u_input.a))), select(~min(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 3u)], u_input.b, global0[_wgslsmith_index_u32(2261u, 3u)]), vec4<i32>(21405i, -66195i, 40340i, global0[_wgslsmith_index_u32(arg_1.a, 3u)])), max(_wgslsmith_mult_vec4_i32(vec4<i32>(-29502i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.b), vec4<i32>(2147483647i, -1i, -2147483647i, 0i)), min(vec4<i32>(51468i, -2147483647i, u_input.b, 1i), vec4<i32>(-2147483647i, 0i, global0[_wgslsmith_index_u32(1u, 3u)], 17068i))), true | select(false, false, false))), vec4<i32>(10619i, global0[_wgslsmith_index_u32(4294967295u, 3u)], firstTrailingBit(u_input.b), abs(1i)) >> (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, arg_1.a, arg_3.b.x, 0u), firstLeadingBit(vec4<u32>(arg_3.b.x, arg_3.b.x, 15080u, 34480u)), ~vec4<u32>(1u, 118399u, arg_3.b.x, arg_3.b.x)) % vec4<u32>(32u)), ~1986u, _wgslsmith_f_op_vec2_f32(arg_3.a.d.zz - arg_3.a.d.zx)).a.b.x;
    global1 = array<Struct_4, 13>();
    var_0 = select(true, true, arg_3.a.b.x);
    var var_1 = arg_3.a.a.a;
    let var_2 = Struct_2(arg_2.x, vec3<bool>(true, arg_0, true), reverseBits(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 3u)], -33235i)) << (firstLeadingBit(_wgslsmith_add_u32(4294967295u, arg_1.a) >> (_wgslsmith_add_u32(arg_1.a, 1u) % 32u)) % 32u), arg_3.a.a, func_2(func_3(-1000f) & vec4<i32>(select(-28829i, -23321i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(17227i, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(arg_1.a, 3u)]), vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(71364u, 3u)], 53541i)), global0[_wgslsmith_index_u32(min(arg_1.a, arg_1.a), 3u)], ~global0[_wgslsmith_index_u32(45891u, 3u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_1.a, 3u)], u_input.b, 2147483647i), ~vec4<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(56516u, 3u)])) ^ vec4<i32>(2147483647i, ~global0[_wgslsmith_index_u32(arg_3.a.a.a, 3u)], abs(u_input.b), ~0i), arg_3.a.a.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_3.a.d.yz, arg_3.a.d.xw)))).a.a);
    return ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a, 4294967295u, 0u, 5772u), vec4<u32>(0u, arg_3.a.a.a ^ 7015u, 10990u, 55626u & var_2.d.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global0 = array<i32, 3>();
    let var_0 = Struct_5(Struct_3(arg_1, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), u_input.a < u_input.b, true, true)), !(!func_2(vec4<i32>(-2147483647i, 65154i, global0[_wgslsmith_index_u32(arg_1.a, 3u)], global0[_wgslsmith_index_u32(46845u, 3u)]), vec4<i32>(u_input.a, 1i, 0i, -8400i), 24262u, vec2<f32>(-873f, 597f)).a.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-541f, -617f, _wgslsmith_div_f32(-1819f, -1154f), _wgslsmith_f_op_f32(f32(-1f) * -782f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-336f, 807f, -1000f, 1241f), vec4<f32>(1055f, -137f, 923f, -670f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 363f, 1197f, 632f))), true))), Struct_2(select(func_1(Struct_5(Struct_3(Struct_1(0u), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<f32>(-153f, -1027f, -143f, -563f)), Struct_2(false, vec3<bool>(false, false, false), 16438i, Struct_1(0u), arg_1), Struct_1(3749u)), all(vec3<bool>(false, false, true)), Struct_3(Struct_1(arg_0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<f32>(1706f, -923f, -434f, -762f))).x, true, true), vec3<bool>(true, true, select(all(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, false)), true)), reverseBits(0i), Struct_1(~abs(13612u)), Struct_1(~(~arg_0.x))), Struct_1(arg_1.a));
    return 61039u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 13>();
    let var_0 = abs(4294967295u);
    var var_1 = 66819u;
    var_1 = firstTrailingBit(0u) | func_5(func_4(all(vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_add_u32(var_0, var_0)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), func_1(Struct_5(Struct_3(Struct_1(32020u), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<f32>(-655f, 1130f, 1501f, 614f)), Struct_2(true, vec3<bool>(true, false, true), u_input.a, Struct_1(var_0), Struct_1(var_0)), Struct_1(var_0)), false, Struct_3(Struct_1(var_0), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<f32>(-257f, 715f, -485f, 411f))), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), func_2(abs(vec4<i32>(global0[_wgslsmith_index_u32(var_0, 3u)], 1i, 8386i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(var_0, 3u)], 46881i, 17367i), 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, 253f)))), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -6868i, u_input.b, -23006i), max(vec4<i32>(global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], -17836i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], -33983i, 1i))), (vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(43976u, 3u)], 28804i, global0[_wgslsmith_index_u32(0u, 3u)]) & vec4<i32>(global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)], u_input.b)) ^ abs(vec4<i32>(-2147483647i, u_input.b, u_input.a, 29989i)), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1763f, -436f))).a.a);
    global1 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(floor(-262f)), _wgslsmith_f_op_f32(ceil(1322f)))))), vec4<u32>(_wgslsmith_mult_u32(~1u, ~4294967295u), 4889u, 26228u, _wgslsmith_mod_u32(var_0 << (var_0 % 32u), 62644u)) ^ ~countOneBits(vec4<u32>(4163u, var_0, var_0, var_0) | vec4<u32>(var_0, var_0, 1423u, var_0)));
}

