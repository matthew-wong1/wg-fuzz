struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(4294967295u, 0u, 4294967295u, 21411u, 0u, 4294967295u, 70287u, 0u, 0u, 29520u, 18940u, 61302u, 13282u, 0u, 1u);

var<private> global1: array<i32, 23> = array<i32, 23>(31181i, -8216i, -33776i, 42416i, 12109i, 35148i, 31540i, i32(-2147483648), 1i, 45402i, i32(-2147483648), 2147483647i, -39378i, 0i, -49090i, i32(-2147483648), 25209i, 1i, 1i, i32(-2147483648), 34231i, 2147483647i, -21601i);

var<private> global2: vec3<i32> = vec3<i32>(-35051i, -29229i, 25630i);

var<private> global3: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(0i, 1i, -2236i, 42485i), vec4<i32>(264i, 44428i, 0i, i32(-2147483648)), vec4<i32>(11792i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(-20944i, -60108i, -34333i, 1i), vec4<i32>(-30854i, 0i, -13209i, -62291i), vec4<i32>(-23207i, -28728i, -49503i, -1i), vec4<i32>(-1i, 2147483647i, -1i, -1i));

var<private> global4: vec2<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = abs(vec2<u32>(1u, global0[_wgslsmith_index_u32(28624u, 15u)]));
    return select(select(select(vec3<bool>(false, true, !global4.x), !select(vec3<bool>(false, false, true), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, true, true)), global4.x), select(select(select(vec3<bool>(false, true, false), vec3<bool>(global4.x, global4.x, true), true), vec3<bool>(false, true, global4.x), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 23u)] < global1[_wgslsmith_index_u32(var_0.x, 23u)]), !select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(false, global4.x, true), vec3<bool>(true, true, global4.x)), global4.x), (-u_input.a.x == _wgslsmith_mult_i32(15556i, -1i)) & global4.x), !select(vec3<bool>(global4.x & global4.x, true, all(vec4<bool>(false, false, true, true))), !vec3<bool>(true, true, global4.x), false), countOneBits(firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x, var_0.x, arg_0.x))) == max(global0[_wgslsmith_index_u32(~(~4114u), 15u)], 43290u));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1086f, arg_0.x, 491f), vec3<f32>(-2410f, arg_0.x, 1390f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -2006f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, arg_0.x, -114f) * arg_0), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1265f, arg_0.x, -1213f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-910f)))) - _wgslsmith_f_op_f32(-arg_0.x)), 0u, reverseBits(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 23u)] >> (global0[_wgslsmith_index_u32(55948u, 15u)] % 32u), -2147483647i) ^ _wgslsmith_div_i32(-u_input.c.x, countOneBits(0i))), abs(select(select(_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(34433u, 15u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23485u, 15u)], 15u)], 15u)], 15u)], 13829u)), _wgslsmith_add_vec2_u32(vec2<u32>(15471u, 12989u), vec2<u32>(global0[_wgslsmith_index_u32(2311u, 15u)], 4294967295u)), !arg_1.yx), vec2<u32>(global0[_wgslsmith_index_u32(1u, 15u)] & 14435u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)]), any(vec2<bool>(false, global4.x)))));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1651f))), -1745f, _wgslsmith_f_op_f32(-446f * -918f)), ~_wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(4294967295u, 7u)], min(vec4<i32>(14937i, 38566i, -1i, u_input.b.x), vec4<i32>(-8211i, -2147483647i, -1i, global2.x)) & -global3[_wgslsmith_index_u32(1u, 7u)]), Struct_1(var_0.a.a), global2.x, !(!arg_1.zz));
    var var_2 = Struct_3(abs(u_input.a >> (vec2<u32>(abs(21421u), var_0.c) % vec2<u32>(32u))), vec2<bool>(all(vec4<bool>(true, any(vec4<bool>(false, global4.x, arg_1.x, false)), var_1.e.x, any(vec3<bool>(false, true, false)))), !(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 15u)], 5609u) > 44276u)), ~var_1.d, _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(2147483647i, firstTrailingBit(-2147483647i))), vec2<i32>(_wgslsmith_div_i32(-var_1.d, _wgslsmith_div_i32(var_0.d, -2147483647i)), var_0.d)));
    global3 = array<vec4<i32>, 7>();
    global2 = -min(select(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(2147483647i, var_2.c, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-41810i, var_1.d, var_2.a.x), var_1.b.xwz)), u_input.b | -u_input.b, arg_1), -(~var_1.b.ywx));
    return ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_0.e.x, 15u)], global0[_wgslsmith_index_u32(79747u, 15u)]) ^ firstTrailingBit(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 15u)])), var_0.e));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> Struct_3 {
    global2 = u_input.b;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(787f, -387f, _wgslsmith_f_op_f32(f32(-1f) * -910f)), vec3<f32>(_wgslsmith_f_op_f32(655f - 414f), -343f, _wgslsmith_f_op_f32(-116f * -1159f)), true))), -1000f, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(983f, -156f)), _wgslsmith_f_op_f32(abs(-1000f)))), func_3(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(92472u, 15u)], 0u)))), reverseBits(~(-2147483647i)), ~abs(~vec2<u32>(arg_0, arg_0)));
    let var_1 = 2147483647i << ((1u ^ arg_0) % 32u);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.x - 242f), 374f)));
    var var_3 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), -1108f))))), 14407u, u_input.c.x, _wgslsmith_sub_vec2_u32(select(select(var_0.e, min(var_0.e, var_0.e), false), abs(var_0.e), arg_1), vec2<u32>(1u, arg_0) | min(vec2<u32>(arg_0, 50606u), vec2<u32>(var_0.e.x, 0u))));
    return Struct_3(global2.zz, vec2<bool>(_wgslsmith_div_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_0, 23u)], -7800i), reverseBits(-7296i)) < var_0.d, global4.x), var_0.d, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.d, -1i), vec2<i32>(-var_1, _wgslsmith_dot_vec3_i32(u_input.c, u_input.b))), ~(-_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, global2.yx))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2278f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -136f))), arg_1);
    let var_1 = vec3<f32>(arg_1, 240f, 166f);
    var var_2 = select(arg_3.b, arg_3.b, (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -714f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -863f) + _wgslsmith_f_op_f32(sign(arg_1)))) || false);
    var var_3 = global0[_wgslsmith_index_u32(arg_0, 15u)];
    let var_4 = max(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(reverseBits(global2.x), i32(-1i) * -2147483647i), global2.x >> (countOneBits(countOneBits(global0[_wgslsmith_index_u32(6342u, 15u)])) % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(func_2(56140u, var_2.x, vec4<bool>(true, true, false, true)).a.x, arg_2.x), 1234i)), 2147483647i);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1026f, arg_1, 271f), _wgslsmith_f_op_vec3_f32(-var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-982f, 2067f))))), 89086u, ~global2.x, abs(min(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 15u)], 15u)], 9032u), ~vec2<u32>(global0[_wgslsmith_index_u32(5973u, 15u)], 17818u))) | vec2<u32>(1u, global0[_wgslsmith_index_u32(~arg_0 | 54910u, 15u)]));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = array<u32, 15>();
    var var_0 = func_5(max(1u, 1u), arg_0, _wgslsmith_clamp_vec3_i32(u_input.b, firstLeadingBit(u_input.b), _wgslsmith_mod_vec3_i32(u_input.c, ~(~vec3<i32>(u_input.b.x, 29279i, -1i)))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(68911u, 17053u, 1u, 0u)), firstTrailingBit(~vec4<u32>(22937u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global0[_wgslsmith_index_u32(7643u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4873u, 15u)], 15u)], 15u)]))), 15u)], arg_0 >= 995f, !vec4<bool>(!global4.x, !global4.x, any(vec2<bool>(true, false)), !global4.x)));
    var var_1 = -vec4<i32>(8980i, countOneBits(-(i32(-1i) * -2147483647i)), 2147483647i, -(~countOneBits(-2147483647i)));
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~21565u, _wgslsmith_mult_u32(max(67286u, var_0.c), ~4294967295u), ~var_0.e.x ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65473u, var_0.c, 11041u), vec4<u32>(0u, 25547u, 0u, 0u)), 15u)], _wgslsmith_mod_u32(0u, var_0.c | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6970u, 15u)], 15u)], 15u)])), ~vec4<u32>(_wgslsmith_clamp_u32(0u, ~var_0.e.x, ~global0[_wgslsmith_index_u32(4294967295u, 15u)]), var_0.e.x, countOneBits(~var_0.c), 32070u));
    global4 = vec2<bool>(!(!(all(vec4<bool>(false, true, global4.x, global4.x)) != true)), _wgslsmith_sub_i32(~(~(-56610i)), var_0.d) <= var_1.x);
    return Struct_4(var_0.a.a, vec4<i32>(53888i, global1[_wgslsmith_index_u32(717u, 23u)], 1i, -(~abs(46729i))), var_0.a, _wgslsmith_div_i32(abs(abs(4236i)), var_1.x), select(vec2<bool>(var_0.c > firstTrailingBit(0u), false), !(!func_3(var_0.e).zz), select(vec2<bool>(true, true), !vec2<bool>(global4.x, false), !(var_0.d == var_0.d))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> Struct_4 {
    return func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f * arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_5(32008u, arg_0.c.a.x, u_input.c, Struct_3(u_input.c.zx, arg_1.e, global2.x, arg_1.b.xy)).b, _wgslsmith_f_op_f32(min(arg_2, -1434f))) + -2852f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 1593f, -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(657f, 375f, -1453f) - vec3<f32>(-368f, 946f, 1232f))))));
    var var_2 = 426f;
    let var_3 = func_6(func_1(var_1.a.x), func_1(-1481f), _wgslsmith_f_op_f32(f32(-1f) * -536f));
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.c.a.x * _wgslsmith_f_op_f32(var_3.a.x - 948f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1130f, func_5(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26608u, 15u)], 15u)], 1001f, var_3.b.zyz, Struct_3(var_3.b.ww, vec2<bool>(false, true), global2.x, u_input.a)).b))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(countOneBits(~global0[_wgslsmith_index_u32(1u, 15u)]), 23u)] >> ((~_wgslsmith_mod_u32(35535u, global0[_wgslsmith_index_u32(1u, 15u)]) >> (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 15u)] & 31485u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], 4294967295u << (global0[_wgslsmith_index_u32(31062u, 15u)] % 32u)) % 32u)) % 32u));
}

