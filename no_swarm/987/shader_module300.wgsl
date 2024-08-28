struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<i32>(-5057i, -11412i), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<i32>(-4364i, 9578i), vec2<u32>(44548u, 84837u)), Struct_2(vec2<i32>(0i, 2147483647i), vec2<u32>(4294967295u, 0u)), Struct_2(vec2<i32>(i32(-2147483648), -14527i), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(13841i, 0i), vec2<u32>(0u, 56906u)), Struct_2(vec2<i32>(1i, 2147483647i), vec2<u32>(88856u, 0u)), Struct_2(vec2<i32>(1i, 25675i), vec2<u32>(83774u, 4294967295u)), Struct_2(vec2<i32>(-1i, 0i), vec2<u32>(4294967295u, 85641u)), Struct_2(vec2<i32>(-18295i, -1i), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(-1i, 2147483647i), vec2<u32>(24259u, 1u)), Struct_2(vec2<i32>(-1i, 31945i), vec2<u32>(22181u, 50639u)), Struct_2(vec2<i32>(-65524i, 0i), vec2<u32>(29594u, 17063u)), Struct_2(vec2<i32>(2147483647i, 21583i), vec2<u32>(0u, 0u)), Struct_2(vec2<i32>(25707i, 0i), vec2<u32>(68617u, 34445u)), Struct_2(vec2<i32>(-72082i, 1i), vec2<u32>(2716u, 66775u)), Struct_2(vec2<i32>(-33579i, 54605i), vec2<u32>(207u, 0u)), Struct_2(vec2<i32>(-30219i, 0i), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(43501i, -4469i), vec2<u32>(18618u, 1u)), Struct_2(vec2<i32>(-39103i, -64519i), vec2<u32>(0u, 2492u)), Struct_2(vec2<i32>(1317i, 2301i), vec2<u32>(36907u, 0u)), Struct_2(vec2<i32>(72451i, -11281i), vec2<u32>(1u, 1u)), Struct_2(vec2<i32>(1291i, 6899i), vec2<u32>(52830u, 4294967295u)), Struct_2(vec2<i32>(1i, -1i), vec2<u32>(0u, 60678u)), Struct_2(vec2<i32>(-8938i, -1i), vec2<u32>(1u, 77399u)), Struct_2(vec2<i32>(-36701i, i32(-2147483648)), vec2<u32>(4294967295u, 93773u)), Struct_2(vec2<i32>(24553i, 6695i), vec2<u32>(48531u, 80822u)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(1u, 25792u)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<u32>(0u, 4294967295u)));

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<vec4<f32>, 26>;

var<private> global3: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(78075u, 1u, 2310u), vec3<u32>(56838u, 4294967295u, 1u), vec3<u32>(57022u, 26291u, 21637u), vec3<u32>(21353u, 49151u, 1u), vec3<u32>(1u, 1u, 24699u), vec3<u32>(15622u, 1u, 21211u), vec3<u32>(1u, 1u, 41675u), vec3<u32>(1u, 4294967295u, 17996u), vec3<u32>(0u, 1u, 8467u), vec3<u32>(47527u, 4846u, 29073u), vec3<u32>(33127u, 0u, 37064u), vec3<u32>(17269u, 1u, 44123u), vec3<u32>(4294967295u, 68580u, 14569u), vec3<u32>(45835u, 17774u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 4294967295u, 143u), vec3<u32>(0u, 6076u, 33222u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 12251u), vec3<u32>(0u, 1u, 24983u), vec3<u32>(101267u, 24771u, 0u), vec3<u32>(12383u, 85236u, 12814u), vec3<u32>(2352u, 0u, 45122u), vec3<u32>(1u, 9896u, 1u), vec3<u32>(1u, 0u, 51151u), vec3<u32>(45161u, 55099u, 12571u), vec3<u32>(0u, 0u, 31248u), vec3<u32>(23861u, 54730u, 1u));

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(u_input.d.zy, vec2<u32>(46312u, 26110u));
    var var_1 = abs(-u_input.d) ^ vec3<i32>(abs(-31355i), ~u_input.d.x, select(abs(24231i), _wgslsmith_mult_i32(-27895i, arg_2.a.x), false) | ~arg_2.a.x);
    let var_2 = arg_1;
    var var_3 = Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_0.a.x, arg_2.a.x, -2147483647i, 1i)), vec4<i32>(-u_input.d.x, 1i, reverseBits(4739i), 1i), vec4<i32>(_wgslsmith_clamp_i32(var_0.a.x, arg_2.a.x, -1i), -3054i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), u_input.d), abs(u_input.d.x))), abs(~(-vec4<i32>(var_0.a.x, arg_2.a.x, var_0.a.x, 1i)))));
    let var_4 = Struct_1(vec4<u32>(~8847u >> (1u % 32u), ~_wgslsmith_mod_u32(4294967295u, arg_2.b.x), (var_0.b.x ^ 0u) & ~1u, select(43613u, _wgslsmith_div_u32(var_0.b.x, var_0.b.x), true)) ^ vec4<u32>(4294967295u, select(abs(1u), ~u_input.a, false), 1u << (0u % 32u), 616u), var_0.a.x, var_3.a.x | abs(1i), vec2<u32>(firstTrailingBit(~4294967295u), ~reverseBits(firstLeadingBit(arg_2.b.x))));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_4.d, _wgslsmith_sub_vec2_u32(~select(arg_2.b, arg_2.b, arg_0), reverseBits(vec2<u32>(1u, var_4.a.x)))), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(37186u, arg_2.b.x), var_4.d) >> ((vec2<u32>(1u, var_0.b.x) ^ var_0.b) % vec2<u32>(32u))) ^ vec2<u32>(arg_2.b.x, ~1u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = -1495f;
    global3 = array<vec3<u32>, 28>();
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a << (17241u % 32u), 60872u), _wgslsmith_add_vec4_u32(~vec4<u32>(32154u, 47121u, 4294967295u, u_input.b), vec4<u32>(14161u, 67698u, u_input.c, u_input.b))));
    let var_2 = vec4<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-907f, -880f)) * _wgslsmith_f_op_f32(max(var_0, -1868f))) != _wgslsmith_f_op_f32(-var_0)), global1[_wgslsmith_index_u32(47342u, 2u)], global1[_wgslsmith_index_u32(~(64507u | var_1.x), 2u)]);
    global3 = array<vec3<u32>, 28>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.x, u_input.a), var_1.wzy), _wgslsmith_dot_vec4_u32(vec4<u32>(63255u, 36543u, var_1.x, u_input.b), vec4<u32>(4294967295u, 0u, 33766u, 0u))), ~func_3(true, var_2.yww, global0[_wgslsmith_index_u32(~var_1.x, 28u)])), 28u)];
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    global2 = array<vec4<f32>, 26>();
    global0 = array<Struct_2, 28>();
    global4 = ~_wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -60875i, -1i), -(arg_0.a.x & u_input.d.x)) & arg_0.a.x;
    let var_0 = func_2(true);
    var var_1 = reverseBits(arg_0.a.x) ^ abs(arg_0.a.x);
    return select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_0.b.x), 2u)], true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false, global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(2867u, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(21134u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(67781u, 14773u), 13790u), 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(~54266u, 2u)], any(vec4<bool>(false, false, false, false)), true), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(26454u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(var_0.b.x, 2u)])), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(var_0.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])), select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false, global1[_wgslsmith_index_u32(arg_0.b.x, 2u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 2u)], global1[_wgslsmith_index_u32(43249u, 2u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(94804u, 2u)], global1[_wgslsmith_index_u32(var_0.b.x, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 2u)], false, true)), global1[_wgslsmith_index_u32(~arg_0.b.x, 2u)]))), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), !select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(5373u, 2u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], true, false)), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)] & true, arg_0.b.x < arg_0.b.x, true)), vec3<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)])) == (2147483647i <= arg_0.a.x), false, any(vec2<bool>(true, true))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global2 = array<vec4<f32>, 26>();
    global3 = array<vec3<u32>, 28>();
    let var_0 = select(func_4(func_2(all(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], false)))), vec3<bool>(true, true, func_4(Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), u_input.d.yy), firstLeadingBit(arg_1.a.zz))).x), !func_4(func_2(global1[_wgslsmith_index_u32(u_input.c << (arg_1.d.x % 32u), 2u)])));
    global0 = array<Struct_2, 28>();
    var var_1 = ~(4294967295u & max(49168u, _wgslsmith_div_u32(firstTrailingBit(arg_1.d.x), ~4294967295u)));
    return Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(-4880i, 0i)), 22363i >> (arg_1.a.x % 32u)) << (arg_1.d % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.d.x), u_input.d.yx)), min(-u_input.d.xz, abs(vec2<i32>(u_input.d.x, u_input.d.x))))), arg_1.d);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_3 {
    global1 = array<bool, 2>();
    var var_0 = false;
    global1 = array<bool, 2>();
    let var_1 = ~_wgslsmith_clamp_vec3_i32(u_input.d, reverseBits(u_input.d) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_0.zz), 29798u, ~arg_1.b.x) % vec3<u32>(32u)), vec3<i32>(1i, u_input.d.x, ~1i) | u_input.d);
    global0 = array<Struct_2, 28>();
    return Struct_3(~(~abs(-vec4<i32>(arg_1.a.x, 0i, 10027i, u_input.d.x))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    let var_0 = vec2<i32>(-_wgslsmith_sub_i32(~1i, reverseBits(7227i)), _wgslsmith_add_i32(min(arg_2.b, 1i), -arg_1.a.x));
    let var_1 = ~arg_2.a.x;
    global1 = array<bool, 2>();
    var var_2 = arg_2.a;
    global2 = array<vec4<f32>, 26>();
    return ~func_5(var_2.wyw, global0[_wgslsmith_index_u32(arg_2.d.x & firstTrailingBit(var_1), 28u)], (func_2(global1[_wgslsmith_index_u32(23257u, 2u)]).b.x & ~0u) | var_1).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    var var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23360i, 1i, 0i, abs(_wgslsmith_mod_i32(-29976i, u_input.d.x))), func_6(vec2<bool>(true, any(vec3<bool>(global1[_wgslsmith_index_u32(51000u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, 45589u), global3[_wgslsmith_index_u32(38186u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), func_1(u_input.b, Struct_1(vec4<u32>(0u, u_input.c, u_input.a, u_input.b), 24117i, u_input.d.x, vec2<u32>(0u, 44055u))), u_input.c), Struct_1(~vec4<u32>(1u, u_input.a, 4294967295u, 0u), ~u_input.d.x, ~(-21526i), firstLeadingBit(vec2<u32>(71637u, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -612f)), ~(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -34961i)) ^ -vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -27526i))));
    let var_1 = Struct_1(vec4<u32>(u_input.c, _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, 0u << (u_input.b % 32u))), 85942u, u_input.b), u_input.d.x, 35291i & u_input.d.x, vec2<u32>(u_input.c, 84740u));
    let var_2 = Struct_3(-vec4<i32>(-func_5(var_1.a.xzz, global0[_wgslsmith_index_u32(u_input.c, 28u)], 4294967295u).a.x, _wgslsmith_div_i32(~2147483647i, ~33808i), _wgslsmith_clamp_i32(2928i, var_0.a.x, 0i) >> (~var_1.d.x % 32u), -22802i));
    let var_3 = ~2042u;
    let var_4 = -812f;
    var var_5 = any(select(select(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(4193u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])), true, true), select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(var_3, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], true), global1[_wgslsmith_index_u32(12487u, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(var_3, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.a.x, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], true), false)), any(vec4<bool>(global1[_wgslsmith_index_u32(var_3, 2u)], true, false, false))), func_4(Struct_2(vec2<i32>(var_2.a.x, 1i) ^ u_input.d.zz, countOneBits(var_1.a.xx))), !func_4(func_1(1u, var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

