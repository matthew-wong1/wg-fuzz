struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: bool;

var<private> global2: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1258f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1757f - 236f))), 291f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(566f - 1532f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -993f))), _wgslsmith_f_op_f32(select(1418f, 1665f, false))));
    var var_1 = !(true && (arg_2.x > ~(-arg_3)));
    let var_2 = select(select(select(select(select(arg_0.zx, vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], arg_0.x), vec2<bool>(global0[_wgslsmith_index_u32(83284u, 2u)], false)), select(vec2<bool>(false, arg_0.x), vec2<bool>(true, false), arg_0.yz), select(true, global0[_wgslsmith_index_u32(1u, 2u)], false)), !select(vec2<bool>(true, false), arg_0.yy, false), !arg_0.xy), select(!arg_0.xz, select(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)]), arg_0.xy, arg_0.xy), arg_0.zy), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(77531u, ~0u), select(1u, 18442u, false)), 2u)]), select(select(vec2<bool>(!arg_0.x, global0[_wgslsmith_index_u32(~11930u, 2u)]), select(arg_0.xz, select(arg_0.yx, vec2<bool>(global0[_wgslsmith_index_u32(14368u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), arg_0.xx), !arg_0.yx), arg_0.zz), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)]), arg_0.xz, select(arg_0.x, false, false)), arg_0.zx, !(arg_0.x & arg_0.x)), !select(select(arg_0.zx, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)]), arg_0.zy), arg_0.yy, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.a - 1080f), _wgslsmith_div_f32(var_0.b.a, 544f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-407f, _wgslsmith_f_op_f32(-var_0.b.a))))));
    var var_3 = _wgslsmith_add_i32(0i, 2051i);
    let var_4 = 3683u;
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_1.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a * arg_2)))), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -578f));
    global1 = !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(func_3(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)], false), Struct_5(u_input.b.yy), vec3<i32>(u_input.c.x, -18399i, 1i), 0i), ~44870u), firstTrailingBit(1u)), 2u)]);
    var var_1 = ~_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, ~u_input.a, ~u_input.a, 1i), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-10002i, u_input.c.x, u_input.a, u_input.c.x)), vec4<i32>(-1i) * -vec4<i32>(1i, -1i, -2147483647i, u_input.a)));
    var var_2 = Struct_3(Struct_1(-1307f), vec4<u32>(26111u, firstLeadingBit(~4294967295u), func_3(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(36141u, 2u)]), Struct_5(vec2<i32>(0i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-7322i, u_input.a, u_input.c.x), vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(u_input.c.x, 18070i, -2147483647i)), -27335i) >> (abs(1u) % 32u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(38776u, 1u, 96031u, 64908u), vec4<u32>(99790u, 1u, 83001u, 2447u))), select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(23737u, 2u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(7007u, 2u)], global0[_wgslsmith_index_u32(49518u, 2u)], false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(40016u, 2u)]))), vec3<bool>(!global0[_wgslsmith_index_u32(~1u, 2u)], select(all(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(29509u, 2u)])), !global0[_wgslsmith_index_u32(52237u, 2u)], true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, select(17897u, 31715u, global0[_wgslsmith_index_u32(1u, 2u)])), 2u)]), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(67180u, 2u)], global0[_wgslsmith_index_u32(20203u, 2u)]))), !(-594f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(max(1233f, 1318f))))));
    var_2 = Struct_3(Struct_1(arg_3.d), vec4<u32>(_wgslsmith_div_u32(var_2.b.x, 32457u), firstLeadingBit(var_2.b.x), (8137u >> (~var_2.b.x % 32u)) & _wgslsmith_add_u32(var_2.b.x >> (var_2.b.x % 32u), ~var_2.b.x), 35882u), !select(select(select(var_2.c, vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], var_2.c.x, false), false), !var_2.c, true), vec3<bool>(var_2.b.x < var_2.b.x, !global0[_wgslsmith_index_u32(var_2.b.x, 2u)], global0[_wgslsmith_index_u32(var_2.b.x, 2u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(21592u, 2u)], false, global0[_wgslsmith_index_u32(58999u, 2u)]), !var_2.c, true)), !global0[_wgslsmith_index_u32(35804u, 2u)], var_0.a.a);
    return 0u;
}

fn func_1() -> vec4<u32> {
    global2 = -1219f;
    global1 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(9431u, 25543u), ~_wgslsmith_clamp_u32(26785u, 26113u, 26563u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 15441u), vec2<u32>(34146u, 0u)) ^ func_2(983f, Struct_2(Struct_1(-825f), Struct_1(308f), Struct_1(-1525f), -258f), 685f, Struct_2(Struct_1(-670f), Struct_1(523f), Struct_1(714f), -1834f)))), 2u)];
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(-844f))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 27763u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(47946u, 49917u, 37911u, 49204u), vec4<u32>(48608u, 7211u, 10152u, 38446u))), select(select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(3282u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(64717u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(24929u, 2u)]), false), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(12035u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(621u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), global0[_wgslsmith_index_u32(19083u, 2u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(40727u, 2u)], true, true)), select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], true), vec3<bool>(global0[_wgslsmith_index_u32(61063u, 2u)], false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(8380u, 2u)], false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(7323u, 2u)]), false), !(!global0[_wgslsmith_index_u32(8766u, 2u)])), any(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)])))), !(all(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], true, global0[_wgslsmith_index_u32(12141u, 2u)])) == (select(true, true, global0[_wgslsmith_index_u32(73776u, 2u)]) || false)), 1f);
    var var_1 = ~1i;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(var_0.a.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2429f, var_0.e) - _wgslsmith_f_op_f32(-var_0.e)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e)) - var_0.a.a))) + _wgslsmith_f_op_f32(floor(-163f))));
    return (vec4<u32>(~var_0.b.x >> (~var_0.b.x % 32u), var_0.b.x, 22184u, 13099u) << (vec4<u32>(~1u ^ ~var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.x, 98000u), var_0.b.zzz & var_0.b.xyw), 27496u, ~(~21970u)) % vec4<u32>(32u))) >> (~(~(vec4<u32>(var_0.b.x, 3380u, var_0.b.x, 57483u) | var_0.b) & var_0.b) % vec4<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1824f)), -1064f))));
    var var_1 = vec3<i32>(-1i) * -(~select(u_input.b, u_input.b | u_input.b, select(vec3<bool>(arg_0, false, true), vec3<bool>(false, arg_0, true), false)));
    global0 = array<bool, 2>();
    let var_2 = 1i;
    var_1 = ~u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(select(535f, -856f, !(any(vec3<bool>(global0[_wgslsmith_index_u32(37578u, 2u)], false, true)) | global0[_wgslsmith_index_u32(~arg_1.x, 2u)]))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(arg_1.e)));
    let var_1 = Struct_5(u_input.c.zx);
    var var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = var_2.a.a;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~(~countOneBits(vec2<u32>(1u, 4294967295u)))), Struct_3(func_4(true, func_1()), vec4<u32>(1u, 1u, 1u, 1u), vec3<bool>(_wgslsmith_mod_i32(0i, u_input.b.x) != _wgslsmith_sub_i32(0i, u_input.c.x), false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 27202u), min(vec4<u32>(29644u, 0u, 4294967295u, 56827u), vec4<u32>(1u, 1u, 0u, 15560u))), 2u)]), all(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(21359u, 2u)]))), -211f), ~vec3<u32>(1u, ~(43051u >> (1u % 32u)), ~1u));
    var var_1 = Struct_1(217f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(select(-811f, var_1.a, false)))), Struct_1(_wgslsmith_f_op_f32(-var_1.a)), func_4(true & all(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], true)), ~vec4<u32>(7318u, _wgslsmith_mod_u32(113683u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(399u, 0u, 1u), vec3<u32>(30327u, 0u, 0u)), 1u)), -170f);
    let var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(204f, -1222f, var_1.a))), vec3<f32>(var_1.a, 410f, -1133f), false | global0[_wgslsmith_index_u32(15718u, 2u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-326f, var_1.a, 900f), vec3<f32>(var_2.a.a, var_2.d, var_2.b.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, 1971f, var_1.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1080f, var_1.a, -2062f) + vec3<f32>(1029f, -231f, var_1.a))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a, 325f), var_1.a)), var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1134f, var_1.a, var_1.a)))))))));
    global2 = _wgslsmith_f_op_f32(trunc(var_1.a));
    let var_4 = vec3<i32>(-_wgslsmith_div_i32(var_0.a.x, select(-u_input.c.x, _wgslsmith_mult_i32(var_0.a.x, u_input.a), global0[_wgslsmith_index_u32(29449u, 2u)] != false)), var_0.a.x, max(var_0.a.x, 49036i));
    var var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.a * var_3.x), _wgslsmith_f_op_f32(var_2.c.a + var_1.a), 527f, _wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_2.b.a, -1887f, -1590f) * vec4<f32>(-711f, -865f, 403f, 371f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, 126f, -3119f, -110f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-369f, -879f, var_2.a.a, 1257f))), vec4<f32>(211f, var_1.a, var_3.x, var_1.a)))), vec4<bool>(all(vec4<bool>(true, true, true, false)), select(false, true, true), all(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false)), -548f >= func_4(false, vec4<u32>(4294967295u, 4294967295u, 22594u, 26180u)).a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-981f, var_2.a.a, -945f, 649f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(772f, var_2.d, var_3.x, var_1.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1057f, -119f, 1632f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1221f, -1000f, 277f, var_1.a)))))))))));
    let var_6 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a)))));
    var var_7 = Struct_5(_wgslsmith_sub_vec2_i32(select(u_input.c.yz, vec2<i32>(var_0.a.x, 1i) >> (vec2<u32>(14762u, 33123u) % vec2<u32>(32u)), vec2<bool>(true, global0[_wgslsmith_index_u32(firstLeadingBit(0u), 2u)])), vec2<i32>(~var_0.a.x & 1i, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-firstTrailingBit(u_input.a)), 1u >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19125u, 8533u), vec3<u32>(0u, 8463u, 10603u)), ~0u), 99006u) % 32u), 1u);
}

