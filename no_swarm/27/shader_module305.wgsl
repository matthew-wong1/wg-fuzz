struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(2147483647i, Struct_1(75202u, vec3<f32>(-1709f, 1782f, 159f), true, vec2<u32>(1u, 48656u), i32(-2147483648)), -35359i), Struct_2(-11793i, Struct_1(34797u, vec3<f32>(-182f, -1229f, -346f), true, vec2<u32>(0u, 39622u), 9848i), 2147483647i), Struct_2(-13688i, Struct_1(1u, vec3<f32>(-1000f, -1000f, -483f), false, vec2<u32>(4294967295u, 4294967295u), 10498i), 0i), Struct_2(0i, Struct_1(9743u, vec3<f32>(-1000f, 1000f, -527f), false, vec2<u32>(45518u, 1u), 0i), -1i), Struct_2(-1072i, Struct_1(4294967295u, vec3<f32>(263f, -933f, 1585f), false, vec2<u32>(43597u, 76253u), 0i), -1329i), Struct_2(25895i, Struct_1(19009u, vec3<f32>(-130f, -1711f, 835f), false, vec2<u32>(1817u, 77179u), 0i), i32(-2147483648)), Struct_2(54627i, Struct_1(0u, vec3<f32>(1193f, 528f, -1440f), true, vec2<u32>(21567u, 1u), 26461i), 32957i), Struct_2(-9095i, Struct_1(1u, vec3<f32>(909f, 880f, -439f), false, vec2<u32>(1u, 4294967295u), 2147483647i), 8431i), Struct_2(44021i, Struct_1(1u, vec3<f32>(2104f, -583f, -1798f), false, vec2<u32>(51032u, 0u), -14671i), -14162i), Struct_2(-60765i, Struct_1(12478u, vec3<f32>(516f, 1000f, -540f), false, vec2<u32>(4294967295u, 21792u), i32(-2147483648)), -1i), Struct_2(23698i, Struct_1(25412u, vec3<f32>(-200f, 296f, -786f), false, vec2<u32>(4294967295u, 52580u), 23832i), -1i), Struct_2(-27255i, Struct_1(28400u, vec3<f32>(-179f, 112f, 1168f), true, vec2<u32>(4294967295u, 0u), 1i), 9529i), Struct_2(-64792i, Struct_1(25491u, vec3<f32>(1727f, -957f, 589f), true, vec2<u32>(1u, 1u), 2147483647i), i32(-2147483648)), Struct_2(1i, Struct_1(10024u, vec3<f32>(1007f, 1147f, -154f), false, vec2<u32>(1u, 77086u), -6058i), -33840i), Struct_2(27688i, Struct_1(1u, vec3<f32>(2744f, 745f, 145f), true, vec2<u32>(4294967295u, 1u), 99920i), 2059i), Struct_2(0i, Struct_1(1u, vec3<f32>(708f, 1000f, 1847f), false, vec2<u32>(0u, 4294967295u), -13756i), 0i), Struct_2(51999i, Struct_1(0u, vec3<f32>(-128f, 741f, -1030f), true, vec2<u32>(107027u, 12611u), -22647i), -1i), Struct_2(36329i, Struct_1(23170u, vec3<f32>(1042f, 1000f, 971f), true, vec2<u32>(8597u, 50939u), 1i), 15756i), Struct_2(1i, Struct_1(0u, vec3<f32>(1334f, 246f, 218f), false, vec2<u32>(0u, 16471u), -105200i), 1i), Struct_2(26678i, Struct_1(28166u, vec3<f32>(-811f, -548f, 772f), true, vec2<u32>(4294967295u, 1u), -44948i), -47634i));

var<private> global4: array<u32, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, 834f, global1.b.x) * vec4<f32>(1000f, 1000f, -1059f, 1670f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, -1000f, 442f, global1.b.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -457f, global1.b.x, global1.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, -1773f, 1155f, 637f))))), false))));
    var var_1 = var_0.x;
    var var_2 = u_input.d.xwx;
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(3153i, 1i), global1.e, -44560i & u_input.a.x, -u_input.a.x) ^ vec4<i32>(~0i, -global1.e, global1.e, select(-16826i, 0i, false)), vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_add_i32(u_input.b.x, global1.e), _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), -global1.e))), 2147483647i, 18194i);
    var var_4 = vec4<u32>(abs(global0.x), ~0u, _wgslsmith_dot_vec4_u32(u_input.d >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 7u)], u_input.d.x, 1u, 1u), vec4<u32>(0u, global0.x, u_input.d.x, 22411u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 35241u, u_input.d.x, 0u), vec4<u32>(4294967295u, var_2.x, 40695u, var_2.x) & u_input.d)), _wgslsmith_dot_vec3_u32(u_input.d.xzx, vec3<u32>(_wgslsmith_sub_u32(20036u, 13365u), ~var_2.x, 1u)) << (4294967295u % 32u));
    return _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(12979u, firstLeadingBit(7863u)), global4[_wgslsmith_index_u32(global1.d.x, 7u)])), 4294967295u & min(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4.x, var_4.x, 4294967295u), var_4.zzz), ~vec3<u32>(5552u, 1u, 38836u))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = 953f;
    var var_1 = arg_1;
    return reverseBits(~global1.a);
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.d.x, 7u)], ~17407u));
    var var_1 = global4[_wgslsmith_index_u32(max(global0.x, global1.a), 7u)];
    global4 = array<u32, 7>();
    global3 = array<Struct_2, 20>();
    global3 = array<Struct_2, 20>();
    return Struct_1(~abs(func_4(global3[_wgslsmith_index_u32(func_3(vec2<bool>(global1.c, false), false, vec3<bool>(true, global1.c, global1.c)), 20u)], global1.b.x, -2147483647i, -global1.e)), vec3<f32>(_wgslsmith_f_op_f32(min(2728f, _wgslsmith_f_op_f32(-global1.b.x))), global1.b.x, global1.b.x), global1.c, global1.d, max(~min(global1.e, -50889i) >> (_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(var_0, 7u)] | 38217u, 4294967295u) % 32u), global1.e));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1.b.x))));
    let var_1 = Struct_1(countOneBits(18441u), arg_1.b, !(!any(!vec2<bool>(arg_1.c, true))), max(min(arg_1.d, select(vec2<u32>(global1.d.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.d.x, 7u)], 7u)]), vec2<u32>(1u, 1u), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false))), reverseBits(global1.d)), u_input.b.x);
    let var_2 = Struct_2(abs(~(-1317i)), var_1, global1.e);
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(var_1.d, ~(global1.d | vec2<u32>(var_1.d.x, arg_1.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1198f - var_2.b.b.x), -1107f, -1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1107f, -222f, arg_1.b.x), vec3<f32>(var_1.b.x, arg_1.b.x, global1.b.x))))))), all(vec2<bool>(func_2().c, var_1.c)), vec2<u32>(_wgslsmith_clamp_u32(~countOneBits(4294967295u), ~_wgslsmith_dot_vec2_u32(var_2.b.d, arg_1.d), 25464u), ~(var_2.b.a << (48875u % 32u)) >> (reverseBits(65713u << (var_2.b.d.x % 32u)) % 32u)), u_input.a.x);
    var var_4 = (select(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.e, -40294i, 1i), max(u_input.a, vec3<i32>(global1.e, 1977i, -2147483647i))), _wgslsmith_mult_vec3_i32(~vec3<i32>(-52356i, var_3.e, -11310i), vec3<i32>(0i, var_3.e, -47394i)), arg_0) << (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global0.x), _wgslsmith_sub_u32(global0.x, 1u)), _wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(46483u, 7u)], _wgslsmith_clamp_u32(4947u, var_2.b.d.x, global4[_wgslsmith_index_u32(4294967295u, 7u)])), ~reverseBits(0u)) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(select(u_input.d.xzy, _wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, global1.a, 70314u), u_input.d.yxy), vec3<u32>(4294967295u, global0.x, 1u)), true), vec3<u32>(_wgslsmith_add_u32(global1.d.x, ~1u), func_3(!vec2<bool>(var_3.c, true), var_2.b.c, vec3<bool>(arg_0, global1.c, global1.c)), 58102u)) % vec3<u32>(32u));
    return min(vec4<i32>(abs(23536i), _wgslsmith_clamp_i32(min(~arg_1.e, 8762i), ~(-4467i), _wgslsmith_sub_i32(var_4.x & -67294i, arg_3)), firstTrailingBit(reverseBits(arg_1.e)), var_2.b.e | (var_3.e | -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(16059i, arg_1.e, 0i, var_1.e), vec4<i32>(-23258i, 9359i, 6103i, arg_1.e))), vec4<i32>(-2576i, u_input.c, var_4.x, var_1.e) ^ ~vec4<i32>(var_2.b.e, var_4.x, 34123i, -1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(global1.e, arg_1.e, 1i, var_1.e), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, 5746i, var_4.x, global1.e), vec4<i32>(arg_3, 2147483647i, -1i, 1i)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global4 = array<u32, 7>();
    global4 = array<u32, 7>();
    let var_0 = global1.e;
    let var_1 = func_5(any(!select(select(vec4<bool>(arg_3.b.c, global1.c, true, arg_2), vec4<bool>(true, true, global1.c, arg_3.b.c), arg_1.b.c), select(vec4<bool>(false, true, arg_0.c, true), vec4<bool>(true, false, false, arg_0.c), arg_3.b.c), vec4<bool>(arg_3.b.c, arg_0.c, true, arg_2))), func_2(), arg_1.b.b.x, 2147483647i);
    var var_2 = func_5(any(select(!vec4<bool>(arg_2, false, arg_2, arg_1.b.c), !vec4<bool>(false, global1.c, arg_0.c, false), -57707i > global1.e)), Struct_1(arg_0.a, arg_0.b, !(!arg_3.b.c), ~(vec2<u32>(7846u, arg_0.a) << (vec2<u32>(arg_0.a, 1u) % vec2<u32>(32u))), -countOneBits(2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1362f - arg_3.b.b.x))), _wgslsmith_f_op_f32(select(arg_3.b.b.x, -565f, !arg_2)))), -1i).x < -1i;
    return global3[_wgslsmith_index_u32(4040u, 20u)];
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = true;
    global3 = array<Struct_2, 20>();
    global0 = vec2<u32>(~(~firstTrailingBit(arg_2.a)), global1.a);
    let var_1 = min(58610i, -55748i);
    global2 = array<vec2<i32>, 31>();
    return -24064i;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = 928u;
    return global3[_wgslsmith_index_u32((1u << (~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d.xzy, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, global1.d.x, 18370u), u_input.d.zzw)), 7u)] % 32u)) >> (func_1(arg_0.b, func_1(Struct_1(select(84199u, arg_1.b.a, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, arg_1.b.b.x, 682f)), true, u_input.d.xz, 22906i), arg_0, false, arg_0), global1.c, func_1(arg_0.b, func_1(func_1(arg_0.b, arg_0, true, Struct_2(global1.e, Struct_1(global4[_wgslsmith_index_u32(arg_0.b.a, 7u)], arg_1.b.b, false, arg_0.b.d, 69688i), -2147483647i)).b, arg_0, false & global1.c, Struct_2(-2147483647i, Struct_1(var_0, vec3<f32>(-2359f, arg_0.b.b.x, -782f), true, vec2<u32>(50103u, 15932u), -2147483647i), -15761i)), !any(vec4<bool>(true, true, false, arg_0.b.c)), func_1(arg_1.b, arg_1, true, Struct_2(arg_1.b.e, Struct_1(global0.x, vec3<f32>(-348f, 1066f, -1317f), arg_0.b.c, arg_1.b.d, -1i), arg_1.c)))).b.d.x % 32u), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(10509i, Struct_1(reverseBits(~1u), vec3<f32>(-350f, _wgslsmith_f_op_f32(round(354f)), _wgslsmith_f_op_f32(global1.b.x + global1.b.x)), select(global1.c, false, false) != select(true, global1.c, global1.c), ~u_input.d.yy ^ _wgslsmith_clamp_vec2_u32(global1.d, global1.d, vec2<u32>(global0.x, global0.x)), -2147483647i >> (~global1.d.x % 32u)), func_6(true, select(10283u > global4[_wgslsmith_index_u32(33740u, 7u)], all(vec2<bool>(global1.c, false)), !global1.c), Struct_1(~4294967295u, vec3<f32>(336f, global1.b.x, -879f), global1.c & global1.c, _wgslsmith_clamp_vec2_u32(u_input.d.yx, global1.d, u_input.d.wz), global1.e), func_1(Struct_1(41349u, vec3<f32>(global1.b.x, global1.b.x, global1.b.x), true, vec2<u32>(1u, 0u), -2147483647i), global3[_wgslsmith_index_u32(4294967295u, 20u)], global1.c, Struct_2(global1.e, Struct_1(0u, global1.b, false, vec2<u32>(global0.x, u_input.d.x), -8308i), global1.e)))), func_1(func_2(), global3[_wgslsmith_index_u32(global0.x, 20u)], all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) && global1.c, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.a, 0u), vec3<u32>(global0.x, 0u, 43820u)) | ~global4[_wgslsmith_index_u32(14694u, 7u)]), 20u)]), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), global1.b.x, _wgslsmith_f_op_f32(select(global1.b.x, -162f, false)), global1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1657f - _wgslsmith_f_op_f32(global1.b.x - -198f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + global1.b.x))))), _wgslsmith_f_op_f32(max(global1.b.x, -1305f))));
    var var_1 = vec2<i32>(i32(-1i) * -var_0.b.e, (var_0.a & func_6(false, true, var_0.b, func_1(Struct_1(u_input.d.x, vec3<f32>(-1178f, 600f, 570f), false, var_0.b.d, u_input.b.x), Struct_2(var_0.c, Struct_1(1u, var_0.b.b, true, vec2<u32>(1u, global1.a), var_0.c), 0i), var_0.b.c, var_0))) ^ _wgslsmith_dot_vec3_i32(-u_input.a, _wgslsmith_add_vec3_i32(~u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, var_0.c, -46528i), u_input.a))));
    var_1 = ~vec2<i32>(-1i, -1779i);
    var var_2 = 1361f;
    var var_3 = var_0.b;
    let var_4 = all(vec2<bool>(var_0.b.c, var_3.c));
    var var_5 = ~1u;
    var var_6 = 0u;
    global1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(~u_input.d.x, 0u, ~var_0.b.d.x, 1u ^ u_input.d.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(var_3.b.x, 2671f)), global1.b.x, _wgslsmith_f_op_f32(var_3.b.x * global1.b.x), _wgslsmith_f_op_f32(global1.b.x - -1079f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1278f, -1359f, 2453f, _wgslsmith_f_op_f32(sign(var_0.b.b.x))), vec4<f32>(var_3.b.x, 1f, var_0.b.b.x, global1.b.x), vec4<bool>(func_7(global3[_wgslsmith_index_u32(86121u, 20u)], global3[_wgslsmith_index_u32(var_0.b.a, 20u)], vec4<f32>(-729f, 797f, 152f, 1000f), var_3.b).b.c, true, !global1.c, func_7(Struct_2(2147483647i, Struct_1(global4[_wgslsmith_index_u32(var_0.b.a, 7u)], vec3<f32>(1331f, var_3.b.x, var_3.b.x), false, vec2<u32>(0u, 9643u), var_3.e), 2147483647i), global3[_wgslsmith_index_u32(4294967295u, 20u)], vec4<f32>(var_0.b.b.x, -943f, var_3.b.x, var_0.b.b.x), global1.b).b.c)))), _wgslsmith_div_f32(var_3.b.x, global1.b.x));
}

