struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(1238f, -1529f, 209f);

var<private> global1: array<i32, 26>;

var<private> global2: array<bool, 11> = array<bool, 11>(false, true, false, false, false, true, true, false, true, true, true);

var<private> global3: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec2<f32>(-624f, global0[_wgslsmith_index_u32(arg_0, 3u)]))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f * 965f)), global0[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 3u)], 738f), vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 3u)], -495f))))), select(!select(arg_2, select(arg_2, arg_2, arg_2.x), select(arg_2, vec2<bool>(true, true), arg_2)), select(!arg_2, vec2<bool>(true, any(arg_2)), vec2<bool>(false, arg_2.x && arg_2.x)), any(!vec3<bool>(false, arg_2.x, false)))));
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    global1 = array<i32, 26>();
    global0 = array<f32, 3>();
    return 5089i;
}

fn func_4(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = Struct_1(arg_0, 17543u, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(12374u, 3u)], -1104f), global0[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-866f, global0[_wgslsmith_index_u32(63693u, 3u)]), global0[_wgslsmith_index_u32(38194u, 3u)])), true)));
    let var_1 = Struct_1(arg_1 < _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_1, arg_1, 0i, arg_1), vec4<i32>(global1[_wgslsmith_index_u32(var_0.b, 26u)], arg_1, -35299i, u_input.a), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.b, 11u)], var_0.c, global2[_wgslsmith_index_u32(1u, 11u)])), -vec4<i32>(1i, u_input.a, arg_1, -1i)), -vec4<i32>(1i, arg_1, -24215i, u_input.a) | _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.b, 26u)], -3444i, 297i, u_input.a), vec4<i32>(u_input.a, 4733i, u_input.a, 0i), vec4<i32>(2147483647i, 0i, global1[_wgslsmith_index_u32(var_0.b, 26u)], global1[_wgslsmith_index_u32(51952u, 26u)]))), var_0.b, true && select(var_0.a, (-14966i == u_input.a) || true, true), var_0.d);
    global2 = array<bool, 11>();
    global0 = array<f32, 3>();
    var var_2 = select(select(select(!(!vec2<bool>(var_0.c, true)), vec2<bool>(var_0.a, arg_0 || global2[_wgslsmith_index_u32(var_1.b, 11u)]), false), select(vec2<bool>(true, true), !vec2<bool>(true, arg_0), select(vec2<bool>(true, true), !vec2<bool>(var_0.c, global2[_wgslsmith_index_u32(var_1.b, 11u)]), select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(arg_0, false)))), any(select(!vec3<bool>(arg_0, false, var_1.c), vec3<bool>(global2[_wgslsmith_index_u32(87202u, 11u)], var_1.c, var_0.a), select(vec3<bool>(global2[_wgslsmith_index_u32(10094u, 11u)], false, var_0.c), vec3<bool>(true, false, var_1.a), var_1.c)))), select(select(vec2<bool>(select(false, arg_0, true), true), select(vec2<bool>(global2[_wgslsmith_index_u32(44851u, 11u)], var_1.a), !vec2<bool>(var_1.a, global2[_wgslsmith_index_u32(4294967295u, 11u)]), true), !select(vec2<bool>(false, false), vec2<bool>(var_1.a, var_1.c), vec2<bool>(var_1.c, false))), vec2<bool>(true, !var_1.c), !vec2<bool>(all(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.b, 11u)], var_0.c, var_0.c)), true)), vec2<bool>(!(!select(true, false, global2[_wgslsmith_index_u32(4294967295u, 11u)])), true));
    return 68841u;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(func_4(true, func_3(20699u, vec3<i32>(-1i, 9709i, -23182i), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 101056u), vec3<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(27428u, 11u)], true))), select(vec3<u32>(20852u, 1u, 672u), vec3<u32>(0u, 23186u, 1u), global2[_wgslsmith_index_u32(4294967295u, 11u)]) ^ firstTrailingBit(vec3<u32>(1u, 0u, 83771u)))), 1u, 29849u, reverseBits(firstTrailingBit(abs(countOneBits(62421u)))));
    let var_1 = ~min(var_0, vec4<u32>(9371u, var_0.x, ~_wgslsmith_sub_u32(29906u, 0u), var_0.x));
    let var_2 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~min(~vec4<u32>(var_0.x, var_0.x, 19033u, var_1.x), var_0), var_1), 11u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(var_0.wx), ~vec2<u32>(5945u, var_1.x)), firstTrailingBit(vec2<u32>(1u, 16451u))), abs(_wgslsmith_mult_u32(var_1.x, _wgslsmith_mod_u32(1u, var_1.x)))), false, _wgslsmith_f_op_f32(f32(-1f) * -1225f));
    global3 = 0u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-686f, var_2.d, -1684f, 946f) - vec4<f32>(global0[_wgslsmith_index_u32(8982u, 3u)], -520f, var_2.d, global0[_wgslsmith_index_u32(var_2.b, 3u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, -1514f, 534f, 820f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.d)), var_2.d, var_2.d, global0[_wgslsmith_index_u32(42220u, 3u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_2.b, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, -209f, -378f, var_2.d))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1114f, -1319f, var_2.d, -439f)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(77992u, 3u)], 531f, 466f, var_2.d))))));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<i32, 26>();
    global3 = arg_0.b;
    let var_0 = (_wgslsmith_div_vec4_u32(~func_2(), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, arg_0.b, arg_0.b, arg_1.b), vec4<u32>(38219u, arg_1.b, 4948u, arg_0.b), vec4<u32>(4294967295u, arg_0.b, 0u, arg_1.b))) >> (~(vec4<u32>(1u, 39865u, arg_0.b, 0u) | vec4<u32>(arg_0.b, 1u, 0u, 2326u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(max(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.b, 0u, 14050u), vec4<u32>(arg_1.b, arg_0.b, 1u, arg_1.b), vec4<u32>(arg_1.b, 58872u, arg_0.b, arg_0.b)), ~vec4<u32>(arg_1.b, arg_1.b, 36849u, arg_1.b), select(vec4<bool>(false, true, arg_0.a, true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 11u)], true, global2[_wgslsmith_index_u32(49318u, 11u)], arg_0.c), false)), ~(vec4<u32>(0u, arg_0.b, arg_0.b, 3783u) | vec4<u32>(arg_0.b, arg_0.b, arg_1.b, 18411u))), min(_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, arg_1.b, arg_1.b, arg_1.b)), func_2()), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(arg_0.b, 36365u, 66913u, arg_0.b)), ~vec4<u32>(4294967295u, arg_0.b, arg_1.b, arg_0.b)))) % vec4<u32>(32u));
    var var_1 = ~(~(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 26u)], u_input.a, 45733i, global1[_wgslsmith_index_u32(46425u, 26u)]), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(26253u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)])) << (var_0 % vec4<u32>(32u))) >> (~min(max(vec4<u32>(9100u, 6300u, arg_1.b, 0u), vec4<u32>(arg_1.b, 4294967295u, 1u, 4294967295u)), var_0 >> (vec4<u32>(64092u, 1u, var_0.x, arg_0.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = Struct_1(!(!any(vec3<bool>(false, true, true))) && any(vec2<bool>(arg_0.c, true)), 49429u, true, 536f);
    return 9687u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~1u, 11u)], max(countOneBits(firstLeadingBit(countOneBits(24992u))), countOneBits(_wgslsmith_clamp_u32(25449u, 56493u, 27465u)) << (~func_1(Struct_1(global2[_wgslsmith_index_u32(57512u, 11u)], 4294967295u, true, global0[_wgslsmith_index_u32(0u, 3u)]), Struct_1(global2[_wgslsmith_index_u32(1406u, 11u)], 57137u, false, -216f)) % 32u)), false, global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(0u)) & _wgslsmith_clamp_u32(1u, 1u, 1u), 3u)]);
    let var_1 = vec4<u32>(abs(24908u), var_0.b, 56251u, ~29804u);
    var var_2 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(func_1(Struct_1(global2[_wgslsmith_index_u32(15506u, 11u)], var_1.x, global2[_wgslsmith_index_u32(66380u, 11u)], global0[_wgslsmith_index_u32(14686u, 3u)]), Struct_1(false, 26339u, var_0.a, var_0.d)) >> ((var_1.x >> (var_1.x % 32u)) % 32u), var_1.x, var_1.x << (var_0.b % 32u)), abs(var_1.xxx)), vec3<u32>(~var_0.b, ~1u, abs(func_4(global2[_wgslsmith_index_u32(1u, 11u)] && var_0.a, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 26u)], u_input.a)))), all(select(select(vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.b, 11u)]), !vec2<bool>(true, var_0.c)), vec2<bool>(!global2[_wgslsmith_index_u32(var_1.x, 11u)], var_0.a), false)));
    global2 = array<bool, 11>();
    var var_3 = max(vec4<u32>(37961u, ~(var_1.x & var_2.x), 14027u, 1494u), firstTrailingBit(vec4<u32>(var_2.x << (var_1.x % 32u), ~var_2.x, var_0.b, var_1.x))) ^ (max(vec4<u32>(~26110u, ~var_0.b, func_2().x, var_2.x), ~var_1) >> (vec4<u32>(4294967295u, var_1.x, _wgslsmith_add_u32(var_0.b, min(4294967295u, var_1.x)), 0u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -829f) + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_2.x, 3u)]))), _wgslsmith_f_op_f32(-var_0.d))), 853f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d * global0[_wgslsmith_index_u32(~(var_1.x | 4294967295u), 3u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b, 3u)] * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(267f * -1179f)))), !(_wgslsmith_f_op_f32(462f * 404f) == _wgslsmith_div_f32(var_0.d, var_0.d)))), var_0.d, countOneBits(~(~firstLeadingBit(vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a)))));
}

