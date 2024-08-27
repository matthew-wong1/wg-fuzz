struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true));

var<private> global2: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(34822u, vec2<f32>(194f, -724f), i32(-2147483648), vec4<i32>(-1621i, 2147483647i, 27301i, 2147483647i)), Struct_4(24380u, vec2<f32>(-380f, 373f), 1i, vec4<i32>(-22861i, 6525i, i32(-2147483648), 1i)), Struct_4(0u, vec2<f32>(-1528f, 1288f), 5440i, vec4<i32>(19309i, i32(-2147483648), -32755i, 2147483647i)), Struct_4(4294967295u, vec2<f32>(275f, -1135f), 33995i, vec4<i32>(-13352i, 1i, i32(-2147483648), 1i)), Struct_4(4294967295u, vec2<f32>(-660f, -809f), i32(-2147483648), vec4<i32>(0i, 2147483647i, 37644i, 0i)), Struct_4(43134u, vec2<f32>(-1418f, 1349f), 47331i, vec4<i32>(-42186i, i32(-2147483648), -40669i, 13658i)), Struct_4(0u, vec2<f32>(-448f, 599f), 0i, vec4<i32>(i32(-2147483648), i32(-2147483648), 31202i, 0i)), Struct_4(13426u, vec2<f32>(-2155f, -1640f), -22290i, vec4<i32>(-1i, 107i, 1i, 1i)), Struct_4(131034u, vec2<f32>(636f, -245f), 2147483647i, vec4<i32>(947i, 0i, 2147483647i, -9149i)), Struct_4(46442u, vec2<f32>(-698f, -1090f), 3483i, vec4<i32>(16479i, 0i, -14657i, 2147483647i)), Struct_4(1u, vec2<f32>(-1968f, 890f), 0i, vec4<i32>(2147483647i, 10261i, 0i, 2147483647i)), Struct_4(1u, vec2<f32>(370f, -684f), 2147483647i, vec4<i32>(54405i, -29541i, -1i, i32(-2147483648))), Struct_4(39093u, vec2<f32>(1650f, 1937f), 1i, vec4<i32>(i32(-2147483648), 18591i, 0i, -489i)), Struct_4(4294967295u, vec2<f32>(-719f, 387f), 26129i, vec4<i32>(i32(-2147483648), -18129i, 2147483647i, 66325i)));

var<private> global3: array<vec4<f32>, 16>;

var<private> global4: array<f32, 3> = array<f32, 3>(-447f, 834f, 222f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    global3 = array<vec4<f32>, 16>();
    global4 = array<f32, 3>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4[_wgslsmith_index_u32(40456u, 3u)], global4[_wgslsmith_index_u32(4294967295u, 3u)])))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec3<i32> {
    global3 = array<vec4<f32>, 16>();
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3())));
    var var_1 = arg_0;
    var var_2 = Struct_3(~(~1u));
    var var_3 = u_input.c.yxy ^ countOneBits(~firstTrailingBit(vec3<i32>(u_input.d, u_input.c.x, 12776i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -26259i, 2147483647i) | vec3<i32>(u_input.c.x, -2147483647i, -37853i), u_input.c.zxz));
    return u_input.c.wwz;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_5) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = Struct_1(arg_0.c.b.x, vec4<i32>(11188i, u_input.c.x, u_input.d, u_input.e) << (vec4<u32>(1u, firstLeadingBit(1u | u_input.b.x), 26558u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, arg_3.a.x)))) % vec4<u32>(32u)), abs(~arg_0.a.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c.x, _wgslsmith_mod_i32(arg_0.c.b.x, arg_1) >> (~12796u % 32u), -39954i), -arg_0.a.d, u_input.c.zxy), arg_0.b.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.b * _wgslsmith_f_op_vec3_f32(arg_0.c.e + vec3<f32>(1f, _wgslsmith_f_op_f32(-var_0.b.x), -502f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.e)) * vec3<f32>(-702f, -194f, _wgslsmith_f_op_f32(max(arg_3.b.x, global4[_wgslsmith_index_u32(4294967295u, 3u)]))))));
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, var_1.c, 22181u), vec3<u32>(u_input.b.x, 0u, arg_3.a.x)) ^ firstLeadingBit(min(vec3<u32>(var_1.c, var_0.a.x, 26015u), vec3<u32>(arg_3.a.x, arg_0.a.c, arg_3.a.x))), firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(var_1.c, 59729u), ~u_input.b.x, select(2698u, 4294967295u, true)))));
    var var_4 = ~abs(firstLeadingBit(~vec4<u32>(0u, 19632u, var_0.a.x, 1u) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.a.x, 0u), vec4<u32>(var_0.a.x, 0u, 1u, 0u))));
    return Struct_1(firstTrailingBit(var_1.b.x), _wgslsmith_div_vec4_i32(arg_0.b.b, vec4<i32>(2147483647i, countOneBits(-1i << (0u % 32u)), 26322i, u_input.a)), arg_3.a.x, ~(~(var_1.b.xyy >> (vec3<u32>(var_0.a.x, 64522u, var_4.x) % vec3<u32>(32u)))) >> (~(~(~var_4.yyy)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-arg_0.c.e));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global4 = array<f32, 3>();
    global0 = array<vec2<bool>, 4>();
    var var_0 = ~_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(arg_0.c, 0u))), u_input.b);
    global1 = array<vec4<bool>, 18>();
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 14u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -697f);
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<vec2<bool>, 4>();
    return _wgslsmith_f_op_f32(func_5(func_4(Struct_2(Struct_1(u_input.c.x, max(vec4<i32>(-9542i, u_input.e, u_input.a, -23287i), u_input.c), ~u_input.b.x, ~u_input.c.zzy, _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(u_input.b.x, 3u)], 1926f) + vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], -403f, -1190f))), Struct_1(u_input.a, ~vec4<i32>(-2147483647i, 1i, u_input.c.x, u_input.a), 53072u, func_2(false, vec4<u32>(1u, u_input.b.x, 750u, 84816u)), vec3<f32>(global4[_wgslsmith_index_u32(128u, 3u)], global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(60999u, 3u)])), Struct_1(_wgslsmith_mod_i32(u_input.a, 3666i), u_input.c, u_input.b.x, vec3<i32>(u_input.a, -41985i, u_input.d), vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(0u, 3u)], 518f))), 2147483647i, vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, 2042f, -848f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -188f)))), Struct_5(abs(~vec2<u32>(u_input.b.x, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(31354u, 3u)], -1000f, 307f), vec3<f32>(262f, global4[_wgslsmith_index_u32(35509u, 3u)], 1369f)))))));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(arg_1, u_input.c, 26249u, u_input.c.yyx, vec3<f32>(arg_2, -1491f, arg_2)), Struct_1(-17403i, u_input.c, 0u, vec3<i32>(arg_1, 0i, u_input.a), vec3<f32>(-649f, 177f, -604f)), Struct_1(u_input.c.x, u_input.c, u_input.b.x, u_input.c.wwy, vec3<f32>(-2083f, 1680f, arg_0))), 0i, _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 16u)] + vec4<f32>(-1421f, 230f, 474f, -584f)), Struct_5(vec2<u32>(127055u, u_input.b.x), vec3<f32>(arg_0, -838f, arg_2))), func_4(Struct_2(Struct_1(u_input.c.x, u_input.c, 36416u, vec3<i32>(arg_1, 27213i, -19517i), vec3<f32>(593f, arg_2, -800f)), Struct_1(arg_1, vec4<i32>(u_input.a, u_input.e, 2147483647i, u_input.e), 1u, u_input.c.xxw, vec3<f32>(-139f, global4[_wgslsmith_index_u32(20518u, 3u)], arg_2)), Struct_1(u_input.e, vec4<i32>(64887i, u_input.c.x, u_input.c.x, u_input.e), 1u, vec3<i32>(12147i, arg_1, 27950i), vec3<f32>(arg_2, arg_2, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))), countOneBits(-2147483647i), global3[_wgslsmith_index_u32(u_input.b.x << (u_input.b.x % 32u), 16u)], Struct_5(vec2<u32>(u_input.b.x, 26483u), vec3<f32>(1091f, arg_2, arg_0))), func_4(Struct_2(Struct_1(1i, u_input.c, 3054u, vec3<i32>(0i, u_input.d, arg_1), vec3<f32>(arg_0, arg_0, -1000f)), Struct_1(u_input.c.x, u_input.c, 6544u, u_input.c.zwx, vec3<f32>(556f, arg_2, 1739f)), Struct_1(0i, vec4<i32>(arg_1, -2147483647i, arg_1, u_input.e), u_input.b.x, u_input.c.ywx, vec3<f32>(-1311f, 1000f, -1864f))), firstTrailingBit(14742i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1072f, global4[_wgslsmith_index_u32(4294967295u, 3u)], -876f)), Struct_5(vec2<u32>(u_input.b.x, 4294967295u), vec3<f32>(-1114f, global4[_wgslsmith_index_u32(67878u, 3u)], 1319f)))), u_input.d, vec4<f32>(global4[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(f32(-1f) * -364f)), 1000f, arg_0), Struct_5(~vec2<u32>(u_input.b.x, u_input.b.x) | ~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, arg_2, arg_2) - vec3<f32>(1000f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(21259u, 3u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1015f, 1861f)), any(global1[_wgslsmith_index_u32(u_input.b.x, 18u)]))))), func_4(Struct_2(func_4(Struct_2(Struct_1(-2147483647i, vec4<i32>(u_input.c.x, u_input.d, -25501i, 1i), u_input.b.x, vec3<i32>(-12659i, -32894i, -8278i), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], 1320f, -807f)), Struct_1(-70724i, vec4<i32>(-1i, 17288i, u_input.c.x, -36909i), u_input.b.x, vec3<i32>(-2147483647i, 0i, 1i), vec3<f32>(1000f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)], 404f)), Struct_1(-1i, u_input.c, u_input.b.x, vec3<i32>(u_input.d, 11303i, 1i), vec3<f32>(arg_0, arg_2, arg_2))), u_input.c.x << (u_input.b.x % 32u), vec4<f32>(arg_0, arg_0, arg_2, arg_2), Struct_5(vec2<u32>(0u, 1u), vec3<f32>(-196f, arg_0, arg_2))), Struct_1(firstLeadingBit(1i), vec4<i32>(u_input.c.x, 34478i, 2147483647i, u_input.c.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), vec3<i32>(1i, arg_1, 30267i), _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], 986f, -1190f), vec3<f32>(923f, -1326f, 1323f))), func_4(Struct_2(Struct_1(u_input.c.x, u_input.c, 0u, vec3<i32>(23399i, -60161i, -23075i), vec3<f32>(-921f, arg_2, -949f)), Struct_1(arg_1, vec4<i32>(16255i, arg_1, -2147483647i, -1i), 4294967295u, vec3<i32>(1i, u_input.d, -2147483647i), vec3<f32>(1169f, -2143f, 383f)), Struct_1(2147483647i, vec4<i32>(1i, -2147483647i, 3103i, 32694i), 35271u, vec3<i32>(arg_1, 1i, -8161i), vec3<f32>(global4[_wgslsmith_index_u32(0u, 3u)], 1023f, arg_2))), abs(u_input.e), _wgslsmith_f_op_vec4_f32(abs(global3[_wgslsmith_index_u32(u_input.b.x, 16u)])), Struct_5(u_input.b, vec3<f32>(148f, arg_0, 528f)))), func_4(Struct_2(Struct_1(arg_1, u_input.c, 1u, u_input.c.zxw, vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], -254f, arg_2)), func_4(Struct_2(Struct_1(-21491i, u_input.c, 15796u, u_input.c.zxz, vec3<f32>(-540f, arg_2, -1190f)), Struct_1(0i, vec4<i32>(arg_1, arg_1, arg_1, 20304i), u_input.b.x, vec3<i32>(-52370i, -31567i, -2147483647i), vec3<f32>(global4[_wgslsmith_index_u32(25649u, 3u)], 1193f, global4[_wgslsmith_index_u32(7437u, 3u)])), Struct_1(arg_1, u_input.c, u_input.b.x, vec3<i32>(u_input.e, 62214i, arg_1), vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], -1116f, -195f))), arg_1, global3[_wgslsmith_index_u32(u_input.b.x, 16u)], Struct_5(u_input.b, vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], arg_0, global4[_wgslsmith_index_u32(10979u, 3u)]))), func_4(Struct_2(Struct_1(u_input.c.x, u_input.c, 0u, vec3<i32>(32559i, 37069i, u_input.c.x), vec3<f32>(-1625f, -659f, arg_2)), Struct_1(-26780i, vec4<i32>(22227i, u_input.a, arg_1, 8654i), u_input.b.x, u_input.c.yxz, vec3<f32>(arg_2, -1000f, -857f)), Struct_1(u_input.e, u_input.c, u_input.b.x, vec3<i32>(17741i, u_input.c.x, 16043i), vec3<f32>(-1737f, -155f, 326f))), -1i, vec4<f32>(arg_0, -871f, 1043f, arg_2), Struct_5(vec2<u32>(u_input.b.x, 1u), vec3<f32>(363f, arg_0, arg_2)))), u_input.c.x, global3[_wgslsmith_index_u32(u_input.b.x, 16u)], Struct_5(vec2<u32>(u_input.b.x, 55859u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], -421f, 1000f) + vec3<f32>(-610f, 1279f, arg_0)))).a, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~79204u), 1u), 16u)], Struct_5(vec2<u32>(u_input.b.x, 512u) >> (abs(u_input.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(574f, arg_2, arg_2) * vec3<f32>(853f, 1001f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))))), func_4(Struct_2(Struct_1(12908i, min(u_input.c, u_input.c), 0u, u_input.c.wwz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, -224f, arg_0)))), Struct_1(-1i, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, 2147483647i, 10288i), u_input.c), u_input.b.x, vec3<i32>(-55389i, 12615i, arg_1) & vec3<i32>(-2147483647i, arg_1, 2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, arg_0, arg_0) - vec3<f32>(173f, 1045f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]))), func_4(Struct_2(Struct_1(31623i, u_input.c, 21353u, vec3<i32>(u_input.e, -1i, 2147483647i), vec3<f32>(1577f, arg_2, -238f)), Struct_1(-2147483647i, u_input.c, 25995u, u_input.c.yyy, vec3<f32>(499f, arg_2, arg_2)), Struct_1(-1i, vec4<i32>(9545i, arg_1, 0i, -1i), 4294967295u, u_input.c.xzz, vec3<f32>(-638f, -868f, 439f))), abs(-1i), vec4<f32>(arg_0, arg_0, arg_0, 811f), Struct_5(u_input.b, vec3<f32>(arg_2, -494f, -145f)))), -(countOneBits(u_input.c.x) >> (reverseBits(u_input.b.x) % 32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 16u)])))), Struct_5(abs(u_input.b) | (vec2<u32>(0u, 4294967295u) & vec2<u32>(u_input.b.x, 12141u)), _wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], 1000f, arg_0), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1366f, arg_2, arg_2)))))));
    let var_1 = Struct_5(vec2<u32>(~(~select(u_input.b.x, 4294967295u, arg_3.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 52094u) >> (_wgslsmith_mult_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x))))), var_0.c.e);
    var var_2 = global4[_wgslsmith_index_u32(0u, 3u)];
    var var_3 = true;
    let var_4 = all(vec4<bool>(any(select(vec3<bool>(true, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, true), true)), _wgslsmith_div_f32(var_0.c.e.x, 1555f) >= _wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(arg_3.x, true, arg_3.x)), !all(vec3<bool>(arg_3.x, true, true)))) | false;
    return Struct_1(16496i, min(var_0.b.b, _wgslsmith_mult_vec4_i32(reverseBits(u_input.c | vec4<i32>(u_input.a, var_0.a.a, -1i, -3422i)), vec4<i32>(-2147483647i, func_4(Struct_2(Struct_1(arg_1, u_input.c, 1u, u_input.c.wwx, vec3<f32>(-1109f, 653f, -1000f)), Struct_1(arg_1, vec4<i32>(-1i, -13100i, u_input.a, 31572i), 20107u, vec3<i32>(u_input.a, -2147483647i, -5503i), vec3<f32>(1000f, var_1.b.x, -715f)), Struct_1(u_input.a, u_input.c, 20433u, vec3<i32>(u_input.a, arg_1, 44808i), vec3<f32>(var_0.c.e.x, global4[_wgslsmith_index_u32(1u, 3u)], var_0.c.e.x))), var_0.a.d.x, global3[_wgslsmith_index_u32(0u, 16u)], Struct_5(u_input.b, var_0.a.e)).a, -1i, select(arg_1, u_input.e, var_4)))), min(abs(u_input.b.x), _wgslsmith_add_u32(~var_1.a.x, var_0.c.c)), min(~u_input.c.xxw, u_input.c.xzw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.e.x, 1593f, -315f) + vec3<f32>(arg_0, arg_0, global4[_wgslsmith_index_u32(var_1.a.x, 3u)])) - vec3<f32>(-1000f, 865f, -1127f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(var_0.b.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(~max(u_input.e, u_input.e), -2147483647i, u_input.e) & u_input.c.zyz;
    var var_1 = false;
    var_1 = !(true && !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)));
    var_1 = any(vec3<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 18u)]) & all(global1[_wgslsmith_index_u32(~u_input.b.x, 18u)]), all(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), u_input.b.x > 74291u, false)), false));
    let var_2 = select(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 53169u), u_input.b ^ vec2<u32>(53701u, u_input.b.x), u_input.b), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 1u), ~vec2<u32>(1u, u_input.b.x))), 18u)], global1[_wgslsmith_index_u32(15050u, 18u)], vec4<bool>(true, true, !any(vec3<bool>(false, true, true)), -167f != global4[_wgslsmith_index_u32(~0u, 3u)])), vec4<bool>(((u_input.b.x & u_input.b.x) | 0u) >= ~select(0u, u_input.b.x, false), true, true, true), false);
    global1 = array<vec4<bool>, 18>();
    var var_3 = func_6(_wgslsmith_f_op_f32(func_1(var_2.x)), 17736i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(var_0.x, u_input.c, 3662u, u_input.c.xzx, vec3<f32>(-1763f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)], 1178f)))) + -726f), -1096f), select(var_2.xx, select(vec2<bool>(var_2.x, !var_2.x), vec2<bool>(true, var_2.x), var_2.x), select(vec2<bool>(true, select(var_2.x, var_2.x, var_2.x)), global0[_wgslsmith_index_u32(reverseBits(3514u), 4u)], select(select(global0[_wgslsmith_index_u32(90483u, 4u)], var_2.xz, var_2.xy), vec2<bool>(var_2.x, true), any(vec2<bool>(true, false))))));
    let var_4 = Struct_4(reverseBits(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2747f, global4[_wgslsmith_index_u32(u_input.b.x, 3u)]) - vec2<f32>(-707f, var_3.e.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], 1156f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1059f, var_3.e.x), vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], global4[_wgslsmith_index_u32(0u, 3u)])))))), i32(-1i) * -50168i, select(var_3.b, var_3.b, select(var_2, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(54099u, 63016u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(45799u, u_input.b.x, 4844u), vec3<u32>(104007u, var_3.c, 0u), vec3<u32>(100697u, 4294967295u, 4294967295u))), 18u)], select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), select(vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(false, false, var_2.x, false), false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, _wgslsmith_mult_u32(_wgslsmith_div_u32(min(~6498u, ~1u), abs(_wgslsmith_clamp_u32(var_4.a, u_input.b.x, var_3.c))), func_4(Struct_2(Struct_1(0i, var_3.b, var_3.c, var_4.d.yzz, vec3<f32>(1217f, 895f, -638f)), Struct_1(var_3.d.x, u_input.c, var_3.c, var_0, vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], 1000f, -633f)), Struct_1(var_4.c, u_input.c, 0u, u_input.c.yxz, var_3.e)), var_0.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, 522f, -1259f, var_4.b.x)))), Struct_5(u_input.b, var_3.e)).c), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_4.d.x, abs(u_input.d)), -1i));
}

