struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 29>;

var<private> global3: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(323f, -602f, -661f), vec3<f32>(-1120f, 1729f, -974f), vec3<f32>(1359f, 643f, -1000f), vec3<f32>(-345f, 141f, 215f), vec3<f32>(1433f, -891f, 1000f), vec3<f32>(344f, 919f, 1683f), vec3<f32>(-333f, 213f, -774f), vec3<f32>(589f, 1551f, -1000f), vec3<f32>(2164f, -515f, -112f), vec3<f32>(-198f, 164f, 116f), vec3<f32>(-278f, 748f, -1013f), vec3<f32>(-1426f, 619f, 612f), vec3<f32>(-391f, -473f, -395f), vec3<f32>(-707f, 1859f, -1000f), vec3<f32>(-342f, -979f, 1307f), vec3<f32>(-1346f, -1000f, 649f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1.d.x, 23306i), ~u_input.a.x), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_1.b, vec3<i32>(u_input.a.x, u_input.a.x, 0i)) ^ 38519i), firstLeadingBit(abs(-15548i))));
    global1 = Struct_1(_wgslsmith_mod_i32(select(select(firstLeadingBit(u_input.a.x), 27298i >> (global2[_wgslsmith_index_u32(28095u, 29u)] % 32u), true), countOneBits(_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(u_input.a.x, var_0.x, global1.a))), true), _wgslsmith_div_i32(arg_1.a, -arg_1.b.x)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-1i, var_0.x, -2147483647i), arg_1.a, u_input.a.x), arg_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(850f, arg_0, arg_1.c.x))), _wgslsmith_f_op_vec3_f32(-arg_1.c))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2705f, -1357f, 125f)))), _wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(select(1i, firstTrailingBit(global1.d.x), all(vec3<bool>(false, true, false))), arg_1.a)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(~vec2<i32>(-12495i, global1.a)), max(abs(-var_0), ~(global1.b.xy >> (arg_2.zz % vec2<u32>(32u))))), countOneBits(vec3<i32>(firstTrailingBit(var_0.x ^ -3849i), u_input.a.x, 51087i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, -1070f, -125f) - global1.c))), _wgslsmith_f_op_vec3_f32(arg_1.c - global1.c), vec3<bool>(true, true, true))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_mult_i32(27119i, var_0.x)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.b.yz, vec2<i32>(arg_1.a, -6272i)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global1.d.x), u_input.a.xz)) << (arg_2.xx % vec2<u32>(32u))));
    global0 = array<f32, 24>();
    global1 = Struct_1(i32(-1i) * -2147483647i, -(~var_1.b), vec3<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -640f))))), var_1.c.x, -263f), firstTrailingBit(vec2<i32>(-3313i, abs(-109247i << (global2[_wgslsmith_index_u32(4294967295u, 29u)] % 32u)))));
    return ~global1.d.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = Struct_1(-max(func_3(-389f, Struct_1(-2147483647i, arg_0.b, vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 24u)], 183f, 1573f), arg_1.d), vec3<u32>(34405u, 21609u, 6689u) | vec3<u32>(global2[_wgslsmith_index_u32(arg_2, 29u)], global2[_wgslsmith_index_u32(67704u, 29u)], 1u)), global1.d.x), vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_mod_i32(arg_1.a, arg_0.b.x), countOneBits(~arg_0.a)), firstTrailingBit(global1.b.x), -reverseBits(_wgslsmith_clamp_i32(global1.d.x, 0i, arg_0.a))), _wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38572u & global2[_wgslsmith_index_u32(arg_2, 29u)], 29u)], 16u)] - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, global0[_wgslsmith_index_u32(arg_2, 24u)], arg_0.c.x) + arg_0.c))))), select(_wgslsmith_add_vec2_i32(u_input.a.xy, _wgslsmith_clamp_vec2_i32(u_input.a.yx, arg_0.d, vec2<i32>(-2147483647i, arg_0.d.x))) | vec2<i32>(~arg_1.a, 44567i), firstLeadingBit(~(~arg_0.b.yz)), true));
    global1 = arg_1;
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    var var_1 = _wgslsmith_f_op_f32(-923f * global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~51368u, 1u), 24u)]) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -357f), var_0.c.x)) * 1420f));
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec3<bool>(all(vec2<bool>(true, true)), (false | (46881i == u_input.a.x)) | !any(vec4<bool>(true, false, false, true)), true), vec3<bool>(!(!any(vec3<bool>(false, false, true))), any(vec4<bool>(all(vec4<bool>(true, true, false, false)), func_2(Struct_1(0i, vec3<i32>(global1.b.x, -63599i, u_input.a.x), global1.c, u_input.a.zz), Struct_1(u_input.a.x, vec3<i32>(u_input.a.x, 1i, 2147483647i), global1.c, vec2<i32>(u_input.a.x, 0i)), 4294967295u), all(vec4<bool>(true, false, true, false)), true)), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true)), vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), global0[_wgslsmith_index_u32(4294967295u, 24u)] <= 1811f, _wgslsmith_f_op_f32(-2100f + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(319u, 29u)], 24u)]) < -544f), all(vec3<bool>(global1.b.x <= global1.a, all(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, false))))));
    let var_1 = _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, global2[_wgslsmith_index_u32(0u << (global2[_wgslsmith_index_u32(22938u, 29u)] % 32u), 29u)]) << (min(~vec2<u32>(0u, 1u), vec2<u32>(42752u, 4294967295u)) % vec2<u32>(32u))), ~countOneBits(~(~vec2<u32>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)]))));
    var var_2 = ~vec2<u32>(0u, (_wgslsmith_sub_u32(11162u, global2[_wgslsmith_index_u32(28193u, 29u)]) & 1u) ^ var_1);
    var var_3 = ~firstLeadingBit(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(var_2.x, ~0u)));
    let var_4 = global2[_wgslsmith_index_u32(~0u, 29u)];
    return Struct_1(select(~(~reverseBits(46132i)), abs(-1i), false), vec3<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-23003i >> (global2[_wgslsmith_index_u32(4294967295u, 29u)] % 32u), u_input.a.x | global1.b.x, global1.a, 2147483647i), vec4<i32>(global1.a, -u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.x, u_input.a.x, 1i), vec3<i32>(8195i, -22995i, -25724i)), ~74308i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, 2147483647i), global1.d.x, u_input.a.x, firstLeadingBit(13058i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(48554i, u_input.a.x, global1.d.x, -64729i), vec4<i32>(82246i, global1.a, -1i, 0i)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.x))))), 1453f, _wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(43880u, 1u), 24u)])), global1.d);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(60597i, arg_1.b.x, u_input.a.x), global1.b, u_input.a) ^ u_input.a, vec3<i32>(~abs(u_input.a.x), 2147483647i, i32(-1i) * -3063i), vec3<i32>(~u_input.a.x, 0i, -2147483647i)));
    var var_1 = _wgslsmith_div_f32(-1489f, arg_0.x);
    let var_2 = _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(763f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] - arg_0.x)))), _wgslsmith_f_op_f32(-1521f + _wgslsmith_f_op_f32(exp2(arg_0.x))))));
    var_1 = global0[_wgslsmith_index_u32(34841u, 24u)];
    global3 = array<vec3<f32>, 16>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1317f, global1.c.x) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 24u)] + 404f)), global1.c.x)), 2326f, _wgslsmith_f_op_f32(abs(global1.c.x)), _wgslsmith_f_op_f32(-153f * 350f)), func_1());
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global1.c.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.zz - vec2<f32>(global0[_wgslsmith_index_u32(15812u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), true))))));
    var var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit((vec4<u32>(18824u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 53399u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], 29u)]) ^ vec4<u32>(72942u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79421u, 29u)], 29u)], global2[_wgslsmith_index_u32(39010u, 29u)], global2[_wgslsmith_index_u32(32565u, 29u)])) >> (reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(1u, 29u)], 30548u, 62603u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)])) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19429u, 29u)], 29u)], 19104u)), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], 25337u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(74427u, 29u)], 29u)])) & _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49421u, 29u)], 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3322u, 29u)], 29u)], 42626u) & vec4<u32>(global2[_wgslsmith_index_u32(37437u, 29u)], 33002u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)]), ~vec4<u32>(global2[_wgslsmith_index_u32(1u, 29u)], 98330u, global2[_wgslsmith_index_u32(4294967295u, 29u)], 1u)), vec4<u32>(6975u, 36181u, global2[_wgslsmith_index_u32(32675u, 29u)], 0u) ^ (vec4<u32>(1u, 11937u, global2[_wgslsmith_index_u32(10u, 29u)], 0u) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31898u, 29u)], 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 1u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_mult_vec2_u32(~var_1.wz, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(min(~vec2<u32>(5137u, var_1.x), abs(vec2<u32>(var_1.x, 4294967295u))), select(_wgslsmith_clamp_vec2_u32(var_1.yy, vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(54628u, 29u)]), vec2<u32>(4294967295u, 0u)), ~var_1.xz, vec2<bool>(true, true))), ~var_1.xy));
    let var_3 = min(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(84768u, 29u)], 29u)], 0u, var_1.x), vec3<u32>(4294967295u, 57389u, var_1.x) & var_1.yzw), countOneBits(vec3<u32>(var_1.x, 16440u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(109051u, 29u)], 29u)]))), 46452u) & var_1.x;
    let var_4 = abs(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(1969u, var_2.x)) | (~var_2 & ~var_2), var_1.yz));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_sub_i32(-9157i, u_input.a.x), 12161i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(-1i)), ~_wgslsmith_div_i32(u_input.a.x, global1.b.x)), abs(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, global2[_wgslsmith_index_u32(15449u, 29u)], 1u), var_1.zyx), ~var_1.zxw)));
}

